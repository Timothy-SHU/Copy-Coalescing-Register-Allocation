; ModuleID = 'tree-switch-conversion.c'
source_filename = "tree-switch-conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"switchconv\00", align 1
@pass_convert_switch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @switchconv_gate, ptr @do_switchconv, ptr null, ptr null, i32 0, i32 109, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@flag_tree_switch_conversion = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"beginning to process the following SWITCH statement (%s:%d) : ------- \0A\00", align 1
@info.0 = internal unnamed_addr global ptr null, align 8
@info.1 = internal unnamed_addr global ptr null, align 8
@info.2 = internal unnamed_addr global ptr null, align 8
@info.3 = internal unnamed_addr global ptr null, align 8
@info.4 = internal unnamed_addr global ptr null, align 8
@info.5 = internal unnamed_addr global i32 0, align 8
@info.6 = internal unnamed_addr global ptr null, align 8
@info.7 = internal unnamed_addr global ptr null, align 8
@info.8 = internal unnamed_addr global ptr null, align 8
@info.9 = internal unnamed_addr global ptr null, align 8
@info.10 = internal unnamed_addr global i32 0, align 8
@info.11 = internal unnamed_addr global i64 0, align 8
@info.12 = internal unnamed_addr global i64 0, align 8
@info.13 = internal unnamed_addr global ptr null, align 8
@info.14 = internal unnamed_addr global ptr null, align 8
@info.15 = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Switch converted\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"--------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"tree-switch-conversion.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Bailing out - \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"switch has no labels\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"index error.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Processing of case %i failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"index range way too large or otherwise unusable.\0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"the maximum range-branch ratio exceeded.\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"  Bad case - cs BB  label is NULL\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"  Bad case - a non-final BB has two predecessors\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"  Bad case - a non-final BB not empty\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"  Bad case - different final BB\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"   Non-invariant value from a case\0A\00", align 1
@flag_pic = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [53 x i8] c"   Value from a case would need runtime relocations\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"   Value from a case is not a valid initializer\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"csti\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"CSWTCH\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"csui\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @switchconv_gate() #0 {
  %1 = load i32, ptr @flag_tree_switch_conversion, align 4, !tbaa !5
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @do_switchconv() #1 {
  %1 = alloca %struct.expanded_location, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %64, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.expanded_location, ptr %1, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %55
  %14 = phi ptr [ %7, %11 ], [ %57, %55 ]
  %15 = call ptr @last_stmt(ptr noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %13
  %18 = call fastcc i32 @gimple_code(ptr noundef nonnull %15) #14, !range !19
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  %24 = call fastcc i32 @gimple_location(ptr noundef nonnull %15) #14
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %24) #13
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %26 = load ptr, ptr %1, align 8, !tbaa !20
  %27 = load i32, ptr %12, align 8, !tbaa !22
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef %26, i32 noundef %27) #14
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !9
  call void @print_gimple_stmt(ptr noundef %29, ptr noundef nonnull %15, i32 noundef 0, i32 noundef 2) #13
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %31 = call i32 @putc(i32 noundef 10, ptr noundef %30) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  br label %32

32:                                               ; preds = %23, %20
  store ptr null, ptr @info.15, align 8, !tbaa !23
  %33 = call fastcc zeroext i8 @process_switch(ptr noundef nonnull %15) #14, !range !25
  %34 = icmp eq i8 %33, 0
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %36 = icmp eq ptr %35, null
  br i1 %34, label %40, label %37

37:                                               ; preds = %32
  br i1 %36, label %55, label %38

38:                                               ; preds = %37
  %39 = call i32 @fputs(ptr noundef nonnull @.str.2, ptr noundef nonnull %35) #14
  br label %52

40:                                               ; preds = %32
  br i1 %36, label %55, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr @info.15, align 8, !tbaa !23
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 894, ptr noundef nonnull @.str.5) #13
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !9
  br label %46

46:                                               ; preds = %41, %44
  %47 = phi ptr [ %35, %41 ], [ %45, %44 ]
  %48 = call i32 @fputs(ptr noundef nonnull @.str.6, ptr noundef %47) #14
  %49 = load ptr, ptr @info.15, align 8, !tbaa !23
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %51 = call i32 @fputs(ptr noundef %49, ptr noundef %50) #14
  br label %52

52:                                               ; preds = %46, %38
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %54 = call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %53) #14
  br label %55

55:                                               ; preds = %52, %37, %40, %17, %13
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = load ptr, ptr @cfun, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !18
  %63 = icmp eq ptr %57, %62
  br i1 %63, label %64, label %13, !llvm.loop !26

64:                                               ; preds = %55, %0
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !28
  ret i32 %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_switch(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #14
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr @.str.7, ptr @info.15, align 8, !tbaa !23
  br label %34

5:                                                ; preds = %1
  store ptr null, ptr @info.4, align 8, !tbaa !29
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  store ptr %6, ptr @info.3, align 8, !tbaa !30
  %7 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #14
  store ptr %7, ptr @info.0, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  store ptr null, ptr @info.13, align 8, !tbaa !32
  store ptr null, ptr @info.14, align 8, !tbaa !33
  store i32 0, ptr @info.10, align 8, !tbaa !34
  store i64 0, ptr @info.11, align 8, !tbaa !35
  store i64 0, ptr @info.12, align 8, !tbaa !36
  %10 = load ptr, ptr @global_trees, align 16, !tbaa !9
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store ptr @.str.8, ptr @info.15, align 8, !tbaa !23
  br label %34

13:                                               ; preds = %5
  %14 = tail call fastcc zeroext i8 @check_range(ptr noundef %0) #14, !range !25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %13, %26
  %17 = phi i32 [ %27, %26 ], [ 0, %13 ]
  %18 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %17) #14
  %19 = tail call fastcc zeroext i8 @check_process_case(ptr noundef %18) #14, !range !25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.9, i32 noundef %17) #14
  br label %34

26:                                               ; preds = %16
  %27 = add nuw i32 %17, 1
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %16, !llvm.loop !37

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @check_final_bb() #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  tail call fastcc void @create_temp_arrays() #14
  %33 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #14
  tail call fastcc void @gather_default_values(ptr noundef %33) #14
  tail call fastcc void @build_constructors(ptr noundef %0) #14
  tail call fastcc void @build_arrays(ptr noundef %0) #14
  tail call fastcc void @gen_inbound_check(ptr noundef %0) #14
  tail call fastcc void @free_temp_arrays() #14
  br label %34

34:                                               ; preds = %29, %21, %24, %13, %32, %12, %4
  %35 = phi i8 [ 0, %4 ], [ 0, %12 ], [ 1, %32 ], [ 0, %13 ], [ 0, %24 ], [ 0, %21 ], [ 0, %29 ]
  ret i8 %35
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3162, ptr noundef nonnull @.str.5) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_range(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #14
  %3 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 1) #14
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  store ptr %5, ptr @info.1, align 8, !tbaa !38
  %6 = icmp ugt i32 %2, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 181, ptr noundef nonnull @.str.5) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #14
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 182, ptr noundef nonnull @.str.5) #13
  br label %14

14:                                               ; preds = %8, %13
  %15 = add i32 %2, -1
  %16 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %15) #14
  %17 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  br label %23

23:                                               ; preds = %14, %20
  %24 = phi ptr [ %22, %20 ], [ %18, %14 ]
  %25 = load ptr, ptr @info.1, align 8, !tbaa !38
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 189, ptr noundef nonnull @.str.5) #13
  br label %28

28:                                               ; preds = %23, %27
  %29 = icmp eq ptr %24, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 190, ptr noundef nonnull @.str.5) #13
  br label %31

31:                                               ; preds = %28, %30
  %32 = load ptr, ptr @info.1, align 8, !tbaa !38
  %33 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %24, ptr noundef %32, i32 noundef 0) #13
  store ptr %33, ptr @info.2, align 8, !tbaa !39
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 194, ptr noundef nonnull @.str.5) #13
  %36 = load ptr, ptr @info.2, align 8, !tbaa !39
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %33, %31 ], [ %36, %35 ]
  %39 = tail call i32 @host_integerp(ptr noundef %38, i32 noundef 1) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @info.2, align 8, !tbaa !39
  %43 = tail call i64 @tree_low_cst(ptr noundef %42, i32 noundef 1) #13
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 108, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !40
  %47 = mul i32 %46, %2
  %48 = zext i32 %47 to i64
  %49 = icmp ugt i64 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41, %37
  %51 = phi ptr [ @.str.11, %37 ], [ @.str.12, %41 ]
  store ptr %51, ptr @info.15, align 8, !tbaa !23
  br label %52

52:                                               ; preds = %50, %41
  %53 = phi i8 [ 1, %41 ], [ 0, %50 ]
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_process_case(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = load ptr, ptr @cfun, align 8, !tbaa !9
  %6 = tail call ptr @label_to_block_fn(ptr noundef %5, ptr noundef %4) #13
  %7 = load ptr, ptr @info.3, align 8, !tbaa !30
  %8 = tail call ptr @find_edge(ptr noundef %7, ptr noundef %6) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 227, ptr noundef nonnull @.str.5) #13
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr %2, align 8, !tbaa !28
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !42
  store i32 %16, ptr @info.10, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  %18 = load i64, ptr %17, align 8, !tbaa !44
  store i64 %18, ptr @info.11, align 8, !tbaa !35
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !44
  %22 = load i64, ptr @info.12, align 8, !tbaa !36
  %23 = add nsw i64 %22, %21
  store i64 %23, ptr @info.12, align 8, !tbaa !36
  br label %24

24:                                               ; preds = %19, %14
  %25 = icmp eq ptr %6, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store ptr @.str.13, ptr @info.15, align 8, !tbaa !23
  br label %52

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %6) #14, !range !25
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load ptr, ptr @info.4, align 8, !tbaa !29
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %6
  %34 = or i1 %32, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  store ptr @.str.14, ptr @info.15, align 8, !tbaa !23
  br label %52

36:                                               ; preds = %27
  %37 = tail call zeroext i8 @empty_block_p(ptr noundef nonnull %6) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store ptr @.str.15, ptr @info.15, align 8, !tbaa !23
  br label %52

40:                                               ; preds = %36
  %41 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %6) #14
  %42 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #14
  %43 = load ptr, ptr @info.4, align 8, !tbaa !29
  br label %44

44:                                               ; preds = %30, %40
  %45 = phi ptr [ %31, %30 ], [ %43, %40 ]
  %46 = phi ptr [ %6, %30 ], [ %42, %40 ]
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr %46, ptr @info.4, align 8, !tbaa !29
  br label %52

49:                                               ; preds = %44
  %50 = icmp eq ptr %45, %46
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  store ptr @.str.16, ptr @info.15, align 8, !tbaa !23
  br label %52

52:                                               ; preds = %48, %49, %51, %39, %35, %26
  %53 = phi i8 [ 0, %51 ], [ 0, %39 ], [ 0, %35 ], [ 0, %26 ], [ 1, %49 ], [ 1, %48 ]
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_final_bb() unnamed_addr #1 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  store i32 0, ptr @info.5, align 8, !tbaa !45
  %2 = load ptr, ptr @info.4, align 8, !tbaa !29
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %2) #13
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %54

5:                                                ; preds = %0, %49
  %6 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14
  %7 = load i32, ptr @info.5, align 8, !tbaa !45
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @info.5, align 8, !tbaa !45
  %9 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @info.3, align 8, !tbaa !30
  br label %13

13:                                               ; preds = %11, %43
  %14 = phi ptr [ %12, %11 ], [ %44, %43 ]
  %15 = phi i64 [ 0, %11 ], [ %45, %43 ]
  %16 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %6, i64 noundef %15) #14
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = call fastcc zeroext i8 @single_pred_p(ptr noundef %17) #14, !range !25
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = call fastcc ptr @single_pred(ptr noundef %17) #14
  %24 = load ptr, ptr @info.3, align 8, !tbaa !30
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22, %13
  %27 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %6, i64 noundef %15) #14
  %28 = call zeroext i8 @is_gimple_ip_invariant(ptr noundef %27) #13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = call ptr @initializer_constant_valid_p(ptr noundef %27, ptr noundef %32) #13
  %34 = load i32, ptr @flag_pic, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %37 = icmp ne ptr %33, %36
  %38 = icmp eq ptr %33, null
  %39 = select i1 %35, i1 %38, i1 %37
  %40 = load ptr, ptr @info.3, align 8, !tbaa !30
  br i1 %39, label %41, label %43

41:                                               ; preds = %30
  %42 = select i1 %38, ptr @.str.20, ptr @.str.19
  br label %52

43:                                               ; preds = %30, %19, %22
  %44 = phi ptr [ %40, %30 ], [ %14, %19 ], [ %24, %22 ]
  %45 = add nuw nsw i64 %15, 1
  %46 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #14
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %13, label %49, !llvm.loop !47

49:                                               ; preds = %43, %5
  call fastcc void @gsi_next(ptr noundef nonnull %1) #14
  %50 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !25
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %5, label %54, !llvm.loop !48

52:                                               ; preds = %26, %41
  %53 = phi ptr [ %42, %41 ], [ @.str.18, %26 ]
  store ptr %53, ptr @info.15, align 8, !tbaa !23
  br label %54

54:                                               ; preds = %49, %52, %0
  %55 = phi i8 [ 1, %0 ], [ 0, %52 ], [ 1, %49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_temp_arrays() unnamed_addr #1 {
  %1 = load i32, ptr @info.5, align 8, !tbaa !45
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #13
  store ptr %3, ptr @info.6, align 8, !tbaa !49
  %4 = load i32, ptr @info.5, align 8, !tbaa !45
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #13
  store ptr %6, ptr @info.7, align 8, !tbaa !50
  %7 = load i32, ptr @info.5, align 8, !tbaa !45
  %8 = sext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #13
  store ptr %9, ptr @info.8, align 8, !tbaa !51
  %10 = load i32, ptr @info.5, align 8, !tbaa !45
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 8) #13
  store ptr %12, ptr @info.9, align 8, !tbaa !52
  %13 = load i32, ptr @info.5, align 8, !tbaa !45
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %0, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %0 ]
  %17 = load ptr, ptr @info.2, align 8, !tbaa !39
  %18 = tail call i64 @tree_low_cst(ptr noundef %17, i32 noundef 1) #13
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = tail call fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %20) #14
  %22 = load ptr, ptr @info.7, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 %16
  store ptr %21, ptr %23, align 8, !tbaa !9
  %24 = add nuw nsw i64 %16, 1
  %25 = load i32, ptr @info.5, align 8, !tbaa !45
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %15, label %28, !llvm.loop !53

28:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_default_values(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = load ptr, ptr @cfun, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = tail call ptr @label_to_block_fn(ptr noundef %3, ptr noundef %6) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 374, ptr noundef nonnull @.str.5) #13
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @info.4, align 8, !tbaa !29
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load ptr, ptr @info.3, align 8, !tbaa !30
  %16 = tail call ptr @find_edge(ptr noundef %15, ptr noundef %7) #13
  br label %19

17:                                               ; preds = %11
  %18 = tail call fastcc ptr @single_succ_edge(ptr noundef %7) #14
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ]
  %21 = load ptr, ptr @info.4, align 8, !tbaa !29
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %21) #13
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %34
  %27 = phi i64 [ 0, %24 ], [ %36, %34 ]
  %28 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %29 = load i32, ptr %25, align 4, !tbaa !54
  %30 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %28, i32 noundef %29) #14
  %31 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %30) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 385, ptr noundef nonnull @.str.5) #13
  br label %34

34:                                               ; preds = %26, %33
  %35 = load ptr, ptr @info.6, align 8, !tbaa !49
  %36 = add nuw i64 %27, 1
  %37 = getelementptr inbounds ptr, ptr %35, i64 %27
  store ptr %31, ptr %37, align 8, !tbaa !9
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !25
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %26, label %40, !llvm.loop !55

40:                                               ; preds = %34, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_constructors(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #14
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %107

5:                                                ; preds = %1
  %6 = load ptr, ptr @info.1, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %5, %103
  %8 = phi i32 [ %105, %103 ], [ 1, %5 ]
  %9 = phi ptr [ %104, %103 ], [ %6, %5 ]
  %10 = call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %8) #14
  %11 = load ptr, ptr @cfun, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %13 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = call ptr @label_to_block_fn(ptr noundef %11, ptr noundef %14) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %16 = load ptr, ptr @info.4, align 8, !tbaa !29
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %7
  %19 = load ptr, ptr @info.3, align 8, !tbaa !30
  %20 = call ptr @find_edge(ptr noundef %19, ptr noundef %15) #13
  br label %23

21:                                               ; preds = %7
  %22 = call fastcc ptr @single_succ_edge(ptr noundef %15) #14
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %22, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 413, ptr noundef nonnull @.str.5) #13
  br label %27

27:                                               ; preds = %23, %26
  %28 = load ptr, ptr %12, align 8, !tbaa !28
  %29 = call i32 @tree_int_cst_lt(ptr noundef %9, ptr noundef %28) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %27, %51
  %32 = phi ptr [ %53, %51 ], [ %9, %27 ]
  %33 = load i32, ptr @info.5, align 8, !tbaa !45
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %47, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr @info.7, align 8, !tbaa !50
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %39) #14
  %41 = load ptr, ptr @info.1, align 8, !tbaa !38
  %42 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %32, ptr noundef %41, i32 noundef 0) #13
  store ptr %42, ptr %40, align 8, !tbaa !56
  %43 = load ptr, ptr @info.6, align 8, !tbaa !49
  %44 = getelementptr inbounds ptr, ptr %43, i64 %36
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.constructor_elt_d, ptr %40, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !58
  %47 = add nuw nsw i64 %36, 1
  %48 = load i32, ptr @info.5, align 8, !tbaa !45
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %35, label %51, !llvm.loop !59

51:                                               ; preds = %35, %31
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !9
  %53 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %32, ptr noundef %52, i32 noundef 0) #13
  %54 = load ptr, ptr %12, align 8, !tbaa !28
  %55 = call i32 @tree_int_cst_lt(ptr noundef %53, ptr noundef %54) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %31, !llvm.loop !60

57:                                               ; preds = %51, %27
  %58 = phi ptr [ %9, %27 ], [ %53, %51 ]
  %59 = load ptr, ptr %12, align 8, !tbaa !28
  %60 = call i32 @tree_int_cst_equal(ptr noundef %58, ptr noundef %59) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 431, ptr noundef nonnull @.str.5) #13
  br label %63

63:                                               ; preds = %57, %62
  %64 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !28
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load ptr, ptr %12, align 8, !tbaa !28
  br label %69

69:                                               ; preds = %63, %67
  %70 = phi ptr [ %68, %67 ], [ %65, %63 ]
  %71 = load ptr, ptr @info.4, align 8, !tbaa !29
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %71) #13
  %72 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !25
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 6
  br label %76

76:                                               ; preds = %74, %99
  %77 = phi i64 [ 0, %74 ], [ %100, %99 ]
  %78 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %79 = load i32, ptr %75, align 4, !tbaa !54
  %80 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %78, i32 noundef %79) #14
  %81 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %80) #14
  %82 = load ptr, ptr %12, align 8, !tbaa !28
  br label %83

83:                                               ; preds = %96, %76
  %84 = phi ptr [ %82, %76 ], [ %93, %96 ]
  %85 = load ptr, ptr @info.7, align 8, !tbaa !50
  %86 = getelementptr inbounds ptr, ptr %85, i64 %77
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %87) #14
  %89 = load ptr, ptr @info.1, align 8, !tbaa !38
  %90 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %84, ptr noundef %89, i32 noundef 0) #13
  store ptr %90, ptr %88, align 8, !tbaa !56
  %91 = getelementptr inbounds %struct.constructor_elt_d, ptr %88, i64 0, i32 1
  store ptr %81, ptr %91, align 8, !tbaa !58
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !9
  %93 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %84, ptr noundef %92, i32 noundef 0) #13
  %94 = call i32 @tree_int_cst_lt(ptr noundef %70, ptr noundef %93) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = call i32 @tree_int_cst_lt(ptr noundef %82, ptr noundef %93) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %83, !llvm.loop !61

99:                                               ; preds = %83, %96
  %100 = add nuw i64 %77, 1
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %101 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !25
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %76, label %103, !llvm.loop !62

103:                                              ; preds = %99, %69
  %104 = phi ptr [ %58, %69 ], [ %93, %99 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %105 = add nuw i32 %8, 1
  %106 = icmp eq i32 %105, %3
  br i1 %106, label %107, label %7, !llvm.loop !63

107:                                              ; preds = %103, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_arrays(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %4 = tail call fastcc i32 @gimple_location(ptr noundef %0) #14
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %5 = load ptr, ptr @info.2, align 8, !tbaa !39
  %6 = call ptr @build_index_type(ptr noundef %5) #13
  %7 = load ptr, ptr @info.0, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = call ptr @create_tmp_var(ptr noundef %9, ptr noundef nonnull @.str.21) #13
  %11 = call zeroext i8 @add_referenced_var(ptr noundef %10) #13
  %12 = call fastcc ptr @make_ssa_name(ptr noundef %10) #14
  %13 = load ptr, ptr @info.0, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = load ptr, ptr @info.1, align 8, !tbaa !38
  %17 = call ptr @fold_convert_loc(i32 noundef %4, ptr noundef %15, ptr noundef %16) #13
  %18 = call ptr @fold_build2_stat_loc(i32 noundef %4, i32 noundef 64, ptr noundef %15, ptr noundef %13, ptr noundef %17) #13
  %19 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %2, ptr noundef %18, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #13
  %20 = call ptr @gimple_build_assign_stat(ptr noundef %12, ptr noundef %19) #13
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !28
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %20, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %20) #14
  store ptr %20, ptr @info.13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %22 = load ptr, ptr @info.4, align 8, !tbaa !29
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %22) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %1 ]
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  call fastcc void @build_one_array(ptr noundef %0, i32 noundef %26, ptr noundef %6, ptr noundef %27, ptr noundef %12) #14
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %28 = add nuw nsw i32 %26, 1
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !25
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %25, label %31, !llvm.loop !65

31:                                               ; preds = %25, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_inbound_check(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @create_artificial_label(i32 noundef 0) #13
  %7 = tail call ptr @create_artificial_label(i32 noundef 0) #13
  %8 = tail call ptr @create_artificial_label(i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %9 = tail call fastcc i32 @gimple_location(ptr noundef %0) #14
  %10 = load ptr, ptr @info.6, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 691, ptr noundef nonnull @.str.5) #13
  br label %13

13:                                               ; preds = %1, %12
  %14 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %15 = load ptr, ptr @info.0, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %17, ptr %19
  %22 = tail call ptr @unsigned_type_for(ptr noundef nonnull %21) #13
  %23 = load ptr, ptr @info.13, align 8, !tbaa !32
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #13
  %24 = call ptr @create_tmp_var(ptr noundef %22, ptr noundef nonnull @.str.23) #13
  %25 = call zeroext i8 @add_referenced_var(ptr noundef %24) #13
  %26 = call fastcc ptr @make_ssa_name(ptr noundef %24) #14
  %27 = load ptr, ptr @info.0, align 8, !tbaa !31
  %28 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %22, ptr noundef %27) #13
  %29 = call ptr @gimple_build_assign_stat(ptr noundef %26, ptr noundef %28) #13
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !28
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %29, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %29) #14
  %31 = load ptr, ptr @info.1, align 8, !tbaa !38
  %32 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %22, ptr noundef %31) #13
  %33 = call ptr @fold_build2_stat_loc(i32 noundef %9, i32 noundef 64, ptr noundef %22, ptr noundef %26, ptr noundef %32) #13
  %34 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %2, ptr noundef %33, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #13
  %35 = call fastcc ptr @make_ssa_name(ptr noundef %24) #14
  %36 = call ptr @gimple_build_assign_stat(ptr noundef %35, ptr noundef %34) #13
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !28
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %36, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %36) #14
  %38 = load ptr, ptr @info.2, align 8, !tbaa !39
  %39 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %22, ptr noundef %38) #13
  %40 = call ptr @gimple_build_cond(i32 noundef 98, ptr noundef %35, ptr noundef %39, ptr noundef null, ptr noundef null) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %40, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %40) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %41 = load ptr, ptr @info.13, align 8, !tbaa !32
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %41) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %42 = call ptr @gimple_build_label(ptr noundef %7) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %42, i32 noundef 1) #13
  %43 = call fastcc ptr @gen_def_assigns(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %44 = load ptr, ptr @info.13, align 8, !tbaa !32
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %44) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %45 = call ptr @gimple_build_label(ptr noundef %6) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %45, i32 noundef 1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %46 = load ptr, ptr @info.4, align 8, !tbaa !29
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %46) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %47 = call ptr @gimple_build_label(ptr noundef %8) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %47, i32 noundef 1) #13
  %48 = call ptr @split_block(ptr noundef %14, ptr noundef %40) #13
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !66
  %51 = call ptr @split_block(ptr noundef %50, ptr noundef %43) #13
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !66
  call void @remove_edge(ptr noundef %51) #13
  %54 = load ptr, ptr @info.14, align 8, !tbaa !33
  %55 = call ptr @split_block(ptr noundef %53, ptr noundef %54) #13
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !66
  call void @remove_edge(ptr noundef %55) #13
  %58 = call ptr @make_edge(ptr noundef %14, ptr noundef %53, i32 noundef 1024) #13
  %59 = load i32, ptr @info.10, align 8, !tbaa !34
  %60 = sub nsw i32 10000, %59
  %61 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 8
  store i32 %60, ptr %61, align 4, !tbaa !42
  %62 = load i64, ptr @info.12, align 8, !tbaa !36
  %63 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 9
  store i64 %62, ptr %63, align 8, !tbaa !44
  %64 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !67
  %66 = and i32 %65, -2050
  %67 = or disjoint i32 %66, 2048
  store i32 %67, ptr %64, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 %59, ptr %68, align 4, !tbaa !42
  %69 = load i64, ptr @info.11, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 9
  store i64 %69, ptr %70, align 8, !tbaa !44
  %71 = load ptr, ptr @info.4, align 8, !tbaa !29
  %72 = call ptr @make_edge(ptr noundef %53, ptr noundef %71, i32 noundef 1) #13
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 8
  store i32 10000, ptr %73, align 4, !tbaa !42
  %74 = load i64, ptr @info.12, align 8, !tbaa !36
  %75 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 9
  store i64 %74, ptr %75, align 8, !tbaa !44
  %76 = call ptr @make_edge(ptr noundef %50, ptr noundef %71, i32 noundef 1) #13
  %77 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 8
  store i32 10000, ptr %77, align 4, !tbaa !42
  %78 = load i64, ptr @info.11, align 8, !tbaa !35
  %79 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 9
  store i64 %78, ptr %79, align 8, !tbaa !44
  %80 = load ptr, ptr %58, align 8, !tbaa !46
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 11
  %82 = load i32, ptr %81, align 8, !tbaa !68
  %83 = load i32, ptr %61, align 4, !tbaa !42
  %84 = mul nsw i32 %83, %82
  %85 = add nsw i32 %84, 5000
  %86 = sdiv i32 %85, 10000
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  store i32 %86, ptr %87, align 8, !tbaa !68
  %88 = load ptr, ptr %48, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 11
  %90 = load i32, ptr %89, align 8, !tbaa !68
  %91 = load i32, ptr %68, align 4, !tbaa !42
  %92 = mul nsw i32 %91, %90
  %93 = add nsw i32 %92, 5000
  %94 = sdiv i32 %93, 10000
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 11
  store i32 %94, ptr %95, align 8, !tbaa !68
  %96 = load ptr, ptr %72, align 8, !tbaa !46
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 11
  %98 = load i32, ptr %97, align 8, !tbaa !68
  %99 = load i32, ptr %73, align 4, !tbaa !42
  %100 = mul nsw i32 %99, %98
  %101 = add nsw i32 %100, 5000
  %102 = sdiv i32 %101, 10000
  %103 = load ptr, ptr %76, align 8, !tbaa !46
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 11
  %105 = load i32, ptr %104, align 8, !tbaa !68
  %106 = mul nsw i32 %105, 10000
  %107 = add nsw i32 %106, 5000
  %108 = sdiv i32 %107, 10000
  %109 = add nsw i32 %108, %102
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 11
  store i32 %109, ptr %110, align 8, !tbaa !68
  %111 = load ptr, ptr @info.4, align 8, !tbaa !29
  call fastcc void @prune_bbs(ptr noundef %57, ptr noundef %111) #14
  call fastcc void @fix_phi_nodes(ptr noundef nonnull %72, ptr noundef nonnull %76, ptr noundef %71) #14
  call void @free_dominance_info(i32 noundef 1) #13
  call void @free_dominance_info(i32 noundef 2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_temp_arrays() unnamed_addr #6 {
  %1 = load ptr, ptr @info.7, align 8, !tbaa !50
  tail call void @free(ptr noundef %1) #14
  %2 = load ptr, ptr @info.6, align 8, !tbaa !49
  tail call void @free(ptr noundef %2) #14
  %3 = load ptr, ptr @info.8, align 8, !tbaa !51
  tail call void @free(ptr noundef %3) #14
  %4 = load ptr, ptr @info.9, align 8, !tbaa !52
  tail call void @free(ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !28
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !19
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !19
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #14, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.5) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !72
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #14
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !28
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #14
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #14
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #14
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #14
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_ip_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @initializer_constant_valid_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  store ptr %4, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #14, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 655, ptr noundef nonnull @.str.5) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !70
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !28
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.5) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #13
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_quick_push(ptr noundef %0) unnamed_addr #11 {
  %2 = load i32, ptr %0, align 8, !tbaa !81
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !81
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_index_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #13
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #13
  tail call void @update_stmt_operands(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_one_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #13
  %7 = call fastcc i32 @gimple_location(ptr noundef %0) #14
  %8 = load ptr, ptr @info.6, align 8, !tbaa !49
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 504, ptr noundef nonnull @.str.5) #13
  br label %14

14:                                               ; preds = %5, %13
  %15 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %3) #14
  %16 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %15) #14
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = call fastcc ptr @make_ssa_name(ptr noundef %18) #14
  %20 = load ptr, ptr @info.8, align 8, !tbaa !51
  %21 = getelementptr inbounds ptr, ptr %20, i64 %9
  store ptr %19, ptr %21, align 8, !tbaa !9
  %22 = load ptr, ptr @info.7, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 %9
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = call fastcc ptr @constructor_contains_same_values_p(ptr noundef %24) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = call ptr @gimple_build_assign_stat(ptr noundef %19, ptr noundef nonnull %25) #13
  br label %57

29:                                               ; preds = %14
  %30 = load ptr, ptr @info.6, align 8, !tbaa !49
  %31 = getelementptr inbounds ptr, ptr %30, i64 %9
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !28
  %35 = call ptr @build_array_type(ptr noundef %34, ptr noundef %2) #13
  %36 = load ptr, ptr @info.7, align 8, !tbaa !50
  %37 = getelementptr inbounds ptr, ptr %36, i64 %9
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = call ptr @build_constructor(ptr noundef %35, ptr noundef %38) #13
  %40 = load i64, ptr %39, align 8
  %41 = or i64 %40, 131072
  store i64 %41, ptr %39, align 8
  %42 = call ptr @build_decl_stat(i32 noundef %7, i32 noundef 32, ptr noundef null, ptr noundef %35) #13
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, 67108864
  store i64 %44, ptr %42, align 8
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 5
  store ptr %39, ptr %45, align 8, !tbaa !28
  %46 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.22) #13
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !28
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = or i64 %49, 4096
  store i64 %50, ptr %48, align 8
  %51 = load i64, ptr %42, align 8
  %52 = or i64 %51, 131072
  store i64 %52, ptr %42, align 8
  %53 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %42) #13
  %54 = call ptr @varpool_node(ptr noundef nonnull %42) #13
  call void @varpool_mark_needed_node(ptr noundef %54) #13
  call void @varpool_finalize_decl(ptr noundef nonnull %42) #13
  %55 = call ptr @build4_stat(i32 noundef 45, ptr noundef %34, ptr noundef nonnull %42, ptr noundef %4, ptr noundef null, ptr noundef null) #13
  %56 = call ptr @gimple_build_assign_stat(ptr noundef %19, ptr noundef %55) #13
  br label %57

57:                                               ; preds = %29, %27
  %58 = phi ptr [ %28, %27 ], [ %56, %29 ]
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  store ptr %58, ptr %59, align 8, !tbaa !28
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %58, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %58) #14
  store ptr %58, ptr @info.14, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @constructor_contains_same_values_p(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %0) #14
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %1, %14
  %5 = phi ptr [ %15, %14 ], [ null, %1 ]
  %6 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %7 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %0, i32 noundef %6) #14
  %8 = icmp eq ptr %5, null
  %9 = getelementptr inbounds %struct.constructor_elt_d, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  br i1 %8, label %14, label %11

11:                                               ; preds = %4
  %12 = tail call i32 @operand_equal_p(ptr noundef %10, ptr noundef nonnull %5, i32 noundef 1) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %5, %11 ], [ %10, %4 ]
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %4, !llvm.loop !83

18:                                               ; preds = %11, %14, %1
  %19 = phi ptr [ null, %1 ], [ %15, %14 ], [ null, %11 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !81
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gen_def_assigns(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr @info.5, align 8, !tbaa !45
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %19, %4 ], [ 0, %1 ]
  %6 = load ptr, ptr @info.8, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = tail call fastcc ptr @make_ssa_name(ptr noundef %10) #14
  %12 = load ptr, ptr @info.9, align 8, !tbaa !52
  %13 = getelementptr inbounds ptr, ptr %12, i64 %5
  store ptr %11, ptr %13, align 8, !tbaa !9
  %14 = load ptr, ptr @info.6, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = tail call ptr @gimple_build_assign_stat(ptr noundef %11, ptr noundef %16) #13
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !28
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %17, i32 noundef 1) #13
  tail call fastcc void @update_stmt(ptr noundef %17) #14
  %19 = add nuw nsw i64 %5, 1
  %20 = load i32, ptr @info.5, align 8, !tbaa !45
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %4, label %23, !llvm.loop !84

23:                                               ; preds = %4, %1
  %24 = phi ptr [ null, %1 ], [ %17, %4 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_bbs(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %3) #14
  %5 = tail call fastcc ptr @ei_safe_edge(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  tail call void @remove_edge(ptr noundef nonnull %8) #13
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @delete_basic_block(ptr noundef %10) #13
  br label %13

13:                                               ; preds = %12, %7
  %14 = tail call fastcc ptr @ei_safe_edge(ptr %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !87

16:                                               ; preds = %13, %2
  tail call void @delete_basic_block(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_phi_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2) #13
  %5 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14
  %10 = load ptr, ptr @info.8, align 8, !tbaa !51
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  call void @add_phi_arg(ptr noundef %9, ptr noundef %12, ptr noundef %0, i32 noundef 0) #13
  %13 = load ptr, ptr @info.9, align 8, !tbaa !52
  %14 = getelementptr inbounds ptr, ptr %13, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  call void @add_phi_arg(ptr noundef %9, ptr noundef %15, ptr noundef %1, i32 noundef 0) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #14
  %16 = add nuw i64 %8, 1
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !25
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %7, label %19, !llvm.loop !88

19:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !90
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !92
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(ptr %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @ei_end_p(ptr %0) #14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @ei_edge(ptr %0) #14
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(ptr %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @ei_container(ptr %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @ei_container(ptr %0) #14
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %7) #14
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(ptr %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @ei_container(ptr %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @ei_container(ptr %0) #14
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.5) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!13 = !{!14, !10, i64 0}
!14 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!15 = !{!16, !10, i64 56}
!16 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !17, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!17 = !{!"long", !7, i64 0}
!18 = !{!14, !10, i64 8}
!19 = !{i32 0, i32 256}
!20 = !{!21, !10, i64 0}
!21 = !{!"", !10, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!22 = !{!21, !6, i64 8}
!23 = !{!24, !10, i64 120}
!24 = !{!"switch_conv_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !17, i64 88, !17, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!25 = !{i8 0, i8 2}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!7, !7, i64 0}
!29 = !{!24, !10, i64 32}
!30 = !{!24, !10, i64 24}
!31 = !{!24, !10, i64 0}
!32 = !{!24, !10, i64 104}
!33 = !{!24, !10, i64 112}
!34 = !{!24, !6, i64 80}
!35 = !{!24, !17, i64 88}
!36 = !{!24, !17, i64 96}
!37 = distinct !{!37, !27}
!38 = !{!24, !10, i64 8}
!39 = !{!24, !10, i64 16}
!40 = !{!41, !6, i64 8}
!41 = !{!"param_info", !10, i64 0, !6, i64 8, !7, i64 12, !6, i64 16, !6, i64 20, !10, i64 24}
!42 = !{!43, !6, i64 52}
!43 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !17, i64 56}
!44 = !{!43, !17, i64 56}
!45 = !{!24, !6, i64 40}
!46 = !{!43, !10, i64 0}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = !{!24, !10, i64 48}
!50 = !{!24, !10, i64 56}
!51 = !{!24, !10, i64 64}
!52 = !{!24, !10, i64 72}
!53 = distinct !{!53, !27}
!54 = !{!43, !6, i64 44}
!55 = distinct !{!55, !27}
!56 = !{!57, !10, i64 0}
!57 = !{!"constructor_elt_d", !10, i64 0, !10, i64 8}
!58 = !{!57, !10, i64 8}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
!64 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9}
!65 = distinct !{!65, !27}
!66 = !{!43, !10, i64 8}
!67 = !{!43, !6, i64 48}
!68 = !{!16, !6, i64 88}
!69 = !{!17, !17, i64 0}
!70 = !{!16, !10, i64 0}
!71 = !{!16, !10, i64 8}
!72 = !{!73, !6, i64 0}
!73 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!74 = !{!75, !10, i64 0}
!75 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!76 = !{!77, !10, i64 0}
!77 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!78 = !{!77, !10, i64 16}
!79 = !{!80, !10, i64 24}
!80 = !{!"ssa_use_operand_d", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24}
!81 = !{!82, !6, i64 0}
!82 = !{!"VEC_constructor_elt_base", !6, i64 0, !6, i64 4, !7, i64 8}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = !{!75, !10, i64 8}
!86 = !{!75, !10, i64 16}
!87 = distinct !{!87, !27}
!88 = distinct !{!88, !27}
!89 = !{!16, !6, i64 96}
!90 = !{!91, !10, i64 0}
!91 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!92 = !{!93, !10, i64 0}
!93 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
