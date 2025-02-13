; ModuleID = 'tree-vectorizer.c'
source_filename = "tree-vectorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.loop_iterator = type { ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }

@vect_dump = dso_local local_unnamed_addr global ptr null, align 8
@vect_location = dso_local local_unnamed_addr global i32 0, align 4
@stmt_vec_info_vec = dso_local local_unnamed_addr global ptr null, align 8
@user_vect_verbosity_level = internal unnamed_addr global i32 10, align 4
@vect_verbosity_level = internal unnamed_addr global i32 10, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"\0A%s:%d: note: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Vectorized loops\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"vectorized %u loops in function.\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@pass_slp_vectorize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr @gate_vect_slp, ptr @execute_vect_slp, ptr null, ptr null, i32 0, i32 90, i32 40, i32 0, i32 0, i32 0, i32 2071 } }, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"slp\00", align 1
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@flag_tree_slp_vectorize = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"basic block vectorized using SLP\0A\00", align 1
@pass_ipa_increase_alignment = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.8, ptr @gate_increase_alignment, ptr @increase_alignment, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"increase_alignment\00", align 1
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"Increasing alignment of decl: \00", align 1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define dso_local void @vect_set_verbosity_level(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !77 {
  %2 = tail call i32 @atoi(ptr nocapture noundef %0) #15
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 9)
  store i32 %3, ptr @user_vect_verbosity_level, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @vect_print_dump_info(i32 noundef %0) local_unnamed_addr #3 !prof !82 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 1
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = getelementptr inbounds %struct.expanded_location, ptr %6, i64 0, i32 1
  %8 = load i32, ptr @vect_verbosity_level, align 4, !tbaa !78
  %9 = icmp ult i32 %8, %0
  br i1 %9, label %34, label %10, !prof !83

10:                                               ; preds = %1
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !84
  %12 = icmp ne ptr %11, null
  %13 = load ptr, ptr @vect_dump, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load i32, ptr @vect_location, align 4, !tbaa !78
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !86
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %21) #16
  %22 = load ptr, ptr %2, align 8, !tbaa !87
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !86
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %25) #16
  br label %29

26:                                               ; preds = %16
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %17) #16
  %27 = load ptr, ptr %5, align 8, !tbaa !87
  %28 = load i32, ptr @vect_location, align 4, !tbaa !78
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %28) #16
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi ptr [ %22, %19 ], [ %27, %26 ]
  %31 = phi ptr [ %4, %19 ], [ %7, %26 ]
  %32 = load i32, ptr %31, align 8, !tbaa !89
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str, ptr noundef %30, i32 noundef %32) #15
  br label %34

34:                                               ; preds = %29, %10, %1
  %35 = phi i8 [ 0, %1 ], [ 0, %10 ], [ 1, %29 ]
  ret i8 %35
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @vectorize_loops() local_unnamed_addr #3 !prof !90 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = tail call fastcc i32 @number_of_loops() #15
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %58, label %5, !prof !91

5:                                                ; preds = %0
  tail call fastcc void @vect_set_dump_settings(i8 noundef zeroext 0) #15
  tail call void @init_stmt_vec_info_vec() #16
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8, !prof !92

8:                                                ; preds = %5, %24
  %9 = phi ptr [ %26, %24 ], [ %6, %5 ]
  %10 = phi i32 [ %25, %24 ], [ 0, %5 ]
  %11 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef nonnull %9) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13, !prof !93

13:                                               ; preds = %8
  %14 = tail call i32 @find_loop_location(ptr noundef nonnull %9) #16
  store i32 %14, ptr @vect_location, align 4, !tbaa !78
  %15 = tail call ptr @vect_analyze_loop(ptr noundef nonnull %9) #16
  %16 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 10
  store ptr %15, ptr %16, align 8, !tbaa !94
  %17 = icmp eq ptr %15, null
  br i1 %17, label %24, label %18, !prof !99

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct._loop_vec_info, ptr %15, i64 0, i32 5
  %20 = load i8, ptr %19, align 4, !tbaa !100
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !102

22:                                               ; preds = %18
  tail call void @vect_transform_loop(ptr noundef nonnull %15) #16
  %23 = add i32 %10, 1
  br label %24

24:                                               ; preds = %22, %18, %13, %8
  %25 = phi i32 [ %10, %8 ], [ %23, %22 ], [ %10, %18 ], [ %10, %13 ]
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %26 = load ptr, ptr %2, align 8, !tbaa !84
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !prof !103, !llvm.loop !104

28:                                               ; preds = %24, %5
  %29 = phi i32 [ 0, %5 ], [ %25, %24 ]
  store i32 0, ptr @vect_location, align 4, !tbaa !78
  %30 = load ptr, ptr @cfun, align 8, !tbaa !84
  tail call void @statistics_counter_event(ptr noundef %30, ptr noundef nonnull @.str.1, i32 noundef %29) #16
  %31 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #15, !range !106
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38, !prof !107

33:                                               ; preds = %28
  %34 = icmp eq i32 %29, 0
  br i1 %34, label %41, label %35, !prof !108

35:                                               ; preds = %33
  %36 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1) #15, !range !106
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38, !prof !109

38:                                               ; preds = %35, %28
  %39 = load ptr, ptr @vect_dump, align 8, !tbaa !84
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef %29) #15
  br label %41

41:                                               ; preds = %33, %35, %38
  %42 = load ptr, ptr @cfun, align 8, !tbaa !84
  %43 = tail call fastcc ptr @gimple_vop(ptr noundef %42) #15
  tail call void @mark_sym_for_renaming(ptr noundef %43) #16
  %44 = tail call i32 @llvm.umax.i32(i32 %3, i32 2)
  br label %45

45:                                               ; preds = %41, %52
  %46 = phi i32 [ %53, %52 ], [ 1, %41 ]
  %47 = tail call fastcc ptr @get_loop(i32 noundef %46) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49, !prof !110

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.loop, ptr %47, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  tail call void @destroy_loop_vec_info(ptr noundef %51, i8 noundef zeroext 1) #16
  store ptr null, ptr %50, align 8, !tbaa !94
  br label %52

52:                                               ; preds = %45, %49
  %53 = add nuw i32 %46, 1
  %54 = icmp eq i32 %53, %44
  br i1 %54, label %55, label %45, !prof !111, !llvm.loop !112

55:                                               ; preds = %52
  tail call void @free_stmt_vec_info_vec() #16
  %56 = icmp eq i32 %29, 0
  %57 = select i1 %56, i32 0, i32 32
  br label %58

58:                                               ; preds = %0, %55
  %59 = phi i32 [ %57, %55 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #6 !prof !113 !PGOFuncName !114 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !84
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !117

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #15
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @vect_set_dump_settings(i8 noundef zeroext %0) unnamed_addr #7 !prof !120 !PGOFuncName !121 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !84
  store ptr %2, ptr @vect_dump, align 8, !tbaa !84
  %3 = load i32, ptr @user_vect_verbosity_level, align 4, !tbaa !78
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %22, label %5, !prof !122

5:                                                ; preds = %1
  store i32 %3, ptr @vect_verbosity_level, align 4, !tbaa !78
  %6 = icmp eq ptr %2, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !78
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  %11 = icmp ugt i32 %3, 8
  %12 = and i1 %11, %10
  br i1 %12, label %37, label %13

13:                                               ; preds = %7
  %14 = and i32 %8, 16
  %15 = icmp ne i32 %14, 0
  %16 = icmp ugt i32 %3, 1
  %17 = and i1 %16, %15
  br i1 %17, label %37, label %26

18:                                               ; preds = %5
  %19 = icmp eq i8 %0, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = load ptr, ptr @stderr, align 8, !tbaa !84
  store ptr %21, ptr @vect_dump, align 8, !tbaa !84
  br label %37

22:                                               ; preds = %1
  %23 = icmp eq ptr %2, null
  br i1 %23, label %36, label %24, !prof !123

24:                                               ; preds = %22
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !78
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ %25, %24 ], [ %8, %13 ]
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 9, ptr @vect_verbosity_level, align 4, !tbaa !78
  br label %37

31:                                               ; preds = %26
  %32 = and i32 %27, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 2, ptr @vect_verbosity_level, align 4, !tbaa !78
  br label %37

35:                                               ; preds = %31
  store i32 0, ptr @vect_verbosity_level, align 4, !tbaa !78
  br label %37

36:                                               ; preds = %22
  store i32 0, ptr @vect_verbosity_level, align 4, !tbaa !78
  br label %37

37:                                               ; preds = %36, %30, %34, %35, %18, %20, %7, %13
  ret void
}

; Function Attrs: optsize
declare void @init_stmt_vec_info_vec() local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !90 !PGOFuncName !124 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !125
  %4 = load ptr, ptr @cfun, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !91

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !127
  store ptr null, ptr %1, align 8, !tbaa !84
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #15
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #15
  store ptr %11, ptr %0, align 8, !tbaa !127
  %12 = load ptr, ptr @cfun, align 8, !tbaa !84
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !129
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !130

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !127
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !132

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !133
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !134

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !135, !llvm.loop !136

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @find_loop_location(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @vect_analyze_loop(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @vect_transform_loop(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !137 !PGOFuncName !138 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !125
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !127
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #15, !range !139
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !140

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !125
  %13 = load i32, ptr %3, align 4, !tbaa !78
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #15
  store ptr %14, ptr %1, align 8, !tbaa !84
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !141, !llvm.loop !142

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #15
  store ptr null, ptr %1, align 8, !tbaa !84
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_vop(ptr noundef readonly %0) unnamed_addr #3 !prof !90 !PGOFuncName !143 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !91

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !91

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 51, ptr noundef nonnull @.str.4) #16
  %8 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %5, %3 ], [ %9, %7 ]
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #6 !prof !149 !PGOFuncName !150 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #15
  ret ptr %7
}

; Function Attrs: optsize
declare void @destroy_loop_vec_info(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_stmt_vec_info_vec() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !151 !PGOFuncName !152 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !153

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !154
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #3 !prof !90 !PGOFuncName !156 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !157 !PGOFuncName !158 {
  %3 = load i32, ptr %0, align 4, !tbaa !159
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !159
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !161 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !164

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #15
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !165 !PGOFuncName !166 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !137 !PGOFuncName !167 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !168

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !159
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !130

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !78
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !78
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !90 !PGOFuncName !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa !84
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !91

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_vect_slp() #12 !prof !170 !PGOFuncName !171 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !78
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_tree_slp_vectorize, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %9, label %6, !prof !172

6:                                                ; preds = %0
  %7 = icmp eq i32 %3, 1
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %0, %6
  %10 = phi i8 [ %8, %6 ], [ 1, %0 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_vect_slp() #3 !prof !170 !PGOFuncName !173 {
  tail call fastcc void @vect_set_dump_settings(i8 noundef zeroext 1) #15
  tail call void @init_stmt_vec_info_vec() #16
  %1 = load ptr, ptr @cfun, align 8, !tbaa !84
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = load ptr, ptr %3, align 8, !tbaa !175
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !179
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %30, label %10, !prof !180

10:                                               ; preds = %0, %21
  %11 = phi ptr [ %23, %21 ], [ %6, %0 ]
  %12 = tail call i32 @find_bb_location(ptr noundef %11) #16
  store i32 %12, ptr @vect_location, align 4, !tbaa !78
  %13 = tail call ptr @vect_slp_analyze_bb(ptr noundef %11) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !181

15:                                               ; preds = %10
  tail call void @vect_slp_transform_bb(ptr noundef %11) #16
  %16 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 1) #15, !range !106
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @vect_dump, align 8, !tbaa !84
  %20 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 33, i64 1, ptr %19)
  br label %21

21:                                               ; preds = %10, %18, %15
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !177
  %24 = load ptr, ptr @cfun, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !174
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %10, !prof !182, !llvm.loop !183

30:                                               ; preds = %21, %0
  tail call void @free_stmt_vec_info_vec() #16
  ret i32 0
}

; Function Attrs: optsize
declare i32 @find_bb_location(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @vect_slp_analyze_bb(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @vect_slp_transform_bb(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_increase_alignment() #12 !prof !184 !PGOFuncName !185 {
  %1 = load i32, ptr @flag_section_anchors, align 4, !tbaa !78
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_tree_vectorize, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !186
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @increase_alignment() #3 !prof !77 !PGOFuncName !187 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !84
  %2 = icmp eq ptr %1, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %0, %35
  %4 = phi ptr [ %37, %35 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 15
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = tail call ptr @strip_array_types(ptr noundef nonnull %7) #16
  %13 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %12) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = icmp ult i32 %19, %17
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = tail call zeroext i8 @vect_can_force_dr_alignment_p(ptr noundef nonnull %5, i32 noundef %17) #16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %16, align 8, !tbaa !86
  store i32 %25, ptr %18, align 8, !tbaa !86
  %26 = load i64, ptr %5, align 8
  %27 = or i64 %26, 4398046511104
  store i64 %27, ptr %5, align 8
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !84
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 30, i64 1, ptr nonnull %28)
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !84
  tail call void @print_generic_expr(ptr noundef %32, ptr noundef nonnull %5, i32 noundef 2) #16
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !84
  %34 = tail call i32 @fputc(i32 10, ptr %33)
  br label %35

35:                                               ; preds = %21, %30, %24, %15, %11, %3
  %36 = getelementptr inbounds %struct.varpool_node, ptr %4, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !84
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %3, !llvm.loop !190

39:                                               ; preds = %35, %0
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @strip_array_types(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @vect_can_force_dr_alignment_p(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!76}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!36 = !{ptr @vectorize_loops, ptr @number_of_loops, i64 2627}
!37 = !{ptr @vectorize_loops, ptr @vect_set_dump_settings, i64 2626}
!38 = !{ptr @vectorize_loops, ptr @init_stmt_vec_info_vec, i64 2626}
!39 = !{ptr @vectorize_loops, ptr @fel_init, i64 2626}
!40 = !{ptr @vectorize_loops, ptr @optimize_loop_nest_for_speed_p, i64 14300}
!41 = !{ptr @vectorize_loops, ptr @find_loop_location, i64 12645}
!42 = !{ptr @vectorize_loops, ptr @vect_analyze_loop, i64 12645}
!43 = !{ptr @vectorize_loops, ptr @vect_transform_loop, i64 21}
!44 = !{ptr @vectorize_loops, ptr @fel_next, i64 14300}
!45 = !{ptr @vectorize_loops, ptr @statistics_counter_event, i64 2626}
!46 = !{ptr @vectorize_loops, ptr @vect_print_dump_info, i64 2642}
!47 = !{ptr @vectorize_loops, ptr @fprintf, i64 2}
!48 = !{ptr @vectorize_loops, ptr @gimple_vop, i64 2626}
!49 = !{ptr @vectorize_loops, ptr @mark_sym_for_renaming, i64 2626}
!50 = !{ptr @vectorize_loops, ptr @get_loop, i64 14447}
!51 = !{ptr @vectorize_loops, ptr @destroy_loop_vec_info, i64 14305}
!52 = !{ptr @vectorize_loops, ptr @free_stmt_vec_info_vec, i64 2626}
!53 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 5253}
!54 = !{ptr @fel_init, ptr @number_of_loops, i64 2626}
!55 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 2626}
!56 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 28030}
!57 = !{ptr @fel_init, ptr @loop_outer, i64 16925}
!58 = !{ptr @fel_init, ptr @fel_next, i64 2626}
!59 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 16938}
!60 = !{ptr @fel_next, ptr @get_loop, i64 14310}
!61 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 2628}
!62 = !{ptr @gimple_vop, ptr @fancy_abort, i64 2}
!63 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 28761}
!64 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 2627}
!65 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 10059}
!66 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 7432}
!67 = !{ptr @VEC_int_heap_free, ptr @free, i64 2626}
!68 = !{ptr @execute_vect_slp, ptr @vect_set_dump_settings, i64 6652}
!69 = !{ptr @execute_vect_slp, ptr @init_stmt_vec_info_vec, i64 6652}
!70 = !{ptr @execute_vect_slp, ptr @find_bb_location, i64 258353}
!71 = !{ptr @execute_vect_slp, ptr @vect_slp_analyze_bb, i64 258353}
!72 = !{ptr @execute_vect_slp, ptr @vect_slp_transform_bb, i64 1}
!73 = !{ptr @execute_vect_slp, ptr @vect_print_dump_info, i64 1}
!74 = !{ptr @execute_vect_slp, ptr @fwrite, i64 1}
!75 = !{ptr @execute_vect_slp, ptr @free_stmt_vec_info_vec, i64 6652}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = !{!"function_entry_count", i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"int", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !{!"function_entry_count", i64 1126635}
!83 = !{!"branch_weights", i32 1126636, i32 1}
!84 = !{!85, !85, i64 0}
!85 = !{!"any pointer", !80, i64 0}
!86 = !{!80, !80, i64 0}
!87 = !{!88, !85, i64 0}
!88 = !{!"", !85, i64 0, !79, i64 8, !79, i64 12, !80, i64 16}
!89 = !{!88, !79, i64 8}
!90 = !{!"function_entry_count", i64 2627}
!91 = !{!"branch_weights", i32 1, i32 2628}
!92 = !{!"branch_weights", i32 1, i32 2627}
!93 = !{!"branch_weights", i32 1656, i32 12656}
!94 = !{!95, !85, i64 64}
!95 = !{!"loop", !79, i64 0, !79, i64 4, !85, i64 8, !85, i64 16, !96, i64 24, !79, i64 32, !79, i64 36, !85, i64 40, !85, i64 48, !85, i64 56, !85, i64 64, !85, i64 72, !97, i64 80, !97, i64 96, !80, i64 112, !80, i64 113, !79, i64 116, !85, i64 120, !85, i64 128, !80, i64 136, !85, i64 144}
!96 = !{!"lpt_decision", !79, i64 0, !79, i64 4}
!97 = !{!"", !98, i64 0, !98, i64 8}
!98 = !{!"long", !80, i64 0}
!99 = !{!"branch_weights", i32 12635, i32 22}
!100 = !{!101, !80, i64 36}
!101 = !{!"_loop_vec_info", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !79, i64 32, !80, i64 36, !79, i64 40, !85, i64 48, !79, i64 56, !79, i64 60, !85, i64 64, !85, i64 72, !85, i64 80, !85, i64 88, !79, i64 96, !85, i64 104, !85, i64 112, !79, i64 120}
!102 = !{!"branch_weights", i32 1, i32 22}
!103 = !{!"branch_weights", i32 2627, i32 11684}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{i8 0, i8 2}
!107 = !{!"branch_weights", i32 2628, i32 1}
!108 = !{!"branch_weights", i32 2613, i32 16}
!109 = !{!"branch_weights", i32 16, i32 1}
!110 = !{!"branch_weights", i32 142, i32 14311}
!111 = !{!"branch_weights", i32 2627, i32 11825}
!112 = distinct !{!112, !105}
!113 = !{!"function_entry_count", i64 5254}
!114 = !{!"tree-vectorizer.c:number_of_loops"}
!115 = !{!116, !85, i64 32}
!116 = !{!"function", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !85, i64 40, !85, i64 48, !85, i64 56, !85, i64 64, !85, i64 72, !85, i64 80, !85, i64 88, !85, i64 96, !79, i64 104, !79, i64 108, !79, i64 112, !79, i64 116, !79, i64 120, !79, i64 124, !85, i64 128, !79, i64 136, !79, i64 137, !79, i64 138, !79, i64 138, !79, i64 138, !79, i64 138, !79, i64 138, !79, i64 138, !79, i64 138, !79, i64 139, !79, i64 139, !79, i64 139, !79, i64 139, !79, i64 139, !79, i64 139, !79, i64 139}
!117 = !{!"branch_weights", i32 1, i32 5255}
!118 = !{!119, !85, i64 8}
!119 = !{!"loops", !79, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!120 = !{!"function_entry_count", i64 9279}
!121 = !{!"tree-vectorizer.c:vect_set_dump_settings"}
!122 = !{!"branch_weights", i32 9280, i32 1}
!123 = !{!"branch_weights", i32 2147288417, i32 195231}
!124 = !{!"tree-vectorizer.c:fel_init"}
!125 = !{!126, !79, i64 8}
!126 = !{!"", !85, i64 0, !79, i64 8}
!127 = !{!126, !85, i64 0}
!128 = !{!119, !85, i64 24}
!129 = !{!95, !79, i64 0}
!130 = !{!"branch_weights", i32 14311, i32 2628}
!131 = !{!95, !85, i64 48}
!132 = !{!"branch_weights", i32 9506, i32 7433}
!133 = !{!95, !85, i64 56}
!134 = !{!"branch_weights", i32 10060, i32 9506}
!135 = !{!"branch_weights", i32 2628, i32 14310}
!136 = distinct !{!136, !105}
!137 = !{!"function_entry_count", i64 16937}
!138 = !{!"tree-vectorizer.c:fel_next"}
!139 = !{i32 0, i32 2}
!140 = !{!"branch_weights", i32 2628, i32 14311}
!141 = !{!"branch_weights", i32 1, i32 14311}
!142 = distinct !{!142, !105}
!143 = !{!"tree-vectorizer.c:gimple_vop"}
!144 = !{!116, !85, i64 24}
!145 = !{!146, !85, i64 24}
!146 = !{!"gimple_df", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !147, i64 32, !147, i64 48, !85, i64 64, !85, i64 72, !85, i64 80, !85, i64 88, !79, i64 96, !148, i64 104}
!147 = !{!"pt_solution", !79, i64 0, !79, i64 0, !79, i64 0, !79, i64 0, !79, i64 0, !79, i64 0, !85, i64 8}
!148 = !{!"ssa_operands", !85, i64 0, !79, i64 8, !79, i64 12, !80, i64 16, !85, i64 24, !85, i64 32}
!149 = !{!"function_entry_count", i64 28761}
!150 = !{!"tree-vectorizer.c:get_loop"}
!151 = !{!"function_entry_count", i64 15313}
!152 = !{!"tree-vectorizer.c:VEC_loop_p_base_length"}
!153 = !{!"branch_weights", i32 2628, i32 12687}
!154 = !{!155, !79, i64 0}
!155 = !{!"VEC_loop_p_base", !79, i64 0, !79, i64 4, !80, i64 8}
!156 = !{!"tree-vectorizer.c:VEC_int_heap_alloc"}
!157 = !{!"function_entry_count", i64 14310}
!158 = !{!"tree-vectorizer.c:VEC_int_base_quick_push"}
!159 = !{!160, !79, i64 0}
!160 = !{!"VEC_int_base", !79, i64 0, !79, i64 4, !80, i64 8}
!161 = !{!"function_entry_count", i64 10059}
!162 = !{!"tree-vectorizer.c:loop_outer"}
!163 = !{!95, !85, i64 40}
!164 = !{!"branch_weights", i32 2628, i32 7433}
!165 = !{!"function_entry_count", i64 36193}
!166 = !{!"tree-vectorizer.c:VEC_loop_p_base_index"}
!167 = !{!"tree-vectorizer.c:VEC_int_base_iterate"}
!168 = !{!"branch_weights", i32 1, i32 16938}
!169 = !{!"tree-vectorizer.c:VEC_int_heap_free"}
!170 = !{!"function_entry_count", i64 6652}
!171 = !{!"tree-vectorizer.c:gate_vect_slp"}
!172 = !{!"branch_weights", i32 44262409, i32 13307}
!173 = !{!"tree-vectorizer.c:execute_vect_slp"}
!174 = !{!116, !85, i64 8}
!175 = !{!176, !85, i64 0}
!176 = !{!"control_flow_graph", !85, i64 0, !85, i64 8, !85, i64 16, !79, i64 24, !79, i64 28, !79, i64 32, !85, i64 40, !79, i64 48, !80, i64 52, !80, i64 60, !79, i64 68, !79, i64 72}
!177 = !{!178, !85, i64 56}
!178 = !{!"basic_block_def", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !80, i64 32, !85, i64 48, !85, i64 56, !80, i64 64, !98, i64 72, !79, i64 80, !79, i64 84, !79, i64 88, !79, i64 92, !79, i64 96}
!179 = !{!176, !85, i64 8}
!180 = !{!"branch_weights", i32 1, i32 6652}
!181 = !{!"branch_weights", i32 258392, i32 1}
!182 = !{!"branch_weights", i32 6652, i32 251740}
!183 = distinct !{!183, !105}
!184 = !{!"function_entry_count", i64 1}
!185 = !{!"tree-vectorizer.c:gate_increase_alignment"}
!186 = !{!"branch_weights", i32 1, i32 2}
!187 = !{!"tree-vectorizer.c:increase_alignment"}
!188 = !{!189, !85, i64 0}
!189 = !{!"varpool_node", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !79, i64 32, !79, i64 36, !79, i64 36, !79, i64 36, !79, i64 36, !79, i64 36, !79, i64 36, !79, i64 36}
!190 = distinct !{!190, !105}
