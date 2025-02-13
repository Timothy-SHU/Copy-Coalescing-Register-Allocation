; ModuleID = 'ipa-type-escape.c'
source_filename = "ipa-type-escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.cast = type { i32, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.type_brand_s = type { ptr, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.def_optype_d = type { ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }

@initialized = internal unnamed_addr global i1 false, align 1
@global_types_full_escape = internal unnamed_addr global ptr null, align 8
@uid_to_addressof_down_map = internal unnamed_addr global ptr null, align 8
@visited_stmts = internal unnamed_addr global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [16 x i8] c"type-escape-var\00", align 1
@pass_ipa_type_escape = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str, ptr @gate_type_escape_vars, ptr @type_escape_execute, ptr null, ptr null, i32 0, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@type_to_canon_type = internal unnamed_addr global ptr null, align 8
@all_canon_types = internal unnamed_addr global ptr null, align 8
@uid_to_canon_type = internal unnamed_addr global ptr null, align 8
@global_types_seen = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<UNNAMED>\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ipa-type-escape.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_types_exposed_parameter = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@flag_ipa_type_escape = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@visited_nodes = internal unnamed_addr global ptr null, align 8
@ipa_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@been_there_done_that = internal unnamed_addr global ptr null, align 8
@bitmap_tmp = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"type %d \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" escaped\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" contained\0A\00", align 1
@uid_to_addressof_up_map = internal unnamed_addr global ptr null, align 8
@uid_to_subtype_map = internal unnamed_addr global ptr null, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.9 = private unnamed_addr constant [23 x i8] c"\0A local analysis of %s\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_type(ptr noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %10
  %4 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %5 = phi i32 [ %13, %10 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %15 [
    i16 10, label %10
    i16 12, label %10
    i16 16, label %14
    i16 18, label %14
    i16 17, label %14
  ]

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = add nuw nsw i32 %5, 1
  br label %3, !llvm.loop !38

14:                                               ; preds = %3, %3, %3
  br label %15

15:                                               ; preds = %3, %14, %1
  %16 = phi i32 [ -1, %1 ], [ %5, %14 ], [ -1, %3 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_or_array_type(ptr noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %10
  %4 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %5 = phi i32 [ %13, %10 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %15 [
    i16 10, label %10
    i16 12, label %10
    i16 15, label %10
    i16 16, label %14
    i16 18, label %14
    i16 17, label %14
  ]

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = add nuw nsw i32 %5, 1
  br label %3, !llvm.loop !40

14:                                               ; preds = %3, %3, %3
  br label %15

15:                                               ; preds = %3, %14, %1
  %16 = phi i32 [ -1, %1 ], [ %5, %14 ], [ -1, %3 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load i1, ptr @initialized, align 1
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !41
  %5 = tail call fastcc i32 @get_canon_type_uid(ptr noundef %0, i8 noundef zeroext 0) #17
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %4, i32 noundef %5) #18
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i8 [ %8, %3 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_canon_type_uid(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 !prof !34 !PGOFuncName !43 {
  %3 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ipa_type_escape_field_does_not_clobber_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !34 {
  %3 = load i1, ptr @initialized, align 1
  br i1 %3, label %4, label %54

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %22, %4
  %8 = phi ptr [ %1, %4 ], [ %24, %22 ]
  %9 = phi ptr [ %6, %4 ], [ %18, %22 ]
  %10 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = load i64, ptr %9, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %34 [
    i16 10, label %14
    i16 12, label %14
  ]

14:                                               ; preds = %7, %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = load i64, ptr %11, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %54 [
    i16 10, label %22
    i16 12, label %22
    i16 18, label %21
    i16 17, label %21
  ]

21:                                               ; preds = %14, %14
  br label %25

22:                                               ; preds = %14, %14
  %23 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  br label %7, !llvm.loop !44

25:                                               ; preds = %21, %29
  %26 = phi ptr [ %33, %29 ], [ %18, %21 ]
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %34 [
    i16 10, label %29
    i16 12, label %29
  ]

29:                                               ; preds = %25, %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  br label %25, !llvm.loop !45

34:                                               ; preds = %7, %25
  %35 = phi ptr [ %26, %25 ], [ %9, %7 ]
  %36 = tail call fastcc ptr @get_canon_type(ptr noundef nonnull %35, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %37 = tail call zeroext i8 @ipa_type_escape_type_contained_p(ptr noundef %36) #17, !range !46
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !35
  %42 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  %43 = sext i32 %41 to i64
  %44 = tail call ptr @splay_tree_lookup(ptr noundef %42, i64 noundef %43) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.splay_tree_node_s, ptr %44, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !47
  %49 = inttoptr i64 %48 to ptr
  %50 = tail call fastcc i32 @get_canon_type_uid(ptr noundef %11, i8 noundef zeroext 1) #17
  %51 = tail call i32 @bitmap_bit_p(ptr noundef %49, i32 noundef %50) #18
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i8
  br label %54

54:                                               ; preds = %14, %39, %34, %2, %46
  %55 = phi i8 [ %53, %46 ], [ 0, %2 ], [ 0, %34 ], [ 1, %39 ], [ 1, %14 ]
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_canon_type(ptr noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 !prof !34 !PGOFuncName !50 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc zeroext i8 @type_to_consider(ptr noundef nonnull %0) #17, !range !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8, %16
  %13 = phi ptr [ %20, %16 ], [ %10, %8 ]
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %32 [
    i16 10, label %16
    i16 12, label %16
    i16 15, label %16
  ]

16:                                               ; preds = %12, %12, %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br label %12, !llvm.loop !51

21:                                               ; preds = %8
  %22 = icmp eq i8 %1, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %21, %27
  %24 = phi ptr [ %31, %27 ], [ %10, %21 ]
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %32 [
    i16 10, label %27
    i16 12, label %27
  ]

27:                                               ; preds = %23, %23
  %28 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  br label %23, !llvm.loop !52

32:                                               ; preds = %12, %23, %21
  %33 = phi ptr [ %10, %21 ], [ %24, %23 ], [ %13, %12 ]
  %34 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !41
  %35 = ptrtoint ptr %33 to i64
  %36 = tail call ptr @splay_tree_lookup(ptr noundef %34, i64 noundef %35) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call fastcc ptr @discover_unique_type(ptr noundef %33) #17
  br label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.splay_tree_node_s, ptr %36, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !47
  %43 = inttoptr i64 %42 to ptr
  br label %44

44:                                               ; preds = %3, %5, %40, %38
  %45 = phi ptr [ %39, %38 ], [ %43, %40 ], [ null, %5 ], [ null, %3 ]
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #2 !prof !34 {
  %7 = alloca %struct.cast, align 8
  %8 = alloca %struct.cast, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  store ptr null, ptr %3, align 8, !tbaa !41
  store ptr null, ptr %4, align 8, !tbaa !41
  store ptr null, ptr %5, align 8, !tbaa !41
  %9 = icmp eq i32 %0, 66
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = load i64, ptr %14, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %27, label %23

23:                                               ; preds = %10
  %24 = icmp eq i32 %21, 12
  %25 = icmp ne ptr %18, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %32, label %29

27:                                               ; preds = %10
  %28 = icmp eq ptr %18, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %27, %23
  %30 = load i64, ptr %18, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %114 [
    i16 10, label %32
    i16 12, label %32
  ]

32:                                               ; preds = %29, %29, %27, %23
  %33 = phi ptr [ %1, %23 ], [ %1, %27 ], [ %2, %29 ], [ %2, %29 ]
  %34 = phi ptr [ %2, %23 ], [ %2, %27 ], [ %1, %29 ], [ %1, %29 ]
  store ptr %33, ptr %3, align 8, !tbaa !41
  store ptr %34, ptr %4, align 8, !tbaa !41
  %35 = load ptr, ptr %5, align 8, !tbaa !41
  br label %56

36:                                               ; preds = %6
  store i32 0, ptr %8, align 8, !tbaa !53
  store i32 0, ptr %7, align 8, !tbaa !53
  %37 = getelementptr inbounds %struct.cast, ptr %8, i64 0, i32 1
  store ptr null, ptr %37, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.cast, ptr %7, i64 0, i32 1
  store ptr null, ptr %38, align 8, !tbaa !56
  %39 = tail call ptr @pointer_set_create() #18
  store ptr %39, ptr @visited_stmts, align 8, !tbaa !41
  call void @walk_use_def_chains(ptr noundef %1, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef nonnull %7, i8 noundef zeroext 0) #18
  %40 = load ptr, ptr @visited_stmts, align 8, !tbaa !41
  call void @pointer_set_destroy(ptr noundef %40) #18
  %41 = call ptr @pointer_set_create() #18
  store ptr %41, ptr @visited_stmts, align 8, !tbaa !41
  call void @walk_use_def_chains(ptr noundef %2, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef nonnull %8, i8 noundef zeroext 0) #18
  %42 = load ptr, ptr @visited_stmts, align 8, !tbaa !41
  call void @pointer_set_destroy(ptr noundef %42) #18
  %43 = load i32, ptr %7, align 8, !tbaa !53
  %44 = icmp eq i32 %43, 1
  %45 = load i32, ptr %8, align 8
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  store ptr %2, ptr %3, align 8, !tbaa !41
  store ptr %1, ptr %4, align 8, !tbaa !41
  %49 = load ptr, ptr %38, align 8, !tbaa !56
  store ptr %49, ptr %5, align 8, !tbaa !41
  br label %56

50:                                               ; preds = %36
  %51 = icmp eq i32 %43, 0
  %52 = icmp eq i32 %45, 1
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %114

54:                                               ; preds = %50
  store ptr %1, ptr %3, align 8, !tbaa !41
  store ptr %2, ptr %4, align 8, !tbaa !41
  %55 = load ptr, ptr %37, align 8, !tbaa !56
  store ptr %55, ptr %5, align 8, !tbaa !41
  br label %56

56:                                               ; preds = %32, %48, %54
  %57 = phi ptr [ %35, %32 ], [ %49, %48 ], [ %55, %54 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = call fastcc ptr @single_ssa_tree_operand(ptr noundef nonnull %57) #17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %114, label %62

62:                                               ; preds = %59
  %63 = load i64, ptr %60, align 8
  %64 = and i64 %63, 4294967296
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %60, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = icmp eq ptr %68, null
  br i1 %69, label %114, label %74

70:                                               ; preds = %56
  %71 = load ptr, ptr %4, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  br label %74

74:                                               ; preds = %66, %70
  %75 = phi ptr [ %68, %66 ], [ %73, %70 ]
  %76 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %75) #17, !range !46
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %74
  %79 = call fastcc ptr @gimple_assign_lhs(ptr noundef %75) #17
  %80 = call zeroext i8 @is_gimple_reg(ptr noundef %79) #18
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %114, label %82

82:                                               ; preds = %78
  %83 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %75) #17, !range !57
  %84 = icmp eq i32 %83, 65
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %75) #17
  %87 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %75) #17
  %88 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 16
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  %94 = getelementptr inbounds %struct.tree_type, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = load i64, ptr %86, align 8
  %97 = and i64 %96, 65535
  %98 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !58
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = call i32 @simple_cst_equal(ptr noundef nonnull %86, ptr noundef %95) #18
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101, %85
  %105 = load i64, ptr %87, align 8
  %106 = and i64 %105, 65535
  %107 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !58
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = call i32 @simple_cst_equal(ptr noundef nonnull %87, ptr noundef %95) #18
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %104
  br label %114

114:                                              ; preds = %113, %110, %101, %74, %82, %78, %66, %62, %59, %50, %29
  %115 = phi i8 [ 0, %29 ], [ 0, %50 ], [ 0, %59 ], [ 0, %62 ], [ 0, %66 ], [ 0, %78 ], [ 0, %82 ], [ 0, %74 ], [ 0, %113 ], [ 1, %110 ], [ 1, %101 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  ret i8 %115
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: optsize
declare void @walk_use_def_chains(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @is_cast_from_non_pointer(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 !prof !34 !PGOFuncName !59 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %1) #17, !range !60
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %59, label %11

11:                                               ; preds = %8
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 4294967296
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %1) #17, !range !46
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %19 = tail call fastcc i32 @look_for_casts_stmt(ptr noundef nonnull %1) #17
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.cast, ptr %2, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !56
  %23 = load i32, ptr %2, align 8, !tbaa !53
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %2, align 8, !tbaa !53
  %25 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef nonnull %1) #17
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %21, %33
  %29 = phi ptr [ %34, %33 ], [ %25, %21 ]
  %30 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %29) #17
  tail call void @walk_use_def_chains(ptr noundef %30, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  %31 = load i32, ptr %2, align 8, !tbaa !53
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %54, label %33

33:                                               ; preds = %28
  %34 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #17
  %35 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #17
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %28, label %54, !llvm.loop !61

37:                                               ; preds = %18
  %38 = and i32 %19, 395
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef nonnull %1) #17
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %49
  %45 = phi ptr [ %50, %49 ], [ %41, %40 ]
  %46 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %45) #17
  tail call void @walk_use_def_chains(ptr noundef %46, ptr noundef nonnull @is_cast_from_non_pointer, ptr noundef %2, i8 noundef zeroext 0) #18
  %47 = load i32, ptr %2, align 8, !tbaa !53
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #17
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #17
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %44, label %54, !llvm.loop !62

53:                                               ; preds = %37
  store i32 -1, ptr %2, align 8, !tbaa !53
  br label %54

54:                                               ; preds = %49, %44, %28, %33, %40, %21, %53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32, ptr %2, align 8, !tbaa !53
  %57 = icmp eq i32 %56, -1
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %55, %11, %8, %3
  %60 = phi i8 [ 0, %3 ], [ 0, %8 ], [ 0, %11 ], [ %58, %55 ]
  ret i8 %60
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !63 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #19
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #17
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #17
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #17
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !64 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !60
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !65 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !66 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !57
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !60
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !67 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !68 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #17
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_type_escape_vars() #5 !prof !69 !PGOFuncName !70 {
  %1 = load i32, ptr @flag_ipa_type_escape, align 4, !tbaa !58
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !71

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @type_escape_execute() #2 !prof !34 !PGOFuncName !72 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  tail call fastcc void @ipa_init() #17
  %3 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %8, %0
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %13

8:                                                ; preds = %0, %8
  %9 = phi ptr [ %11, %8 ], [ %3, %0 ]
  tail call fastcc void @analyze_variable(ptr noundef nonnull %9) #17
  %10 = getelementptr inbounds %struct.varpool_node, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %8, !llvm.loop !73

13:                                               ; preds = %5, %24
  %14 = phi ptr [ %26, %24 ], [ %6, %5 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call fastcc void @analyze_function(ptr noundef nonnull %14) #17
  br label %24

24:                                               ; preds = %13, %19, %23
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !82

28:                                               ; preds = %24, %5
  %29 = load ptr, ptr @visited_nodes, align 8, !tbaa !41
  tail call void @pointer_set_destroy(ptr noundef %29) #18
  store ptr null, ptr @visited_nodes, align 8, !tbaa !41
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %30, ptr @been_there_done_that, align 8, !tbaa !41
  %31 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %31, ptr @bitmap_tmp, align 8, !tbaa !41
  %32 = load ptr, ptr @global_types_seen, align 8, !tbaa !41
  tail call void @bitmap_copy(ptr noundef %31, ptr noundef %32) #18
  %33 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !41
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %33, ptr noundef nonnull %1) #17
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %28, %42
  %37 = load i32, ptr %1, align 4, !tbaa !58
  %38 = tail call fastcc ptr @type_for_uid(i32 noundef %37) #17
  %39 = tail call i32 @ipa_type_escape_star_count_of_interesting_or_array_type(ptr noundef %38) #17
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call fastcc void @close_type_seen(ptr noundef %38) #17
  br label %42

42:                                               ; preds = %41, %36
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #17
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %36, !llvm.loop !83

45:                                               ; preds = %42, %28
  %46 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  tail call void @bitmap_clear(ptr noundef %46) #18
  %47 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !41
  %48 = load ptr, ptr @global_types_exposed_parameter, align 8, !tbaa !41
  tail call void @bitmap_copy(ptr noundef %47, ptr noundef %48) #18
  %49 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !41
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %49, ptr noundef nonnull %1) #17
  %50 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45, %52
  %53 = load i32, ptr %1, align 4, !tbaa !58
  %54 = tail call fastcc ptr @type_for_uid(i32 noundef %53) #17
  tail call fastcc void @close_type_exposed_parameter(ptr noundef %54) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #17
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %52, !llvm.loop !84

57:                                               ; preds = %52, %45
  %58 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  tail call void @bitmap_clear(ptr noundef %58) #18
  %59 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !41
  %60 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !41
  tail call void @bitmap_copy(ptr noundef %59, ptr noundef %60) #18
  %61 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !41
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %61, ptr noundef nonnull %1) #17
  %62 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57, %64
  %65 = load i32, ptr %1, align 4, !tbaa !58
  %66 = tail call fastcc ptr @type_for_uid(i32 noundef %65) #17
  tail call fastcc void @close_type_full_escape(ptr noundef %66) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #17
  %67 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %64, !llvm.loop !85

69:                                               ; preds = %64, %57
  %70 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  tail call void @bitmap_clear(ptr noundef %70) #18
  %71 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  %72 = tail call ptr @splay_tree_min(ptr noundef %71) #18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %69, %74
  %75 = phi ptr [ %82, %74 ], [ %72, %69 ]
  %76 = load i64, ptr %75, align 8, !tbaa !86
  %77 = trunc i64 %76 to i32
  %78 = tail call fastcc ptr @close_addressof_down(i32 noundef %77) #17
  %79 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  %80 = shl i64 %76, 32
  %81 = ashr exact i64 %80, 32
  %82 = tail call ptr @splay_tree_successor(ptr noundef %79, i64 noundef %81) #18
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %74, !llvm.loop !87

84:                                               ; preds = %74, %69
  %85 = load ptr, ptr @all_canon_types, align 8, !tbaa !41
  %86 = tail call ptr @splay_tree_min(ptr noundef %85) #18
  %87 = icmp eq ptr %86, null
  br i1 %87, label %110, label %88

88:                                               ; preds = %84, %106
  %89 = phi ptr [ %108, %106 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.splay_tree_node_s, ptr %89, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !47
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %89, align 8, !tbaa !86
  %94 = load i64, ptr %92, align 8
  %95 = trunc i64 %94 to i16
  switch i16 %95, label %106 [
    i16 10, label %96
    i16 12, label %96
    i16 15, label %96
  ]

96:                                               ; preds = %88, %88, %88
  %97 = load ptr, ptr @all_canon_types, align 8, !tbaa !41
  tail call void @splay_tree_remove(ptr noundef %97, i64 noundef %93) #18
  %98 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !41
  tail call void @splay_tree_remove(ptr noundef %98, i64 noundef %91) #18
  %99 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !41
  %100 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 5
  %101 = load i32, ptr %100, align 8, !tbaa !35
  %102 = zext i32 %101 to i64
  tail call void @splay_tree_remove(ptr noundef %99, i64 noundef %102) #18
  %103 = load ptr, ptr @global_types_seen, align 8, !tbaa !41
  %104 = load i32, ptr %100, align 8, !tbaa !35
  %105 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %103, i32 noundef %104) #18
  br label %106

106:                                              ; preds = %88, %96
  %107 = load ptr, ptr @all_canon_types, align 8, !tbaa !41
  %108 = tail call ptr @splay_tree_successor(ptr noundef %107, i64 noundef %93) #18
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %88, !llvm.loop !88

110:                                              ; preds = %106, %84
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %112 = icmp eq ptr %111, null
  br i1 %112, label %134, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr @global_types_seen, align 8, !tbaa !41
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %114, ptr noundef nonnull %1) #17
  %115 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %113, %131
  %118 = load i32, ptr %1, align 4, !tbaa !58
  %119 = tail call fastcc ptr @type_for_uid(i32 noundef %118) #17
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.6, i32 noundef %118) #17
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !41
  tail call void @print_generic_expr(ptr noundef %122, ptr noundef %119, i32 noundef 0) #18
  %123 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !41
  %124 = tail call i32 @bitmap_bit_p(ptr noundef %123, i32 noundef %118) #18
  %125 = icmp eq i32 %124, 0
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !41
  br i1 %125, label %129, label %127

127:                                              ; preds = %117
  %128 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %126)
  br label %131

129:                                              ; preds = %117
  %130 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 11, i64 1, ptr %126)
  br label %131

131:                                              ; preds = %129, %127
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #17
  %132 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #17, !range !46
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %117, !llvm.loop !89

134:                                              ; preds = %131, %113, %110
  %135 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !41
  %136 = tail call ptr @splay_tree_min(ptr noundef %135) #18
  %137 = icmp eq ptr %136, null
  br i1 %137, label %150, label %138

138:                                              ; preds = %134, %138
  %139 = phi ptr [ %148, %138 ], [ %136, %134 ]
  %140 = load i64, ptr %139, align 8, !tbaa !86
  %141 = getelementptr inbounds %struct.splay_tree_node_s, ptr %139, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !47
  %143 = inttoptr i64 %142 to ptr
  tail call void @bitmap_obstack_free(ptr noundef %143) #18
  %144 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !41
  %145 = shl i64 %140, 32
  %146 = ashr exact i64 %145, 32
  tail call void @splay_tree_remove(ptr noundef %144, i64 noundef %146) #18
  %147 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !41
  %148 = tail call ptr @splay_tree_successor(ptr noundef %147, i64 noundef %146) #18
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %138, !llvm.loop !90

150:                                              ; preds = %138, %134
  %151 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !41
  %152 = tail call ptr @splay_tree_min(ptr noundef %151) #18
  %153 = icmp eq ptr %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %150, %154
  %155 = phi ptr [ %162, %154 ], [ %152, %150 ]
  %156 = getelementptr inbounds %struct.splay_tree_node_s, ptr %155, i64 0, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !47
  %158 = inttoptr i64 %157 to ptr
  tail call void @bitmap_obstack_free(ptr noundef %158) #18
  %159 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !41
  %160 = load i64, ptr %155, align 8, !tbaa !86
  tail call void @splay_tree_remove(ptr noundef %159, i64 noundef %160) #18
  %161 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !41
  %162 = tail call ptr @splay_tree_min(ptr noundef %161) #18
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %154, !llvm.loop !91

164:                                              ; preds = %154, %150
  %165 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !41
  tail call void @splay_tree_delete(ptr noundef %165) #18
  store ptr null, ptr @uid_to_subtype_map, align 8, !tbaa !41
  %166 = load ptr, ptr @global_types_exposed_parameter, align 8, !tbaa !41
  tail call void @bitmap_obstack_free(ptr noundef %166) #18
  store ptr null, ptr @global_types_exposed_parameter, align 8, !tbaa !41
  %167 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  tail call void @bitmap_obstack_free(ptr noundef %167) #18
  store ptr null, ptr @been_there_done_that, align 8, !tbaa !41
  %168 = load ptr, ptr @bitmap_tmp, align 8, !tbaa !41
  tail call void @bitmap_obstack_free(ptr noundef %168) #18
  store ptr null, ptr @bitmap_tmp, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @type_to_consider(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !92 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi ptr [ %0, %1 ], [ %10, %8 ]
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %12 [
    i16 10, label %8
    i16 12, label %8
    i16 15, label %8
    i16 7, label %11
    i16 13, label %11
    i16 6, label %11
    i16 8, label %11
    i16 18, label %11
    i16 9, label %11
    i16 11, label %11
    i16 16, label %11
    i16 17, label %11
    i16 14, label %11
    i16 19, label %11
  ]

8:                                                ; preds = %2, %2, %2
  %9 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  br label %2, !llvm.loop !93

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i8 [ 1, %11 ], [ 0, %2 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @discover_unique_type(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !94 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #18
  %3 = tail call fastcc ptr @get_name_of_type(ptr noundef %0) #17
  store ptr %3, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.type_brand_s, ptr %2, i64 0, i32 1
  %5 = ptrtoint ptr %2 to i64
  br label %6

6:                                                ; preds = %12, %1
  %7 = phi i32 [ 0, %1 ], [ %8, %12 ]
  %8 = add nuw nsw i32 %7, 1
  store i32 %7, ptr %4, align 8, !tbaa !97
  %9 = load ptr, ptr @all_canon_types, align 8, !tbaa !41
  %10 = tail call ptr @splay_tree_lookup(ptr noundef %9, i64 noundef %5) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !47
  %15 = inttoptr i64 %14 to ptr
  %16 = tail call zeroext i8 @types_compatible_p(ptr noundef %0, ptr noundef %15) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %6, label %18

18:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %2) #17
  %19 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !41
  %20 = ptrtoint ptr %0 to i64
  %21 = tail call ptr @splay_tree_insert(ptr noundef %19, i64 noundef %20, i64 noundef %14) #18
  br label %36

22:                                               ; preds = %6
  store i32 %8, ptr %4, align 8, !tbaa !97
  %23 = load ptr, ptr @all_canon_types, align 8, !tbaa !41
  %24 = ptrtoint ptr %0 to i64
  %25 = tail call ptr @splay_tree_insert(ptr noundef %23, i64 noundef %5, i64 noundef %24) #18
  %26 = load ptr, ptr @type_to_canon_type, align 8, !tbaa !41
  %27 = tail call ptr @splay_tree_insert(ptr noundef %26, i64 noundef %24, i64 noundef %24) #18
  %28 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !41
  %29 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !35
  %31 = zext i32 %30 to i64
  %32 = tail call ptr @splay_tree_insert(ptr noundef %28, i64 noundef %31, i64 noundef %24) #18
  %33 = load ptr, ptr @global_types_seen, align 8, !tbaa !41
  %34 = load i32, ptr %29, align 8, !tbaa !35
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %34) #18
  br label %36

36:                                               ; preds = %18, %22
  %37 = phi ptr [ %0, %22 ], [ %15, %18 ]
  ret ptr %37
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_name_of_type(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %16 [
    i16 35, label %8
    i16 1, label %12
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %8
  %13 = phi ptr [ %10, %8 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %12, %5, %8, %1
  %17 = phi ptr [ @.str.1, %1 ], [ @.str.1, %8 ], [ @.str.1, %5 ], [ %15, %12 ]
  ret ptr %17
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !99 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @look_for_casts_stmt(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !100 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #17, !range !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 771, ptr noundef nonnull @.str.3) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #17, !range !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %17

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %13 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #17
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = tail call fastcc i32 @check_cast(ptr noundef %15, ptr noundef %12) #17
  br label %28

17:                                               ; preds = %8, %17
  %18 = phi i64 [ %24, %17 ], [ 0, %8 ]
  %19 = phi i32 [ %23, %17 ], [ 0, %8 ]
  %20 = trunc i64 %18 to i32
  %21 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %20) #17
  %22 = tail call fastcc i32 @look_for_casts(ptr noundef %21) #17
  %23 = or i32 %22, %19
  %24 = add nuw nsw i64 %18, 1
  %25 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %17, label %28, !llvm.loop !101

28:                                               ; preds = %17, %11
  %29 = phi i32 [ %16, %11 ], [ %23, %17 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %8, %28
  br label %32

32:                                               ; preds = %28, %31
  %33 = phi i32 [ 256, %31 ], [ %29, %28 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !34 !PGOFuncName !102 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 5) #17
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !103
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !105 {
  %2 = load i8, ptr %0, align 8, !tbaa !106
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %7, ptr %2, align 8, !tbaa !111
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !115
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !114
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !106
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !117 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #17, !range !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !57
  %6 = icmp eq i32 %5, 113
  %7 = and i32 %5, 65533
  %8 = icmp eq i32 %7, 116
  %9 = or i1 %6, %8
  %10 = icmp eq i32 %5, 77
  %11 = or i1 %10, %9
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi i8 [ %12, %4 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_cast(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call fastcc ptr @get_canon_type(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %6 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  %10 = icmp eq ptr %5, %6
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(ptr noundef nonnull %6) #17
  %14 = icmp sgt i32 %13, -1
  %15 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(ptr noundef nonnull %5) #17
  %16 = icmp sgt i32 %15, -1
  br i1 %14, label %17, label %36

17:                                               ; preds = %12
  br i1 %16, label %18, label %23

18:                                               ; preds = %17
  %19 = tail call fastcc i32 @check_cast_type(ptr noundef nonnull %6, ptr noundef nonnull %5) #17, !range !119
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @mark_type(ptr noundef nonnull %6, i32 noundef 1) #17
  br label %37

23:                                               ; preds = %17
  %24 = load i64, ptr %6, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %29 [
    i16 10, label %26
    i16 12, label %26
  ]

26:                                               ; preds = %23, %23
  %27 = load i64, ptr %5, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %41 [
    i16 10, label %29
    i16 12, label %29
  ]

29:                                               ; preds = %26, %26, %23
  %30 = load i64, ptr %1, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 141
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = tail call fastcc zeroext i8 @is_malloc_result(ptr noundef nonnull %1) #17, !range !46
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %41

36:                                               ; preds = %12
  br i1 %16, label %37, label %41

37:                                               ; preds = %36, %29, %33, %21
  %38 = phi ptr [ %5, %21 ], [ %6, %33 ], [ %6, %29 ], [ %5, %36 ]
  %39 = phi i32 [ 4, %21 ], [ 16, %33 ], [ 16, %29 ], [ 64, %36 ]
  %40 = tail call fastcc ptr @mark_type(ptr noundef nonnull %38, i32 noundef 1) #17
  br label %41

41:                                               ; preds = %37, %36, %18, %26, %33, %2
  %42 = phi i32 [ 256, %2 ], [ %19, %18 ], [ 256, %36 ], [ 32, %26 ], [ 128, %33 ], [ %39, %37 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !35
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @look_for_casts(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !121 {
  %2 = tail call zeroext i8 @is_gimple_cast(ptr noundef %0) #18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 118
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #17, !range !46
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %44, label %17

11:                                               ; preds = %4, %1
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = tail call fastcc i32 @check_cast(ptr noundef %15, ptr noundef %13) #17
  br label %41

17:                                               ; preds = %8, %37
  %18 = phi ptr [ %21, %37 ], [ %0, %8 ]
  %19 = phi i32 [ %38, %37 ], [ 0, %8 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %37 [
    i16 118, label %24
    i16 41, label %31
  ]

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = tail call fastcc i32 @check_cast(ptr noundef %28, ptr noundef %26) #17
  %30 = or i32 %29, %19
  br label %37

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = tail call fastcc ptr @get_canon_type(ptr noundef %35, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %37

37:                                               ; preds = %17, %31, %24
  %38 = phi i32 [ %30, %24 ], [ %19, %31 ], [ %19, %17 ]
  %39 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %21) #17, !range !46
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %17, !llvm.loop !122

41:                                               ; preds = %37, %11
  %42 = phi i32 [ %16, %11 ], [ %38, %37 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %8, %41
  br label %45

45:                                               ; preds = %41, %44
  %46 = phi i32 [ 256, %44 ], [ %42, %41 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !123 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !46
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @check_cast_type(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !34 !PGOFuncName !124 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !41
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = call fastcc i32 @count_stars(ptr noundef nonnull %3) #17
  %6 = call fastcc i32 @count_stars(ptr noundef nonnull %4) #17
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !41
  %10 = load ptr, ptr %4, align 8, !tbaa !41
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef %9, ptr noundef %10) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef %10, ptr noundef %9) #17
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 4, i32 2
  br label %19

19:                                               ; preds = %15, %12, %8, %2
  %20 = phi i32 [ 4, %2 ], [ 8, %8 ], [ 1, %12 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mark_type(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !125 {
  %3 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = load ptr, ptr @global_types_exposed_parameter, align 8
  %8 = load ptr, ptr @global_types_full_escape, align 8
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !35
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %11) #18
  %16 = icmp eq i32 %1, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @global_types_exposed_parameter, align 8, !tbaa !41
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %11) #18
  br label %20

20:                                               ; preds = %17, %14, %5, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_malloc_result(ptr noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !126 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 4294967296
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %9) #17, !range !46
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %9) #17
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = tail call i32 @gimple_call_flags(ptr noundef %9) #18
  %17 = trunc i32 %16 to i8
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 1
  br label %20

20:                                               ; preds = %12, %7, %3, %1, %15
  %21 = phi i8 [ %19, %15 ], [ 0, %1 ], [ 0, %3 ], [ 0, %7 ], [ 0, %12 ]
  ret i8 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_stars(ptr nocapture noundef %0) unnamed_addr #8 !prof !34 !PGOFuncName !127 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %11, %10 ]
  %4 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %5 = load ptr, ptr %3, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %13 [
    i16 10, label %10
    i16 12, label %10
  ]

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = add nuw nsw i32 %4, 1
  br label %2, !llvm.loop !128

13:                                               ; preds = %2
  store ptr %7, ptr %0, align 8, !tbaa !41
  ret i32 %4
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @parent_type_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 !prof !34 !PGOFuncName !129 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_binfo, ptr %5, i64 0, i32 9
  %9 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %3) #17, !range !130
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %15

11:                                               ; preds = %21
  %12 = add nuw nsw i32 %16, 1
  %13 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %8, i32 noundef %12, ptr noundef nonnull %3) #17, !range !130
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15, !llvm.loop !131

15:                                               ; preds = %7, %11
  %16 = phi i32 [ %12, %11 ], [ 0, %7 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %101, label %21

21:                                               ; preds = %15
  %22 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef %19, ptr noundef %1) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %11, label %101

24:                                               ; preds = %11, %7, %2
  %25 = load i64, ptr %0, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -17
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %70, label %35

34:                                               ; preds = %44
  br i1 %33, label %70, label %48

35:                                               ; preds = %30, %44
  %36 = phi ptr [ %46, %44 ], [ %32, %30 ]
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 31
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %101, label %44

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %34, label %35, !llvm.loop !132

48:                                               ; preds = %34, %64
  %49 = phi ptr [ %66, %64 ], [ %32, %34 ]
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 31
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -16
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef nonnull %55, ptr noundef %1) #17
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %61, %53, %48
  %65 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %48, !llvm.loop !133

68:                                               ; preds = %64
  %69 = load i64, ptr %0, align 8
  br label %70

70:                                               ; preds = %30, %68, %34, %24
  %71 = phi i64 [ %69, %68 ], [ %25, %34 ], [ %25, %24 ], [ %25, %30 ]
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 16
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %100, label %78

78:                                               ; preds = %74, %96
  %79 = phi ptr [ %98, %96 ], [ %76, %74 ]
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 31
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = icmp eq ptr %85, %1
  br i1 %86, label %101, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %85, align 8
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -16
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = tail call fastcc zeroext i8 @parent_type_p(ptr noundef nonnull %85, ptr noundef %1) #17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %101

96:                                               ; preds = %78, %87
  %97 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %78, !llvm.loop !134

100:                                              ; preds = %96, %74, %93
  br label %101

101:                                              ; preds = %15, %21, %40, %61, %83, %70, %100, %93
  %102 = phi i8 [ 1, %93 ], [ 0, %100 ], [ 0, %70 ], [ 1, %83 ], [ 1, %61 ], [ 1, %40 ], [ 1, %21 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %102
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !34 !PGOFuncName !135 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !136
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !41
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !138 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !60
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !139 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_cast(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !140 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !141 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !60
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !142 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !143
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.3) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !144 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !60
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !34 !PGOFuncName !145 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !58
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !prof !34 !PGOFuncName !146 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 747, ptr noundef nonnull @.str.3) #18
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !147
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #17
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !147
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !148
  store ptr %22, ptr %16, align 8, !tbaa !147
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !111
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #17
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !111
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !112
  store ptr %36, ptr %29, align 8, !tbaa !111
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !106
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !150 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !151 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !152 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !153 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #17, !range !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !154 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !60
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !155 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !156 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.3) #18
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !34 !PGOFuncName !157 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #17
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !103
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #11 !prof !34 !PGOFuncName !158 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #17
  %8 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %8, ptr %2, align 8, !tbaa !111
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #17
  %17 = load ptr, ptr %11, align 8, !tbaa !148
  store ptr %17, ptr %10, align 8, !tbaa !147
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !106
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !161 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !60
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.3) #18
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 !prof !34 !PGOFuncName !162 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !35
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipa_init() unnamed_addr #2 !prof !34 !PGOFuncName !163 {
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @ipa_obstack) #18
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %1, ptr @global_types_exposed_parameter, align 8, !tbaa !41
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %2, ptr @global_types_full_escape, align 8, !tbaa !41
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  store ptr %3, ptr @global_types_seen, align 8, !tbaa !41
  %4 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %4, ptr @uid_to_canon_type, align 8, !tbaa !41
  %5 = tail call ptr @splay_tree_new(ptr noundef nonnull @compare_type_brand, ptr noundef null, ptr noundef null) #18
  store ptr %5, ptr @all_canon_types, align 8, !tbaa !41
  %6 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef null) #18
  store ptr %6, ptr @type_to_canon_type, align 8, !tbaa !41
  %7 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %7, ptr @uid_to_subtype_map, align 8, !tbaa !41
  %8 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %8, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  %9 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null) #18
  store ptr %9, ptr @uid_to_addressof_up_map, align 8, !tbaa !41
  %10 = tail call ptr @pointer_set_create() #18
  store ptr %10, ptr @visited_nodes, align 8, !tbaa !41
  store i1 true, ptr @initialized, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_variable(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !164 {
  %2 = load ptr, ptr %0, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call fastcc ptr @get_canon_type(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %6 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call fastcc void @mark_interesting_type(ptr noundef %5, i32 noundef 1) #17
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i64, ptr %2, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1645, ptr noundef nonnull @.str.3) #18
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call fastcc void @check_tree(ptr noundef nonnull %18) #17
  br label %21

21:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !167 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %5 = load i8, ptr %4, align 8
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  tail call fastcc void @check_function_parameter_and_return_types(ptr noundef %3, i8 noundef zeroext %7) #17
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #18
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef %11) #17
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !169
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !175
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %13, %32
  %25 = phi ptr [ %34, %32 ], [ %20, %13 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %25) #17
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !46
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %28
  %29 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  tail call fastcc void @scan_for_refs(ptr noundef %29) #17
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %30 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !46
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %28, label %32, !llvm.loop !176

32:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !173
  %35 = load ptr, ptr %16, align 8, !tbaa !169
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !175
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %39, label %24, !llvm.loop !177

39:                                               ; preds = %32
  %40 = load ptr, ptr %14, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %69, label %42

42:                                               ; preds = %13, %39
  %43 = phi ptr [ %40, %39 ], [ %15, %13 ]
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %42, %62
  %48 = phi ptr [ %67, %62 ], [ %45, %42 ]
  %49 = getelementptr inbounds %struct.tree_list, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 32
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = icmp ne ptr %56, null
  %58 = and i64 %51, 67108864
  %59 = icmp eq i64 %58, 0
  %60 = and i1 %59, %57
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  tail call fastcc void @check_tree(ptr noundef nonnull %56) #17
  br label %62

62:                                               ; preds = %61, %54, %47
  %63 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = tail call fastcc ptr @get_canon_type(ptr noundef %64, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %66 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %47, !llvm.loop !178

69:                                               ; preds = %62, %42, %39
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !34 !PGOFuncName !179 {
  %4 = load ptr, ptr %1, align 8, !tbaa !180
  store ptr %4, ptr %0, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !184
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !182
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !185
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !187
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !143
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !188
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !58
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !34 !PGOFuncName !189 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !188
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !58
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !190

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !58
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !58
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !187
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !182
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !187
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !143
  store i64 %35, ptr %3, align 8, !tbaa !188
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !58
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !58
  %40 = load i32, ptr %23, align 8, !tbaa !187
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !187
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !191

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !192
  store ptr %44, ptr %0, align 8, !tbaa !182
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !185
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !58
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !188
  store i32 %16, ptr %1, align 4, !tbaa !58
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @type_for_uid(i32 noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !193 {
  %2 = load ptr, ptr @uid_to_canon_type, align 8, !tbaa !41
  %3 = sext i32 %0 to i64
  %4 = tail call ptr @splay_tree_lookup(ptr noundef %2, i64 noundef %3) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !47
  %9 = inttoptr i64 %8 to ptr
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @close_type_seen(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !194 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !35
  %8 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %7) #18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %5
  %12 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %7) #18
  %14 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_binfo, ptr %15, i64 0, i32 9
  %19 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %18, i32 noundef 0, ptr noundef nonnull %2) #17, !range !130
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %33, %21 ], [ 0, %17 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !35
  %30 = tail call fastcc ptr @subtype_map_for_uid(i32 noundef %29, i8 noundef zeroext 1) #17
  %31 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %30, i32 noundef %7) #18
  %32 = tail call fastcc ptr @get_canon_type(ptr noundef %25, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  tail call fastcc void @close_type_seen(ptr noundef %32) #17
  %33 = add nuw nsw i32 %22, 1
  %34 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %18, i32 noundef %33, ptr noundef nonnull %2) #17, !range !130
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %21, !llvm.loop !195

36:                                               ; preds = %21, %17, %11
  %37 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %36, %52
  %41 = phi ptr [ %54, %52 ], [ %38, %36 ]
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 31
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = tail call i32 @ipa_type_escape_star_count_of_interesting_or_array_type(ptr noundef %47) #17
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = tail call fastcc ptr @get_canon_type(ptr noundef %47, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  tail call fastcc void @close_type_seen(ptr noundef %51) #17
  br label %52

52:                                               ; preds = %45, %50, %40
  %53 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %40, !llvm.loop !196

56:                                               ; preds = %52, %36, %5, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !34 !PGOFuncName !197 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !188
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !188
  %6 = load i32, ptr %1, align 4, !tbaa !58
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @close_type_exposed_parameter(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !198 {
  %2 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !35
  %7 = load i64, ptr %2, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %10 [
    i16 10, label %9
    i16 12, label %9
  ]

9:                                                ; preds = %4, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1797, ptr noundef nonnull @.str.3) #18
  br label %10

10:                                               ; preds = %4, %9
  %11 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %11, i32 noundef %6) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %6) #18
  %17 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %14, %32
  %21 = phi ptr [ %34, %32 ], [ %18, %14 ]
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 31
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = tail call fastcc ptr @get_canon_type(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call fastcc void @mark_interesting_type(ptr noundef %28, i32 noundef 0) #17
  %29 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(ptr noundef %28) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call fastcc void @close_type_exposed_parameter(ptr noundef %28) #17
  br label %32

32:                                               ; preds = %25, %31, %20
  %33 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !199

36:                                               ; preds = %32, %14, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @close_type_full_escape(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !200 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %5 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %9) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %82

13:                                               ; preds = %7
  %14 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %9) #18
  %16 = tail call fastcc ptr @subtype_map_for_uid(i32 noundef %9, i8 noundef zeroext 0) #17
  %17 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_binfo, ptr %18, i64 0, i32 9
  %22 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %21, i32 noundef 0, ptr noundef nonnull %3) #17, !range !130
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20, %24
  %25 = phi i32 [ %30, %24 ], [ 0, %20 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = tail call fastcc ptr @mark_type(ptr noundef %28, i32 noundef 1) #17
  tail call fastcc void @close_type_full_escape(ptr noundef %29) #17
  %30 = add i32 %25, 1
  %31 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %21, i32 noundef %30, ptr noundef nonnull %3) #17, !range !130
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %24, !llvm.loop !201

33:                                               ; preds = %24, %20
  %34 = phi i32 [ 0, %20 ], [ %30, %24 ]
  store i32 %34, ptr %2, align 4, !tbaa !58
  br label %35

35:                                               ; preds = %33, %13
  %36 = icmp eq ptr %16, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %2) #17
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #17, !range !46
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37, %40
  %41 = load i32, ptr %2, align 4, !tbaa !58
  %42 = tail call fastcc ptr @type_for_uid(i32 noundef %41) #17
  %43 = tail call fastcc ptr @mark_type(ptr noundef %42, i32 noundef 1) #17
  tail call fastcc void @close_type_full_escape(ptr noundef %43) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #17
  %44 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #17, !range !46
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %40, !llvm.loop !202

46:                                               ; preds = %40, %37, %35
  %47 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %46, %62
  %51 = phi ptr [ %64, %62 ], [ %48, %46 ]
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 31
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = tail call i32 @ipa_type_escape_star_count_of_interesting_or_array_type(ptr noundef %57) #17
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = tail call fastcc ptr @mark_type(ptr noundef %57, i32 noundef 1) #17
  tail call fastcc void @close_type_full_escape(ptr noundef %61) #17
  br label %62

62:                                               ; preds = %55, %60, %50
  %63 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %50, !llvm.loop !203

66:                                               ; preds = %62, %46
  %67 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !41
  %68 = sext i32 %9 to i64
  %69 = tail call ptr @splay_tree_lookup(ptr noundef %67, i64 noundef %68) #18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.splay_tree_node_s, ptr %69, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !47
  %74 = inttoptr i64 %73 to ptr
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %74, ptr noundef nonnull %2) #17
  %75 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #17, !range !46
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71, %77
  %78 = load i32, ptr %2, align 4, !tbaa !58
  %79 = tail call fastcc ptr @type_for_uid(i32 noundef %78) #17
  tail call fastcc void @close_type_full_escape(ptr noundef %79) #17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #17
  %80 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #17, !range !46
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %77, !llvm.loop !204

82:                                               ; preds = %77, %71, %66, %7, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @close_addressof_down(i32 noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !205 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  %4 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  %5 = sext i32 %0 to i64
  %6 = tail call ptr @splay_tree_lookup(ptr noundef %4, i64 noundef %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !47
  %11 = inttoptr i64 %10 to ptr
  %12 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %12, i32 noundef %0) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %8
  %16 = load ptr, ptr @been_there_done_that, align 8, !tbaa !41
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %0) #18
  %18 = load ptr, ptr @global_types_full_escape, align 8, !tbaa !41
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %0) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  tail call void @bitmap_obstack_free(ptr noundef %11) #18
  %22 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  tail call void @splay_tree_remove(ptr noundef %22, i64 noundef %5) #18
  br label %39

23:                                               ; preds = %15
  %24 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %11, ptr noundef nonnull %3) #17
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #17, !range !46
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23, %34
  %28 = load i32, ptr %3, align 4, !tbaa !58
  %29 = tail call fastcc ptr @close_addressof_down(i32 noundef %28) #17
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %28) #18
  %31 = icmp eq ptr %29, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %24, ptr noundef nonnull %29) #18
  br label %34

34:                                               ; preds = %32, %27
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %35 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #17, !range !46
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %27, !llvm.loop !206

37:                                               ; preds = %34, %23
  %38 = ptrtoint ptr %24 to i64
  store i64 %38, ptr %9, align 8, !tbaa !47
  tail call void @bitmap_obstack_free(ptr noundef %11) #18
  br label %39

39:                                               ; preds = %8, %1, %37, %21
  %40 = phi ptr [ null, %21 ], [ %24, %37 ], [ null, %1 ], [ %11, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret ptr %40
}

; Function Attrs: optsize
declare ptr @splay_tree_successor(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_type_brand(i64 noundef %0, i64 noundef %1) #13 !prof !34 !PGOFuncName !207 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = load ptr, ptr %3, align 8, !tbaa !95
  %6 = load ptr, ptr %4, align 8, !tbaa !95
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.type_brand_s, ptr %4, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.type_brand_s, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !97
  %14 = sub nsw i32 %11, %13
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i32 [ %14, %9 ], [ %7, %2 ]
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @splay_tree_compare_pointers(i64 noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_interesting_type(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !208 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(ptr noundef nonnull %0) #17
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 10, label %13
    i16 12, label %13
  ]

12:                                               ; preds = %9, %7
  br label %13

13:                                               ; preds = %9, %9, %12
  %14 = phi i32 [ %1, %12 ], [ 1, %9 ], [ 1, %9 ]
  %15 = tail call fastcc ptr @mark_type(ptr noundef nonnull %0, i32 noundef %14) #17
  br label %16

16:                                               ; preds = %13, %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_tree(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !209 {
  br label %2

2:                                                ; preds = %47, %1
  %3 = phi ptr [ %0, %1 ], [ %49, %47 ]
  %4 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %3) #17, !range !46
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %3, %2 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 45
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  tail call fastcc void @check_operand(ptr noundef %13) #17
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %16) #17, !range !46
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %6, !llvm.loop !210

19:                                               ; preds = %14, %2
  %20 = phi ptr [ %3, %2 ], [ %16, %14 ]
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -47
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  tail call fastcc void @check_tree(ptr noundef %28) #17
  %29 = load i64, ptr %20, align 8
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi i64 [ %21, %19 ], [ %29, %26 ]
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %38 [
    i16 32, label %41
    i16 34, label %41
    i16 36, label %41
    i16 141, label %33
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %38 [
    i16 32, label %41
    i16 34, label %41
    i16 36, label %41
  ]

38:                                               ; preds = %33, %30
  %39 = and i64 %31, 65535
  %40 = icmp eq i64 %39, 29
  br i1 %40, label %41, label %51

41:                                               ; preds = %33, %33, %33, %30, %30, %30, %38
  tail call fastcc void @check_operand(ptr noundef nonnull %20) #17
  %42 = load i64, ptr %20, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !58
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %2

51:                                               ; preds = %41, %47, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_operand(ptr noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !211 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %8 [
    i16 29, label %6
    i16 32, label %7
  ]

6:                                                ; preds = %3
  tail call fastcc void @check_function_parameter_and_return_types(ptr noundef nonnull %0, i8 noundef zeroext 1) #17
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @has_proper_scope_for_analysis(ptr noundef nonnull %0) #17
  br label %8

8:                                                ; preds = %3, %7, %1, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_function_parameter_and_return_types(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 !prof !34 !PGOFuncName !212 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  br label %10

10:                                               ; preds = %8, %19
  %11 = phi ptr [ %6, %8 ], [ %21, %19 ]
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !41
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %39, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @get_canon_type(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br i1 %9, label %19, label %18

18:                                               ; preds = %16
  tail call fastcc void @mark_interesting_type(ptr noundef %17, i32 noundef 0) #17
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %10, !llvm.loop !213

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = icmp eq i8 %1, 0
  br label %29

29:                                               ; preds = %27, %35
  %30 = phi ptr [ %25, %27 ], [ %37, %35 ]
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = tail call fastcc ptr @get_canon_type(ptr noundef %32, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br i1 %28, label %35, label %34

34:                                               ; preds = %29
  tail call fastcc void @mark_interesting_type(ptr noundef %33, i32 noundef 0) #17
  br label %35

35:                                               ; preds = %34, %29
  %36 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29, !llvm.loop !214

39:                                               ; preds = %10, %19, %35, %23
  %40 = icmp eq i8 %1, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %3, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = tail call fastcc ptr @get_canon_type(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call fastcc void @mark_interesting_type(ptr noundef %45, i32 noundef 0) #17
  br label %46

46:                                               ; preds = %41, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @has_proper_scope_for_analysis(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !34 !PGOFuncName !215 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = tail call fastcc ptr @get_canon_type(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 8192
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 524288
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = and i64 %12, 67108864
  %17 = and i64 %8, 33554432
  %18 = or disjoint i64 %16, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = and i64 %12, 134217728
  %22 = or disjoint i64 %21, %17
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = and i64 %12, 1048576
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %29) #18
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24, %27, %31, %6
  tail call fastcc void @mark_interesting_type(ptr noundef nonnull %4, i32 noundef 1) #17
  br label %35

35:                                               ; preds = %34, %20, %31, %15, %11, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !34 !PGOFuncName !216 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !34 !PGOFuncName !221 {
  %2 = load ptr, ptr %0, align 8, !tbaa !217
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_for_refs(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !222 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !60
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 8, label %5
    i8 7, label %6
  ]

4:                                                ; preds = %1
  tail call fastcc void @check_assign(ptr noundef %0) #17
  br label %7

5:                                                ; preds = %1
  tail call fastcc void @check_call(ptr noundef %0) #17
  br label %7

6:                                                ; preds = %1
  tail call fastcc void @check_asm(ptr noundef %0) #17
  br label %7

7:                                                ; preds = %1, %6, %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !34 !PGOFuncName !223 {
  %2 = load ptr, ptr %0, align 8, !tbaa !217
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #11 !prof !34 !PGOFuncName !226 {
  %2 = load ptr, ptr %0, align 8, !tbaa !217
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  store ptr %4, ptr %0, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !228 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !229
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !230
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !232 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !233
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_assign(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !235 {
  %2 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #17
  tail call fastcc void @check_lhs_var(ptr noundef %2) #17
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !57
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !58
  switch i32 %6, label %67 [
    i32 7, label %7
    i32 6, label %38
    i32 4, label %53
    i32 3, label %57
    i32 10, label %59
  ]

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call fastcc ptr @get_canon_type(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %12 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #17
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call fastcc ptr @get_canon_type(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %16 = icmp eq ptr %11, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %7
  %18 = load i64, ptr %11, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %25 [
    i16 10, label %20
    i16 12, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !57
  %22 = tail call fastcc zeroext i8 @okay_pointer_operation(i32 noundef %21, ptr noundef nonnull %8, ptr noundef nonnull %12) #17, !range !46
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call fastcc void @mark_interesting_type(ptr noundef nonnull %11, i32 noundef 1) #17
  br label %25

25:                                               ; preds = %17, %24, %20, %7
  %26 = icmp eq ptr %15, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %25
  %28 = load i64, ptr %15, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %35 [
    i16 10, label %30
    i16 12, label %30
  ]

30:                                               ; preds = %27, %27
  %31 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !57
  %32 = tail call fastcc zeroext i8 @okay_pointer_operation(i32 noundef %31, ptr noundef nonnull %12, ptr noundef nonnull %8) #17, !range !46
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @mark_interesting_type(ptr noundef nonnull %15, i32 noundef 1) #17
  br label %35

35:                                               ; preds = %27, %34, %30, %25
  %36 = tail call fastcc i32 @look_for_casts(ptr noundef nonnull %8) #17
  %37 = tail call fastcc i32 @look_for_casts(ptr noundef nonnull %12) #17
  tail call fastcc void @check_rhs_var(ptr noundef nonnull %8) #17
  tail call fastcc void @check_rhs_var(ptr noundef nonnull %12) #17
  br label %67

38:                                               ; preds = %1
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = tail call fastcc ptr @get_canon_type(ptr noundef %41, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i64, ptr %42, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %51 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %44, %44
  %48 = load i64, ptr %39, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %51 [
    i16 79, label %50
    i16 82, label %50
  ]

50:                                               ; preds = %47, %47
  tail call fastcc void @mark_interesting_type(ptr noundef nonnull %42, i32 noundef 1) #17
  br label %51

51:                                               ; preds = %47, %44, %50, %38
  tail call fastcc void @check_rhs_var(ptr noundef nonnull %39) #17
  %52 = tail call fastcc i32 @look_for_casts(ptr noundef nonnull %39) #17
  br label %67

53:                                               ; preds = %1
  %54 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %55 = tail call fastcc i32 @look_for_casts(ptr noundef %54) #17
  %56 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  tail call fastcc void @check_rhs_var(ptr noundef %56) #17
  br label %67

57:                                               ; preds = %1
  %58 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  tail call fastcc void @check_rhs_var(ptr noundef %58) #17
  br label %67

59:                                               ; preds = %1
  %60 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !57
  %61 = icmp eq i32 %60, 121
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %64 = getelementptr inbounds %struct.tree_exp, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = tail call fastcc i32 @look_for_casts(ptr noundef %65) #17
  tail call fastcc void @check_rhs_var(ptr noundef %63) #17
  br label %67

67:                                               ; preds = %1, %59, %62, %57, %53, %51, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_call(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !236 {
  %2 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #17
  %3 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %7 = trunc i64 %6 to i32
  %8 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %7) #17
  tail call fastcc void @check_rhs_var(ptr noundef %8) #17
  %9 = add nuw nsw i64 %6, 1
  %10 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %5, label %13, !llvm.loop !237

13:                                               ; preds = %5, %1
  %14 = icmp eq ptr %2, null
  br i1 %14, label %104, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @cgraph_node(ptr noundef nonnull %2) #18
  %17 = tail call i32 @cgraph_function_body_availability(ptr noundef %16) #18
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tree_list, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !41
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %78, label %33

28:                                               ; preds = %45
  %29 = getelementptr inbounds %struct.tree_list, ptr %49, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !41
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %78, label %33, !llvm.loop !238

33:                                               ; preds = %23, %28
  %34 = phi ptr [ %29, %28 ], [ %24, %23 ]
  %35 = phi ptr [ %46, %28 ], [ null, %23 ]
  %36 = phi ptr [ %49, %28 ], [ %21, %23 ]
  %37 = phi i64 [ %50, %28 ], [ 0, %23 ]
  %38 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %33
  %42 = trunc i64 %37 to i32
  %43 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %42) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %78, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %34, align 8, !tbaa !35
  %47 = tail call fastcc i32 @check_cast(ptr noundef %46, ptr noundef nonnull %43) #17
  %48 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp eq ptr %49, null
  br i1 %51, label %78, label %28, !llvm.loop !238

52:                                               ; preds = %15
  %53 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %78, label %63

59:                                               ; preds = %70
  %60 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %75, %61
  br i1 %62, label %63, label %78, !llvm.loop !239

63:                                               ; preds = %56, %59
  %64 = phi ptr [ %72, %59 ], [ null, %56 ]
  %65 = phi i64 [ %75, %59 ], [ 0, %56 ]
  %66 = phi ptr [ %76, %59 ], [ %54, %56 ]
  %67 = trunc i64 %65 to i32
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %67) #17
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = tail call fastcc i32 @check_cast(ptr noundef %72, ptr noundef nonnull %68) #17
  %74 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 1
  %75 = add nuw nsw i64 %65, 1
  %76 = load ptr, ptr %74, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %59, !llvm.loop !239

78:                                               ; preds = %28, %45, %33, %41, %63, %59, %70, %23, %56, %52
  %79 = phi ptr [ null, %52 ], [ null, %56 ], [ null, %23 ], [ %72, %70 ], [ %72, %59 ], [ %64, %63 ], [ %35, %41 ], [ %35, %33 ], [ %46, %45 ], [ %46, %28 ]
  %80 = phi i64 [ 0, %52 ], [ 0, %56 ], [ 0, %23 ], [ %75, %70 ], [ %75, %59 ], [ %65, %63 ], [ %37, %41 ], [ %37, %33 ], [ %50, %45 ], [ %50, %28 ]
  %81 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = icmp eq ptr %79, null
  br label %86

86:                                               ; preds = %84, %96
  %87 = phi i64 [ %80, %84 ], [ %97, %96 ]
  %88 = trunc i64 %87 to i32
  %89 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %88) #17
  br i1 %85, label %92, label %90

90:                                               ; preds = %86
  %91 = tail call fastcc i32 @check_cast(ptr noundef nonnull %79, ptr noundef %89) #17
  br label %96

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  %95 = tail call fastcc ptr @get_canon_type(ptr noundef %94, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call fastcc void @mark_interesting_type(ptr noundef %95, i32 noundef 1) #17
  br label %96

96:                                               ; preds = %92, %90
  %97 = add nuw nsw i64 %87, 1
  %98 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %99 = zext i32 %98 to i64
  %100 = icmp ult i64 %97, %99
  br i1 %100, label %86, label %101, !llvm.loop !240

101:                                              ; preds = %96, %78
  %102 = add i32 %17, -1
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %125

104:                                              ; preds = %13, %101
  %105 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %114, %107 ], [ 0, %104 ]
  %109 = trunc i64 %108 to i32
  %110 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %109) #17
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  %113 = tail call fastcc ptr @get_canon_type(ptr noundef %112, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call fastcc void @mark_interesting_type(ptr noundef %113, i32 noundef 0) #17
  %114 = add nuw nsw i64 %108, 1
  %115 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #17
  %116 = zext i32 %115 to i64
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %107, label %118, !llvm.loop !241

118:                                              ; preds = %107, %104
  br i1 %14, label %125, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  %124 = tail call fastcc ptr @get_canon_type(ptr noundef %123, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  tail call fastcc void @mark_interesting_type(ptr noundef %124, i32 noundef 0) #17
  br label %125

125:                                              ; preds = %118, %119, %101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_asm(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !242 {
  %2 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #17, !range !60
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #17, !range !60
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %15

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %9) #17
  tail call fastcc void @check_lhs_var(ptr noundef %10) #17
  %11 = add nuw nsw i64 %8, 1
  %12 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #17, !range !60
  %13 = zext nneg i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %7, label %4, !llvm.loop !243

15:                                               ; preds = %4, %15
  %16 = phi i64 [ %19, %15 ], [ 0, %4 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %17) #17
  tail call fastcc void @check_rhs_var(ptr noundef %18) #17
  %19 = add nuw nsw i64 %16, 1
  %20 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #17, !range !60
  %21 = zext nneg i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %15, label %23, !llvm.loop !244

23:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_lhs_var(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !245 {
  tail call fastcc void @check_tree(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @okay_pointer_operation(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !34 !PGOFuncName !246 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  switch i32 %0, label %56 [
    i32 65, label %57
    i32 64, label %11
    i32 63, label %11
    i32 66, label %11
  ]

11:                                               ; preds = %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %12 = load i64, ptr %10, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %25 [
    i16 10, label %14
    i16 12, label %14
  ]

14:                                               ; preds = %11, %11
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i64, ptr %2, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call zeroext i8 @is_array_access_through_pointer_and_index(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #17, !range !46
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %11, %22, %18, %14
  %26 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = load i64, ptr %2, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !58
  %34 = icmp eq i32 %33, 1
  %35 = icmp ne ptr %29, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = tail call i32 @multiple_of_p(ptr noundef %39, ptr noundef nonnull %2, ptr noundef nonnull %29) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37, %25
  %43 = load i64, ptr %1, align 8
  %44 = and i64 %43, 65535
  %45 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !58
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %47, i1 %35, i1 false
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = tail call i32 @multiple_of_p(ptr noundef %51, ptr noundef nonnull %1, ptr noundef nonnull %29) #18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %22, %37, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %57

55:                                               ; preds = %49, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %55, %54, %3, %56
  %58 = phi i8 [ 0, %56 ], [ 1, %3 ], [ 0, %55 ], [ 1, %54 ]
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_rhs_var(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !247 {
  tail call fastcc void @look_for_address_of(ptr noundef %0) #17
  tail call fastcc void @check_tree(ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare i32 @multiple_of_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @look_for_address_of(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !248 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 121
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = tail call ptr @get_base_var(ptr noundef nonnull %0) #18
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %29, label %10

10:                                               ; preds = %5, %25
  %11 = phi ptr [ %27, %25 ], [ %8, %5 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %25 [
    i16 41, label %14
    i16 45, label %21
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  tail call fastcc void @mark_interesting_addressof(ptr noundef %18, ptr noundef %20) #17
  br label %25

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = tail call fastcc ptr @get_canon_type(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %25

25:                                               ; preds = %10, %21, %14
  %26 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, %6
  br i1 %28, label %29, label %10, !llvm.loop !249

29:                                               ; preds = %25, %5
  %30 = load i64, ptr %6, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call fastcc void @has_proper_scope_for_analysis(ptr noundef nonnull %6) #17
  br label %34

34:                                               ; preds = %29, %33, %1
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_interesting_addressof(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !250 {
  %3 = tail call fastcc ptr @get_canon_type(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %4 = tail call fastcc ptr @get_canon_type(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(ptr noundef nonnull %3) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1170, ptr noundef nonnull @.str.3) #18
  br label %16

16:                                               ; preds = %8, %15
  %17 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  %18 = sext i32 %10 to i64
  %19 = tail call ptr @splay_tree_lookup(ptr noundef %17, i64 noundef %18) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.splay_tree_node_s, ptr %19, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !47
  %24 = inttoptr i64 %23 to ptr
  br label %30

25:                                               ; preds = %16
  %26 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  %27 = load ptr, ptr @uid_to_addressof_down_map, align 8, !tbaa !41
  %28 = ptrtoint ptr %26 to i64
  %29 = tail call ptr @splay_tree_insert(ptr noundef %27, i64 noundef %18, i64 noundef %28) #18
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %24, %21 ], [ %26, %25 ]
  %32 = load i32, ptr %11, align 8, !tbaa !35
  %33 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %31, i32 noundef %32) #18
  %34 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !41
  %35 = sext i32 %12 to i64
  %36 = tail call ptr @splay_tree_lookup(ptr noundef %34, i64 noundef %35) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.splay_tree_node_s, ptr %36, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !47
  %41 = inttoptr i64 %40 to ptr
  br label %47

42:                                               ; preds = %30
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  %44 = load ptr, ptr @uid_to_addressof_up_map, align 8, !tbaa !41
  %45 = ptrtoint ptr %43 to i64
  %46 = tail call ptr @splay_tree_insert(ptr noundef %44, i64 noundef %35, i64 noundef %45) #18
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi ptr [ %41, %38 ], [ %43, %42 ]
  %49 = load i32, ptr %9, align 8, !tbaa !35
  %50 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %48, i32 noundef %49) #18
  br label %51

51:                                               ; preds = %2, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !251 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !252 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !253 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #17
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #2 !prof !34 !PGOFuncName !254 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !255 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !35
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !256 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !35
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2655, ptr noundef nonnull @.str.3) #18
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !35
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #17
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !257 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !35
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !34 !PGOFuncName !258 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !35
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 2622, ptr noundef nonnull @.str.3) #18
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @subtype_map_for_uid(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #2 !prof !34 !PGOFuncName !259 {
  %3 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !41
  %4 = sext i32 %0 to i64
  %5 = tail call ptr @splay_tree_lookup(ptr noundef %3, i64 noundef %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !47
  %10 = inttoptr i64 %9 to ptr
  br label %18

11:                                               ; preds = %2
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @ipa_obstack) #18
  %15 = load ptr, ptr @uid_to_subtype_map, align 8, !tbaa !41
  %16 = ptrtoint ptr %14 to i64
  %17 = tail call ptr @splay_tree_insert(ptr noundef %15, i64 noundef %4, i64 noundef %16) #18
  br label %18

18:                                               ; preds = %11, %13, %7
  %19 = phi ptr [ %10, %7 ], [ %14, %13 ], [ null, %11 ]
  ret ptr %19
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!"ipa-type-escape.c:get_canon_type_uid"}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !39}
!46 = !{i8 0, i8 2}
!47 = !{!48, !49, i64 8}
!48 = !{!"splay_tree_node_s", !49, i64 0, !49, i64 8, !42, i64 16, !42, i64 24}
!49 = !{!"long", !36, i64 0}
!50 = !{!"ipa-type-escape.c:get_canon_type"}
!51 = distinct !{!51, !39}
!52 = distinct !{!52, !39}
!53 = !{!54, !55, i64 0}
!54 = !{!"cast", !55, i64 0, !42, i64 8}
!55 = !{!"int", !36, i64 0}
!56 = !{!54, !42, i64 8}
!57 = !{i32 0, i32 65536}
!58 = !{!55, !55, i64 0}
!59 = !{!"ipa-type-escape.c:is_cast_from_non_pointer"}
!60 = !{i32 0, i32 256}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = !{!"ipa-type-escape.c:single_ssa_tree_operand"}
!64 = !{!"ipa-type-escape.c:is_gimple_assign"}
!65 = !{!"ipa-type-escape.c:gimple_assign_lhs"}
!66 = !{!"ipa-type-escape.c:gimple_assign_rhs_code"}
!67 = !{!"ipa-type-escape.c:gimple_assign_rhs1"}
!68 = !{!"ipa-type-escape.c:gimple_assign_rhs2"}
!69 = !{!"function_entry_count", i64 1}
!70 = !{!"ipa-type-escape.c:gate_type_escape_vars"}
!71 = !{!"branch_weights", i32 2, i32 1}
!72 = !{!"ipa-type-escape.c:type_escape_execute"}
!73 = distinct !{!73, !39}
!74 = !{!75, !42, i64 96}
!75 = !{!"cgraph_node", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !76, i64 144, !78, i64 184, !79, i64 224, !80, i64 232, !81, i64 256, !49, i64 288, !55, i64 296, !55, i64 300, !55, i64 304, !55, i64 308, !55, i64 308, !55, i64 308, !55, i64 308, !55, i64 308, !55, i64 308, !55, i64 308, !55, i64 308, !55, i64 309, !55, i64 309}
!76 = !{!"cgraph_local_info", !42, i64 0, !77, i64 8, !55, i64 32, !55, i64 32, !55, i64 32, !55, i64 32, !55, i64 32, !55, i64 32, !55, i64 32, !55, i64 32}
!77 = !{!"inline_summary", !49, i64 0, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20}
!78 = !{!"cgraph_global_info", !49, i64 0, !49, i64 8, !42, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !36, i64 36}
!79 = !{!"cgraph_rtl_info", !55, i64 0}
!80 = !{!"cgraph_clone_info", !42, i64 0, !42, i64 8, !42, i64 16}
!81 = !{!"cgraph_thunk_info", !49, i64 0, !49, i64 8, !42, i64 16, !36, i64 24, !36, i64 25, !36, i64 26}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !39}
!85 = distinct !{!85, !39}
!86 = !{!48, !49, i64 0}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = !{!"ipa-type-escape.c:type_to_consider"}
!93 = distinct !{!93, !39}
!94 = !{!"ipa-type-escape.c:discover_unique_type"}
!95 = !{!96, !42, i64 0}
!96 = !{!"type_brand_s", !42, i64 0, !55, i64 8}
!97 = !{!96, !55, i64 8}
!98 = !{!"ipa-type-escape.c:get_name_of_type"}
!99 = !{!"ipa-type-escape.c:gimple_code"}
!100 = !{!"ipa-type-escape.c:look_for_casts_stmt"}
!101 = distinct !{!101, !39}
!102 = !{!"ipa-type-escape.c:op_iter_init_use"}
!103 = !{!104, !55, i64 4}
!104 = !{!"ssa_operand_iterator_d", !36, i64 0, !55, i64 4, !42, i64 8, !42, i64 16, !55, i64 24, !55, i64 28, !42, i64 32}
!105 = !{!"ipa-type-escape.c:op_iter_done"}
!106 = !{!104, !36, i64 0}
!107 = !{!"ipa-type-escape.c:get_use_from_ptr"}
!108 = !{!109, !42, i64 24}
!109 = !{!"ssa_use_operand_d", !42, i64 0, !42, i64 8, !36, i64 16, !42, i64 24}
!110 = !{!"ipa-type-escape.c:op_iter_next_use"}
!111 = !{!104, !42, i64 16}
!112 = !{!113, !42, i64 0}
!113 = !{!"use_optype_d", !42, i64 0, !109, i64 8}
!114 = !{!104, !55, i64 24}
!115 = !{!104, !55, i64 28}
!116 = !{!104, !42, i64 32}
!117 = !{!"ipa-type-escape.c:gimple_assign_cast_p"}
!118 = !{!"ipa-type-escape.c:check_cast"}
!119 = !{i32 1, i32 9}
!120 = !{!"ipa-type-escape.c:gimple_num_ops"}
!121 = !{!"ipa-type-escape.c:look_for_casts"}
!122 = distinct !{!122, !39}
!123 = !{!"ipa-type-escape.c:gimple_op"}
!124 = !{!"ipa-type-escape.c:check_cast_type"}
!125 = !{!"ipa-type-escape.c:mark_type"}
!126 = !{!"ipa-type-escape.c:is_malloc_result"}
!127 = !{!"ipa-type-escape.c:count_stars"}
!128 = distinct !{!128, !39}
!129 = !{!"ipa-type-escape.c:parent_type_p"}
!130 = !{i32 0, i32 2}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !39}
!134 = distinct !{!134, !39}
!135 = !{!"ipa-type-escape.c:VEC_tree_base_iterate"}
!136 = !{!137, !55, i64 0}
!137 = !{!"VEC_tree_base", !55, i64 0, !55, i64 4, !36, i64 8}
!138 = !{!"ipa-type-escape.c:is_gimple_call"}
!139 = !{!"ipa-type-escape.c:gimple_call_lhs"}
!140 = !{!"ipa-type-escape.c:handled_component_p"}
!141 = !{!"ipa-type-escape.c:gimple_has_ops"}
!142 = !{!"ipa-type-escape.c:gimple_ops"}
!143 = !{!49, !49, i64 0}
!144 = !{!"ipa-type-escape.c:gimple_statement_structure"}
!145 = !{!"ipa-type-escape.c:gss_for_code"}
!146 = !{!"ipa-type-escape.c:op_iter_init"}
!147 = !{!104, !42, i64 8}
!148 = !{!149, !42, i64 0}
!149 = !{!"def_optype_d", !42, i64 0, !42, i64 8}
!150 = !{!"ipa-type-escape.c:gimple_def_ops"}
!151 = !{!"ipa-type-escape.c:gimple_vdef"}
!152 = !{!"ipa-type-escape.c:gimple_use_ops"}
!153 = !{!"ipa-type-escape.c:gimple_vuse"}
!154 = !{!"ipa-type-escape.c:gimple_has_mem_ops"}
!155 = !{!"ipa-type-escape.c:gimple_phi_arg_imm_use_ptr"}
!156 = !{!"ipa-type-escape.c:gimple_phi_arg"}
!157 = !{!"ipa-type-escape.c:op_iter_init_tree"}
!158 = !{!"ipa-type-escape.c:op_iter_next_tree"}
!159 = !{!149, !42, i64 8}
!160 = !{!"ipa-type-escape.c:get_def_from_ptr"}
!161 = !{!"ipa-type-escape.c:gimple_expr_code"}
!162 = !{!"ipa-type-escape.c:get_gimple_rhs_class"}
!163 = !{!"ipa-type-escape.c:ipa_init"}
!164 = !{!"ipa-type-escape.c:analyze_variable"}
!165 = !{!166, !42, i64 0}
!166 = !{!"varpool_node", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !55, i64 32, !55, i64 36, !55, i64 36, !55, i64 36, !55, i64 36, !55, i64 36, !55, i64 36, !55, i64 36}
!167 = !{!"ipa-type-escape.c:analyze_function"}
!168 = !{!75, !42, i64 0}
!169 = !{!170, !42, i64 8}
!170 = !{!"function", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !55, i64 104, !55, i64 108, !55, i64 112, !55, i64 116, !55, i64 120, !55, i64 124, !42, i64 128, !55, i64 136, !55, i64 137, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 138, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139, !55, i64 139}
!171 = !{!172, !42, i64 0}
!172 = !{!"control_flow_graph", !42, i64 0, !42, i64 8, !42, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !42, i64 40, !55, i64 48, !36, i64 52, !36, i64 60, !55, i64 68, !55, i64 72}
!173 = !{!174, !42, i64 56}
!174 = !{!"basic_block_def", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !36, i64 32, !42, i64 48, !42, i64 56, !36, i64 64, !49, i64 72, !55, i64 80, !55, i64 84, !55, i64 88, !55, i64 92, !55, i64 96}
!175 = !{!172, !42, i64 8}
!176 = distinct !{!176, !39}
!177 = distinct !{!177, !39}
!178 = distinct !{!178, !39}
!179 = !{!"ipa-type-escape.c:bmp_iter_set_init"}
!180 = !{!181, !42, i64 0}
!181 = !{!"bitmap_head_def", !42, i64 0, !42, i64 8, !55, i64 16, !42, i64 24}
!182 = !{!183, !42, i64 0}
!183 = !{!"", !42, i64 0, !42, i64 8, !55, i64 16, !49, i64 24}
!184 = !{!183, !42, i64 8}
!185 = !{!186, !55, i64 16}
!186 = !{!"bitmap_element_def", !42, i64 0, !42, i64 8, !55, i64 16, !36, i64 24}
!187 = !{!183, !55, i64 16}
!188 = !{!183, !49, i64 24}
!189 = !{!"ipa-type-escape.c:bmp_iter_set"}
!190 = distinct !{!190, !39}
!191 = distinct !{!191, !39}
!192 = !{!186, !42, i64 0}
!193 = !{!"ipa-type-escape.c:type_for_uid"}
!194 = !{!"ipa-type-escape.c:close_type_seen"}
!195 = distinct !{!195, !39}
!196 = distinct !{!196, !39}
!197 = !{!"ipa-type-escape.c:bmp_iter_next"}
!198 = !{!"ipa-type-escape.c:close_type_exposed_parameter"}
!199 = distinct !{!199, !39}
!200 = !{!"ipa-type-escape.c:close_type_full_escape"}
!201 = distinct !{!201, !39}
!202 = distinct !{!202, !39}
!203 = distinct !{!203, !39}
!204 = distinct !{!204, !39}
!205 = !{!"ipa-type-escape.c:close_addressof_down"}
!206 = distinct !{!206, !39}
!207 = !{!"ipa-type-escape.c:compare_type_brand"}
!208 = !{!"ipa-type-escape.c:mark_interesting_type"}
!209 = !{!"ipa-type-escape.c:check_tree"}
!210 = distinct !{!210, !39}
!211 = !{!"ipa-type-escape.c:check_operand"}
!212 = !{!"ipa-type-escape.c:check_function_parameter_and_return_types"}
!213 = distinct !{!213, !39}
!214 = distinct !{!214, !39}
!215 = !{!"ipa-type-escape.c:has_proper_scope_for_analysis"}
!216 = !{!"ipa-type-escape.c:gsi_start_bb"}
!217 = !{!218, !42, i64 0}
!218 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16}
!219 = !{!218, !42, i64 8}
!220 = !{!218, !42, i64 16}
!221 = !{!"ipa-type-escape.c:gsi_end_p"}
!222 = !{!"ipa-type-escape.c:scan_for_refs"}
!223 = !{!"ipa-type-escape.c:gsi_stmt"}
!224 = !{!225, !42, i64 0}
!225 = !{!"gimple_seq_node_d", !42, i64 0, !42, i64 8, !42, i64 16}
!226 = !{!"ipa-type-escape.c:gsi_next"}
!227 = !{!225, !42, i64 16}
!228 = !{!"ipa-type-escape.c:bb_seq"}
!229 = !{!174, !55, i64 96}
!230 = !{!231, !42, i64 0}
!231 = !{!"gimple_bb_info", !42, i64 0, !42, i64 8}
!232 = !{!"ipa-type-escape.c:gimple_seq_first"}
!233 = !{!234, !42, i64 0}
!234 = !{!"gimple_seq_d", !42, i64 0, !42, i64 8, !42, i64 16}
!235 = !{!"ipa-type-escape.c:check_assign"}
!236 = !{!"ipa-type-escape.c:check_call"}
!237 = distinct !{!237, !39}
!238 = distinct !{!238, !39}
!239 = distinct !{!239, !39}
!240 = distinct !{!240, !39}
!241 = distinct !{!241, !39}
!242 = !{!"ipa-type-escape.c:check_asm"}
!243 = distinct !{!243, !39}
!244 = distinct !{!244, !39}
!245 = !{!"ipa-type-escape.c:check_lhs_var"}
!246 = !{!"ipa-type-escape.c:okay_pointer_operation"}
!247 = !{!"ipa-type-escape.c:check_rhs_var"}
!248 = !{!"ipa-type-escape.c:look_for_address_of"}
!249 = distinct !{!249, !39}
!250 = !{!"ipa-type-escape.c:mark_interesting_addressof"}
!251 = !{!"ipa-type-escape.c:gimple_call_fndecl"}
!252 = !{!"ipa-type-escape.c:gimple_call_num_args"}
!253 = !{!"ipa-type-escape.c:gimple_call_arg"}
!254 = !{!"ipa-type-escape.c:gimple_call_fn"}
!255 = !{!"ipa-type-escape.c:gimple_asm_noutputs"}
!256 = !{!"ipa-type-escape.c:gimple_asm_output_op"}
!257 = !{!"ipa-type-escape.c:gimple_asm_ninputs"}
!258 = !{!"ipa-type-escape.c:gimple_asm_input_op"}
!259 = !{!"ipa-type-escape.c:subtype_map_for_uid"}
