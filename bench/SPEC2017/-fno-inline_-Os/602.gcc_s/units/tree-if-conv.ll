; ModuleID = 'tree-if-conv.c'
source_filename = "tree-if-conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@pass_if_conversion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tree_if_conversion, ptr @main_tree_if_conversion, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 89 } }, align 8
@.str = private unnamed_addr constant [6 x i8] c"ifcvt\00", align 1
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@ifc_bbs = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"-------------------------\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"not inner most loop\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"less than 2 basic blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"multiple exits\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Irreducible loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Applying if-conversion\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"tree-if-conv.c\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"----------[%d]-------------\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"basic block after exit bb but before latch\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"non empty basic block after exit bb\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"latch is not dominated by exit_block\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Difficult to handle edges\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"don't know what to do\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"stmt not suitable for ifcvt\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"tree could trap...\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"LHS is not var\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"More than two phi node args.\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Virtual phi not on loop header.\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Difficult to handle this virtual phi.\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"------if-convert stmt\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"_ifc_\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"new phi replacement stmt\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_if_conversion() #0 !prof !284 !PGOFuncName !285 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !286
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @main_tree_if_conversion() #1 !prof !284 !PGOFuncName !290 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = tail call fastcc i32 @number_of_loops() #16
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %12, label %5, !prof !291

5:                                                ; preds = %0
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  %6 = load ptr, ptr %2, align 8, !tbaa !292
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !294

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  tail call fastcc void @tree_if_conversion(ptr noundef nonnull %9) #16
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  %10 = load ptr, ptr %2, align 8, !tbaa !292
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !prof !295, !llvm.loop !296

12:                                               ; preds = %8, %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !298 !PGOFuncName !299 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !292
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !302

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !303
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #16
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !305 !PGOFuncName !306 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !307
  %4 = load ptr, ptr @cfun, align 8, !tbaa !292
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !309

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !310
  store ptr null, ptr %1, align 8, !tbaa !292
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #16
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #16
  store ptr %11, ptr %0, align 8, !tbaa !310
  %12 = load ptr, ptr @cfun, align 8, !tbaa !292
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !300
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !311
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !312
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !317

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !310
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #16
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !318
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !319

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !320
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !321

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !322, !llvm.loop !323

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_if_conversion(ptr noundef %0) unnamed_addr #1 !prof !324 !PGOFuncName !325 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !292
  %4 = tail call fastcc zeroext i8 @if_convertible_loop_p(ptr noundef %0) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6, !prof !326

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !327
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %57, label %24, !prof !328

10:                                               ; preds = %1
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !329

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %11)
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !330

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %20) #16
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !292
  br label %23

23:                                               ; preds = %22, %19
  tail call void @free_dominance_info(i32 noundef 2) #17
  br label %59

24:                                               ; preds = %6, %52
  %25 = phi i64 [ %53, %52 ], [ 0, %6 ]
  %26 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !292
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %28) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43, !prof !335

33:                                               ; preds = %24, %40
  %34 = phi ptr [ %36, %40 ], [ %30, %24 ]
  %35 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %36 = call fastcc ptr @tree_if_convert_stmt(ptr noundef %0, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %2) #16
  %37 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40, !prof !336

39:                                               ; preds = %33
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  br label %40

40:                                               ; preds = %39, %33
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %33, label %43, !prof !337, !llvm.loop !338

43:                                               ; preds = %40, %24
  %44 = phi ptr [ %30, %24 ], [ %36, %40 ]
  %45 = call fastcc zeroext i8 @single_succ_p(ptr noundef %28) #16, !range !334
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47, !prof !339

47:                                               ; preds = %43
  %48 = call fastcc ptr @single_succ(ptr noundef %28) #16
  %49 = icmp eq ptr %44, null
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %51 = select i1 %49, ptr %50, ptr %44, !prof !340
  call fastcc void @add_to_predicate_list(ptr noundef %48, ptr noundef %51) #16
  br label %52

52:                                               ; preds = %47, %43
  %53 = add nuw nsw i64 %25, 1
  %54 = load i32, ptr %7, align 4, !tbaa !327
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %24, label %57, !prof !341, !llvm.loop !342

57:                                               ; preds = %52, %6
  call fastcc void @combine_blocks(ptr noundef nonnull %0) #16
  call fastcc void @clean_predicate_lists(ptr noundef nonnull %0) #16
  %58 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  call void @free(ptr noundef %58) #16
  store ptr null, ptr @ifc_bbs, align 8, !tbaa !292
  br label %59

59:                                               ; preds = %57, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !343 !PGOFuncName !344 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !307
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !310
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #16, !range !345
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !346

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !307
  %13 = load i32, ptr %3, align 4, !tbaa !286
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #16
  store ptr %14, ptr %1, align 8, !tbaa !292
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !347, !llvm.loop !348

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #16
  store ptr null, ptr %1, align 8, !tbaa !292
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !349 !PGOFuncName !350 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !351

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !352
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !305 !PGOFuncName !354 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !324 !PGOFuncName !355 {
  %3 = load i32, ptr %0, align 4, !tbaa !356
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !356
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !358 !PGOFuncName !359 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !360
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !361

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #16
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !362 !PGOFuncName !363 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !292
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_loop_p(ptr noundef %0) unnamed_addr #1 !prof !324 !PGOFuncName !364 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !318
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !prof !365

8:                                                ; preds = %1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %10 = icmp eq ptr %9, null
  br i1 %10, label %131, label %11, !prof !366

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %131, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr nonnull %9)
  br label %131

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !327
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %30, !prof !367

21:                                               ; preds = %17
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %23 = icmp eq ptr %22, null
  br i1 %23, label %131, label %24, !prof !368

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %131, label %28

28:                                               ; preds = %24
  %29 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 25, i64 1, ptr nonnull %22)
  br label %131

30:                                               ; preds = %17
  %31 = tail call ptr @single_exit(ptr noundef nonnull %0) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %42, !prof !369

33:                                               ; preds = %30
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %35 = icmp eq ptr %34, null
  br i1 %35, label %131, label %36, !prof !370

36:                                               ; preds = %33
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %131, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr nonnull %34)
  br label %131

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !371
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 1
  %46 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %45) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !372
  %47 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %46, ptr %47, align 8, !tbaa.struct !373
  %48 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %46, ptr noundef nonnull %3) #16, !range !334
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %50, !prof !374

50:                                               ; preds = %42, %54
  %51 = load ptr, ptr %3, align 8, !tbaa !292
  %52 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %51) #17
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %131, !prof !375

54:                                               ; preds = %50
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %55 = load i32, ptr %4, align 8
  %56 = load ptr, ptr %47, align 8
  %57 = call fastcc zeroext i8 @ei_cond(i32 %55, ptr %56, ptr noundef nonnull %3) #16, !range !334
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %50, !prof !376, !llvm.loop !377

59:                                               ; preds = %54, %42
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  tail call void @calculate_dominance_info(i32 noundef 2) #17
  %60 = tail call fastcc ptr @get_loop_body_in_if_conv_order(ptr noundef %0) #16
  store ptr %60, ptr @ifc_bbs, align 8, !tbaa !292
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !378

62:                                               ; preds = %59
  %63 = load i32, ptr %18, align 4, !tbaa !327
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %125, label %75, !prof !328

65:                                               ; preds = %59
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 17, i64 1, ptr nonnull %66)
  br label %74

74:                                               ; preds = %72, %68, %65
  tail call void @free_dominance_info(i32 noundef 2) #17
  br label %131

75:                                               ; preds = %62, %117
  %76 = phi i64 [ %121, %117 ], [ 0, %62 ]
  %77 = phi ptr [ %120, %117 ], [ null, %62 ]
  %78 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !292
  %81 = call fastcc zeroext i8 @if_convertible_bb_p(ptr noundef nonnull %0, ptr noundef %80, ptr noundef %77) #16, !range !334
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %131, label %83, !prof !379

83:                                               ; preds = %75
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %80) #16
  %84 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %93, !prof !380

86:                                               ; preds = %83, %90
  %87 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %88 = call fastcc zeroext i8 @if_convertible_stmt_p(ptr noundef %0, ptr noundef %80, ptr noundef %87) #16, !range !334
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %131, label %90, !prof !381

90:                                               ; preds = %86
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %91 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %86, label %93, !prof !382, !llvm.loop !383

93:                                               ; preds = %90, %83
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %80) #17
  %94 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %107, !prof !384

96:                                               ; preds = %93
  %97 = call fastcc ptr @ei_start_1(ptr noundef %80) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !372
  store ptr %97, ptr %47, align 8, !tbaa.struct !373
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %3) #16, !range !334
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100, !prof !385

100:                                              ; preds = %96, %100
  %101 = load ptr, ptr %3, align 8, !tbaa !292
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 3
  store ptr null, ptr %102, align 8, !tbaa !386
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %103 = load i32, ptr %4, align 8
  %104 = load ptr, ptr %47, align 8
  %105 = call fastcc zeroext i8 @ei_cond(i32 %103, ptr %104, ptr noundef nonnull %3) #16, !range !334
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %100, !prof !388, !llvm.loop !389

107:                                              ; preds = %100, %96, %93
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %117, !prof !390

110:                                              ; preds = %107, %114
  %111 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %112 = call fastcc zeroext i8 @if_convertible_phi_p(ptr noundef %0, ptr noundef %80, ptr noundef %111) #16, !range !334
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %131, label %114, !prof !391

114:                                              ; preds = %110
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !334
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %110, label %117, !prof !392, !llvm.loop !393

117:                                              ; preds = %114, %107
  %118 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %80) #16, !range !334
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, ptr %77, ptr %80, !prof !394
  %121 = add nuw nsw i64 %76, 1
  %122 = load i32, ptr %18, align 4, !tbaa !327
  %123 = zext i32 %122 to i64
  %124 = icmp ult i64 %121, %123
  br i1 %124, label %75, label %125, !prof !395, !llvm.loop !396

125:                                              ; preds = %117, %62
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128, !prof !397

128:                                              ; preds = %125
  %129 = call i64 @fwrite(ptr nonnull @.str.6, i64 23, i64 1, ptr nonnull %126)
  br label %130

130:                                              ; preds = %128, %125
  call void @free_dominance_info(i32 noundef 2) #17
  br label %131

131:                                              ; preds = %50, %75, %86, %110, %33, %36, %40, %21, %24, %28, %8, %11, %15, %130, %74
  %132 = phi i8 [ 1, %130 ], [ 0, %74 ], [ 0, %15 ], [ 0, %11 ], [ 0, %8 ], [ 0, %28 ], [ 0, %24 ], [ 0, %21 ], [ 0, %40 ], [ 0, %36 ], [ 0, %33 ], [ 0, %110 ], [ 0, %86 ], [ 0, %75 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret i8 %132
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !398 !PGOFuncName !399 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !400
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !402
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !403
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !404 !PGOFuncName !405 {
  %2 = load ptr, ptr %0, align 8, !tbaa !400
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !406 !PGOFuncName !407 {
  %2 = load ptr, ptr %0, align 8, !tbaa !400
  %3 = load ptr, ptr %2, align 8, !tbaa !408
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @tree_if_convert_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !410 !PGOFuncName !411 {
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !412

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !292
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %1, i32 noundef 0, i32 noundef 2) #17
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !292
  tail call void @print_generic_stmt(ptr noundef %14, ptr noundef %2, i32 noundef 2) #17
  br label %15

15:                                               ; preds = %11, %7, %4
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %1) #16, !range !413
  %17 = trunc i32 %16 to i8
  switch i8 %17, label %25 [
    i8 4, label %26
    i8 2, label %18
    i8 6, label %26
    i8 1, label %24
  ], !prof !414

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %20 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %19) #16, !range !334
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  tail call fastcc void @gimple_debug_bind_reset_value(ptr noundef %19) #16
  %23 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  tail call fastcc void @update_stmt(ptr noundef %23) #16
  br label %26

24:                                               ; preds = %15
  tail call fastcc void @tree_if_convert_cond_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  br label %26

25:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 267, ptr noundef nonnull @.str.8) #17
  br label %26

26:                                               ; preds = %18, %22, %25, %24, %15, %15
  %27 = phi ptr [ %2, %25 ], [ null, %24 ], [ %2, %22 ], [ %2, %18 ], [ %2, %15 ], [ %2, %15 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !415 !PGOFuncName !416 {
  %2 = load ptr, ptr %0, align 8, !tbaa !400
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !417
  store ptr %4, ptr %0, align 8, !tbaa !400
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !418 !PGOFuncName !419 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !420
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !421 !PGOFuncName !422 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_predicate_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !424 !PGOFuncName !425 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !331
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !426

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !286
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16, !prof !427

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !428
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %6 ]
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !292
  %19 = tail call ptr @unshare_expr(ptr noundef nonnull %4) #17
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef %17, i32 noundef 94, ptr noundef %18, ptr noundef %19, ptr noundef %1) #17
  br label %21

21:                                               ; preds = %2, %16
  %22 = phi ptr [ %20, %16 ], [ %1, %2 ]
  store ptr %22, ptr %3, align 8, !tbaa !331
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_blocks(ptr noundef %0) unnamed_addr #1 !prof !429 !PGOFuncName !430 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !327
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  tail call fastcc void @process_phi_nodes(ptr noundef %0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11, !prof !431

11:                                               ; preds = %1
  %12 = zext i32 %9 to i64
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, %12
  br i1 %15, label %23, label %16, !prof !432, !llvm.loop !433

16:                                               ; preds = %11, %13
  %17 = phi i64 [ 0, %11 ], [ %14, %13 ]
  %18 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !292
  %21 = tail call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %20) #16, !range !334
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %13, label %23, !prof !434

23:                                               ; preds = %13, %16, %1
  %24 = phi ptr [ null, %1 ], [ %20, %16 ], [ null, %13 ]
  %25 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !435
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %28, label %29, !prof !436

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 945, ptr noundef nonnull @.str.8) #17
  br label %29

29:                                               ; preds = %23, %28
  %30 = icmp ugt i32 %9, 1
  br i1 %30, label %31, label %60, !prof !437

31:                                               ; preds = %29
  %32 = getelementptr inbounds i8, ptr %3, i64 8
  %33 = zext i32 %9 to i64
  br label %34

34:                                               ; preds = %31, %57
  %35 = phi i64 [ 1, %31 ], [ %58, %57 ]
  %36 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !292
  %39 = tail call fastcc ptr @ei_start_1(ptr noundef %38) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !372
  store ptr %39, ptr %32, align 8, !tbaa.struct !373
  %40 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %39) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42, !prof !438

42:                                               ; preds = %34, %52
  %43 = phi ptr [ %53, %52 ], [ %39, %34 ]
  %44 = phi i32 [ %54, %52 ], [ 0, %34 ]
  %45 = phi ptr [ %55, %52 ], [ %40, %34 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !439
  %47 = icmp eq ptr %46, %24
  br i1 %47, label %48, label %51, !prof !440

48:                                               ; preds = %42
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %49 = load i32, ptr %3, align 8
  %50 = load ptr, ptr %32, align 8
  br label %52

51:                                               ; preds = %42
  tail call void @remove_edge(ptr noundef nonnull %45) #17
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi ptr [ %43, %51 ], [ %50, %48 ]
  %54 = phi i32 [ %44, %51 ], [ %49, %48 ]
  %55 = tail call fastcc ptr @ei_safe_edge(i32 %54, ptr %53) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %42, !prof !441, !llvm.loop !442

57:                                               ; preds = %52, %34
  %58 = add nuw nsw i64 %35, 1
  %59 = icmp eq i64 %58, %33
  br i1 %59, label %60, label %34, !prof !443, !llvm.loop !444

60:                                               ; preds = %57, %29
  store ptr null, ptr %2, align 8, !tbaa !292
  %61 = icmp eq ptr %24, null
  %62 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !371
  br i1 %61, label %89, label %64, !prof !436

64:                                               ; preds = %60
  %65 = icmp eq ptr %24, %63
  br i1 %65, label %69, label %66, !prof !436

66:                                               ; preds = %64
  %67 = tail call ptr @make_edge(ptr noundef %63, ptr noundef nonnull %24, i32 noundef 1) #17
  %68 = load ptr, ptr %62, align 8, !tbaa !371
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %24, ptr noundef %68) #17
  br label %69

69:                                               ; preds = %66, %64
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %71 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %70) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !372
  %72 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %71, ptr %72, align 8, !tbaa.struct !373
  %73 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %71, ptr noundef nonnull %2) #16, !range !334
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %87, label %75, !prof !328

75:                                               ; preds = %69, %82
  %76 = load ptr, ptr %2, align 8, !tbaa !292
  %77 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %76) #17
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82, !prof !445

79:                                               ; preds = %75
  %80 = load ptr, ptr %25, align 8, !tbaa !435
  %81 = tail call ptr @redirect_edge_and_branch(ptr noundef %76, ptr noundef %80) #17
  br label %82

82:                                               ; preds = %75, %79
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %83 = load i32, ptr %3, align 8
  %84 = load ptr, ptr %72, align 8
  %85 = call fastcc zeroext i8 @ei_cond(i32 %83, ptr %84, ptr noundef nonnull %2) #16, !range !334
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %75, !prof !446, !llvm.loop !447

87:                                               ; preds = %82, %69
  %88 = load ptr, ptr %25, align 8, !tbaa !435
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %88, ptr noundef nonnull %24) #17
  br label %94

89:                                               ; preds = %60
  %90 = load ptr, ptr %25, align 8, !tbaa !435
  %91 = tail call ptr @make_edge(ptr noundef %63, ptr noundef %90, i32 noundef 1) #17
  %92 = load ptr, ptr %25, align 8, !tbaa !435
  %93 = load ptr, ptr %62, align 8, !tbaa !371
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %92, ptr noundef %93) #17
  br label %94

94:                                               ; preds = %89, %87
  %95 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !371
  br i1 %30, label %97, label %128, !prof !437

97:                                               ; preds = %94
  %98 = zext i32 %9 to i64
  %99 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  br label %100

100:                                              ; preds = %97, %124
  %101 = phi ptr [ %99, %97 ], [ %125, %124 ]
  %102 = phi i64 [ 1, %97 ], [ %126, %124 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !292
  %105 = icmp eq ptr %104, %24
  br i1 %105, label %124, label %106, !prof !448

106:                                              ; preds = %100
  %107 = load ptr, ptr %25, align 8, !tbaa !435
  %108 = icmp eq ptr %104, %107
  br i1 %108, label %124, label %109, !prof !449

109:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %104) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %110 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !334
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %121, !prof !450

112:                                              ; preds = %109, %118
  %113 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %114 = call fastcc i32 @gimple_code(ptr noundef %113) #16, !range !413
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %117, !prof !451

116:                                              ; preds = %112
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #17
  br label %118

117:                                              ; preds = %112
  call void @gimple_set_bb(ptr noundef %113, ptr noundef %96) #17
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  br label %118

118:                                              ; preds = %117, %116
  %119 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !334
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %112, label %121, !prof !452, !llvm.loop !453

121:                                              ; preds = %118, %109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %96) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %122 = call fastcc ptr @bb_seq(ptr noundef %104) #16
  call void @gsi_insert_seq_after(ptr noundef nonnull %5, ptr noundef %122, i32 noundef 0) #17
  call fastcc void @set_bb_seq(ptr noundef %104) #16
  call void @delete_basic_block(ptr noundef %104) #17
  %123 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  br label %124

124:                                              ; preds = %100, %106, %121
  %125 = phi ptr [ %101, %100 ], [ %101, %106 ], [ %123, %121 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %126 = add nuw nsw i64 %102, 1
  %127 = icmp eq i64 %126, %98
  br i1 %127, label %128, label %100, !prof !443, !llvm.loop !454

128:                                              ; preds = %124, %94
  br i1 %61, label %137, label %129, !prof !436

129:                                              ; preds = %128
  %130 = load ptr, ptr %95, align 8, !tbaa !371
  %131 = icmp eq ptr %24, %130
  br i1 %131, label %137, label %132, !prof !436

132:                                              ; preds = %129
  %133 = call zeroext i8 @can_merge_blocks_p(ptr noundef %130, ptr noundef nonnull %24) #17
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %137, label %135, !prof !436

135:                                              ; preds = %132
  %136 = load ptr, ptr %95, align 8, !tbaa !371
  call void @merge_blocks(ptr noundef %136, ptr noundef nonnull %24) #17
  br label %137

137:                                              ; preds = %135, %132, %129, %128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_predicate_lists(ptr noundef %0) unnamed_addr #1 !prof !429 !PGOFuncName !455 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !327
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8, !prof !328

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  br label %10

10:                                               ; preds = %8, %27
  %11 = phi i64 [ 0, %8 ], [ %28, %27 ]
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !292
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !331
  %15 = load ptr, ptr %12, align 8, !tbaa !292
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #16
  store i32 0, ptr %3, align 8, !tbaa.struct !372
  store ptr %17, ptr %9, align 8, !tbaa.struct !373
  %18 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %2) #16, !range !334
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20, !prof !456

20:                                               ; preds = %10, %20
  %21 = load ptr, ptr %2, align 8, !tbaa !292
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 3
  store ptr null, ptr %22, align 8, !tbaa !386
  call fastcc void @ei_next(ptr noundef nonnull %3) #16
  %23 = load i32, ptr %3, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = call fastcc zeroext i8 @ei_cond(i32 %23, ptr %24, ptr noundef nonnull %2) #16, !range !334
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %20, !prof !457, !llvm.loop !458

27:                                               ; preds = %20, %10
  %28 = add nuw nsw i64 %11, 1
  %29 = load i32, ptr %5, align 4, !tbaa !327
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %10, label %32, !prof !459, !llvm.loop !460

32:                                               ; preds = %27, %1
  tail call void @free(ptr noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !461 !PGOFuncName !462 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !463 !PGOFuncName !464 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !334
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !465

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !292
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !466 !PGOFuncName !467 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !468

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !469

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !470
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !470
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_loop_body_in_if_conv_order(ptr noundef %0) unnamed_addr #1 !prof !472 !PGOFuncName !473 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !327
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !378

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1082, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !435
  %10 = load ptr, ptr @cfun, align 8, !tbaa !292
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !474
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !475
  %15 = icmp eq ptr %9, %14
  br i1 %15, label %16, label %17, !prof !378

16:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1083, ptr noundef nonnull @.str.8) #17
  br label %17

17:                                               ; preds = %7, %16
  %18 = load i32, ptr %3, align 4, !tbaa !327
  %19 = zext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 8) #17
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %21, ptr %2, align 8, !tbaa !292
  %22 = tail call ptr @get_loop_body_in_bfs_order(ptr noundef nonnull %0) #17
  %23 = load i32, ptr %3, align 4, !tbaa !327
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25, !prof !374

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %55
  %28 = phi i32 [ 0, %25 ], [ %56, %55 ]
  %29 = phi i32 [ 0, %25 ], [ %62, %55 ]
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %22, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !292
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %34 = load i32, ptr %33, align 8, !tbaa !477
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !478

37:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %22) #16
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  tail call void @free(ptr noundef %20) #16
  br label %65

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !479
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %21, i32 noundef %40) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55, !prof !480

43:                                               ; preds = %38
  %44 = call fastcc zeroext i8 @pred_blocks_visited_p(ptr noundef nonnull %32, ptr noundef nonnull %2) #16, !range !334
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49, !prof !481

46:                                               ; preds = %43
  %47 = load ptr, ptr %26, align 8, !tbaa !371
  %48 = icmp eq ptr %32, %47
  br i1 %48, label %49, label %55, !prof !482

49:                                               ; preds = %46, %43
  %50 = load i32, ptr %39, align 8, !tbaa !479
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %50) #17
  %52 = add i32 %28, 1
  %53 = zext i32 %28 to i64
  %54 = getelementptr inbounds ptr, ptr %20, i64 %53
  store ptr %32, ptr %54, align 8, !tbaa !292
  br label %55

55:                                               ; preds = %46, %49, %38
  %56 = phi i32 [ %28, %38 ], [ %52, %49 ], [ %28, %46 ]
  %57 = add nuw i32 %29, 1
  %58 = load i32, ptr %3, align 4, !tbaa !327
  %59 = icmp ne i32 %57, %58
  %60 = icmp eq i32 %56, %58
  %61 = select i1 %59, i1 true, i1 %60
  %62 = select i1 %61, i32 %57, i32 0, !prof !483
  %63 = icmp ult i32 %62, %58
  br i1 %63, label %27, label %64, !prof !484, !llvm.loop !485

64:                                               ; preds = %55, %17
  tail call void @free(ptr noundef %22) #16
  tail call void @bitmap_obstack_free(ptr noundef %21) #17
  br label %65

65:                                               ; preds = %64, %37
  %66 = phi ptr [ null, %37 ], [ %20, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_bb_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !486 !PGOFuncName !487 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !488

8:                                                ; preds = %3
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !479
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, i32 noundef %14) #16
  br label %16

16:                                               ; preds = %12, %8, %3
  %17 = icmp eq ptr %2, null
  br i1 %17, label %60, label %18, !prof !489

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !435
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %31, label %22, !prof !490

22:                                               ; preds = %18
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %24 = icmp eq ptr %23, null
  br i1 %24, label %86, label %25, !prof !491

25:                                               ; preds = %22
  %26 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %86, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 43, i64 1, ptr nonnull %23)
  br label %86

31:                                               ; preds = %18
  %32 = tail call zeroext i8 @empty_block_p(ptr noundef %1) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43, !prof !492

34:                                               ; preds = %31
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %36 = icmp eq ptr %35, null
  br i1 %36, label %86, label %37, !prof !493

37:                                               ; preds = %34
  %38 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %37
  %42 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 36, i64 1, ptr nonnull %35)
  br label %86

43:                                               ; preds = %31
  %44 = load ptr, ptr %19, align 8, !tbaa !435
  %45 = icmp ne ptr %44, %1
  %46 = icmp eq ptr %1, %2
  %47 = or i1 %46, %45
  br i1 %47, label %60, label %48, !prof !494

48:                                               ; preds = %43
  %49 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %60, !prof !495

51:                                               ; preds = %48
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %53 = icmp eq ptr %52, null
  br i1 %53, label %86, label %54, !prof !496

54:                                               ; preds = %51
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %54
  %59 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 37, i64 1, ptr nonnull %52)
  br label %86

60:                                               ; preds = %43, %48, %16
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %62 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %61) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !372
  %63 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %62, ptr %63, align 8, !tbaa.struct !373
  %64 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %62, ptr noundef nonnull %4) #16, !range !334
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %86, label %66, !prof !497

66:                                               ; preds = %60, %81
  %67 = load ptr, ptr %4, align 8, !tbaa !292
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !498
  %70 = and i32 %69, 142
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72, !prof !499

72:                                               ; preds = %66
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %77 = and i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 26, i64 1, ptr nonnull %73)
  br label %86

81:                                               ; preds = %66
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %82 = load i32, ptr %5, align 8
  %83 = load ptr, ptr %63, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %4) #16, !range !334
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %66, !prof !500, !llvm.loop !501

86:                                               ; preds = %81, %60, %72, %75, %79, %51, %54, %58, %34, %37, %41, %22, %25, %29
  %87 = phi i8 [ 0, %29 ], [ 0, %25 ], [ 0, %22 ], [ 0, %41 ], [ 0, %37 ], [ 0, %34 ], [ 0, %58 ], [ 0, %54 ], [ 0, %51 ], [ 0, %79 ], [ 0, %75 ], [ 0, %72 ], [ 1, %60 ], [ 1, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_stmt_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !502 !PGOFuncName !503 {
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %2) #16, !range !413
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %9 [
    i8 4, label %19
    i8 2, label %19
    i8 6, label %6
    i8 1, label %19
  ], !prof !504

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @if_convertible_gimple_assign_stmt_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !range !334
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %19, !prof !505

9:                                                ; preds = %3
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12, !prof !506

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !292
  tail call void @print_gimple_stmt(ptr noundef %18, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %20

19:                                               ; preds = %6, %3, %3, %3
  br label %20

20:                                               ; preds = %9, %12, %16, %6, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %6 ], [ 0, %16 ], [ 0, %12 ], [ 0, %9 ]
  ret i8 %21
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_phi_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #1 !prof !507 !PGOFuncName !508 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !509

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !292
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %14

14:                                               ; preds = %11, %7, %3
  %15 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !371
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %30, label %18, !prof !510

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %2) #16
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %30, label %21, !prof !511

21:                                               ; preds = %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %24, !prof !512

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 29, i64 1, ptr nonnull %22)
  br label %74

30:                                               ; preds = %18, %14
  %31 = tail call fastcc ptr @gimple_phi_result(ptr noundef %2) #16
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !428
  %34 = tail call zeroext i8 @is_gimple_reg(ptr noundef %33) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %74, !prof !513

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %37 = load ptr, ptr %15, align 8, !tbaa !371
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %48, label %39, !prof !514

39:                                               ; preds = %36
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %42
  %47 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 32, i64 1, ptr nonnull %40)
  br label %72

48:                                               ; preds = %36
  %49 = tail call fastcc ptr @gimple_phi_result(ptr noundef %2) #16
  %50 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %49) #16
  %51 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #16, !range !334
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %73, !prof !515

53:                                               ; preds = %48, %68
  %54 = phi ptr [ %69, %68 ], [ %50, %48 ]
  %55 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !428
  %57 = tail call fastcc i32 @gimple_code(ptr noundef %56) #16, !range !413
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %68, !prof !516

59:                                               ; preds = %53
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62, !prof !517

62:                                               ; preds = %59
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 38, i64 1, ptr nonnull %60)
  br label %72

68:                                               ; preds = %53
  %69 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #16
  %70 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #16, !range !334
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %53, label %73, !prof !518, !llvm.loop !519

72:                                               ; preds = %46, %42, %39, %66, %62, %59
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  br label %74

73:                                               ; preds = %68, %48
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  br label %74

74:                                               ; preds = %30, %73, %72, %21, %24, %28
  %75 = phi i8 [ 0, %28 ], [ 0, %24 ], [ 0, %21 ], [ 0, %72 ], [ 1, %73 ], [ 1, %30 ]
  ret i8 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !520 !PGOFuncName !521 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !372
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !373
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #16, !range !334
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10, !prof !522

10:                                               ; preds = %2, %14
  %11 = load ptr, ptr %3, align 8, !tbaa !292
  %12 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef %0, ptr noundef %11) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19, !prof !523

14:                                               ; preds = %10
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %15 = load i32, ptr %4, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %3) #16, !range !334
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %10, !prof !524, !llvm.loop !525

19:                                               ; preds = %14, %10, %2
  %20 = phi i8 [ 0, %2 ], [ 1, %10 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !526 !PGOFuncName !527 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !528

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !529 !PGOFuncName !530 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !531

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !532 !PGOFuncName !533 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !534

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !535
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !537 !PGOFuncName !538 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !539

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.8) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !292
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !540 !PGOFuncName !541 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !292
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_loop_body_in_bfs_order(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pred_blocks_visited_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !542 !PGOFuncName !543 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !372
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !373
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #16, !range !334
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9, !prof !544

9:                                                ; preds = %2, %17
  %10 = load ptr, ptr %1, align 8, !tbaa !292
  %11 = load ptr, ptr %3, align 8, !tbaa !292
  %12 = load ptr, ptr %11, align 8, !tbaa !439
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !479
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %14) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !prof !545

17:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %18 = load i32, ptr %4, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %3) #16, !range !334
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %9, !prof !546, !llvm.loop !547

22:                                               ; preds = %9, %17, %2
  %23 = phi i8 [ 1, %2 ], [ 1, %17 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !548 !PGOFuncName !549 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @if_convertible_gimple_assign_stmt_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !550 !PGOFuncName !551 {
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #16, !range !334
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %75, label %6, !prof !552

6:                                                ; preds = %3
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9, !prof !553

9:                                                ; preds = %6
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 26, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !292
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %16

16:                                               ; preds = %13, %9, %6
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %18 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %2) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %30, !prof !553

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %2) #16, !range !334
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30, !prof !553

23:                                               ; preds = %20
  %24 = load i64, ptr %17, align 8
  %25 = and i64 %24, 4259839
  %26 = icmp eq i64 %25, 4194445
  br i1 %26, label %30, label %27, !prof !554

27:                                               ; preds = %23
  %28 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %2) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30, !prof !553

30:                                               ; preds = %23, %27, %20, %16
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %32 = icmp eq ptr %31, null
  br i1 %32, label %75, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 28, i64 1, ptr nonnull %31)
  br label %75

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !371
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %55, label %43, !prof !555

43:                                               ; preds = %39
  %44 = tail call zeroext i8 @gimple_assign_rhs_could_trap_p(ptr noundef %2) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %55, label %46, !prof !556

46:                                               ; preds = %43
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %48 = icmp eq ptr %47, null
  br i1 %48, label %75, label %49, !prof !557

49:                                               ; preds = %46
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %49
  %54 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr nonnull %47)
  br label %75

55:                                               ; preds = %43, %39
  %56 = load i64, ptr %17, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %75, label %59, !prof !558

59:                                               ; preds = %55
  %60 = load ptr, ptr %40, align 8, !tbaa !371
  %61 = icmp eq ptr %60, %1
  br i1 %61, label %75, label %62, !prof !559

62:                                               ; preds = %59
  %63 = tail call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef nonnull %0, ptr noundef %1) #16, !range !334
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %75, !prof !560

65:                                               ; preds = %62
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68, !prof !561

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 15, i64 1, ptr nonnull %66)
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !292
  tail call void @print_gimple_stmt(ptr noundef %74, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  br label %75

75:                                               ; preds = %55, %59, %62, %65, %68, %72, %46, %49, %53, %30, %33, %37, %3
  %76 = phi i8 [ 0, %3 ], [ 0, %37 ], [ 0, %33 ], [ 0, %30 ], [ 0, %53 ], [ 0, %49 ], [ 0, %46 ], [ 0, %72 ], [ 0, %68 ], [ 0, %65 ], [ 1, %62 ], [ 1, %59 ], [ 1, %55 ]
  ret i8 %76
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !550 !PGOFuncName !562 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !413
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !563 !PGOFuncName !564 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !550 !PGOFuncName !565 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !334
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !552

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_rhs_could_trap_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !566 !PGOFuncName !567 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !334
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !568

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !292
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !569 !PGOFuncName !570 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !413
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !571 !PGOFuncName !572 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !573
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !574

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1622, ptr noundef nonnull @.str.8) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !571 !PGOFuncName !575 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !413
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !571 !PGOFuncName !576 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !286
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !550 !PGOFuncName !577 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !413
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !578 !PGOFuncName !579 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !428
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !580 !PGOFuncName !581 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !582 !PGOFuncName !583 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !584
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !587
  store ptr %6, ptr %0, align 8, !tbaa !588
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #16, !range !334
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !514
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !589 !PGOFuncName !590 {
  %2 = load ptr, ptr %0, align 8, !tbaa !588
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !584
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !591 !PGOFuncName !592 {
  %2 = load ptr, ptr %0, align 8, !tbaa !588
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !587
  store ptr %4, ptr %0, align 8, !tbaa !588
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #16, !range !334
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !593
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !594 !PGOFuncName !595 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !477
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !596

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !428
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !597

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !598
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !398 !PGOFuncName !600 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !601

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !602
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !604 !PGOFuncName !605 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #16, !range !334
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
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #1 !prof !604 !PGOFuncName !606 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !607 !PGOFuncName !608 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !334
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !609

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_if_convert_cond_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !prof !610 !PGOFuncName !611 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %7 = tail call fastcc i32 @gimple_location(ptr noundef %1) #16
  %8 = tail call fastcc i32 @gimple_code(ptr noundef %1) #16, !range !413
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %11, label %10, !prof !612

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 285, ptr noundef nonnull @.str.8) #17
  br label %11

11:                                               ; preds = %4, %10
  %12 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #16, !range !613
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !292
  %14 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #16
  %15 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #16
  %16 = tail call ptr @fold_build2_stat_loc(i32 noundef %7, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #17
  %17 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #16
  call void @extract_true_false_edges_from_block(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %18 = load ptr, ptr %5, align 8, !tbaa !292
  call fastcc void @add_to_dst_predicate_list(ptr noundef %0, ptr noundef %18, ptr noundef %2, ptr noundef %16, ptr noundef %3) #16
  %19 = call ptr @unshare_expr(ptr noundef %16) #17
  %20 = call ptr @invert_truthvalue_loc(i32 noundef %7, ptr noundef %19) #17
  %21 = load ptr, ptr %6, align 8, !tbaa !292
  call fastcc void @add_to_dst_predicate_list(ptr noundef %0, ptr noundef %21, ptr noundef %2, ptr noundef %20, ptr noundef %3) #16
  %22 = call fastcc ptr @gimple_bb(ptr noundef %1) #16
  %23 = call fastcc zeroext i8 @bb_with_exit_edge_p(ptr noundef %0, ptr noundef %22) #16, !range !334
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !614

25:                                               ; preds = %11
  call void @gsi_remove(ptr noundef %3, i8 noundef zeroext 1) #17
  br label %26

26:                                               ; preds = %25, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !604 !PGOFuncName !615 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !413
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !616 !PGOFuncName !617 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !334
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !618

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !619

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1665, ptr noundef nonnull @.str.8) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !292
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !616 !PGOFuncName !620 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !428
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !610 !PGOFuncName !621 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !428
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !610 !PGOFuncName !622 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !610 !PGOFuncName !623 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !610 !PGOFuncName !624 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !424 !PGOFuncName !625 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_dst_predicate_list(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 !prof !626 !PGOFuncName !627 {
  %6 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !423
  %8 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %7) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %32, label %10, !prof !628

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !292
  %12 = icmp ne ptr %11, %2
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %17, label %15, !prof !629

15:                                               ; preds = %10
  %16 = tail call ptr @unshare_expr(ptr noundef %3) #17
  br label %29

17:                                               ; preds = %10
  %18 = tail call ptr @unshare_expr(ptr noundef nonnull %2) #17
  %19 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %20 = tail call ptr @unshare_expr(ptr noundef %3) #17
  %21 = tail call ptr @force_gimple_operand_gsi(ptr noundef %4, ptr noundef %20, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !386
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !292
  %24 = tail call ptr @unshare_expr(ptr noundef %19) #17
  %25 = tail call ptr @build2_stat(i32 noundef 93, ptr noundef %23, ptr noundef %24, ptr noundef %21) #17
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !292
  %27 = tail call fastcc ptr @ifc_temp_var(ptr noundef %26, ptr noundef %25) #16
  tail call void @gsi_insert_before(ptr noundef %4, ptr noundef %27, i32 noundef 1) #17
  %28 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %27) #16
  br label %29

29:                                               ; preds = %17, %15
  %30 = phi ptr [ %28, %17 ], [ %16, %15 ]
  %31 = load ptr, ptr %6, align 8, !tbaa !423
  tail call fastcc void @add_to_predicate_list(ptr noundef %31, ptr noundef %30) #16
  br label %32

32:                                               ; preds = %5, %29
  ret void
}

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ifc_temp_var(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !616 !PGOFuncName !630 {
  %3 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef nonnull @.str.24) #17
  %4 = tail call zeroext i8 @add_referenced_var(ptr noundef %3) #17
  %5 = tail call ptr @gimple_build_assign_stat(ptr noundef %3, ptr noundef %1) #17
  %6 = tail call fastcc ptr @make_ssa_name(ptr noundef %3, ptr noundef %5) #16
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %5, ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !428
  tail call fastcc void @update_stmt(ptr noundef %5) #16
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !616 !PGOFuncName !631 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !292
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !616 !PGOFuncName !632 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #16
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !618

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !619

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !428
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !421 !PGOFuncName !633 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !334
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !340

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 645, ptr noundef nonnull @.str.8) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !420
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !429 !PGOFuncName !634 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !327
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %36, !prof !437

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %11 = zext i32 %7 to i64
  %12 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  br label %13

13:                                               ; preds = %9, %32
  %14 = phi ptr [ %12, %9 ], [ %33, %32 ]
  %15 = phi i64 [ 1, %9 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !292
  %18 = load ptr, ptr %10, align 8, !tbaa !371
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %32, label %20, !prof !635

20:                                               ; preds = %13
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %17) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %17) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !333
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !334
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30, !prof !636

23:                                               ; preds = %20
  %24 = call fastcc ptr @find_phi_replacement_condition(ptr noundef nonnull %0, ptr noundef %17, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %25 = load ptr, ptr %2, align 8, !tbaa !292
  br label %26

26:                                               ; preds = %23, %26
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  call fastcc void @replace_phi_with_cond_gimple_assign_stmt(ptr noundef %27, ptr noundef %25, ptr noundef %24, ptr noundef nonnull %3) #16
  call void @release_phi_node(ptr noundef %27) #17
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !334
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %26, label %30, !prof !637, !llvm.loop !638

30:                                               ; preds = %26, %20
  call fastcc void @set_phi_nodes(ptr noundef %17) #16
  %31 = load ptr, ptr @ifc_bbs, align 8, !tbaa !292
  br label %32

32:                                               ; preds = %13, %30
  %33 = phi ptr [ %14, %13 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %34 = add nuw nsw i64 %15, 1
  %35 = icmp eq i64 %34, %11
  br i1 %35, label %36, label %13, !prof !443, !llvm.loop !639

36:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !640 !PGOFuncName !641 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !334
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !642

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !643 !PGOFuncName !644 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !400
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !402
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !403
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !643 !PGOFuncName !645 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !477
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !646

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 248, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  store ptr null, ptr %9, align 8, !tbaa !598
  ret void
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @can_merge_blocks_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @merge_blocks(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 !prof !647 !PGOFuncName !648 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #16
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !334
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !450

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #16, !range !413
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !635

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #16
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !334
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !649, !llvm.loop !650

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_phi_replacement_condition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #1 !prof !651 !PGOFuncName !652 {
  %5 = load ptr, ptr %1, align 8, !tbaa !653
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #16
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %10, label %8, !prof !654

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 716, ptr noundef nonnull @.str.8) #17
  %9 = load ptr, ptr %1, align 8, !tbaa !653
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 0) #16
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 1) #16
  %14 = load ptr, ptr %12, align 8, !tbaa !439
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !331
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !655

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 746, ptr noundef nonnull @.str.8) #17
  br label %19

19:                                               ; preds = %10, %18
  %20 = load i64, ptr %16, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 96
  %23 = select i1 %22, ptr %12, ptr %13, !prof !655
  %24 = select i1 %22, ptr %13, ptr %12, !prof !655
  %25 = load ptr, ptr %24, align 8, !tbaa !439
  %26 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !371
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %33, label %29, !prof !656

29:                                               ; preds = %19
  %30 = load ptr, ptr %23, align 8, !tbaa !439
  %31 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %30, ptr noundef %25) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33, !prof !657

33:                                               ; preds = %29, %19
  %34 = load ptr, ptr %23, align 8, !tbaa !439
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !331
  store ptr %36, ptr %2, align 8, !tbaa !292
  %37 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !386
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !658

40:                                               ; preds = %33
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !292
  %42 = tail call ptr @build2_stat(i32 noundef 93, ptr noundef %41, ptr noundef %36, ptr noundef nonnull %38) #17
  store ptr %42, ptr %2, align 8, !tbaa !292
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi ptr [ %42, %40 ], [ %36, %33 ]
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 96
  br i1 %47, label %48, label %62, !prof !659

48:                                               ; preds = %43
  %49 = tail call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef nonnull %44) #17
  br label %60

50:                                               ; preds = %29
  %51 = load ptr, ptr %24, align 8, !tbaa !439
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !331
  store ptr %53, ptr %2, align 8, !tbaa !292
  %54 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !386
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57, !prof !512

57:                                               ; preds = %50
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !292
  %59 = tail call ptr @build2_stat(i32 noundef 93, ptr noundef %58, ptr noundef %53, ptr noundef nonnull %55) #17
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi ptr [ %59, %57 ], [ %49, %48 ]
  store ptr %61, ptr %2, align 8, !tbaa !292
  br label %62

62:                                               ; preds = %60, %43, %50
  %63 = phi ptr [ %53, %50 ], [ %44, %43 ], [ %61, %60 ]
  %64 = phi ptr [ %24, %50 ], [ %23, %43 ], [ %24, %60 ]
  %65 = tail call ptr @unshare_expr(ptr noundef %63) #17
  %66 = tail call ptr @force_gimple_operand_gsi(ptr noundef %3, ptr noundef %65, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  store ptr %66, ptr %2, align 8, !tbaa !292
  %67 = tail call zeroext i8 @is_gimple_reg(ptr noundef %66) #17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %80, !prof !660

69:                                               ; preds = %62
  %70 = load ptr, ptr %2, align 8, !tbaa !292
  %71 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef %70) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80, !prof !661

73:                                               ; preds = %69
  %74 = load ptr, ptr %2, align 8, !tbaa !292
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !428
  %77 = tail call ptr @unshare_expr(ptr noundef %74) #17
  %78 = tail call fastcc ptr @ifc_temp_var(ptr noundef %76, ptr noundef %77) #16
  tail call void @gsi_insert_before(ptr noundef %3, ptr noundef %78, i32 noundef 1) #17
  %79 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %78) #16
  store ptr %79, ptr %2, align 8, !tbaa !292
  br label %82

80:                                               ; preds = %62, %69
  %81 = load ptr, ptr %2, align 8, !tbaa !292
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi ptr [ %81, %80 ], [ %79, %73 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86, !prof !655

85:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 808, ptr noundef nonnull @.str.8) #17
  br label %86

86:                                               ; preds = %82, %85
  %87 = load ptr, ptr %64, align 8, !tbaa !439
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_phi_with_cond_gimple_assign_stmt(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3) unnamed_addr #1 !prof !662 !PGOFuncName !663 {
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !413
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %8, label %7, !prof !664

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 834, ptr noundef nonnull @.str.8) #17
  br label %8

8:                                                ; preds = %4, %7
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %12, label %11, !prof !664

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 837, ptr noundef nonnull @.str.8) #17
  br label %12

12:                                               ; preds = %8, %11
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %14 = load ptr, ptr %13, align 8, !tbaa !653
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %14, i32 noundef 1) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !439
  %17 = icmp eq ptr %16, %2
  %18 = zext i1 %17 to i64
  %19 = xor i1 %17, true
  %20 = zext i1 %19 to i64
  %21 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %18) #16
  %22 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %20) #16
  %23 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #16
  %24 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #16
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !428
  %27 = tail call ptr @unshare_expr(ptr noundef %1) #17
  %28 = tail call ptr @unshare_expr(ptr noundef %21) #17
  %29 = tail call ptr @unshare_expr(ptr noundef %22) #17
  %30 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29) #17
  %31 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %23) #16
  %32 = tail call ptr @unshare_expr(ptr noundef %31) #17
  %33 = tail call ptr @gimple_build_assign_stat(ptr noundef %32, ptr noundef %30) #17
  %34 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #16
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 2
  store ptr %33, ptr %35, align 8, !tbaa !428
  tail call void @gsi_insert_before(ptr noundef %3, ptr noundef %33, i32 noundef 1) #17
  tail call fastcc void @update_stmt(ptr noundef %33) #16
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !292
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38, !prof !664

38:                                               ; preds = %12
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !286
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 25, i64 1, ptr nonnull %36)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !292
  tail call void @print_gimple_stmt(ptr noundef %44, ptr noundef %33, i32 noundef 0, i32 noundef 2) #17
  br label %45

45:                                               ; preds = %42, %38, %12
  ret void
}

; Function Attrs: optsize
declare void @release_phi_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !647 !PGOFuncName !665 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !477
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !666

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 523, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  %10 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !667
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !668 !PGOFuncName !669 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #16
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #16
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !668 !PGOFuncName !670 {
  %2 = load ptr, ptr %0, align 8, !tbaa !292
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #11 !prof !668 !PGOFuncName !671 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !668 !PGOFuncName !672 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !428
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !673

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3103, ptr noundef nonnull @.str.8) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !668 !PGOFuncName !674 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !675
  %4 = load ptr, ptr %3, align 8, !tbaa !292
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !643 !PGOFuncName !676 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !677

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !678
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !343 !PGOFuncName !679 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !680

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !356
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !317

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !286
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !286
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 !prof !324 !PGOFuncName !681 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !292
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !300
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #16
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #13 !prof !305 !PGOFuncName !682 {
  %2 = load ptr, ptr %0, align 8, !tbaa !292
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !309

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !292
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!283}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!36 = !{ptr @main_tree_if_conversion, ptr @number_of_loops, i64 6652}
!37 = !{ptr @main_tree_if_conversion, ptr @fel_init, i64 2627}
!38 = !{ptr @main_tree_if_conversion, ptr @tree_if_conversion, i64 14307}
!39 = !{ptr @main_tree_if_conversion, ptr @fel_next, i64 14307}
!40 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 9278}
!41 = !{ptr @fel_init, ptr @number_of_loops, i64 2626}
!42 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 2626}
!43 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 28030}
!44 = !{ptr @fel_init, ptr @loop_outer, i64 16925}
!45 = !{ptr @fel_init, ptr @fel_next, i64 2626}
!46 = !{ptr @tree_if_conversion, ptr @if_convertible_loop_p, i64 14310}
!47 = !{ptr @tree_if_conversion, ptr @free, i64 1924}
!48 = !{ptr @tree_if_conversion, ptr @free_dominance_info, i64 14279}
!49 = !{ptr @tree_if_conversion, ptr @gsi_start_bb, i64 127}
!50 = !{ptr @tree_if_conversion, ptr @gsi_end_p, i64 609}
!51 = !{ptr @tree_if_conversion, ptr @gsi_stmt, i64 241}
!52 = !{ptr @tree_if_conversion, ptr @tree_if_convert_stmt, i64 241}
!53 = !{ptr @tree_if_conversion, ptr @gsi_next, i64 209}
!54 = !{ptr @tree_if_conversion, ptr @single_succ_p, i64 127}
!55 = !{ptr @tree_if_conversion, ptr @single_succ, i64 65}
!56 = !{ptr @tree_if_conversion, ptr @add_to_predicate_list, i64 65}
!57 = !{ptr @tree_if_conversion, ptr @combine_blocks, i64 31}
!58 = !{ptr @tree_if_conversion, ptr @clean_predicate_lists, i64 31}
!59 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 16938}
!60 = !{ptr @fel_next, ptr @get_loop, i64 14310}
!61 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 2628}
!62 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 2627}
!63 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 10059}
!64 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 7432}
!65 = !{ptr @if_convertible_loop_p, ptr @single_exit, i64 5859}
!66 = !{ptr @if_convertible_loop_p, ptr @ei_start_1, i64 3912}
!67 = !{ptr @if_convertible_loop_p, ptr @ei_cond, i64 12022}
!68 = !{ptr @if_convertible_loop_p, ptr @loop_exit_edge_p, i64 5320}
!69 = !{ptr @if_convertible_loop_p, ptr @ei_next, i64 8110}
!70 = !{ptr @if_convertible_loop_p, ptr @calculate_dominance_info, i64 3790}
!71 = !{ptr @if_convertible_loop_p, ptr @get_loop_body_in_if_conv_order, i64 1895}
!72 = !{ptr @if_convertible_loop_p, ptr @free_dominance_info, i64 15}
!73 = !{ptr @if_convertible_loop_p, ptr @if_convertible_bb_p, i64 2381}
!74 = !{ptr @if_convertible_loop_p, ptr @gsi_start_bb, i64 2351}
!75 = !{ptr @if_convertible_loop_p, ptr @gsi_end_p, i64 15681}
!76 = !{ptr @if_convertible_loop_p, ptr @gsi_stmt, i64 11522}
!77 = !{ptr @if_convertible_loop_p, ptr @if_convertible_stmt_p, i64 7368}
!78 = !{ptr @if_convertible_loop_p, ptr @gsi_next, i64 9672}
!79 = !{ptr @if_convertible_loop_p, ptr @gsi_start_phis, i64 1829}
!80 = !{ptr @if_convertible_loop_p, ptr @if_convertible_phi_p, i64 4154}
!81 = !{ptr @if_convertible_loop_p, ptr @bb_with_exit_edge_p, i64 501}
!82 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 2845}
!83 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 2845}
!84 = !{ptr @tree_if_convert_stmt, ptr @gimple_code, i64 240}
!85 = !{ptr @tree_if_convert_stmt, ptr @gsi_stmt, i64 2}
!86 = !{ptr @tree_if_convert_stmt, ptr @gimple_debug_bind_p, i64 1}
!87 = !{ptr @tree_if_convert_stmt, ptr @gimple_debug_bind_reset_value, i64 1}
!88 = !{ptr @tree_if_convert_stmt, ptr @update_stmt, i64 1}
!89 = !{ptr @tree_if_convert_stmt, ptr @tree_if_convert_cond_stmt, i64 61}
!90 = !{ptr @tree_if_convert_stmt, ptr @fancy_abort, i64 1}
!91 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 191}
!92 = !{ptr @single_succ, ptr @single_succ_edge, i64 65}
!93 = !{ptr @add_to_predicate_list, ptr @unshare_expr, i64 32}
!94 = !{ptr @add_to_predicate_list, ptr @fold_build2_stat_loc, i64 32}
!95 = !{ptr @combine_blocks, ptr @process_phi_nodes, i64 30}
!96 = !{ptr @combine_blocks, ptr @bb_with_exit_edge_p, i64 92}
!97 = !{ptr @combine_blocks, ptr @fancy_abort, i64 1}
!98 = !{ptr @combine_blocks, ptr @ei_start_1, i64 123}
!99 = !{ptr @combine_blocks, ptr @ei_safe_edge, i64 218}
!100 = !{ptr @combine_blocks, ptr @ei_next, i64 87}
!101 = !{ptr @combine_blocks, ptr @remove_edge, i64 94}
!102 = !{ptr @combine_blocks, ptr @make_edge, i64 29}
!103 = !{ptr @combine_blocks, ptr @set_immediate_dominator, i64 58}
!104 = !{ptr @combine_blocks, ptr @ei_cond, i64 86}
!105 = !{ptr @combine_blocks, ptr @loop_exit_edge_p, i64 57}
!106 = !{ptr @combine_blocks, ptr @redirect_edge_and_branch, i64 29}
!107 = !{ptr @combine_blocks, ptr @gsi_start_bb, i64 35}
!108 = !{ptr @combine_blocks, ptr @gsi_end_p, i64 84}
!109 = !{ptr @combine_blocks, ptr @gsi_stmt, i64 49}
!110 = !{ptr @combine_blocks, ptr @gimple_code, i64 49}
!111 = !{ptr @combine_blocks, ptr @gsi_remove, i64 1}
!112 = !{ptr @combine_blocks, ptr @gimple_set_bb, i64 48}
!113 = !{ptr @combine_blocks, ptr @gsi_next, i64 48}
!114 = !{ptr @combine_blocks, ptr @gsi_last_bb, i64 35}
!115 = !{ptr @combine_blocks, ptr @bb_seq, i64 35}
!116 = !{ptr @combine_blocks, ptr @gsi_insert_seq_after, i64 35}
!117 = !{ptr @combine_blocks, ptr @set_bb_seq, i64 35}
!118 = !{ptr @combine_blocks, ptr @delete_basic_block, i64 35}
!119 = !{ptr @combine_blocks, ptr @can_merge_blocks_p, i64 28}
!120 = !{ptr @combine_blocks, ptr @merge_blocks, i64 27}
!121 = !{ptr @clean_predicate_lists, ptr @get_loop_body, i64 30}
!122 = !{ptr @clean_predicate_lists, ptr @ei_start_1, i64 59}
!123 = !{ptr @clean_predicate_lists, ptr @ei_cond, i64 147}
!124 = !{ptr @clean_predicate_lists, ptr @ei_next, i64 88}
!125 = !{ptr @clean_predicate_lists, ptr @free, i64 30}
!126 = !{ptr @ei_cond, ptr @ei_end_p, i64 78794}
!127 = !{ptr @ei_cond, ptr @ei_edge, i64 56691}
!128 = !{ptr @ei_next, ptr @ei_container, i64 82259}
!129 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 41130}
!130 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!131 = !{ptr @get_loop_body_in_if_conv_order, ptr @fancy_abort, i64 2}
!132 = !{ptr @get_loop_body_in_if_conv_order, ptr @xcalloc, i64 1922}
!133 = !{ptr @get_loop_body_in_if_conv_order, ptr @bitmap_obstack_alloc_stat, i64 1922}
!134 = !{ptr @get_loop_body_in_if_conv_order, ptr @get_loop_body_in_bfs_order, i64 1922}
!135 = !{ptr @get_loop_body_in_if_conv_order, ptr @free, i64 1923}
!136 = !{ptr @get_loop_body_in_if_conv_order, ptr @bitmap_obstack_free, i64 1922}
!137 = !{ptr @get_loop_body_in_if_conv_order, ptr @bitmap_bit_p, i64 55572}
!138 = !{ptr @get_loop_body_in_if_conv_order, ptr @pred_blocks_visited_p, i64 29955}
!139 = !{ptr @get_loop_body_in_if_conv_order, ptr @bitmap_set_bit, i64 16831}
!140 = !{ptr @if_convertible_bb_p, ptr @empty_block_p, i64 64}
!141 = !{ptr @if_convertible_bb_p, ptr @dominated_by_p, i64 33}
!142 = !{ptr @if_convertible_bb_p, ptr @ei_start_1, i64 2585}
!143 = !{ptr @if_convertible_bb_p, ptr @ei_cond, i64 7796}
!144 = !{ptr @if_convertible_bb_p, ptr @ei_next, i64 5211}
!145 = !{ptr @if_convertible_stmt_p, ptr @gimple_code, i64 7660}
!146 = !{ptr @if_convertible_stmt_p, ptr @if_convertible_gimple_assign_stmt_p, i64 5533}
!147 = !{ptr @if_convertible_phi_p, ptr @gimple_phi_num_args, i64 64}
!148 = !{ptr @if_convertible_phi_p, ptr @gimple_phi_result, i64 5642}
!149 = !{ptr @if_convertible_phi_p, ptr @is_gimple_reg, i64 4115}
!150 = !{ptr @if_convertible_phi_p, ptr @first_readonly_imm_use, i64 1527}
!151 = !{ptr @if_convertible_phi_p, ptr @end_readonly_imm_use_p, i64 2671}
!152 = !{ptr @if_convertible_phi_p, ptr @gimple_code, i64 2559}
!153 = !{ptr @if_convertible_phi_p, ptr @fwrite, i64 1}
!154 = !{ptr @if_convertible_phi_p, ptr @next_readonly_imm_use, i64 1144}
!155 = !{ptr @bb_with_exit_edge_p, ptr @ei_start_1, i64 929}
!156 = !{ptr @bb_with_exit_edge_p, ptr @ei_cond, i64 2535}
!157 = !{ptr @bb_with_exit_edge_p, ptr @loop_exit_edge_p, i64 1762}
!158 = !{ptr @bb_with_exit_edge_p, ptr @ei_next, i64 1606}
!159 = !{ptr @ei_end_p, ptr @ei_container, i64 158033}
!160 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 79017}
!161 = !{ptr @ei_edge, ptr @ei_container, i64 113635}
!162 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 56818}
!163 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!164 = !{ptr @pred_blocks_visited_p, ptr @ei_start_1, i64 29986}
!165 = !{ptr @pred_blocks_visited_p, ptr @ei_cond, i64 61859}
!166 = !{ptr @pred_blocks_visited_p, ptr @bitmap_bit_p, i64 50289}
!167 = !{ptr @pred_blocks_visited_p, ptr @ei_next, i64 31873}
!168 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @is_gimple_assign, i64 5536}
!169 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @gimple_assign_lhs, i64 5535}
!170 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @stmt_ends_bb_p, i64 5535}
!171 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @gimple_has_volatile_ops, i64 5534}
!172 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @gimple_has_side_effects, i64 5532}
!173 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @fwrite, i64 1}
!174 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @gimple_assign_rhs_could_trap_p, i64 697}
!175 = !{ptr @if_convertible_gimple_assign_stmt_p, ptr @bb_with_exit_edge_p, i64 46}
!176 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 5536}
!177 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 5540}
!178 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 5536}
!179 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 5662}
!180 = !{ptr @gimple_op, ptr @gimple_ops, i64 5661}
!181 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 5705}
!182 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 5666}
!183 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!184 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 5666}
!185 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 5666}
!186 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 5536}
!187 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 1528}
!188 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 1059}
!189 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 39}
!190 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 38}
!191 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 38}
!192 = !{ptr @tree_if_convert_cond_stmt, ptr @gimple_location, i64 61}
!193 = !{ptr @tree_if_convert_cond_stmt, ptr @gimple_code, i64 61}
!194 = !{ptr @tree_if_convert_cond_stmt, ptr @fancy_abort, i64 1}
!195 = !{ptr @tree_if_convert_cond_stmt, ptr @gimple_cond_code, i64 61}
!196 = !{ptr @tree_if_convert_cond_stmt, ptr @gimple_cond_lhs, i64 61}
!197 = !{ptr @tree_if_convert_cond_stmt, ptr @gimple_cond_rhs, i64 61}
!198 = !{ptr @tree_if_convert_cond_stmt, ptr @fold_build2_stat_loc, i64 61}
!199 = !{ptr @tree_if_convert_cond_stmt, ptr @gimple_bb, i64 122}
!200 = !{ptr @tree_if_convert_cond_stmt, ptr @extract_true_false_edges_from_block, i64 61}
!201 = !{ptr @tree_if_convert_cond_stmt, ptr @add_to_dst_predicate_list, i64 122}
!202 = !{ptr @tree_if_convert_cond_stmt, ptr @unshare_expr, i64 61}
!203 = !{ptr @tree_if_convert_cond_stmt, ptr @invert_truthvalue_loc, i64 61}
!204 = !{ptr @tree_if_convert_cond_stmt, ptr @bb_with_exit_edge_p, i64 61}
!205 = !{ptr @tree_if_convert_cond_stmt, ptr @gsi_remove, i64 31}
!206 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 4}
!207 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 3}
!208 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 1}
!209 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 4}
!210 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 61}
!211 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 61}
!212 = !{ptr @add_to_dst_predicate_list, ptr @flow_bb_inside_loop_p, i64 122}
!213 = !{ptr @add_to_dst_predicate_list, ptr @unshare_expr, i64 100}
!214 = !{ptr @add_to_dst_predicate_list, ptr @force_gimple_operand_gsi, i64 8}
!215 = !{ptr @add_to_dst_predicate_list, ptr @build2_stat, i64 4}
!216 = !{ptr @add_to_dst_predicate_list, ptr @ifc_temp_var, i64 4}
!217 = !{ptr @add_to_dst_predicate_list, ptr @gsi_insert_before, i64 4}
!218 = !{ptr @add_to_dst_predicate_list, ptr @gimple_assign_lhs, i64 4}
!219 = !{ptr @add_to_dst_predicate_list, ptr @add_to_predicate_list, i64 92}
!220 = !{ptr @ifc_temp_var, ptr @create_tmp_var, i64 4}
!221 = !{ptr @ifc_temp_var, ptr @add_referenced_var, i64 4}
!222 = !{ptr @ifc_temp_var, ptr @gimple_build_assign_stat, i64 4}
!223 = !{ptr @ifc_temp_var, ptr @make_ssa_name, i64 4}
!224 = !{ptr @ifc_temp_var, ptr @gimple_assign_set_lhs, i64 4}
!225 = !{ptr @ifc_temp_var, ptr @update_stmt, i64 4}
!226 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 4}
!227 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 4}
!228 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 65}
!229 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!230 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 65}
!231 = !{ptr @process_phi_nodes, ptr @gsi_start_phis, i64 93}
!232 = !{ptr @process_phi_nodes, ptr @gsi_after_labels, i64 93}
!233 = !{ptr @process_phi_nodes, ptr @gsi_end_p, i64 123}
!234 = !{ptr @process_phi_nodes, ptr @find_phi_replacement_condition, i64 30}
!235 = !{ptr @process_phi_nodes, ptr @gsi_stmt, i64 30}
!236 = !{ptr @process_phi_nodes, ptr @replace_phi_with_cond_gimple_assign_stmt, i64 30}
!237 = !{ptr @process_phi_nodes, ptr @release_phi_node, i64 30}
!238 = !{ptr @process_phi_nodes, ptr @gsi_next, i64 30}
!239 = !{ptr @process_phi_nodes, ptr @set_phi_nodes, i64 93}
!240 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 223}
!241 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 127}
!242 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 36}
!243 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 36}
!244 = !{ptr @set_bb_seq, ptr @fancy_abort, i64 1}
!245 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 96}
!246 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 97}
!247 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 96}
!248 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 96}
!249 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 1}
!250 = !{ptr @find_phi_replacement_condition, ptr @VEC_edge_base_length, i64 31}
!251 = !{ptr @find_phi_replacement_condition, ptr @fancy_abort, i64 3}
!252 = !{ptr @find_phi_replacement_condition, ptr @VEC_edge_base_index, i64 62}
!253 = !{ptr @find_phi_replacement_condition, ptr @dominated_by_p, i64 9}
!254 = !{ptr @find_phi_replacement_condition, ptr @build2_stat, i64 2}
!255 = !{ptr @find_phi_replacement_condition, ptr @invert_truthvalue_loc, i64 1}
!256 = !{ptr @find_phi_replacement_condition, ptr @unshare_expr, i64 33}
!257 = !{ptr @find_phi_replacement_condition, ptr @force_gimple_operand_gsi, i64 31}
!258 = !{ptr @find_phi_replacement_condition, ptr @is_gimple_reg, i64 31}
!259 = !{ptr @find_phi_replacement_condition, ptr @is_gimple_condexpr, i64 29}
!260 = !{ptr @find_phi_replacement_condition, ptr @ifc_temp_var, i64 2}
!261 = !{ptr @find_phi_replacement_condition, ptr @gsi_insert_before, i64 2}
!262 = !{ptr @find_phi_replacement_condition, ptr @gimple_assign_lhs, i64 2}
!263 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gimple_code, i64 35}
!264 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @fancy_abort, i64 2}
!265 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gimple_phi_num_args, i64 35}
!266 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gimple_bb, i64 35}
!267 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @VEC_edge_base_index, i64 35}
!268 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gimple_phi_arg_def, i64 70}
!269 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gimple_phi_result_ptr, i64 35}
!270 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @get_def_from_ptr, i64 70}
!271 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @unshare_expr, i64 140}
!272 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @build3_stat, i64 35}
!273 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gimple_build_assign_stat, i64 35}
!274 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gimple_phi_result, i64 35}
!275 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @gsi_insert_before, i64 35}
!276 = !{ptr @replace_phi_with_cond_gimple_assign_stmt, ptr @update_stmt, i64 35}
!277 = !{ptr @set_phi_nodes, ptr @fancy_abort, i64 1}
!278 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 70}
!279 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 70}
!280 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!281 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 14310}
!282 = !{ptr @VEC_int_heap_free, ptr @free, i64 2626}
!283 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!284 = !{!"function_entry_count", i64 6652}
!285 = !{!"tree-if-conv.c:gate_tree_if_conversion"}
!286 = !{!287, !287, i64 0}
!287 = !{!"int", !288, i64 0}
!288 = !{!"omnipotent char", !289, i64 0}
!289 = !{!"Simple C/C++ TBAA"}
!290 = !{!"tree-if-conv.c:main_tree_if_conversion"}
!291 = !{!"branch_weights", i32 4026, i32 2628}
!292 = !{!293, !293, i64 0}
!293 = !{!"any pointer", !288, i64 0}
!294 = !{!"branch_weights", i32 1, i32 2627}
!295 = !{!"branch_weights", i32 2627, i32 11684}
!296 = distinct !{!296, !297}
!297 = !{!"llvm.loop.mustprogress"}
!298 = !{!"function_entry_count", i64 9279}
!299 = !{!"tree-if-conv.c:number_of_loops"}
!300 = !{!301, !293, i64 32}
!301 = !{!"function", !293, i64 0, !293, i64 8, !293, i64 16, !293, i64 24, !293, i64 32, !293, i64 40, !293, i64 48, !293, i64 56, !293, i64 64, !293, i64 72, !293, i64 80, !293, i64 88, !293, i64 96, !287, i64 104, !287, i64 108, !287, i64 112, !287, i64 116, !287, i64 120, !287, i64 124, !293, i64 128, !287, i64 136, !287, i64 137, !287, i64 138, !287, i64 138, !287, i64 138, !287, i64 138, !287, i64 138, !287, i64 138, !287, i64 138, !287, i64 139, !287, i64 139, !287, i64 139, !287, i64 139, !287, i64 139, !287, i64 139, !287, i64 139}
!302 = !{!"branch_weights", i32 1, i32 9280}
!303 = !{!304, !293, i64 8}
!304 = !{!"loops", !287, i64 0, !293, i64 8, !293, i64 16, !293, i64 24}
!305 = !{!"function_entry_count", i64 2627}
!306 = !{!"tree-if-conv.c:fel_init"}
!307 = !{!308, !287, i64 8}
!308 = !{!"", !293, i64 0, !287, i64 8}
!309 = !{!"branch_weights", i32 1, i32 2628}
!310 = !{!308, !293, i64 0}
!311 = !{!304, !293, i64 24}
!312 = !{!313, !287, i64 0}
!313 = !{!"loop", !287, i64 0, !287, i64 4, !293, i64 8, !293, i64 16, !314, i64 24, !287, i64 32, !287, i64 36, !293, i64 40, !293, i64 48, !293, i64 56, !293, i64 64, !293, i64 72, !315, i64 80, !315, i64 96, !288, i64 112, !288, i64 113, !287, i64 116, !293, i64 120, !293, i64 128, !288, i64 136, !293, i64 144}
!314 = !{!"lpt_decision", !287, i64 0, !287, i64 4}
!315 = !{!"", !316, i64 0, !316, i64 8}
!316 = !{!"long", !288, i64 0}
!317 = !{!"branch_weights", i32 14311, i32 2628}
!318 = !{!313, !293, i64 48}
!319 = !{!"branch_weights", i32 9506, i32 7433}
!320 = !{!313, !293, i64 56}
!321 = !{!"branch_weights", i32 10060, i32 9506}
!322 = !{!"branch_weights", i32 2628, i32 14310}
!323 = distinct !{!323, !297}
!324 = !{!"function_entry_count", i64 14310}
!325 = !{!"tree-if-conv.c:tree_if_conversion"}
!326 = !{!"branch_weights", i32 14281, i32 31}
!327 = !{!313, !287, i64 36}
!328 = !{!"branch_weights", i32 1, i32 247}
!329 = !{!"branch_weights", i32 14281, i32 1}
!330 = !{!"branch_weights", i32 12389, i32 1893}
!331 = !{!332, !293, i64 16}
!332 = !{!"basic_block_def", !293, i64 0, !293, i64 8, !293, i64 16, !293, i64 24, !288, i64 32, !293, i64 48, !293, i64 56, !288, i64 64, !316, i64 72, !287, i64 80, !287, i64 84, !287, i64 88, !287, i64 92, !287, i64 96}
!333 = !{i64 0, i64 8, !292, i64 8, i64 8, !292, i64 16, i64 8, !292}
!334 = !{i8 0, i8 2}
!335 = !{!"branch_weights", i32 253, i32 1}
!336 = !{!"branch_weights", i32 210, i32 32}
!337 = !{!"branch_weights", i32 229, i32 253}
!338 = distinct !{!338, !297}
!339 = !{!"branch_weights", i32 62, i32 66}
!340 = !{!"branch_weights", i32 1, i32 66}
!341 = !{!"branch_weights", i32 769, i32 247}
!342 = distinct !{!342, !297}
!343 = !{!"function_entry_count", i64 16937}
!344 = !{!"tree-if-conv.c:fel_next"}
!345 = !{i32 0, i32 2}
!346 = !{!"branch_weights", i32 2628, i32 14311}
!347 = !{!"branch_weights", i32 1, i32 14311}
!348 = distinct !{!348, !297}
!349 = !{!"function_entry_count", i64 19338}
!350 = !{!"tree-if-conv.c:VEC_loop_p_base_length"}
!351 = !{!"branch_weights", i32 2628, i32 16712}
!352 = !{!353, !287, i64 0}
!353 = !{!"VEC_loop_p_base", !287, i64 0, !287, i64 4, !288, i64 8}
!354 = !{!"tree-if-conv.c:VEC_int_heap_alloc"}
!355 = !{!"tree-if-conv.c:VEC_int_base_quick_push"}
!356 = !{!357, !287, i64 0}
!357 = !{!"VEC_int_base", !287, i64 0, !287, i64 4, !288, i64 8}
!358 = !{!"function_entry_count", i64 10059}
!359 = !{!"tree-if-conv.c:loop_outer"}
!360 = !{!313, !293, i64 40}
!361 = !{!"branch_weights", i32 2628, i32 7433}
!362 = !{!"function_entry_count", i64 21742}
!363 = !{!"tree-if-conv.c:VEC_loop_p_base_index"}
!364 = !{!"tree-if-conv.c:if_convertible_loop_p"}
!365 = !{!"branch_weights", i32 9506, i32 4806}
!366 = !{!"branch_weights", i32 4806, i32 1}
!367 = !{!"branch_weights", i32 3647, i32 5860}
!368 = !{!"branch_weights", i32 3647, i32 1}
!369 = !{!"branch_weights", i32 3551, i32 2310}
!370 = !{!"branch_weights", i32 3551, i32 1}
!371 = !{!313, !293, i64 8}
!372 = !{i64 0, i64 4, !286, i64 8, i64 8, !292}
!373 = !{i64 0, i64 8, !292}
!374 = !{!"branch_weights", i32 1, i32 1922}
!375 = !{!"branch_weights", i32 4593, i32 388}
!376 = !{!"branch_weights", i32 1922, i32 3058}
!377 = distinct !{!377, !297}
!378 = !{!"branch_weights", i32 1, i32 1923}
!379 = !{!"branch_weights", i32 33, i32 2588}
!380 = !{!"branch_weights", i32 2045, i32 1}
!381 = !{!"branch_weights", i32 543, i32 7119}
!382 = !{!"branch_weights", i32 5616, i32 2045}
!383 = distinct !{!383, !297}
!384 = !{!"branch_weights", i32 1794, i32 253}
!385 = !{!"branch_weights", i32 1, i32 1793}
!386 = !{!387, !293, i64 24}
!387 = !{!"edge_def", !293, i64 0, !293, i64 8, !288, i64 16, !293, i64 24, !293, i64 32, !287, i64 40, !287, i64 44, !287, i64 48, !287, i64 52, !316, i64 56}
!388 = !{!"branch_weights", i32 1793, i32 1794}
!389 = distinct !{!389, !297}
!390 = !{!"branch_weights", i32 727, i32 1}
!391 = !{!"branch_weights", i32 1319, i32 2807}
!392 = !{!"branch_weights", i32 3398, i32 727}
!393 = distinct !{!393, !297}
!394 = !{!"branch_weights", i32 662, i32 67}
!395 = !{!"branch_weights", i32 20713, i32 247}
!396 = distinct !{!396, !297}
!397 = !{!"branch_weights", i32 31, i32 1}
!398 = !{!"function_entry_count", i64 2845}
!399 = !{!"tree-if-conv.c:gsi_start_bb"}
!400 = !{!401, !293, i64 0}
!401 = !{!"", !293, i64 0, !293, i64 8, !293, i64 16}
!402 = !{!401, !293, i64 8}
!403 = !{!401, !293, i64 16}
!404 = !{!"function_entry_count", i64 17617}
!405 = !{!"tree-if-conv.c:gsi_end_p"}
!406 = !{!"function_entry_count", i64 12221}
!407 = !{!"tree-if-conv.c:gsi_stmt"}
!408 = !{!409, !293, i64 0}
!409 = !{!"gimple_seq_node_d", !293, i64 0, !293, i64 8, !293, i64 16}
!410 = !{!"function_entry_count", i64 240}
!411 = !{!"tree-if-conv.c:tree_if_convert_stmt"}
!412 = !{!"branch_weights", i32 241, i32 1}
!413 = !{i32 0, i32 256}
!414 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 180, i32 62}
!415 = !{!"function_entry_count", i64 10219}
!416 = !{!"tree-if-conv.c:gsi_next"}
!417 = !{!409, !293, i64 16}
!418 = !{!"function_entry_count", i64 191}
!419 = !{!"tree-if-conv.c:single_succ_p"}
!420 = !{!332, !293, i64 8}
!421 = !{!"function_entry_count", i64 65}
!422 = !{!"tree-if-conv.c:single_succ"}
!423 = !{!387, !293, i64 8}
!424 = !{!"function_entry_count", i64 157}
!425 = !{!"tree-if-conv.c:add_to_predicate_list"}
!426 = !{!"branch_weights", i32 127, i32 32}
!427 = !{!"branch_weights", i32 961, i32 95}
!428 = !{!288, !288, i64 0}
!429 = !{!"function_entry_count", i64 30}
!430 = !{!"tree-if-conv.c:combine_blocks"}
!431 = !{!"branch_weights", i32 1, i32 127}
!432 = !{!"branch_weights", i32 127, i32 12289}
!433 = distinct !{!433, !297}
!434 = !{!"branch_weights", i32 67, i32 31}
!435 = !{!313, !293, i64 16}
!436 = !{!"branch_weights", i32 1, i32 31}
!437 = !{!"branch_weights", i32 247, i32 1}
!438 = !{!"branch_weights", i32 1, i32 193}
!439 = !{!387, !293, i64 0}
!440 = !{!"branch_weights", i32 31, i32 98}
!441 = !{!"branch_weights", i32 193, i32 63}
!442 = distinct !{!442, !297}
!443 = !{!"branch_weights", i32 247, i32 529}
!444 = distinct !{!444, !297}
!445 = !{!"branch_weights", i32 31, i32 31}
!446 = !{!"branch_weights", i32 247, i32 241}
!447 = distinct !{!447, !297}
!448 = !{!"branch_weights", i32 31, i32 67}
!449 = !{!"branch_weights", i32 31, i32 37}
!450 = !{!"branch_weights", i32 147, i32 1}
!451 = !{!"branch_weights", i32 1, i32 52}
!452 = !{!"branch_weights", i32 61, i32 147}
!453 = distinct !{!453, !297}
!454 = distinct !{!454, !297}
!455 = !{!"tree-if-conv.c:clean_predicate_lists"}
!456 = !{!"branch_weights", i32 1, i32 243}
!457 = !{!"branch_weights", i32 243, i32 121}
!458 = distinct !{!458, !297}
!459 = !{!"branch_weights", i32 241, i32 247}
!460 = distinct !{!460, !297}
!461 = !{!"function_entry_count", i64 37790}
!462 = !{!"tree-if-conv.c:ei_start_1"}
!463 = !{!"function_entry_count", i64 78794}
!464 = !{!"tree-if-conv.c:ei_cond"}
!465 = !{!"branch_weights", i32 56692, i32 22104}
!466 = !{!"function_entry_count", i64 41130}
!467 = !{!"tree-if-conv.c:ei_next"}
!468 = !{!"branch_weights", i32 1, i32 41131}
!469 = !{!"branch_weights", i32 41131, i32 1}
!470 = !{!471, !287, i64 0}
!471 = !{!"", !287, i64 0, !293, i64 8}
!472 = !{!"function_entry_count", i64 1922}
!473 = !{!"tree-if-conv.c:get_loop_body_in_if_conv_order"}
!474 = !{!301, !293, i64 8}
!475 = !{!476, !293, i64 8}
!476 = !{!"control_flow_graph", !293, i64 0, !293, i64 8, !293, i64 16, !287, i64 24, !287, i64 28, !287, i64 32, !293, i64 40, !287, i64 48, !288, i64 52, !288, i64 60, !287, i64 68, !287, i64 72}
!477 = !{!332, !287, i64 96}
!478 = !{!"branch_weights", i32 55630, i32 1}
!479 = !{!332, !287, i64 80}
!480 = !{!"branch_weights", i32 29987, i32 25644}
!481 = !{!"branch_weights", i32 15061, i32 14927}
!482 = !{!"branch_weights", i32 1923, i32 13139}
!483 = !{!"branch_weights", i32 191211177, i32 5722563}
!484 = !{!"branch_weights", i32 53708, i32 1922}
!485 = distinct !{!485, !297}
!486 = !{!"function_entry_count", i64 2619}
!487 = !{!"tree-if-conv.c:if_convertible_bb_p"}
!488 = !{!"branch_weights", i32 2620, i32 1}
!489 = !{!"branch_weights", i32 2554, i32 67}
!490 = !{!"branch_weights", i32 65, i32 3}
!491 = !{!"branch_weights", i32 3, i32 1}
!492 = !{!"branch_weights", i32 30, i32 36}
!493 = !{!"branch_weights", i32 30, i32 1}
!494 = !{!"branch_weights", i32 73, i32 1296}
!495 = !{!"branch_weights", i32 2, i32 35}
!496 = !{!"branch_weights", i32 2, i32 1}
!497 = !{!"branch_weights", i32 1, i32 2587}
!498 = !{!387, !287, i64 48}
!499 = !{!"branch_weights", i32 5219, i32 1}
!500 = !{!"branch_weights", i32 2587, i32 2632}
!501 = distinct !{!501, !297}
!502 = !{!"function_entry_count", i64 7660}
!503 = !{!"tree-if-conv.c:if_convertible_stmt_p"}
!504 = !{!"branch_weights", i32 238, i32 10, i32 1, i32 5537, i32 1879}
!505 = !{!"branch_weights", i32 306, i32 5232}
!506 = !{!"branch_weights", i32 238, i32 1}
!507 = !{!"function_entry_count", i64 4124}
!508 = !{!"tree-if-conv.c:if_convertible_phi_p"}
!509 = !{!"branch_weights", i32 4125, i32 1}
!510 = !{!"branch_weights", i32 4062, i32 64}
!511 = !{!"branch_weights", i32 56, i32 9}
!512 = !{!"branch_weights", i32 9, i32 1}
!513 = !{!"branch_weights", i32 1529, i32 2589}
!514 = !{!"branch_weights", i32 1529, i32 1}
!515 = !{!"branch_weights", i32 218, i32 1}
!516 = !{!"branch_weights", i32 1311, i32 1060}
!517 = !{!"branch_weights", i32 1311, i32 1}
!518 = !{!"branch_weights", i32 2152, i32 218}
!519 = distinct !{!519, !297}
!520 = !{!"function_entry_count", i64 929}
!521 = !{!"tree-if-conv.c:bb_with_exit_edge_p"}
!522 = !{!"branch_weights", i32 1, i32 785}
!523 = !{!"branch_weights", i32 1490, i32 145}
!524 = !{!"branch_weights", i32 785, i32 849}
!525 = distinct !{!525, !297}
!526 = !{!"function_entry_count", i64 79017}
!527 = !{!"tree-if-conv.c:ei_end_p"}
!528 = !{!"branch_weights", i32 1, i32 79018}
!529 = !{!"function_entry_count", i64 56818}
!530 = !{!"tree-if-conv.c:ei_edge"}
!531 = !{!"branch_weights", i32 1, i32 56819}
!532 = !{!"function_entry_count", i64 120369}
!533 = !{!"tree-if-conv.c:VEC_edge_base_length"}
!534 = !{!"branch_weights", i32 1, i32 120370}
!535 = !{!536, !287, i64 0}
!536 = !{!"VEC_edge_base", !287, i64 0, !287, i64 4, !288, i64 8}
!537 = !{!"function_entry_count", i64 353930}
!538 = !{!"tree-if-conv.c:ei_container"}
!539 = !{!"branch_weights", i32 1, i32 353931}
!540 = !{!"function_entry_count", i64 56980}
!541 = !{!"tree-if-conv.c:VEC_edge_base_index"}
!542 = !{!"function_entry_count", i64 29986}
!543 = !{!"tree-if-conv.c:pred_blocks_visited_p"}
!544 = !{!"branch_weights", i32 1, i32 14926}
!545 = !{!"branch_weights", i32 15061, i32 26066}
!546 = !{!"branch_weights", i32 14926, i32 26200}
!547 = distinct !{!547, !297}
!548 = !{!"function_entry_count", i64 44160}
!549 = !{!"tree-if-conv.c:gimple_code"}
!550 = !{!"function_entry_count", i64 5536}
!551 = !{!"tree-if-conv.c:if_convertible_gimple_assign_stmt_p"}
!552 = !{!"branch_weights", i32 1, i32 5537}
!553 = !{!"branch_weights", i32 5537, i32 1}
!554 = !{!"branch_weights", i32 5381, i32 29800135}
!555 = !{!"branch_weights", i32 4840, i32 698}
!556 = !{!"branch_weights", i32 420, i32 279}
!557 = !{!"branch_weights", i32 279, i32 1}
!558 = !{!"branch_weights", i32 5103, i32 157}
!559 = !{!"branch_weights", i32 112, i32 46}
!560 = !{!"branch_weights", i32 28, i32 19}
!561 = !{!"branch_weights", i32 28, i32 1}
!562 = !{!"tree-if-conv.c:is_gimple_assign"}
!563 = !{!"function_entry_count", i64 5540}
!564 = !{!"tree-if-conv.c:gimple_assign_lhs"}
!565 = !{!"tree-if-conv.c:gimple_has_volatile_ops"}
!566 = !{!"function_entry_count", i64 5662}
!567 = !{!"tree-if-conv.c:gimple_op"}
!568 = !{!"branch_weights", i32 1, i32 5663}
!569 = !{!"function_entry_count", i64 5705}
!570 = !{!"tree-if-conv.c:gimple_has_ops"}
!571 = !{!"function_entry_count", i64 5666}
!572 = !{!"tree-if-conv.c:gimple_ops"}
!573 = !{!316, !316, i64 0}
!574 = !{!"branch_weights", i32 1, i32 5667}
!575 = !{!"tree-if-conv.c:gimple_statement_structure"}
!576 = !{!"tree-if-conv.c:gss_for_code"}
!577 = !{!"tree-if-conv.c:gimple_has_mem_ops"}
!578 = !{!"function_entry_count", i64 98}
!579 = !{!"tree-if-conv.c:gimple_phi_num_args"}
!580 = !{!"function_entry_count", i64 5679}
!581 = !{!"tree-if-conv.c:gimple_phi_result"}
!582 = !{!"function_entry_count", i64 1528}
!583 = !{!"tree-if-conv.c:first_readonly_imm_use"}
!584 = !{!585, !293, i64 8}
!585 = !{!"immediate_use_iterator_d", !293, i64 0, !293, i64 8, !586, i64 16, !293, i64 48}
!586 = !{!"ssa_use_operand_d", !293, i64 0, !293, i64 8, !288, i64 16, !293, i64 24}
!587 = !{!586, !293, i64 8}
!588 = !{!585, !293, i64 0}
!589 = !{!"function_entry_count", i64 5174}
!590 = !{!"tree-if-conv.c:end_readonly_imm_use_p"}
!591 = !{!"function_entry_count", i64 1059}
!592 = !{!"tree-if-conv.c:next_readonly_imm_use"}
!593 = !{!"branch_weights", i32 842, i32 219}
!594 = !{!"function_entry_count", i64 2917}
!595 = !{!"tree-if-conv.c:bb_seq"}
!596 = !{!"branch_weights", i32 2918, i32 1}
!597 = !{!"branch_weights", i32 1, i32 2918}
!598 = !{!599, !293, i64 0}
!599 = !{!"gimple_bb_info", !293, i64 0, !293, i64 8}
!600 = !{!"tree-if-conv.c:gimple_seq_first"}
!601 = !{!"branch_weights", i32 1, i32 2846}
!602 = !{!603, !293, i64 0}
!603 = !{!"gimple_seq_d", !293, i64 0, !293, i64 8, !293, i64 16}
!604 = !{!"function_entry_count", i64 0}
!605 = !{!"tree-if-conv.c:gimple_debug_bind_p"}
!606 = !{!"tree-if-conv.c:gimple_debug_bind_reset_value"}
!607 = !{!"function_entry_count", i64 39}
!608 = !{!"tree-if-conv.c:update_stmt"}
!609 = !{!"branch_weights", i32 1, i32 40}
!610 = !{!"function_entry_count", i64 61}
!611 = !{!"tree-if-conv.c:tree_if_convert_cond_stmt"}
!612 = !{!"branch_weights", i32 62, i32 1}
!613 = !{i32 0, i32 65536}
!614 = !{!"branch_weights", i32 32, i32 31}
!615 = !{!"tree-if-conv.c:is_gimple_debug"}
!616 = !{!"function_entry_count", i64 4}
!617 = !{!"tree-if-conv.c:gimple_set_op"}
!618 = !{!"branch_weights", i32 1, i32 5}
!619 = !{!"branch_weights", i32 5, i32 1}
!620 = !{!"tree-if-conv.c:gimple_num_ops"}
!621 = !{!"tree-if-conv.c:gimple_location"}
!622 = !{!"tree-if-conv.c:gimple_cond_code"}
!623 = !{!"tree-if-conv.c:gimple_cond_lhs"}
!624 = !{!"tree-if-conv.c:gimple_cond_rhs"}
!625 = !{!"tree-if-conv.c:gimple_bb"}
!626 = !{!"function_entry_count", i64 122}
!627 = !{!"tree-if-conv.c:add_to_dst_predicate_list"}
!628 = !{!"branch_weights", i32 31, i32 93}
!629 = !{!"branch_weights", i32 256, i32 5854}
!630 = !{!"tree-if-conv.c:ifc_temp_var"}
!631 = !{!"tree-if-conv.c:make_ssa_name"}
!632 = !{!"tree-if-conv.c:gimple_assign_set_lhs"}
!633 = !{!"tree-if-conv.c:single_succ_edge"}
!634 = !{!"tree-if-conv.c:process_phi_nodes"}
!635 = !{!"branch_weights", i32 1, i32 97}
!636 = !{!"branch_weights", i32 32, i32 66}
!637 = !{!"branch_weights", i32 0, i32 36}
!638 = distinct !{!638, !297}
!639 = distinct !{!639, !297}
!640 = !{!"function_entry_count", i64 223}
!641 = !{!"tree-if-conv.c:ei_safe_edge"}
!642 = !{!"branch_weights", i32 128, i32 97}
!643 = !{!"function_entry_count", i64 36}
!644 = !{!"tree-if-conv.c:gsi_last_bb"}
!645 = !{!"tree-if-conv.c:set_bb_seq"}
!646 = !{!"branch_weights", i32 37, i32 1}
!647 = !{!"function_entry_count", i64 96}
!648 = !{!"tree-if-conv.c:gsi_after_labels"}
!649 = !{!"branch_weights", i32 97, i32 147}
!650 = distinct !{!650, !297}
!651 = !{!"function_entry_count", i64 31}
!652 = !{!"tree-if-conv.c:find_phi_replacement_condition"}
!653 = !{!332, !293, i64 0}
!654 = !{!"branch_weights", i32 32, i32 1}
!655 = !{!"branch_weights", i32 1, i32 32}
!656 = !{!"branch_weights", i32 23, i32 10}
!657 = !{!"branch_weights", i32 9, i32 2}
!658 = !{!"branch_weights", i32 24, i32 1}
!659 = !{!"branch_weights", i32 1, i32 24}
!660 = !{!"branch_weights", i32 31, i32 2}
!661 = !{!"branch_weights", i32 2, i32 30}
!662 = !{!"function_entry_count", i64 35}
!663 = !{!"tree-if-conv.c:replace_phi_with_cond_gimple_assign_stmt"}
!664 = !{!"branch_weights", i32 36, i32 1}
!665 = !{!"tree-if-conv.c:set_phi_nodes"}
!666 = !{!"branch_weights", i32 97, i32 1}
!667 = !{!599, !293, i64 8}
!668 = !{!"function_entry_count", i64 70}
!669 = !{!"tree-if-conv.c:gimple_phi_arg_def"}
!670 = !{!"tree-if-conv.c:get_def_from_ptr"}
!671 = !{!"tree-if-conv.c:gimple_phi_result_ptr"}
!672 = !{!"tree-if-conv.c:gimple_phi_arg"}
!673 = !{!"branch_weights", i32 1, i32 71}
!674 = !{!"tree-if-conv.c:get_use_from_ptr"}
!675 = !{!586, !293, i64 24}
!676 = !{!"tree-if-conv.c:gimple_seq_last"}
!677 = !{!"branch_weights", i32 1, i32 37}
!678 = !{!603, !293, i64 8}
!679 = !{!"tree-if-conv.c:VEC_int_base_iterate"}
!680 = !{!"branch_weights", i32 1, i32 16938}
!681 = !{!"tree-if-conv.c:get_loop"}
!682 = !{!"tree-if-conv.c:VEC_int_heap_free"}
