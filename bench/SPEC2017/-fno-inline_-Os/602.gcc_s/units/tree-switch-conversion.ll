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

@pass_convert_switch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @switchconv_gate, ptr @do_switchconv, ptr null, ptr null, i32 0, i32 109, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@.str = private unnamed_addr constant [11 x i8] c"switchconv\00", align 1
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
define internal zeroext i8 @switchconv_gate() #0 !prof !234 !PGOFuncName !235 {
  %1 = load i32, ptr @flag_tree_switch_conversion, align 4, !tbaa !236
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @do_switchconv() #1 !prof !234 !PGOFuncName !240 {
  %1 = alloca %struct.expanded_location, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !241
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  %5 = load ptr, ptr %4, align 8, !tbaa !245
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !250
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %63, label %11, !prof !251

11:                                               ; preds = %0, %54
  %12 = phi ptr [ %56, %54 ], [ %7, %0 ]
  %13 = call ptr @last_stmt(ptr noundef %12) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15, !prof !252

15:                                               ; preds = %11
  %16 = call fastcc i32 @gimple_code(ptr noundef nonnull %13) #14, !range !253
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %54, !prof !254

18:                                               ; preds = %15
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !241
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21, !prof !255

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.expanded_location, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  %23 = call fastcc i32 @gimple_location(ptr noundef nonnull %13) #14
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %23) #13
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !241
  %25 = load ptr, ptr %1, align 8, !tbaa !256
  %26 = load i32, ptr %22, align 8, !tbaa !258
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef %26) #14
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !241
  call void @print_gimple_stmt(ptr noundef %28, ptr noundef nonnull %13, i32 noundef 0, i32 noundef 2) #13
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !241
  %30 = call i32 @putc(i32 noundef 10, ptr noundef %29) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  br label %31

31:                                               ; preds = %21, %18
  store ptr null, ptr @info.15, align 8, !tbaa !259
  %32 = call fastcc zeroext i8 @process_switch(ptr noundef nonnull %13) #14, !range !261
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !241
  %35 = icmp eq ptr %34, null
  br i1 %33, label %39, label %36, !prof !262

36:                                               ; preds = %31
  br i1 %35, label %54, label %37, !prof !263

37:                                               ; preds = %36
  %38 = call i32 @fputs(ptr noundef nonnull @.str.2, ptr noundef nonnull %34) #14
  br label %51

39:                                               ; preds = %31
  br i1 %35, label %54, label %40, !prof !264

40:                                               ; preds = %39
  %41 = load ptr, ptr @info.15, align 8, !tbaa !259
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 894, ptr noundef nonnull @.str.5) #13
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !241
  br label %45

45:                                               ; preds = %40, %43
  %46 = phi ptr [ %34, %40 ], [ %44, %43 ]
  %47 = call i32 @fputs(ptr noundef nonnull @.str.6, ptr noundef %46) #14
  %48 = load ptr, ptr @info.15, align 8, !tbaa !259
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !241
  %50 = call i32 @fputs(ptr noundef %48, ptr noundef %49) #14
  br label %51

51:                                               ; preds = %45, %37
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !241
  %53 = call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %52) #14
  br label %54

54:                                               ; preds = %51, %36, %39, %15, %11
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !247
  %57 = load ptr, ptr @cfun, align 8, !tbaa !241
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !243
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !250
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %11, !prof !265, !llvm.loop !266

63:                                               ; preds = %54, %0
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !268 !PGOFuncName !269 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !270 !PGOFuncName !271 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !272
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
define internal fastcc noundef zeroext i8 @process_switch(ptr noundef %0) unnamed_addr #1 !prof !273 !PGOFuncName !274 {
  %2 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #14
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %4, label %5, !prof !275

4:                                                ; preds = %1
  store ptr @.str.7, ptr @info.15, align 8, !tbaa !259
  br label %34

5:                                                ; preds = %1
  store ptr null, ptr @info.4, align 8, !tbaa !276
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  store ptr %6, ptr @info.3, align 8, !tbaa !277
  %7 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #14
  store ptr %7, ptr @info.0, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  store ptr null, ptr @info.13, align 8, !tbaa !279
  store ptr null, ptr @info.14, align 8, !tbaa !280
  store i32 0, ptr @info.10, align 8, !tbaa !281
  store i64 0, ptr @info.11, align 8, !tbaa !282
  store i64 0, ptr @info.12, align 8, !tbaa !283
  %10 = load ptr, ptr @global_trees, align 16, !tbaa !241
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %13, !prof !275

12:                                               ; preds = %5
  store ptr @.str.8, ptr @info.15, align 8, !tbaa !259
  br label %34

13:                                               ; preds = %5
  %14 = tail call fastcc zeroext i8 @check_range(ptr noundef %0) #14, !range !261
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16, !prof !284

16:                                               ; preds = %13, %26
  %17 = phi i32 [ %27, %26 ], [ 0, %13 ]
  %18 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %17) #14
  %19 = tail call fastcc zeroext i8 @check_process_case(ptr noundef %18) #14, !range !261
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26, !prof !285

21:                                               ; preds = %16
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !241
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24, !prof !286

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.9, i32 noundef %17) #14
  br label %34

26:                                               ; preds = %16
  %27 = add nuw i32 %17, 1
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %16, !prof !287, !llvm.loop !288

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @check_final_bb() #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32, !prof !289

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
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !290 !PGOFuncName !291 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !292

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3162, ptr noundef nonnull @.str.5) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !293 !PGOFuncName !294 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 !prof !273 !PGOFuncName !295 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_range(ptr noundef %0) unnamed_addr #1 !prof !273 !PGOFuncName !296 {
  %2 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #14
  %3 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 1) #14
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !272
  store ptr %5, ptr @info.1, align 8, !tbaa !297
  %6 = icmp ugt i32 %2, 1
  br i1 %6, label %8, label %7, !prof !255

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 181, ptr noundef nonnull @.str.5) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #14
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !272
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !255

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 182, ptr noundef nonnull @.str.5) #13
  br label %14

14:                                               ; preds = %8, %13
  %15 = add i32 %2, -1
  %16 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %15) #14
  %17 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !272
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !298

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !272
  br label %23

23:                                               ; preds = %14, %20
  %24 = phi ptr [ %22, %20 ], [ %18, %14 ]
  %25 = load ptr, ptr @info.1, align 8, !tbaa !297
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !275

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 189, ptr noundef nonnull @.str.5) #13
  br label %28

28:                                               ; preds = %23, %27
  %29 = icmp eq ptr %24, null
  br i1 %29, label %30, label %31, !prof !275

30:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 190, ptr noundef nonnull @.str.5) #13
  br label %31

31:                                               ; preds = %28, %30
  %32 = load ptr, ptr @info.1, align 8, !tbaa !297
  %33 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %24, ptr noundef %32, i32 noundef 0) #13
  store ptr %33, ptr @info.2, align 8, !tbaa !299
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37, !prof !275

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 194, ptr noundef nonnull @.str.5) #13
  %36 = load ptr, ptr @info.2, align 8, !tbaa !299
  br label %37

37:                                               ; preds = %31, %35
  %38 = phi ptr [ %33, %31 ], [ %36, %35 ]
  %39 = tail call i32 @host_integerp(ptr noundef %38, i32 noundef 1) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41, !prof !275

41:                                               ; preds = %37
  %42 = load ptr, ptr @info.2, align 8, !tbaa !299
  %43 = tail call i64 @tree_low_cst(ptr noundef %42, i32 noundef 1) #13
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !241
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 108, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !300
  %47 = mul i32 %46, %2
  %48 = zext i32 %47 to i64
  %49 = icmp ugt i64 %43, %48
  br i1 %49, label %50, label %52, !prof !284

50:                                               ; preds = %41, %37
  %51 = phi ptr [ @.str.11, %37 ], [ @.str.12, %41 ]
  store ptr %51, ptr @info.15, align 8, !tbaa !259
  br label %52

52:                                               ; preds = %50, %41
  %53 = phi i8 [ 1, %41 ], [ 0, %50 ]
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_process_case(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !302 !PGOFuncName !303 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  %5 = load ptr, ptr @cfun, align 8, !tbaa !241
  %6 = tail call ptr @label_to_block_fn(ptr noundef %5, ptr noundef %4) #13
  %7 = load ptr, ptr @info.3, align 8, !tbaa !277
  %8 = tail call ptr @find_edge(ptr noundef %7, ptr noundef %6) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !304

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 227, ptr noundef nonnull @.str.5) #13
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr %2, align 8, !tbaa !272
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19, !prof !305

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !306
  store i32 %16, ptr @info.10, align 8, !tbaa !281
  %17 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  %18 = load i64, ptr %17, align 8, !tbaa !308
  store i64 %18, ptr @info.11, align 8, !tbaa !282
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !308
  %22 = load i64, ptr @info.12, align 8, !tbaa !283
  %23 = add nsw i64 %22, %21
  store i64 %23, ptr @info.12, align 8, !tbaa !283
  br label %24

24:                                               ; preds = %19, %14
  %25 = icmp eq ptr %6, null
  br i1 %25, label %26, label %27, !prof !304

26:                                               ; preds = %24
  store ptr @.str.13, ptr @info.15, align 8, !tbaa !259
  br label %52

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %6) #14, !range !261
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36, !prof !309

30:                                               ; preds = %27
  %31 = load ptr, ptr @info.4, align 8, !tbaa !276
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %6
  %34 = or i1 %32, %33
  br i1 %34, label %44, label %35, !prof !310

35:                                               ; preds = %30
  store ptr @.str.14, ptr @info.15, align 8, !tbaa !259
  br label %52

36:                                               ; preds = %27
  %37 = tail call zeroext i8 @empty_block_p(ptr noundef nonnull %6) #13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40, !prof !311

39:                                               ; preds = %36
  store ptr @.str.15, ptr @info.15, align 8, !tbaa !259
  br label %52

40:                                               ; preds = %36
  %41 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %6) #14
  %42 = tail call fastcc ptr @single_succ(ptr noundef nonnull %6) #14
  %43 = load ptr, ptr @info.4, align 8, !tbaa !276
  br label %44

44:                                               ; preds = %30, %40
  %45 = phi ptr [ %31, %30 ], [ %43, %40 ]
  %46 = phi ptr [ %6, %30 ], [ %42, %40 ]
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49, !prof !312

48:                                               ; preds = %44
  store ptr %46, ptr @info.4, align 8, !tbaa !276
  br label %52

49:                                               ; preds = %44
  %50 = icmp eq ptr %45, %46
  br i1 %50, label %52, label %51, !prof !313

51:                                               ; preds = %49
  store ptr @.str.16, ptr @info.15, align 8, !tbaa !259
  br label %52

52:                                               ; preds = %48, %49, %51, %39, %35, %26
  %53 = phi i8 [ 0, %51 ], [ 0, %39 ], [ 0, %35 ], [ 0, %26 ], [ 1, %49 ], [ 1, %48 ]
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !314 !PGOFuncName !315 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !316

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3215, ptr noundef nonnull @.str.5) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_final_bb() unnamed_addr #1 !prof !317 !PGOFuncName !318 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  store i32 0, ptr @info.5, align 8, !tbaa !319
  %2 = load ptr, ptr @info.4, align 8, !tbaa !276
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %2) #13
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !261
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %57, !prof !320

5:                                                ; preds = %0, %52
  %6 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14
  %7 = load i32, ptr @info.5, align 8, !tbaa !319
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @info.5, align 8, !tbaa !319
  %9 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11, !prof !321

11:                                               ; preds = %5
  %12 = load ptr, ptr @info.3, align 8, !tbaa !277
  br label %13

13:                                               ; preds = %11, %46
  %14 = phi ptr [ %12, %11 ], [ %47, %46 ]
  %15 = phi i64 [ 0, %11 ], [ %48, %46 ]
  %16 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %6, i64 noundef %15) #14
  %17 = load ptr, ptr %16, align 8, !tbaa !322
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %26, label %19, !prof !323

19:                                               ; preds = %13
  %20 = call fastcc zeroext i8 @single_pred_p(ptr noundef %17) #14, !range !261
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22, !prof !324

22:                                               ; preds = %19
  %23 = call fastcc ptr @single_pred(ptr noundef %17) #14
  %24 = load ptr, ptr @info.3, align 8, !tbaa !277
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %46, !prof !325

26:                                               ; preds = %22, %13
  %27 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %6, i64 noundef %15) #14
  %28 = call zeroext i8 @is_gimple_ip_invariant(ptr noundef %27) #13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %55, label %30, !prof !326

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !272
  %33 = call ptr @initializer_constant_valid_p(ptr noundef %27, ptr noundef %32) #13
  %34 = load i32, ptr @flag_pic, align 4, !tbaa !236
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr @info.3, align 8, !tbaa !277
  br i1 %35, label %40, label %37, !prof !327

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !241
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %46, label %42

40:                                               ; preds = %30
  %41 = icmp eq ptr %33, null
  br i1 %41, label %42, label %46, !prof !328

42:                                               ; preds = %40, %37
  %43 = phi ptr [ null, %40 ], [ %33, %37 ]
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str.20, ptr @.str.19
  br label %55

46:                                               ; preds = %37, %19, %22, %40
  %47 = phi ptr [ %36, %37 ], [ %14, %19 ], [ %24, %22 ], [ %36, %40 ]
  %48 = add nuw nsw i64 %15, 1
  %49 = call fastcc i32 @gimple_phi_num_args(ptr noundef %6) #14
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %13, label %52, !prof !329, !llvm.loop !330

52:                                               ; preds = %46, %5
  call fastcc void @gsi_next(ptr noundef nonnull %1) #14
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !261
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %5, label %57, !prof !331, !llvm.loop !332

55:                                               ; preds = %26, %42
  %56 = phi ptr [ %45, %42 ], [ @.str.18, %26 ]
  store ptr %56, ptr @info.15, align 8, !tbaa !259
  br label %57

57:                                               ; preds = %52, %55, %0
  %58 = phi i8 [ 1, %0 ], [ 0, %55 ], [ 1, %52 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_temp_arrays() unnamed_addr #1 !prof !333 !PGOFuncName !334 {
  %1 = load i32, ptr @info.5, align 8, !tbaa !319
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #13
  store ptr %3, ptr @info.6, align 8, !tbaa !335
  %4 = load i32, ptr @info.5, align 8, !tbaa !319
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #13
  store ptr %6, ptr @info.7, align 8, !tbaa !336
  %7 = load i32, ptr @info.5, align 8, !tbaa !319
  %8 = sext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #13
  store ptr %9, ptr @info.8, align 8, !tbaa !337
  %10 = load i32, ptr @info.5, align 8, !tbaa !319
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 8) #13
  store ptr %12, ptr @info.9, align 8, !tbaa !338
  %13 = load i32, ptr @info.5, align 8, !tbaa !319
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28, !prof !320

15:                                               ; preds = %0, %15
  %16 = phi i64 [ %24, %15 ], [ 0, %0 ]
  %17 = load ptr, ptr @info.2, align 8, !tbaa !299
  %18 = tail call i64 @tree_low_cst(ptr noundef %17, i32 noundef 1) #13
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = tail call fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %20) #14
  %22 = load ptr, ptr @info.7, align 8, !tbaa !336
  %23 = getelementptr inbounds ptr, ptr %22, i64 %16
  store ptr %21, ptr %23, align 8, !tbaa !241
  %24 = add nuw nsw i64 %16, 1
  %25 = load i32, ptr @info.5, align 8, !tbaa !319
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %15, label %28, !prof !339, !llvm.loop !340

28:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_default_values(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !333 !PGOFuncName !341 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %3 = load ptr, ptr @cfun, align 8, !tbaa !241
  %4 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !272
  %7 = tail call ptr @label_to_block_fn(ptr noundef %3, ptr noundef %6) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !272
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !263

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 374, ptr noundef nonnull @.str.5) #13
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @info.4, align 8, !tbaa !276
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %14, label %17, !prof !342

14:                                               ; preds = %11
  %15 = load ptr, ptr @info.3, align 8, !tbaa !277
  %16 = tail call ptr @find_edge(ptr noundef %15, ptr noundef %7) #13
  br label %19

17:                                               ; preds = %11
  %18 = tail call fastcc ptr @single_succ_edge(ptr noundef %7) #14
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %16, %14 ], [ %18, %17 ]
  %21 = load ptr, ptr @info.4, align 8, !tbaa !276
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %21) #13
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !261
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %40, !prof !320

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %34
  %27 = phi i64 [ 0, %24 ], [ %36, %34 ]
  %28 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %29 = load i32, ptr %25, align 4, !tbaa !343
  %30 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %28, i32 noundef %29) #14
  %31 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %30) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !344

33:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 385, ptr noundef nonnull @.str.5) #13
  br label %34

34:                                               ; preds = %26, %33
  %35 = load ptr, ptr @info.6, align 8, !tbaa !335
  %36 = add nuw i64 %27, 1
  %37 = getelementptr inbounds ptr, ptr %35, i64 %27
  store ptr %31, ptr %37, align 8, !tbaa !241
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !261
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %26, label %40, !prof !339, !llvm.loop !345

40:                                               ; preds = %34, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_constructors(ptr noundef %0) unnamed_addr #1 !prof !333 !PGOFuncName !346 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #14
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %107, !prof !320

5:                                                ; preds = %1
  %6 = load ptr, ptr @info.1, align 8, !tbaa !297
  br label %7

7:                                                ; preds = %5, %103
  %8 = phi i32 [ %105, %103 ], [ 1, %5 ]
  %9 = phi ptr [ %104, %103 ], [ %6, %5 ]
  %10 = call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %8) #14
  %11 = load ptr, ptr @cfun, align 8, !tbaa !241
  %12 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %13 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !272
  %15 = call ptr @label_to_block_fn(ptr noundef %11, ptr noundef %14) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %16 = load ptr, ptr @info.4, align 8, !tbaa !276
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %21, !prof !347

18:                                               ; preds = %7
  %19 = load ptr, ptr @info.3, align 8, !tbaa !277
  %20 = call ptr @find_edge(ptr noundef %19, ptr noundef %15) #13
  br label %23

21:                                               ; preds = %7
  %22 = call fastcc ptr @single_succ_edge(ptr noundef %15) #14
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %22, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !348

26:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 413, ptr noundef nonnull @.str.5) #13
  br label %27

27:                                               ; preds = %23, %26
  %28 = load ptr, ptr %12, align 8, !tbaa !272
  %29 = call i32 @tree_int_cst_lt(ptr noundef %9, ptr noundef %28) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %57, label %31, !prof !349

31:                                               ; preds = %27, %51
  %32 = phi ptr [ %53, %51 ], [ %9, %27 ]
  %33 = load i32, ptr @info.5, align 8, !tbaa !319
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %51, !prof !350

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %47, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr @info.7, align 8, !tbaa !336
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !241
  %40 = call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %39) #14
  %41 = load ptr, ptr @info.1, align 8, !tbaa !297
  %42 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %32, ptr noundef %41, i32 noundef 0) #13
  store ptr %42, ptr %40, align 8, !tbaa !351
  %43 = load ptr, ptr @info.6, align 8, !tbaa !335
  %44 = getelementptr inbounds ptr, ptr %43, i64 %36
  %45 = load ptr, ptr %44, align 8, !tbaa !241
  %46 = getelementptr inbounds %struct.constructor_elt_d, ptr %40, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !353
  %47 = add nuw nsw i64 %36, 1
  %48 = load i32, ptr @info.5, align 8, !tbaa !319
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %35, label %51, !prof !354, !llvm.loop !355

51:                                               ; preds = %35, %31
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !241
  %53 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %32, ptr noundef %52, i32 noundef 0) #13
  %54 = load ptr, ptr %12, align 8, !tbaa !272
  %55 = call i32 @tree_int_cst_lt(ptr noundef %53, ptr noundef %54) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %31, !prof !356, !llvm.loop !357

57:                                               ; preds = %51, %27
  %58 = phi ptr [ %9, %27 ], [ %53, %51 ]
  %59 = load ptr, ptr %12, align 8, !tbaa !272
  %60 = call i32 @tree_int_cst_equal(ptr noundef %58, ptr noundef %59) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !348

62:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 431, ptr noundef nonnull @.str.5) #13
  br label %63

63:                                               ; preds = %57, %62
  %64 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !272
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69, !prof !358

67:                                               ; preds = %63
  %68 = load ptr, ptr %12, align 8, !tbaa !272
  br label %69

69:                                               ; preds = %63, %67
  %70 = phi ptr [ %68, %67 ], [ %65, %63 ]
  %71 = load ptr, ptr @info.4, align 8, !tbaa !276
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %71) #13
  %72 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !261
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %103, !prof !359

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 6
  br label %76

76:                                               ; preds = %74, %99
  %77 = phi i64 [ 0, %74 ], [ %100, %99 ]
  %78 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %79 = load i32, ptr %75, align 4, !tbaa !343
  %80 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %78, i32 noundef %79) #14
  %81 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %80) #14
  %82 = load ptr, ptr %12, align 8, !tbaa !272
  br label %83

83:                                               ; preds = %96, %76
  %84 = phi ptr [ %82, %76 ], [ %93, %96 ]
  %85 = load ptr, ptr @info.7, align 8, !tbaa !336
  %86 = getelementptr inbounds ptr, ptr %85, i64 %77
  %87 = load ptr, ptr %86, align 8, !tbaa !241
  %88 = call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %87) #14
  %89 = load ptr, ptr @info.1, align 8, !tbaa !297
  %90 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %84, ptr noundef %89, i32 noundef 0) #13
  store ptr %90, ptr %88, align 8, !tbaa !351
  %91 = getelementptr inbounds %struct.constructor_elt_d, ptr %88, i64 0, i32 1
  store ptr %81, ptr %91, align 8, !tbaa !353
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !241
  %93 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %84, ptr noundef %92, i32 noundef 0) #13
  %94 = call i32 @tree_int_cst_lt(ptr noundef %70, ptr noundef %93) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99, !prof !360

96:                                               ; preds = %83
  %97 = call i32 @tree_int_cst_lt(ptr noundef %82, ptr noundef %93) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %83, !prof !361, !llvm.loop !362

99:                                               ; preds = %83, %96
  %100 = add nuw i64 %77, 1
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %101 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !261
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %76, label %103, !prof !363, !llvm.loop !364

103:                                              ; preds = %99, %69
  %104 = phi ptr [ %58, %69 ], [ %93, %99 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %105 = add nuw i32 %8, 1
  %106 = icmp eq i32 %105, %3
  br i1 %106, label %107, label %7, !prof !365, !llvm.loop !366

107:                                              ; preds = %103, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_arrays(ptr noundef %0) unnamed_addr #1 !prof !333 !PGOFuncName !367 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %4 = tail call fastcc i32 @gimple_location(ptr noundef %0) #14
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #13
  %5 = load ptr, ptr @info.2, align 8, !tbaa !299
  %6 = call ptr @build_index_type(ptr noundef %5) #13
  %7 = load ptr, ptr @info.0, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = call ptr @create_tmp_var(ptr noundef %9, ptr noundef nonnull @.str.21) #13
  %11 = call zeroext i8 @add_referenced_var(ptr noundef %10) #13
  %12 = call fastcc ptr @make_ssa_name(ptr noundef %10) #14
  %13 = load ptr, ptr @info.0, align 8, !tbaa !278
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !272
  %16 = load ptr, ptr @info.1, align 8, !tbaa !297
  %17 = call ptr @fold_convert_loc(i32 noundef %4, ptr noundef %15, ptr noundef %16) #13
  %18 = call ptr @fold_build2_stat_loc(i32 noundef %4, i32 noundef 64, ptr noundef %15, ptr noundef %13, ptr noundef %17) #13
  %19 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %2, ptr noundef %18, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #13
  %20 = call ptr @gimple_build_assign_stat(ptr noundef %12, ptr noundef %19) #13
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !272
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %20, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %20) #14
  store ptr %20, ptr @info.13, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %22 = load ptr, ptr @info.4, align 8, !tbaa !276
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %22) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !261
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31, !prof !320

25:                                               ; preds = %1, %25
  %26 = phi i32 [ %28, %25 ], [ 0, %1 ]
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  call fastcc void @build_one_array(ptr noundef %0, i32 noundef %26, ptr noundef %6, ptr noundef %27, ptr noundef %12) #14
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %28 = add nuw nsw i32 %26, 1
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !261
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %25, label %31, !prof !339, !llvm.loop !369

31:                                               ; preds = %25, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_inbound_check(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !333 !PGOFuncName !370 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call ptr @create_artificial_label(i32 noundef 0) #13
  %7 = tail call ptr @create_artificial_label(i32 noundef 0) #13
  %8 = tail call ptr @create_artificial_label(i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %9 = tail call fastcc i32 @gimple_location(ptr noundef %0) #14
  %10 = load ptr, ptr @info.6, align 8, !tbaa !335
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !371

12:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 691, ptr noundef nonnull @.str.5) #13
  br label %13

13:                                               ; preds = %1, %12
  %14 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %15 = load ptr, ptr @info.0, align 8, !tbaa !278
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !272
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !272
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %17, ptr %19, !prof !263
  %22 = tail call ptr @unsigned_type_for(ptr noundef nonnull %21) #13
  %23 = load ptr, ptr @info.13, align 8, !tbaa !279
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #13
  %24 = call ptr @create_tmp_var(ptr noundef %22, ptr noundef nonnull @.str.23) #13
  %25 = call zeroext i8 @add_referenced_var(ptr noundef %24) #13
  %26 = call fastcc ptr @make_ssa_name(ptr noundef %24) #14
  %27 = load ptr, ptr @info.0, align 8, !tbaa !278
  %28 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %22, ptr noundef %27) #13
  %29 = call ptr @gimple_build_assign_stat(ptr noundef %26, ptr noundef %28) #13
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !272
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %29, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %29) #14
  %31 = load ptr, ptr @info.1, align 8, !tbaa !297
  %32 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %22, ptr noundef %31) #13
  %33 = call ptr @fold_build2_stat_loc(i32 noundef %9, i32 noundef 64, ptr noundef %22, ptr noundef %26, ptr noundef %32) #13
  %34 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %2, ptr noundef %33, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #13
  %35 = call fastcc ptr @make_ssa_name(ptr noundef %24) #14
  %36 = call ptr @gimple_build_assign_stat(ptr noundef %35, ptr noundef %34) #13
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !272
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %36, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %36) #14
  %38 = load ptr, ptr @info.2, align 8, !tbaa !299
  %39 = call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %22, ptr noundef %38) #13
  %40 = call ptr @gimple_build_cond(i32 noundef 98, ptr noundef %35, ptr noundef %39, ptr noundef null, ptr noundef null) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %40, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %40) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %41 = load ptr, ptr @info.13, align 8, !tbaa !279
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %41) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %42 = call ptr @gimple_build_label(ptr noundef %7) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %42, i32 noundef 1) #13
  %43 = call fastcc ptr @gen_def_assigns(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %44 = load ptr, ptr @info.13, align 8, !tbaa !279
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %44) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %45 = call ptr @gimple_build_label(ptr noundef %6) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %45, i32 noundef 1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %46 = load ptr, ptr @info.4, align 8, !tbaa !276
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %46) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !368
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %47 = call ptr @gimple_build_label(ptr noundef %8) #13
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %47, i32 noundef 1) #13
  %48 = call ptr @split_block(ptr noundef %14, ptr noundef %40) #13
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !372
  %51 = call ptr @split_block(ptr noundef %50, ptr noundef %43) #13
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !372
  call void @remove_edge(ptr noundef %51) #13
  %54 = load ptr, ptr @info.14, align 8, !tbaa !280
  %55 = call ptr @split_block(ptr noundef %53, ptr noundef %54) #13
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !372
  call void @remove_edge(ptr noundef %55) #13
  %58 = call ptr @make_edge(ptr noundef %14, ptr noundef %53, i32 noundef 1024) #13
  %59 = load i32, ptr @info.10, align 8, !tbaa !281
  %60 = sub nsw i32 10000, %59
  %61 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 8
  store i32 %60, ptr %61, align 4, !tbaa !306
  %62 = load i64, ptr @info.12, align 8, !tbaa !283
  %63 = getelementptr inbounds %struct.edge_def, ptr %58, i64 0, i32 9
  store i64 %62, ptr %63, align 8, !tbaa !308
  %64 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !373
  %66 = and i32 %65, -2050
  %67 = or disjoint i32 %66, 2048
  store i32 %67, ptr %64, align 8, !tbaa !373
  %68 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 %59, ptr %68, align 4, !tbaa !306
  %69 = load i64, ptr @info.11, align 8, !tbaa !282
  %70 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 9
  store i64 %69, ptr %70, align 8, !tbaa !308
  %71 = load ptr, ptr @info.4, align 8, !tbaa !276
  %72 = call ptr @make_edge(ptr noundef %53, ptr noundef %71, i32 noundef 1) #13
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 8
  store i32 10000, ptr %73, align 4, !tbaa !306
  %74 = load i64, ptr @info.12, align 8, !tbaa !283
  %75 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 9
  store i64 %74, ptr %75, align 8, !tbaa !308
  %76 = call ptr @make_edge(ptr noundef %50, ptr noundef %71, i32 noundef 1) #13
  %77 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 8
  store i32 10000, ptr %77, align 4, !tbaa !306
  %78 = load i64, ptr @info.11, align 8, !tbaa !282
  %79 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 9
  store i64 %78, ptr %79, align 8, !tbaa !308
  %80 = load ptr, ptr %58, align 8, !tbaa !322
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 11
  %82 = load i32, ptr %81, align 8, !tbaa !374
  %83 = load i32, ptr %61, align 4, !tbaa !306
  %84 = mul nsw i32 %83, %82
  %85 = add nsw i32 %84, 5000
  %86 = sdiv i32 %85, 10000
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  store i32 %86, ptr %87, align 8, !tbaa !374
  %88 = load ptr, ptr %48, align 8, !tbaa !322
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 11
  %90 = load i32, ptr %89, align 8, !tbaa !374
  %91 = load i32, ptr %68, align 4, !tbaa !306
  %92 = mul nsw i32 %91, %90
  %93 = add nsw i32 %92, 5000
  %94 = sdiv i32 %93, 10000
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 11
  store i32 %94, ptr %95, align 8, !tbaa !374
  %96 = load ptr, ptr %72, align 8, !tbaa !322
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 11
  %98 = load i32, ptr %97, align 8, !tbaa !374
  %99 = load i32, ptr %73, align 4, !tbaa !306
  %100 = mul nsw i32 %99, %98
  %101 = add nsw i32 %100, 5000
  %102 = sdiv i32 %101, 10000
  %103 = load ptr, ptr %76, align 8, !tbaa !322
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 11
  %105 = load i32, ptr %104, align 8, !tbaa !374
  %106 = mul nsw i32 %105, 10000
  %107 = add nsw i32 %106, 5000
  %108 = sdiv i32 %107, 10000
  %109 = add nsw i32 %108, %102
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 11
  store i32 %109, ptr %110, align 8, !tbaa !374
  %111 = load ptr, ptr @info.4, align 8, !tbaa !276
  call fastcc void @prune_bbs(ptr noundef %57, ptr noundef %111) #14
  call fastcc void @fix_phi_nodes(ptr noundef nonnull %72, ptr noundef nonnull %76, ptr noundef %71) #14
  call void @free_dominance_info(i32 noundef 1) #13
  call void @free_dominance_info(i32 noundef 2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_temp_arrays() unnamed_addr #6 !prof !333 !PGOFuncName !375 {
  %1 = load ptr, ptr @info.7, align 8, !tbaa !336
  tail call void @free(ptr noundef %1) #14
  %2 = load ptr, ptr @info.6, align 8, !tbaa !335
  tail call void @free(ptr noundef %2) #14
  %3 = load ptr, ptr @info.8, align 8, !tbaa !337
  tail call void @free(ptr noundef %3) #14
  %4 = load ptr, ptr @info.9, align 8, !tbaa !338
  tail call void @free(ptr noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !376 !PGOFuncName !377 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !272
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !378 !PGOFuncName !379 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !261
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !380

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !241
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !381 !PGOFuncName !382 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !253
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !378 !PGOFuncName !383 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !384
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !380

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.5) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !378 !PGOFuncName !385 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !253
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !378 !PGOFuncName !386 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !236
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
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !387 !PGOFuncName !388 {
  %2 = load ptr, ptr %0, align 8, !tbaa !389
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !390 !PGOFuncName !391 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #14, !range !261
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !392

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 645, ptr noundef nonnull @.str.5) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !393
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !394 !PGOFuncName !395 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !372
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !396 !PGOFuncName !397 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !398

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !399
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !390 !PGOFuncName !401 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !393
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #14
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !402 !PGOFuncName !403 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !404 !PGOFuncName !405 {
  %2 = load ptr, ptr %0, align 8, !tbaa !406
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !408 !PGOFuncName !409 {
  %2 = load ptr, ptr %0, align 8, !tbaa !406
  %3 = load ptr, ptr %2, align 8, !tbaa !410
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !412 !PGOFuncName !413 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !272
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #8 !prof !414 !PGOFuncName !415 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %4 = load ptr, ptr %3, align 8, !tbaa !389
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #14
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !416 !PGOFuncName !417 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #14
  %3 = load ptr, ptr %2, align 8, !tbaa !322
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !418 !PGOFuncName !419 {
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
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !420 !PGOFuncName !421 {
  %2 = load ptr, ptr %0, align 8, !tbaa !406
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !422
  store ptr %4, ptr %0, align 8, !tbaa !406
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !416 !PGOFuncName !423 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #14, !range !261
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !324

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 655, ptr noundef nonnull @.str.5) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !389
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !424 !PGOFuncName !425 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !272
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !426

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.5) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !424 !PGOFuncName !427 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %0) unnamed_addr #1 !prof !430 !PGOFuncName !431 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #13
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !432 !PGOFuncName !433 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_quick_push(ptr noundef %0) unnamed_addr #11 !prof !434 !PGOFuncName !435 {
  %2 = load i32, ptr %0, align 8, !tbaa !436
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !436
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #1 !prof !438 !PGOFuncName !439 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !241
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
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !440 !PGOFuncName !441 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !261
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !442

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #13
  tail call void @update_stmt_operands(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_one_array(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #1 !prof !430 !PGOFuncName !443 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #13
  %7 = call fastcc i32 @gimple_location(ptr noundef %0) #14
  %8 = load ptr, ptr @info.6, align 8, !tbaa !335
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !241
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !344

13:                                               ; preds = %5
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 504, ptr noundef nonnull @.str.5) #13
  br label %14

14:                                               ; preds = %5, %13
  %15 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %3) #14
  %16 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %15) #14
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !272
  %19 = call fastcc ptr @make_ssa_name(ptr noundef %18) #14
  %20 = load ptr, ptr @info.8, align 8, !tbaa !337
  %21 = getelementptr inbounds ptr, ptr %20, i64 %9
  store ptr %19, ptr %21, align 8, !tbaa !241
  %22 = load ptr, ptr @info.7, align 8, !tbaa !336
  %23 = getelementptr inbounds ptr, ptr %22, i64 %9
  %24 = load ptr, ptr %23, align 8, !tbaa !241
  %25 = call fastcc ptr @constructor_contains_same_values_p(ptr noundef %24) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !444

27:                                               ; preds = %14
  %28 = call ptr @gimple_build_assign_stat(ptr noundef %19, ptr noundef nonnull %25) #13
  br label %57

29:                                               ; preds = %14
  %30 = load ptr, ptr @info.6, align 8, !tbaa !335
  %31 = getelementptr inbounds ptr, ptr %30, i64 %9
  %32 = load ptr, ptr %31, align 8, !tbaa !241
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !272
  %35 = call ptr @build_array_type(ptr noundef %34, ptr noundef %2) #13
  %36 = load ptr, ptr @info.7, align 8, !tbaa !336
  %37 = getelementptr inbounds ptr, ptr %36, i64 %9
  %38 = load ptr, ptr %37, align 8, !tbaa !241
  %39 = call ptr @build_constructor(ptr noundef %35, ptr noundef %38) #13
  %40 = load i64, ptr %39, align 8
  %41 = or i64 %40, 131072
  store i64 %41, ptr %39, align 8
  %42 = call ptr @build_decl_stat(i32 noundef %7, i32 noundef 32, ptr noundef null, ptr noundef %35) #13
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, 67108864
  store i64 %44, ptr %42, align 8
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 5
  store ptr %39, ptr %45, align 8, !tbaa !272
  %46 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.22) #13
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !272
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
  store ptr %58, ptr %59, align 8, !tbaa !272
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %58, i32 noundef 1) #13
  call fastcc void @update_stmt(ptr noundef %58) #14
  store ptr %58, ptr @info.14, align 8, !tbaa !280
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
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !430 !PGOFuncName !445 {
  %2 = load ptr, ptr %0, align 8, !tbaa !241
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 !prof !430 !PGOFuncName !446 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @constructor_contains_same_values_p(ptr noundef readonly %0) unnamed_addr #1 !prof !430 !PGOFuncName !447 {
  %2 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %0) #14
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %18, !prof !448

4:                                                ; preds = %1, %14
  %5 = phi ptr [ %15, %14 ], [ null, %1 ]
  %6 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %7 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %0, i32 noundef %6) #14
  %8 = icmp eq ptr %5, null
  %9 = getelementptr inbounds %struct.constructor_elt_d, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !353
  br i1 %8, label %14, label %11, !prof !449

11:                                               ; preds = %4
  %12 = tail call i32 @operand_equal_p(ptr noundef %10, ptr noundef nonnull %5, i32 noundef 1) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %5, %11 ], [ %10, %4 ]
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %4, !prof !450, !llvm.loop !451

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
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !430 !PGOFuncName !452 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !344

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !436
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #7 !prof !453 !PGOFuncName !454 {
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
define internal fastcc noundef ptr @gen_def_assigns(ptr noundef %0) unnamed_addr #1 !prof !333 !PGOFuncName !455 {
  %2 = load i32, ptr @info.5, align 8, !tbaa !319
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %23, !prof !320

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %19, %4 ], [ 0, %1 ]
  %6 = load ptr, ptr @info.8, align 8, !tbaa !337
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !241
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !272
  %11 = tail call fastcc ptr @make_ssa_name(ptr noundef %10) #14
  %12 = load ptr, ptr @info.9, align 8, !tbaa !338
  %13 = getelementptr inbounds ptr, ptr %12, i64 %5
  store ptr %11, ptr %13, align 8, !tbaa !241
  %14 = load ptr, ptr @info.6, align 8, !tbaa !335
  %15 = getelementptr inbounds ptr, ptr %14, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !241
  %17 = tail call ptr @gimple_build_assign_stat(ptr noundef %11, ptr noundef %16) #13
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !272
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %17, i32 noundef 1) #13
  tail call fastcc void @update_stmt(ptr noundef %17) #14
  %19 = add nuw nsw i64 %5, 1
  %20 = load i32, ptr @info.5, align 8, !tbaa !319
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %4, label %23, !prof !339, !llvm.loop !456

23:                                               ; preds = %4, %1
  %24 = phi ptr [ null, %1 ], [ %17, %4 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !333 !PGOFuncName !457 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !406
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !458
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !459
  ret void
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_bbs(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 !prof !333 !PGOFuncName !460 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %3) #14
  %5 = tail call fastcc ptr @ei_safe_edge(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !461

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !372
  tail call void @remove_edge(ptr noundef nonnull %8) #13
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %13, label %12, !prof !462

12:                                               ; preds = %7
  tail call void @delete_basic_block(ptr noundef %10) #13
  br label %13

13:                                               ; preds = %12, %7
  %14 = tail call fastcc ptr @ei_safe_edge(ptr %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !prof !463, !llvm.loop !464

16:                                               ; preds = %13, %2
  tail call void @delete_basic_block(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_phi_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !333 !PGOFuncName !465 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2) #13
  %5 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !261
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %19, !prof !320

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14
  %10 = load ptr, ptr @info.8, align 8, !tbaa !337
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !241
  call void @add_phi_arg(ptr noundef %9, ptr noundef %12, ptr noundef %0, i32 noundef 0) #13
  %13 = load ptr, ptr @info.9, align 8, !tbaa !338
  %14 = getelementptr inbounds ptr, ptr %13, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !241
  call void @add_phi_arg(ptr noundef %9, ptr noundef %15, ptr noundef %1, i32 noundef 0) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #14
  %16 = add nuw i64 %8, 1
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !261
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %7, label %19, !prof !339, !llvm.loop !466

19:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !333 !PGOFuncName !467 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !468
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !263

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !272
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !371

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !469
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !333 !PGOFuncName !471 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !371

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !472
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !333 !PGOFuncName !474 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(ptr %0) unnamed_addr #1 !prof !475 !PGOFuncName !476 {
  %2 = tail call fastcc zeroext i8 @ei_end_p(ptr %0) #14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !477

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
define internal fastcc zeroext i8 @ei_end_p(ptr %0) unnamed_addr #1 !prof !475 !PGOFuncName !478 {
  %2 = tail call fastcc ptr @ei_container(ptr %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !479

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
define internal fastcc ptr @ei_edge(ptr %0) unnamed_addr #1 !prof !480 !PGOFuncName !481 {
  %2 = tail call fastcc ptr @ei_container(ptr %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !482

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @ei_container(ptr %0) #14
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #14
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !483 !PGOFuncName !484 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !485

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.5) #13
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !241
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!233}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!36 = !{ptr @do_switchconv, ptr @last_stmt, i64 238287}
!37 = !{ptr @do_switchconv, ptr @gimple_code, i64 225911}
!38 = !{ptr @do_switchconv, ptr @gimple_location, i64 1}
!39 = !{ptr @do_switchconv, ptr @expand_location, i64 1}
!40 = !{ptr @do_switchconv, ptr @fprintf, i64 1}
!41 = !{ptr @do_switchconv, ptr @print_gimple_stmt, i64 1}
!42 = !{ptr @do_switchconv, ptr @putc, i64 1}
!43 = !{ptr @do_switchconv, ptr @process_switch, i64 2209}
!44 = !{ptr @do_switchconv, ptr @fputs, i64 5}
!45 = !{ptr @process_switch, ptr @gimple_switch_num_labels, i64 2208}
!46 = !{ptr @process_switch, ptr @gimple_bb, i64 2207}
!47 = !{ptr @process_switch, ptr @gimple_switch_index, i64 2207}
!48 = !{ptr @process_switch, ptr @check_range, i64 2206}
!49 = !{ptr @process_switch, ptr @gimple_switch_label, i64 3267}
!50 = !{ptr @process_switch, ptr @check_process_case, i64 3256}
!51 = !{ptr @process_switch, ptr @fprintf, i64 1}
!52 = !{ptr @process_switch, ptr @check_final_bb, i64 13}
!53 = !{ptr @process_switch, ptr @create_temp_arrays, i64 11}
!54 = !{ptr @process_switch, ptr @gather_default_values, i64 11}
!55 = !{ptr @process_switch, ptr @build_constructors, i64 11}
!56 = !{ptr @process_switch, ptr @build_arrays, i64 11}
!57 = !{ptr @process_switch, ptr @gen_inbound_check, i64 11}
!58 = !{ptr @process_switch, ptr @free_temp_arrays, i64 11}
!59 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 4438}
!60 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!61 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 2208}
!62 = !{ptr @check_range, ptr @gimple_switch_num_labels, i64 2208}
!63 = !{ptr @check_range, ptr @gimple_switch_label, i64 6624}
!64 = !{ptr @check_range, ptr @fancy_abort, i64 5}
!65 = !{ptr @check_range, ptr @int_const_binop, i64 2208}
!66 = !{ptr @check_range, ptr @host_integerp, i64 2208}
!67 = !{ptr @check_range, ptr @tree_low_cst, i64 2207}
!68 = !{ptr @check_process_case, ptr @label_to_block_fn, i64 3236}
!69 = !{ptr @check_process_case, ptr @find_edge, i64 3236}
!70 = !{ptr @check_process_case, ptr @fancy_abort, i64 1}
!71 = !{ptr @check_process_case, ptr @single_pred_p, i64 3235}
!72 = !{ptr @check_process_case, ptr @empty_block_p, i64 1986}
!73 = !{ptr @check_process_case, ptr @single_succ_edge, i64 405}
!74 = !{ptr @check_process_case, ptr @single_succ, i64 405}
!75 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 10176}
!76 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!77 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 10176}
!78 = !{ptr @check_final_bb, ptr @gsi_start_phis, i64 25}
!79 = !{ptr @check_final_bb, ptr @gsi_end_p, i64 49}
!80 = !{ptr @check_final_bb, ptr @gsi_stmt, i64 28}
!81 = !{ptr @check_final_bb, ptr @gimple_phi_num_args, i64 328}
!82 = !{ptr @check_final_bb, ptr @gimple_phi_arg_edge, i64 305}
!83 = !{ptr @check_final_bb, ptr @single_pred_p, i64 279}
!84 = !{ptr @check_final_bb, ptr @single_pred, i64 278}
!85 = !{ptr @check_final_bb, ptr @gimple_phi_arg_def, i64 296}
!86 = !{ptr @check_final_bb, ptr @is_gimple_ip_invariant, i64 296}
!87 = !{ptr @check_final_bb, ptr @initializer_constant_valid_p, i64 293}
!88 = !{ptr @check_final_bb, ptr @gsi_next, i64 24}
!89 = !{ptr @create_temp_arrays, ptr @xcalloc, i64 88}
!90 = !{ptr @create_temp_arrays, ptr @tree_low_cst, i64 23}
!91 = !{ptr @create_temp_arrays, ptr @VEC_constructor_elt_gc_alloc, i64 23}
!92 = !{ptr @gather_default_values, ptr @label_to_block_fn, i64 22}
!93 = !{ptr @gather_default_values, ptr @fancy_abort, i64 2}
!94 = !{ptr @gather_default_values, ptr @find_edge, i64 3}
!95 = !{ptr @gather_default_values, ptr @single_succ_edge, i64 19}
!96 = !{ptr @gather_default_values, ptr @gsi_start_phis, i64 22}
!97 = !{ptr @gather_default_values, ptr @gsi_end_p, i64 45}
!98 = !{ptr @gather_default_values, ptr @gsi_stmt, i64 23}
!99 = !{ptr @gather_default_values, ptr @gimple_phi_arg_imm_use_ptr, i64 23}
!100 = !{ptr @gather_default_values, ptr @get_use_from_ptr, i64 23}
!101 = !{ptr @gather_default_values, ptr @gsi_next, i64 23}
!102 = !{ptr @build_constructors, ptr @gimple_switch_num_labels, i64 22}
!103 = !{ptr @build_constructors, ptr @gimple_switch_label, i64 282}
!104 = !{ptr @build_constructors, ptr @label_to_block_fn, i64 282}
!105 = !{ptr @build_constructors, ptr @find_edge, i64 41}
!106 = !{ptr @build_constructors, ptr @single_succ_edge, i64 241}
!107 = !{ptr @build_constructors, ptr @fancy_abort, i64 2}
!108 = !{ptr @build_constructors, ptr @tree_int_cst_lt, i64 1005}
!109 = !{ptr @build_constructors, ptr @VEC_constructor_elt_base_quick_push, i64 690}
!110 = !{ptr @build_constructors, ptr @int_const_binop, i64 1380}
!111 = !{ptr @build_constructors, ptr @tree_int_cst_equal, i64 282}
!112 = !{ptr @build_constructors, ptr @gsi_start_phis, i64 282}
!113 = !{ptr @build_constructors, ptr @gsi_end_p, i64 565}
!114 = !{ptr @build_constructors, ptr @gsi_stmt, i64 283}
!115 = !{ptr @build_constructors, ptr @gimple_phi_arg_imm_use_ptr, i64 283}
!116 = !{ptr @build_constructors, ptr @get_use_from_ptr, i64 283}
!117 = !{ptr @build_constructors, ptr @gsi_next, i64 283}
!118 = !{ptr @build_arrays, ptr @gimple_location, i64 22}
!119 = !{ptr @build_arrays, ptr @gsi_for_stmt, i64 22}
!120 = !{ptr @build_arrays, ptr @build_index_type, i64 22}
!121 = !{ptr @build_arrays, ptr @create_tmp_var, i64 22}
!122 = !{ptr @build_arrays, ptr @add_referenced_var, i64 22}
!123 = !{ptr @build_arrays, ptr @make_ssa_name, i64 22}
!124 = !{ptr @build_arrays, ptr @fold_convert_loc, i64 22}
!125 = !{ptr @build_arrays, ptr @fold_build2_stat_loc, i64 22}
!126 = !{ptr @build_arrays, ptr @force_gimple_operand_gsi, i64 22}
!127 = !{ptr @build_arrays, ptr @gimple_build_assign_stat, i64 22}
!128 = !{ptr @build_arrays, ptr @gsi_insert_before, i64 22}
!129 = !{ptr @build_arrays, ptr @update_stmt, i64 22}
!130 = !{ptr @build_arrays, ptr @gsi_start_phis, i64 22}
!131 = !{ptr @build_arrays, ptr @gsi_end_p, i64 45}
!132 = !{ptr @build_arrays, ptr @gsi_stmt, i64 23}
!133 = !{ptr @build_arrays, ptr @build_one_array, i64 23}
!134 = !{ptr @build_arrays, ptr @gsi_next, i64 23}
!135 = !{ptr @gen_inbound_check, ptr @create_artificial_label, i64 66}
!136 = !{ptr @gen_inbound_check, ptr @gimple_location, i64 22}
!137 = !{ptr @gen_inbound_check, ptr @fancy_abort, i64 1}
!138 = !{ptr @gen_inbound_check, ptr @gimple_bb, i64 22}
!139 = !{ptr @gen_inbound_check, ptr @unsigned_type_for, i64 22}
!140 = !{ptr @gen_inbound_check, ptr @gsi_for_stmt, i64 66}
!141 = !{ptr @gen_inbound_check, ptr @create_tmp_var, i64 22}
!142 = !{ptr @gen_inbound_check, ptr @add_referenced_var, i64 22}
!143 = !{ptr @gen_inbound_check, ptr @make_ssa_name, i64 44}
!144 = !{ptr @gen_inbound_check, ptr @fold_convert_loc, i64 66}
!145 = !{ptr @gen_inbound_check, ptr @gimple_build_assign_stat, i64 44}
!146 = !{ptr @gen_inbound_check, ptr @gsi_insert_before, i64 132}
!147 = !{ptr @gen_inbound_check, ptr @update_stmt, i64 66}
!148 = !{ptr @gen_inbound_check, ptr @fold_build2_stat_loc, i64 22}
!149 = !{ptr @gen_inbound_check, ptr @force_gimple_operand_gsi, i64 22}
!150 = !{ptr @gen_inbound_check, ptr @gimple_build_cond, i64 22}
!151 = !{ptr @gen_inbound_check, ptr @gimple_build_label, i64 66}
!152 = !{ptr @gen_inbound_check, ptr @gen_def_assigns, i64 22}
!153 = !{ptr @gen_inbound_check, ptr @gsi_start_bb, i64 22}
!154 = !{ptr @gen_inbound_check, ptr @split_block, i64 66}
!155 = !{ptr @gen_inbound_check, ptr @remove_edge, i64 44}
!156 = !{ptr @gen_inbound_check, ptr @make_edge, i64 66}
!157 = !{ptr @gen_inbound_check, ptr @prune_bbs, i64 22}
!158 = !{ptr @gen_inbound_check, ptr @fix_phi_nodes, i64 22}
!159 = !{ptr @gen_inbound_check, ptr @free_dominance_info, i64 44}
!160 = !{ptr @free_temp_arrays, ptr @free, i64 88}
!161 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 12384}
!162 = !{ptr @gimple_op, ptr @gimple_ops, i64 12383}
!163 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 12518}
!164 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 12384}
!165 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!166 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 12384}
!167 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 12384}
!168 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 3796}
!169 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 1082}
!170 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!171 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 1082}
!172 = !{ptr @single_succ, ptr @single_succ_edge, i64 405}
!173 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 1082}
!174 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 306}
!175 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 306}
!176 = !{ptr @single_pred, ptr @single_pred_edge, i64 280}
!177 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 299}
!178 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 299}
!179 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 280}
!180 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!181 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 280}
!182 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!183 = !{ptr @VEC_constructor_elt_gc_alloc, ptr @vec_gc_o_reserve_exact, i64 23}
!184 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 318}
!185 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 112}
!186 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 134}
!187 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 133}
!188 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 133}
!189 = !{ptr @build_one_array, ptr @gsi_for_stmt, i64 23}
!190 = !{ptr @build_one_array, ptr @gimple_location, i64 23}
!191 = !{ptr @build_one_array, ptr @fancy_abort, i64 1}
!192 = !{ptr @build_one_array, ptr @gimple_phi_result_ptr, i64 23}
!193 = !{ptr @build_one_array, ptr @get_def_from_ptr, i64 23}
!194 = !{ptr @build_one_array, ptr @make_ssa_name, i64 23}
!195 = !{ptr @build_one_array, ptr @constructor_contains_same_values_p, i64 23}
!196 = !{ptr @build_one_array, ptr @gimple_build_assign_stat, i64 23}
!197 = !{ptr @build_one_array, ptr @build_array_type, i64 11}
!198 = !{ptr @build_one_array, ptr @build_constructor, i64 11}
!199 = !{ptr @build_one_array, ptr @build_decl_stat, i64 11}
!200 = !{ptr @build_one_array, ptr @create_tmp_var_name, i64 11}
!201 = !{ptr @build_one_array, ptr @add_referenced_var, i64 11}
!202 = !{ptr @build_one_array, ptr @varpool_node, i64 11}
!203 = !{ptr @build_one_array, ptr @varpool_mark_needed_node, i64 11}
!204 = !{ptr @build_one_array, ptr @varpool_finalize_decl, i64 11}
!205 = !{ptr @build_one_array, ptr @build4_stat, i64 11}
!206 = !{ptr @build_one_array, ptr @gsi_insert_before, i64 23}
!207 = !{ptr @build_one_array, ptr @update_stmt, i64 23}
!208 = !{ptr @constructor_contains_same_values_p, ptr @VEC_constructor_elt_base_length, i64 23}
!209 = !{ptr @constructor_contains_same_values_p, ptr @VEC_constructor_elt_base_index, i64 77}
!210 = !{ptr @constructor_contains_same_values_p, ptr @operand_equal_p, i64 37}
!211 = !{ptr @gen_def_assigns, ptr @make_ssa_name, i64 23}
!212 = !{ptr @gen_def_assigns, ptr @gimple_build_assign_stat, i64 23}
!213 = !{ptr @gen_def_assigns, ptr @gsi_insert_before, i64 23}
!214 = !{ptr @gen_def_assigns, ptr @update_stmt, i64 23}
!215 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 22}
!216 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 22}
!217 = !{ptr @prune_bbs, ptr @ei_start_1, i64 22}
!218 = !{ptr @prune_bbs, ptr @ei_safe_edge, i64 297}
!219 = !{ptr @prune_bbs, ptr @remove_edge, i64 275}
!220 = !{ptr @prune_bbs, ptr @delete_basic_block, i64 275}
!221 = !{ptr @fix_phi_nodes, ptr @gsi_start_phis, i64 22}
!222 = !{ptr @fix_phi_nodes, ptr @gsi_end_p, i64 45}
!223 = !{ptr @fix_phi_nodes, ptr @gsi_stmt, i64 23}
!224 = !{ptr @fix_phi_nodes, ptr @add_phi_arg, i64 46}
!225 = !{ptr @fix_phi_nodes, ptr @gsi_next, i64 23}
!226 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 308}
!227 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 285}
!228 = !{ptr @ei_end_p, ptr @ei_container, i64 615}
!229 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 308}
!230 = !{ptr @ei_edge, ptr @ei_container, i64 571}
!231 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 286}
!232 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!233 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!234 = !{!"function_entry_count", i64 8964}
!235 = !{!"tree-switch-conversion.c:switchconv_gate"}
!236 = !{!237, !237, i64 0}
!237 = !{!"int", !238, i64 0}
!238 = !{!"omnipotent char", !239, i64 0}
!239 = !{!"Simple C/C++ TBAA"}
!240 = !{!"tree-switch-conversion.c:do_switchconv"}
!241 = !{!242, !242, i64 0}
!242 = !{!"any pointer", !238, i64 0}
!243 = !{!244, !242, i64 8}
!244 = !{!"function", !242, i64 0, !242, i64 8, !242, i64 16, !242, i64 24, !242, i64 32, !242, i64 40, !242, i64 48, !242, i64 56, !242, i64 64, !242, i64 72, !242, i64 80, !242, i64 88, !242, i64 96, !237, i64 104, !237, i64 108, !237, i64 112, !237, i64 116, !237, i64 120, !237, i64 124, !242, i64 128, !237, i64 136, !237, i64 137, !237, i64 138, !237, i64 138, !237, i64 138, !237, i64 138, !237, i64 138, !237, i64 138, !237, i64 138, !237, i64 139, !237, i64 139, !237, i64 139, !237, i64 139, !237, i64 139, !237, i64 139, !237, i64 139}
!245 = !{!246, !242, i64 0}
!246 = !{!"control_flow_graph", !242, i64 0, !242, i64 8, !242, i64 16, !237, i64 24, !237, i64 28, !237, i64 32, !242, i64 40, !237, i64 48, !238, i64 52, !238, i64 60, !237, i64 68, !237, i64 72}
!247 = !{!248, !242, i64 56}
!248 = !{!"basic_block_def", !242, i64 0, !242, i64 8, !242, i64 16, !242, i64 24, !238, i64 32, !242, i64 48, !242, i64 56, !238, i64 64, !249, i64 72, !237, i64 80, !237, i64 84, !237, i64 88, !237, i64 92, !237, i64 96}
!249 = !{!"long", !238, i64 0}
!250 = !{!246, !242, i64 8}
!251 = !{!"branch_weights", i32 1, i32 8964}
!252 = !{!"branch_weights", i32 12378, i32 225937}
!253 = !{i32 0, i32 256}
!254 = !{!"branch_weights", i32 2209, i32 223729}
!255 = !{!"branch_weights", i32 2209, i32 1}
!256 = !{!257, !242, i64 0}
!257 = !{!"", !242, i64 0, !237, i64 8, !237, i64 12, !238, i64 16}
!258 = !{!257, !237, i64 8}
!259 = !{!260, !242, i64 120}
!260 = !{!"switch_conv_info", !242, i64 0, !242, i64 8, !242, i64 16, !242, i64 24, !242, i64 32, !237, i64 40, !242, i64 48, !242, i64 56, !242, i64 64, !242, i64 72, !237, i64 80, !249, i64 88, !249, i64 96, !242, i64 104, !242, i64 112, !242, i64 120}
!261 = !{i8 0, i8 2}
!262 = !{!"branch_weights", i32 2187, i32 23}
!263 = !{!"branch_weights", i32 23, i32 1}
!264 = !{!"branch_weights", i32 2187, i32 1}
!265 = !{!"branch_weights", i32 8964, i32 229350}
!266 = distinct !{!266, !267}
!267 = !{!"llvm.loop.mustprogress"}
!268 = !{!"function_entry_count", i64 263356}
!269 = !{!"tree-switch-conversion.c:gimple_code"}
!270 = !{!"function_entry_count", i64 67}
!271 = !{!"tree-switch-conversion.c:gimple_location"}
!272 = !{!238, !238, i64 0}
!273 = !{!"function_entry_count", i64 2208}
!274 = !{!"tree-switch-conversion.c:process_switch"}
!275 = !{!"branch_weights", i32 1, i32 2209}
!276 = !{!260, !242, i64 32}
!277 = !{!260, !242, i64 24}
!278 = !{!260, !242, i64 0}
!279 = !{!260, !242, i64 104}
!280 = !{!260, !242, i64 112}
!281 = !{!260, !237, i64 80}
!282 = !{!260, !249, i64 88}
!283 = !{!260, !249, i64 96}
!284 = !{!"branch_weights", i32 506, i32 1704}
!285 = !{!"branch_weights", i32 1679, i32 1559}
!286 = !{!"branch_weights", i32 1679, i32 1}
!287 = !{!"branch_weights", i32 26, i32 3211}
!288 = distinct !{!288, !267}
!289 = !{!"branch_weights", i32 4, i32 23}
!290 = !{!"function_entry_count", i64 4438}
!291 = !{!"tree-switch-conversion.c:gimple_switch_num_labels"}
!292 = !{!"branch_weights", i32 4439, i32 1}
!293 = !{!"function_entry_count", i64 2842}
!294 = !{!"tree-switch-conversion.c:gimple_bb"}
!295 = !{!"tree-switch-conversion.c:gimple_switch_index"}
!296 = !{!"tree-switch-conversion.c:check_range"}
!297 = !{!260, !242, i64 8}
!298 = !{!"branch_weights", i32 1887, i32 323}
!299 = !{!260, !242, i64 16}
!300 = !{!301, !237, i64 8}
!301 = !{!"param_info", !242, i64 0, !237, i64 8, !238, i64 12, !237, i64 16, !237, i64 20, !242, i64 24}
!302 = !{!"function_entry_count", i64 3236}
!303 = !{!"tree-switch-conversion.c:check_process_case"}
!304 = !{!"branch_weights", i32 1, i32 3237}
!305 = !{!"branch_weights", i32 1704, i32 1534}
!306 = !{!307, !237, i64 52}
!307 = !{!"edge_def", !242, i64 0, !242, i64 8, !238, i64 16, !242, i64 24, !242, i64 32, !237, i64 40, !237, i64 44, !237, i64 48, !237, i64 52, !249, i64 56}
!308 = !{!307, !249, i64 56}
!309 = !{!"branch_weights", i32 1250, i32 1988}
!310 = !{!"branch_weights", i32 372006, i32 23310}
!311 = !{!"branch_weights", i32 1583, i32 406}
!312 = !{!"branch_weights", i32 989, i32 594}
!313 = !{!"branch_weights", i32 571, i32 24}
!314 = !{!"function_entry_count", i64 10176}
!315 = !{!"tree-switch-conversion.c:gimple_switch_label"}
!316 = !{!"branch_weights", i32 10177, i32 1}
!317 = !{!"function_entry_count", i64 25}
!318 = !{!"tree-switch-conversion.c:check_final_bb"}
!319 = !{!260, !237, i64 40}
!320 = !{!"branch_weights", i32 183, i32 1}
!321 = !{!"branch_weights", i32 1, i32 191}
!322 = !{!307, !242, i64 0}
!323 = !{!"branch_weights", i32 27, i32 281}
!324 = !{!"branch_weights", i32 1, i32 281}
!325 = !{!"branch_weights", i32 274, i32 8}
!326 = !{!"branch_weights", i32 4, i32 297}
!327 = !{!"branch_weights", i32 297, i32 1}
!328 = !{!"branch_weights", i32 7205565, i32 2140278083}
!329 = !{!"branch_weights", i32 2265, i32 191}
!330 = distinct !{!330, !267}
!331 = !{!"branch_weights", i32 33, i32 183}
!332 = distinct !{!332, !267}
!333 = !{!"function_entry_count", i64 22}
!334 = !{!"tree-switch-conversion.c:create_temp_arrays"}
!335 = !{!260, !242, i64 48}
!336 = !{!260, !242, i64 56}
!337 = !{!260, !242, i64 64}
!338 = !{!260, !242, i64 72}
!339 = !{!"branch_weights", i32 9, i32 183}
!340 = distinct !{!340, !267}
!341 = !{!"tree-switch-conversion.c:gather_default_values"}
!342 = !{!"branch_weights", i32 3, i32 21}
!343 = !{!307, !237, i64 44}
!344 = !{!"branch_weights", i32 1, i32 24}
!345 = distinct !{!345, !267}
!346 = !{!"tree-switch-conversion.c:build_constructors"}
!347 = !{!"branch_weights", i32 43, i32 253}
!348 = !{!"branch_weights", i32 1, i32 295}
!349 = !{!"branch_weights", i32 1, i32 294}
!350 = !{!"branch_weights", i32 420, i32 1}
!351 = !{!352, !242, i64 0}
!352 = !{!"constructor_elt_d", !242, i64 0, !242, i64 8}
!353 = !{!352, !242, i64 8}
!354 = !{!"branch_weights", i32 1, i32 420}
!355 = distinct !{!355, !267}
!356 = !{!"branch_weights", i32 294, i32 127}
!357 = distinct !{!357, !267}
!358 = !{!"branch_weights", i32 276, i32 20}
!359 = !{!"branch_weights", i32 294, i32 1}
!360 = !{!"branch_weights", i32 39, i32 296}
!361 = !{!"branch_weights", i32 296, i32 39}
!362 = distinct !{!362, !267}
!363 = !{!"branch_weights", i32 2, i32 294}
!364 = distinct !{!364, !267}
!365 = !{!"branch_weights", i32 183, i32 2177}
!366 = distinct !{!366, !267}
!367 = !{!"tree-switch-conversion.c:build_arrays"}
!368 = !{i64 0, i64 8, !241, i64 8, i64 8, !241, i64 16, i64 8, !241}
!369 = distinct !{!369, !267}
!370 = !{!"tree-switch-conversion.c:gen_inbound_check"}
!371 = !{!"branch_weights", i32 1, i32 23}
!372 = !{!307, !242, i64 8}
!373 = !{!307, !237, i64 48}
!374 = !{!248, !237, i64 88}
!375 = !{!"tree-switch-conversion.c:free_temp_arrays"}
!376 = !{!"function_entry_count", i64 14614}
!377 = !{!"tree-switch-conversion.c:gimple_num_ops"}
!378 = !{!"function_entry_count", i64 12384}
!379 = !{!"tree-switch-conversion.c:gimple_op"}
!380 = !{!"branch_weights", i32 1, i32 12385}
!381 = !{!"function_entry_count", i64 12518}
!382 = !{!"tree-switch-conversion.c:gimple_has_ops"}
!383 = !{!"tree-switch-conversion.c:gimple_ops"}
!384 = !{!249, !249, i64 0}
!385 = !{!"tree-switch-conversion.c:gimple_statement_structure"}
!386 = !{!"tree-switch-conversion.c:gss_for_code"}
!387 = !{!"function_entry_count", i64 3796}
!388 = !{!"tree-switch-conversion.c:single_pred_p"}
!389 = !{!248, !242, i64 0}
!390 = !{!"function_entry_count", i64 1082}
!391 = !{!"tree-switch-conversion.c:single_succ_edge"}
!392 = !{!"branch_weights", i32 1, i32 1083}
!393 = !{!248, !242, i64 8}
!394 = !{!"function_entry_count", i64 405}
!395 = !{!"tree-switch-conversion.c:single_succ"}
!396 = !{!"function_entry_count", i64 5186}
!397 = !{!"tree-switch-conversion.c:VEC_edge_base_length"}
!398 = !{!"branch_weights", i32 1, i32 5187}
!399 = !{!400, !237, i64 0}
!400 = !{!"VEC_edge_base", !237, i64 0, !237, i64 4, !238, i64 8}
!401 = !{!"tree-switch-conversion.c:single_succ_p"}
!402 = !{!"function_entry_count", i64 1954}
!403 = !{!"tree-switch-conversion.c:VEC_edge_base_index"}
!404 = !{!"function_entry_count", i64 772}
!405 = !{!"tree-switch-conversion.c:gsi_end_p"}
!406 = !{!407, !242, i64 0}
!407 = !{!"", !242, i64 0, !242, i64 8, !242, i64 16}
!408 = !{!"function_entry_count", i64 390}
!409 = !{!"tree-switch-conversion.c:gsi_stmt"}
!410 = !{!411, !242, i64 0}
!411 = !{!"gimple_seq_node_d", !242, i64 0, !242, i64 8, !242, i64 16}
!412 = !{!"function_entry_count", i64 329}
!413 = !{!"tree-switch-conversion.c:gimple_phi_num_args"}
!414 = !{!"function_entry_count", i64 306}
!415 = !{!"tree-switch-conversion.c:gimple_phi_arg_edge"}
!416 = !{!"function_entry_count", i64 280}
!417 = !{!"tree-switch-conversion.c:single_pred"}
!418 = !{!"function_entry_count", i64 299}
!419 = !{!"tree-switch-conversion.c:gimple_phi_arg_def"}
!420 = !{!"function_entry_count", i64 387}
!421 = !{!"tree-switch-conversion.c:gsi_next"}
!422 = !{!411, !242, i64 16}
!423 = !{!"tree-switch-conversion.c:single_pred_edge"}
!424 = !{!"function_entry_count", i64 617}
!425 = !{!"tree-switch-conversion.c:gimple_phi_arg"}
!426 = !{!"branch_weights", i32 1, i32 618}
!427 = !{!"tree-switch-conversion.c:get_use_from_ptr"}
!428 = !{!429, !242, i64 24}
!429 = !{!"ssa_use_operand_d", !242, i64 0, !242, i64 8, !238, i64 16, !242, i64 24}
!430 = !{!"function_entry_count", i64 23}
!431 = !{!"tree-switch-conversion.c:VEC_constructor_elt_gc_alloc"}
!432 = !{!"function_entry_count", i64 318}
!433 = !{!"tree-switch-conversion.c:gimple_phi_arg_imm_use_ptr"}
!434 = !{!"function_entry_count", i64 753}
!435 = !{!"tree-switch-conversion.c:VEC_constructor_elt_base_quick_push"}
!436 = !{!437, !237, i64 0}
!437 = !{!"VEC_constructor_elt_base", !237, i64 0, !237, i64 4, !238, i64 8}
!438 = !{!"function_entry_count", i64 112}
!439 = !{!"tree-switch-conversion.c:make_ssa_name"}
!440 = !{!"function_entry_count", i64 134}
!441 = !{!"tree-switch-conversion.c:update_stmt"}
!442 = !{!"branch_weights", i32 1, i32 135}
!443 = !{!"tree-switch-conversion.c:build_one_array"}
!444 = !{!"branch_weights", i32 12, i32 13}
!445 = !{!"tree-switch-conversion.c:get_def_from_ptr"}
!446 = !{!"tree-switch-conversion.c:gimple_phi_result_ptr"}
!447 = !{!"tree-switch-conversion.c:constructor_contains_same_values_p"}
!448 = !{!"branch_weights", i32 207, i32 1}
!449 = !{!"branch_weights", i32 24, i32 22}
!450 = !{!"branch_weights", i32 207, i32 513}
!451 = distinct !{!451, !267}
!452 = !{!"tree-switch-conversion.c:VEC_constructor_elt_base_length"}
!453 = !{!"function_entry_count", i64 44}
!454 = !{!"tree-switch-conversion.c:VEC_constructor_elt_base_index"}
!455 = !{!"tree-switch-conversion.c:gen_def_assigns"}
!456 = distinct !{!456, !267}
!457 = !{!"tree-switch-conversion.c:gsi_start_bb"}
!458 = !{!407, !242, i64 8}
!459 = !{!407, !242, i64 16}
!460 = !{!"tree-switch-conversion.c:prune_bbs"}
!461 = !{!"branch_weights", i32 1, i32 183}
!462 = !{!"branch_weights", i32 23, i32 265}
!463 = !{!"branch_weights", i32 183, i32 2113}
!464 = distinct !{!464, !267}
!465 = !{!"tree-switch-conversion.c:fix_phi_nodes"}
!466 = distinct !{!466, !267}
!467 = !{!"tree-switch-conversion.c:bb_seq"}
!468 = !{!248, !237, i64 96}
!469 = !{!470, !242, i64 0}
!470 = !{!"gimple_bb_info", !242, i64 0, !242, i64 8}
!471 = !{!"tree-switch-conversion.c:gimple_seq_first"}
!472 = !{!473, !242, i64 0}
!473 = !{!"gimple_seq_d", !242, i64 0, !242, i64 8, !242, i64 16}
!474 = !{!"tree-switch-conversion.c:ei_start_1"}
!475 = !{!"function_entry_count", i64 308}
!476 = !{!"tree-switch-conversion.c:ei_safe_edge"}
!477 = !{!"branch_weights", i32 287, i32 23}
!478 = !{!"tree-switch-conversion.c:ei_end_p"}
!479 = !{!"branch_weights", i32 1, i32 309}
!480 = !{!"function_entry_count", i64 286}
!481 = !{!"tree-switch-conversion.c:ei_edge"}
!482 = !{!"branch_weights", i32 1, i32 287}
!483 = !{!"function_entry_count", i64 1188}
!484 = !{!"tree-switch-conversion.c:ei_container"}
!485 = !{!"branch_weights", i32 1, i32 1189}
