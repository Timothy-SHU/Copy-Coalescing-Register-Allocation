; ModuleID = 'tree-phinodes.c'
source_filename = "tree-phinodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@free_phinodes = internal global [8 x ptr] zeroinitializer, align 16
@free_phinode_count = internal unnamed_addr global i64 0, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"tree-phinodes.c\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gt_ggc_rd_gt_tree_phinodes_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @free_phinodes, i64 1, i64 64, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_phinodes() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @free_phinodes, i8 0, i64 64, i1 false), !tbaa !6
  store i64 0, ptr @free_phinode_count, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @fini_phinodes() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @free_phinodes, i8 0, i64 64, i1 false), !tbaa !6
  store i64 0, ptr @free_phinode_count, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_phi_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @ideal_phi_node_len(i32 noundef %1) #14
  %4 = sext i32 %3 to i64
  %5 = tail call fastcc ptr @allocate_phi_node(i64 noundef %4) #14
  %6 = sext i32 %1 to i64
  %7 = mul nsw i64 %6, 48
  %8 = add nsw i64 %7, 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %8, i1 false)
  %9 = load i32, ptr %5, align 8
  %10 = and i32 %9, -256
  %11 = or disjoint i32 %10, 16
  store i32 %11, ptr %5, align 8
  %12 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 2
  store i32 %1, ptr %12, align 4, !tbaa !12
  %13 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 1
  store i32 %3, ptr %13, align 8, !tbaa !12
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call fastcc void @gimple_phi_set_result(ptr noundef nonnull %5, ptr noundef nonnull %0) #14
  br label %20

18:                                               ; preds = %2
  %19 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  tail call fastcc void @gimple_phi_set_result(ptr noundef nonnull %5, ptr noundef %19) #14
  br label %20

20:                                               ; preds = %18, %17
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %20
  %23 = zext nneg i32 %3 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %31, %24 ]
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef nonnull %5, i64 noundef %25, i32 noundef 0) #14
  %26 = trunc i64 %25 to i32
  %27 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef nonnull %5, i32 noundef %26) #14
  %28 = tail call fastcc ptr @gimple_phi_arg_def_ptr(ptr noundef nonnull %5, i64 noundef %25) #14
  %29 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %27, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %27, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  store ptr %5, ptr %30, align 8, !tbaa !12
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !15

33:                                               ; preds = %24, %20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ideal_phi_node_len(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 2)
  %3 = add nsw i32 %2, -1
  %4 = zext nneg i32 %3 to i64
  %5 = mul nuw nsw i64 %4, 48
  %6 = add nuw nsw i64 %5, 96
  %7 = tail call i32 @ceil_log2(i64 noundef %6) #15
  %8 = shl nuw i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %9, %6
  %11 = udiv i64 %10, 48
  %12 = trunc i64 %11 to i32
  %13 = add i32 %2, %12
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @allocate_phi_node(i64 noundef %0) unnamed_addr #2 {
  %2 = mul i64 %0, 48
  %3 = add i64 %2, 48
  %4 = load i64, ptr @free_phinode_count, align 8, !tbaa !10
  %5 = icmp ne i64 %4, 0
  %6 = add nsw i64 %0, -2
  %7 = icmp ult i64 %6, 8
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %29

9:                                                ; preds = %1, %14
  %10 = phi i64 [ %15, %14 ], [ %6, %1 ]
  %11 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = add i64 %10, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %29, label %9, !llvm.loop !17

17:                                               ; preds = %9
  %18 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef nonnull %12) #14
  %19 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %18) #14
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %20, %0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = add i64 %4, -1
  store i64 %23, ptr @free_phinode_count, align 8, !tbaa !10
  %24 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef nonnull %12) #14
  %25 = load ptr, ptr %11, align 8, !tbaa !6
  %26 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %25) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  tail call fastcc void @VEC_gimple_gc_free(ptr noundef nonnull %11) #14
  br label %31

29:                                               ; preds = %14, %1, %17
  %30 = tail call ptr @ggc_alloc_stat(i64 noundef %3) #15
  br label %31

31:                                               ; preds = %22, %28, %29
  %32 = phi ptr [ %24, %28 ], [ %24, %22 ], [ %30, %29 ]
  ret ptr %32
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = trunc i64 %1 to i32
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #14
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_def_ptr(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #14
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 1
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @ceil_log2(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_capacity(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_base_index(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !21
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !21
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !21
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_free(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3103, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_phi_node(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %0) #14
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %7 = trunc i64 %6 to i32
  %8 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %7) #14
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %8) #14
  %9 = add nuw nsw i64 %6, 1
  %10 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %5, label %13, !llvm.loop !23

13:                                               ; preds = %5, %1
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 9)
  %15 = zext nneg i32 %14 to i64
  %16 = add nsw i64 %15, -2
  %17 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %16
  tail call fastcc void @VEC_gimple_gc_safe_push(ptr noundef nonnull %17, ptr noundef %0) #14
  %18 = load i64, ptr @free_phinode_count, align 8, !tbaa !10
  %19 = add i64 %18, 1
  store i64 %19, ptr @free_phinode_count, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !25
  store ptr %2, ptr %6, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 {
  tail call fastcc void @VEC_gimple_gc_reserve(ptr noundef %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_reserve(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #15
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !21
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !21
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !26
  %6 = load i32, ptr %0, align 8, !tbaa !21
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reserve_phi_args_for_new_edge(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !27
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #14
  %5 = add i32 %4, 4
  %6 = tail call fastcc i32 @ideal_phi_node_len(i32 noundef %5) #14
  %7 = sext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %0) #15
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !29
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = add i32 %4, -1
  br label %12

12:                                               ; preds = %10, %22
  %13 = call fastcc ptr @gsi_stmt_ptr(ptr noundef nonnull %2) #14
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = call fastcc i32 @gimple_phi_capacity(ptr noundef %14) #14
  %16 = icmp ugt i32 %4, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  call fastcc void @resize_phi_node(ptr noundef nonnull %13, i64 noundef %7) #14
  %18 = load ptr, ptr %13, align 8, !tbaa !6
  %19 = call fastcc ptr @gimple_phi_result(ptr noundef %18) #14
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !12
  call void @release_phi_node(ptr noundef %14) #14
  %21 = load ptr, ptr %13, align 8, !tbaa !6
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ %21, %17 ], [ %14, %12 ]
  %24 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %23, i32 noundef %11) #14
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %24, ptr noundef null) #14
  %25 = load ptr, ptr %13, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.gimple_statement_phi, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !12
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !12
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !29
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %12, label %31, !llvm.loop !30

31:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !31
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_stmt_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @resize_phi_node(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %3) #14
  %5 = zext i32 %4 to i64
  %6 = icmp ult i64 %5, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 278, ptr noundef nonnull @.str.1) #15
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %3, %2 ], [ %8, %7 ]
  %11 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #14
  %12 = add i32 %11, -1
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 48
  %15 = add nuw nsw i64 %14, 96
  %16 = tail call fastcc ptr @allocate_phi_node(i64 noundef %1) #14
  %17 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %15, i1 false)
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %16) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %9, %20
  %21 = phi i64 [ %28, %20 ], [ 0, %9 ]
  %22 = trunc i64 %21 to i32
  %23 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %22) #14
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %24, i32 noundef %22) #14
  %26 = tail call fastcc ptr @gimple_phi_arg_def_ptr(ptr noundef %16, i64 noundef %21) #14
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %23, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !13
  tail call fastcc void @relink_imm_use_stmt(ptr noundef nonnull %23, ptr noundef nonnull %25, ptr noundef %16) #14
  %28 = add nuw nsw i64 %21, 1
  %29 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %16) #14
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %20, label %32, !llvm.loop !35

32:                                               ; preds = %20, %9
  %33 = trunc i64 %1 to i32
  %34 = getelementptr inbounds %struct.gimple_statement_phi, ptr %16, i64 0, i32 1
  store i32 %33, ptr %34, align 8, !tbaa !12
  %35 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %16) #14
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %36, %1
  br i1 %37, label %38, label %47

38:                                               ; preds = %32, %38
  %39 = phi i64 [ %45, %38 ], [ %36, %32 ]
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef %16, i64 noundef %39, i32 noundef 0) #14
  %40 = trunc i64 %39 to i32
  %41 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %40) #14
  %42 = tail call fastcc ptr @gimple_phi_arg_def_ptr(ptr noundef %16, i64 noundef %39) #14
  %43 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  store ptr %16, ptr %44, align 8, !tbaa !12
  %45 = add i64 %39, 1
  %46 = icmp eq i64 %45, %1
  br i1 %46, label %47, label %38, !llvm.loop !36

47:                                               ; preds = %38, %32
  store ptr %16, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  store ptr %1, ptr %4, align 8, !tbaa !6
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  store ptr %4, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @relink_imm_use_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @relink_imm_use(ptr noundef %0, ptr noundef %1) #14
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef null) #14
  br label %7

7:                                                ; preds = %6, %5
  %8 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @relink_imm_use(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %5, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 257, ptr noundef nonnull @.str.1) #15
  br label %11

11:                                               ; preds = %2, %10
  %12 = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %12, ptr %0, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !25
  %16 = icmp eq ptr %12, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 1
  store ptr %0, ptr %18, align 8, !tbaa !25
  %19 = load ptr, ptr %13, align 8, !tbaa !25
  store ptr %0, ptr %19, align 8, !tbaa !24
  store ptr null, ptr %1, align 8, !tbaa !24
  br label %20

20:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !24
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #14
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  store ptr %1, ptr %0, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !25
  store ptr %0, ptr %4, align 8, !tbaa !24
  store ptr %0, ptr %3, align 8, !tbaa !25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_phi_node_to_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @gimple_seq_alloc() #15
  tail call fastcc void @set_phi_nodes(ptr noundef %1, ptr noundef %7) #14
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #14
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %9) #14
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0) #15
  call void @gimple_set_bb(ptr noundef %0, ptr noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phi_nodes(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 523, ptr noundef nonnull @.str.1) #15
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %11, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !40
  %13 = icmp eq ptr %1, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #14
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14, !range !29
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %17
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14
  tail call void @gimple_set_bb(ptr noundef %18, ptr noundef %0) #15
  call fastcc void @gsi_next(ptr noundef nonnull %3) #14
  %19 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14, !range !29
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %17, label %21, !llvm.loop !42

21:                                               ; preds = %17, %14, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !43
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !43
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !33
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_phi_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !27
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #14
  %5 = tail call ptr @make_phi_node(ptr noundef %0, i32 noundef %4) #14
  tail call void @add_phi_node_to_bb(ptr noundef %5, ptr noundef nonnull %1) #14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_phi_arg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 395, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %4, %9
  %11 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %12 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %0) #14
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 399, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 403, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %15, %20
  %22 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !52
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %1, align 8
  %28 = or i64 %27, 4194304
  store i64 %28, ptr %1, align 8
  %29 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #14
  %30 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %29) #14
  %31 = load i64, ptr %30, align 8
  %32 = or i64 %31, 4194304
  store i64 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, ptr %16, align 4, !tbaa !51
  %35 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %34) #14
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %35, ptr noundef %1) #14
  %36 = load i32, ptr %16, align 4, !tbaa !51
  %37 = zext i32 %36 to i64
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %37, i32 noundef %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_phi_args(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #15
  %5 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !29
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %7, %9
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %11 = load i32, ptr %8, align 4, !tbaa !51
  call fastcc void @remove_phi_arg_num(ptr noundef %10, i32 noundef %11) #14
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %12 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !29
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %9, label %14, !llvm.loop !53

14:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_phi_arg_num(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 428, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) #14
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %7) #14
  %8 = add nsw i32 %3, -1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %8) #14
  %12 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) #14
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  store ptr %15, ptr %17, align 8, !tbaa !6
  tail call fastcc void @relink_imm_use(ptr noundef nonnull %12, ptr noundef nonnull %11) #14
  %18 = sext i32 %1 to i64
  %19 = sext i32 %8 to i64
  %20 = tail call fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %19) #14
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %18, i32 noundef %20) #14
  br label %21

21:                                               ; preds = %10, %6
  %22 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #14
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !18
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_phi_node(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  tail call void @insert_debug_temps_for_defs(ptr noundef %0) #15
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #15
  tail call void @release_phi_node(ptr noundef %3) #14
  %6 = tail call fastcc ptr @gimple_phi_result(ptr noundef %3) #14
  tail call void @release_ssa_name(ptr noundef %6) #15
  br label %8

7:                                                ; preds = %2
  tail call void @gsi_remove(ptr noundef %0, i8 noundef zeroext 0) #15
  tail call void @release_phi_node(ptr noundef %3) #14
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @insert_debug_temps_for_defs(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @release_ssa_name(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_phi_nodes(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #15
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !29
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1, %5
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #14
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !29
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %5, label %8, !llvm.loop !54

8:                                                ; preds = %5, %1
  call fastcc void @set_phi_nodes(ptr noundef %0, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !7, i64 24}
!14 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !20, i64 40}
!19 = !{!"phi_arg_d", !14, i64 0, !7, i64 32, !20, i64 40}
!20 = !{!"int", !8, i64 0}
!21 = !{!22, !20, i64 0}
!22 = !{!"VEC_gimple_base", !20, i64 0, !20, i64 4, !8, i64 8}
!23 = distinct !{!23, !16}
!24 = !{!14, !7, i64 0}
!25 = !{!14, !7, i64 8}
!26 = !{!22, !20, i64 4}
!27 = !{!28, !7, i64 0}
!28 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !11, i64 72, !20, i64 80, !20, i64 84, !20, i64 88, !20, i64 92, !20, i64 96}
!29 = !{i8 0, i8 2}
!30 = distinct !{!30, !16}
!31 = !{!32, !20, i64 0}
!32 = !{!"VEC_edge_base", !20, i64 0, !20, i64 4, !8, i64 8}
!33 = !{!34, !7, i64 0}
!34 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = !{!38, !7, i64 16}
!38 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!39 = !{!28, !20, i64 96}
!40 = !{!41, !7, i64 8}
!41 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!42 = distinct !{!42, !16}
!43 = !{!34, !7, i64 8}
!44 = !{!38, !7, i64 0}
!45 = !{!34, !7, i64 16}
!46 = !{!47, !7, i64 0}
!47 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!48 = !{!47, !7, i64 8}
!49 = !{!50, !7, i64 8}
!50 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !11, i64 56}
!51 = !{!50, !20, i64 44}
!52 = !{!50, !20, i64 48}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
