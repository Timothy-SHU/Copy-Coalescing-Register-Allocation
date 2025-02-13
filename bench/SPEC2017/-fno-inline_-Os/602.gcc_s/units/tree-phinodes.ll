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
define dso_local void @init_phinodes() local_unnamed_addr #0 !prof !144 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @free_phinodes, i8 0, i64 64, i1 false), !tbaa !145
  store i64 0, ptr @free_phinode_count, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @fini_phinodes() local_unnamed_addr #0 !prof !144 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @free_phinodes, i8 0, i64 64, i1 false), !tbaa !145
  store i64 0, ptr @free_phinode_count, align 8, !tbaa !149
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_phi_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !151 {
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
  store i32 %1, ptr %12, align 4, !tbaa !152
  %13 = getelementptr inbounds %struct.gimple_statement_phi, ptr %5, i64 0, i32 1
  store i32 %3, ptr %13, align 8, !tbaa !152
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %18, !prof !153

17:                                               ; preds = %2
  tail call fastcc void @gimple_phi_set_result(ptr noundef nonnull %5, ptr noundef nonnull %0) #14
  br label %20

18:                                               ; preds = %2
  %19 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  tail call fastcc void @gimple_phi_set_result(ptr noundef nonnull %5, ptr noundef %19) #14
  br label %20

20:                                               ; preds = %18, %17
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %22, label %33, !prof !154

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
  store ptr %28, ptr %29, align 8, !tbaa !155
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %27, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  store ptr %5, ptr %30, align 8, !tbaa !152
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !prof !157, !llvm.loop !158

33:                                               ; preds = %24, %20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ideal_phi_node_len(i32 noundef %0) unnamed_addr #2 !prof !160 !PGOFuncName !161 {
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
define internal fastcc ptr @allocate_phi_node(i64 noundef %0) unnamed_addr #2 !prof !162 !PGOFuncName !163 {
  %2 = mul i64 %0, 48
  %3 = add i64 %2, 48
  %4 = load i64, ptr @free_phinode_count, align 8, !tbaa !149
  %5 = icmp ne i64 %4, 0
  %6 = add nsw i64 %0, -2
  %7 = icmp ult i64 %6, 8
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %29, !prof !164

9:                                                ; preds = %1, %14
  %10 = phi i64 [ %15, %14 ], [ %6, %1 ]
  %11 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !145
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17, !prof !165

14:                                               ; preds = %9
  %15 = add i64 %10, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %29, label %9, !prof !166, !llvm.loop !167

17:                                               ; preds = %9
  %18 = tail call fastcc ptr @VEC_gimple_base_index(ptr noundef nonnull %12) #14
  %19 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %18) #14
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %20, %0
  br i1 %21, label %29, label %22, !prof !168

22:                                               ; preds = %17
  %23 = add i64 %4, -1
  store i64 %23, ptr @free_phinode_count, align 8, !tbaa !149
  %24 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef nonnull %12) #14
  %25 = load ptr, ptr %11, align 8, !tbaa !145
  %26 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %25) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31, !prof !169

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
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #4 !prof !151 !PGOFuncName !170 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !152
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !171 !PGOFuncName !172 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !145
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !173 !PGOFuncName !174 {
  %4 = trunc i64 %1 to i32
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #14
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !175
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !178 !PGOFuncName !179 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_def_ptr(ptr noundef %0, i64 noundef %1) unnamed_addr #2 !prof !180 !PGOFuncName !181 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #14
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 1
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @ceil_log2(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_capacity(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !182 !PGOFuncName !183 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !152
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_base_index(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !184 !PGOFuncName !185 {
  %2 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #7 !prof !184 !PGOFuncName !186 {
  %2 = load i32, ptr %0, align 8, !tbaa !187
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !187
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !184 !PGOFuncName !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !168

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !187
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_free(ptr nocapture noundef %0) unnamed_addr #2 !prof !190 !PGOFuncName !191 {
  %2 = load ptr, ptr %0, align 8, !tbaa !145
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !192

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !145
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !193 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !152
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !195

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
define dso_local void @release_phi_node(ptr noundef %0) local_unnamed_addr #2 !prof !196 {
  %2 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %0) #14
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5, !prof !197

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %7 = trunc i64 %6 to i32
  %8 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %7) #14
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %8) #14
  %9 = add nuw nsw i64 %6, 1
  %10 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %5, label %13, !prof !198, !llvm.loop !199

13:                                               ; preds = %5, %1
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 9)
  %15 = zext nneg i32 %14 to i64
  %16 = add nsw i64 %15, -2
  %17 = getelementptr inbounds [8 x ptr], ptr @free_phinodes, i64 0, i64 %16
  tail call fastcc void @VEC_gimple_gc_safe_push(ptr noundef nonnull %17, ptr noundef %0) #14
  %18 = load i64, ptr @free_phinode_count, align 8, !tbaa !149
  %19 = add i64 %18, 1
  store i64 %19, ptr @free_phinode_count, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !200 !PGOFuncName !201 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !152
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #8 !prof !202 !PGOFuncName !203 {
  %2 = load ptr, ptr %0, align 8, !tbaa !204
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !205

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !206
  store ptr %2, ptr %6, align 8, !tbaa !204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !196 !PGOFuncName !207 {
  tail call fastcc void @VEC_gimple_gc_reserve(ptr noundef %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !145
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_reserve(ptr nocapture noundef %0) unnamed_addr #2 !prof !196 !PGOFuncName !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !145
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !209

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #15
  store ptr %6, ptr %0, align 8, !tbaa !145
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !196 !PGOFuncName !210 {
  %3 = load i32, ptr %0, align 8, !tbaa !187
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !187
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !196 !PGOFuncName !211 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !212

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !213
  %6 = load i32, ptr %0, align 8, !tbaa !187
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
define dso_local void @reserve_phi_args_for_new_edge(ptr noundef %0) local_unnamed_addr #2 !prof !214 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #14
  %5 = add i32 %4, 4
  %6 = tail call fastcc i32 @ideal_phi_node_len(i32 noundef %5) #14
  %7 = sext i32 %6 to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %0) #15
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !217
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %31, !prof !218

10:                                               ; preds = %1
  %11 = add i32 %4, -1
  br label %12

12:                                               ; preds = %10, %22
  %13 = call fastcc ptr @gsi_stmt_ptr(ptr noundef nonnull %2) #14
  %14 = load ptr, ptr %13, align 8, !tbaa !145
  %15 = call fastcc i32 @gimple_phi_capacity(ptr noundef %14) #14
  %16 = icmp ugt i32 %4, %15
  br i1 %16, label %17, label %22, !prof !219

17:                                               ; preds = %12
  call fastcc void @resize_phi_node(ptr noundef nonnull %13, i64 noundef %7) #14
  %18 = load ptr, ptr %13, align 8, !tbaa !145
  %19 = call fastcc ptr @gimple_phi_result(ptr noundef %18) #14
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !152
  call void @release_phi_node(ptr noundef %14) #14
  %21 = load ptr, ptr %13, align 8, !tbaa !145
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ %21, %17 ], [ %14, %12 ]
  %24 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %23, i32 noundef %11) #14
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %24, ptr noundef null) #14
  %25 = load ptr, ptr %13, align 8, !tbaa !145
  %26 = getelementptr inbounds %struct.gimple_statement_phi, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !152
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !152
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !217
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %12, label %31, !prof !220, !llvm.loop !221

31:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !160 !PGOFuncName !222 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !223

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !224
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
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !226 !PGOFuncName !227 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_stmt_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !230 !PGOFuncName !231 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @resize_phi_node(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #2 !prof !232 !PGOFuncName !233 {
  %3 = load ptr, ptr %0, align 8, !tbaa !145
  %4 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %3) #14
  %5 = zext i32 %4 to i64
  %6 = icmp ult i64 %5, %1
  br i1 %6, label %9, label %7, !prof !234

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 278, ptr noundef nonnull @.str.1) #15
  %8 = load ptr, ptr %0, align 8, !tbaa !145
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %3, %2 ], [ %8, %7 ]
  %11 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %10) #14
  %12 = add i32 %11, -1
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 48
  %15 = add nuw nsw i64 %14, 96
  %16 = tail call fastcc ptr @allocate_phi_node(i64 noundef %1) #14
  %17 = load ptr, ptr %0, align 8, !tbaa !145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(1) %17, i64 %15, i1 false)
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %16) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20, !prof !235

20:                                               ; preds = %9, %20
  %21 = phi i64 [ %28, %20 ], [ 0, %9 ]
  %22 = trunc i64 %21 to i32
  %23 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %22) #14
  %24 = load ptr, ptr %0, align 8, !tbaa !145
  %25 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %24, i32 noundef %22) #14
  %26 = tail call fastcc ptr @gimple_phi_arg_def_ptr(ptr noundef %16, i64 noundef %21) #14
  %27 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %23, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !155
  tail call fastcc void @relink_imm_use_stmt(ptr noundef nonnull %23, ptr noundef nonnull %25, ptr noundef %16) #14
  %28 = add nuw nsw i64 %21, 1
  %29 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %16) #14
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %20, label %32, !prof !236, !llvm.loop !237

32:                                               ; preds = %20, %9
  %33 = trunc i64 %1 to i32
  %34 = getelementptr inbounds %struct.gimple_statement_phi, ptr %16, i64 0, i32 1
  store i32 %33, ptr %34, align 8, !tbaa !152
  %35 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %16) #14
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %36, %1
  br i1 %37, label %38, label %47, !prof !238

38:                                               ; preds = %32, %38
  %39 = phi i64 [ %45, %38 ], [ %36, %32 ]
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef %16, i64 noundef %39, i32 noundef 0) #14
  %40 = trunc i64 %39 to i32
  %41 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %40) #14
  %42 = tail call fastcc ptr @gimple_phi_arg_def_ptr(ptr noundef %16, i64 noundef %39) #14
  %43 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !155
  %44 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %41, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  store ptr %16, ptr %44, align 8, !tbaa !152
  %45 = add i64 %39, 1
  %46 = icmp eq i64 %45, %1
  br i1 %46, label %47, label %38, !prof !239, !llvm.loop !240

47:                                               ; preds = %38, %32
  store ptr %16, ptr %0, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !241 !PGOFuncName !242 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !243 !PGOFuncName !244 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  store ptr %1, ptr %4, align 8, !tbaa !145
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !245 !PGOFuncName !246 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  store ptr %4, ptr %0, align 8, !tbaa !228
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @relink_imm_use_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #2 !prof !249 !PGOFuncName !250 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5, !prof !251

5:                                                ; preds = %3
  tail call fastcc void @relink_imm_use(ptr noundef %0, ptr noundef %1) #14
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef null) #14
  br label %7

7:                                                ; preds = %6, %5
  %8 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !152
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @relink_imm_use(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 !prof !252 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = icmp eq ptr %5, %8
  br i1 %9, label %11, label %10, !prof !254

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 257, ptr noundef nonnull @.str.1) #15
  br label %11

11:                                               ; preds = %2, %10
  %12 = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %12, ptr %0, align 8, !tbaa !204
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !206
  %16 = icmp eq ptr %12, null
  br i1 %16, label %20, label %17, !prof !255

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 1
  store ptr %0, ptr %18, align 8, !tbaa !206
  %19 = load ptr, ptr %13, align 8, !tbaa !206
  store ptr %0, ptr %19, align 8, !tbaa !204
  store ptr null, ptr %1, align 8, !tbaa !204
  br label %20

20:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !243 !PGOFuncName !256 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !257

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !258

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !204
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #14
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !259 !PGOFuncName !260 {
  store ptr %1, ptr %0, align 8, !tbaa !204
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !206
  store ptr %0, ptr %4, align 8, !tbaa !204
  store ptr %0, ptr %3, align 8, !tbaa !206
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_phi_node_to_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !151 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !261

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
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !262 !PGOFuncName !263 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !264
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !265

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.1) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !266

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phi_nodes(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !269 !PGOFuncName !270 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !264
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !271

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 523, ptr noundef nonnull @.str.1) #15
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %11, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !267
  %13 = icmp eq ptr %1, null
  br i1 %13, label %21, label %14, !prof !272

14:                                               ; preds = %9
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #14
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14, !range !217
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21, !prof !273

17:                                               ; preds = %14, %17
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14
  tail call void @gimple_set_bb(ptr noundef %18, ptr noundef %0) #15
  call fastcc void @gsi_next(ptr noundef nonnull %3) #14
  %19 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #14, !range !217
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %17, label %21, !prof !274, !llvm.loop !275

21:                                               ; preds = %17, %14, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !151 !PGOFuncName !276 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !228
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !277
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !278

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !279
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !280

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !281
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !282 !PGOFuncName !283 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !228
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !277
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !284

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !279
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 !prof !285 !PGOFuncName !286 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !282 !PGOFuncName !287 {
  %2 = load ptr, ptr %0, align 8, !tbaa !288
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !290 !PGOFuncName !291 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !151 !PGOFuncName !292 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !293

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_phi_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !215
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #14
  %5 = tail call ptr @make_phi_node(ptr noundef %0, i32 noundef %4) #14
  tail call void @add_phi_node_to_bb(ptr noundef %5, ptr noundef nonnull %1) #14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_phi_arg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !prof !295 {
  %5 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !296
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #14
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %10, label %9, !prof !298

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 395, ptr noundef nonnull @.str.1) #15
  br label %10

10:                                               ; preds = %4, %9
  %11 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %12 = tail call fastcc i32 @gimple_phi_capacity(ptr noundef %0) #14
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %15, !prof !299

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 399, ptr noundef nonnull @.str.1) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !300
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %21, label %20, !prof !298

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 403, ptr noundef nonnull @.str.1) #15
  br label %21

21:                                               ; preds = %15, %20
  %22 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !301
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26, !prof !298

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
  %34 = load i32, ptr %16, align 4, !tbaa !300
  %35 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %34) #14
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %35, ptr noundef %1) #14
  %36 = load i32, ptr %16, align 4, !tbaa !300
  %37 = zext i32 %36 to i64
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %37, i32 noundef %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !302 !PGOFuncName !303 {
  %2 = load ptr, ptr %0, align 8, !tbaa !145
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #12 !prof !302 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_phi_args(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !305 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !296
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %4) #15
  %5 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !217
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14, !prof !306

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %7, %9
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %11 = load i32, ptr %8, align 4, !tbaa !300
  call fastcc void @remove_phi_arg_num(ptr noundef %10, i32 noundef %11) #14
  call fastcc void @gsi_next(ptr noundef nonnull %2) #14
  %12 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !217
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %9, label %14, !prof !307, !llvm.loop !308

14:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_phi_arg_num(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !309 !PGOFuncName !310 {
  %3 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #14
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %6, label %5, !prof !311

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 428, ptr noundef nonnull @.str.1) #15
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) #14
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %7) #14
  %8 = add nsw i32 %3, -1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %21, label %10, !prof !312

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %8) #14
  %12 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) #14
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  %16 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  store ptr %15, ptr %17, align 8, !tbaa !145
  tail call fastcc void @relink_imm_use(ptr noundef nonnull %12, ptr noundef nonnull %11) #14
  %18 = sext i32 %1 to i64
  %19 = sext i32 %8 to i64
  %20 = tail call fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %19) #14
  tail call fastcc void @gimple_phi_arg_set_location(ptr noundef %0, i64 noundef %18, i32 noundef %20) #14
  br label %21

21:                                               ; preds = %10, %6
  %22 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !152
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4, !tbaa !152
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #2 !prof !313 !PGOFuncName !314 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #14
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !175
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_phi_node(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 !prof !315 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %7, label %5, !prof !316

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
define dso_local void @remove_phi_nodes(ptr noundef %0) local_unnamed_addr #2 !prof !317 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #15
  %3 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !217
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8, !prof !318

5:                                                ; preds = %1, %5
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 1) #14
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !217
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %5, label %8, !prof !319, !llvm.loop !320

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!143}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!36 = !{ptr @make_phi_node, ptr @ideal_phi_node_len, i64 308676}
!37 = !{ptr @make_phi_node, ptr @allocate_phi_node, i64 308676}
!38 = !{ptr @make_phi_node, ptr @gimple_phi_set_result, i64 308676}
!39 = !{ptr @make_phi_node, ptr @make_ssa_name, i64 99036}
!40 = !{ptr @make_phi_node, ptr @gimple_phi_arg_set_location, i64 1388517}
!41 = !{ptr @make_phi_node, ptr @gimple_phi_arg_imm_use_ptr, i64 1388517}
!42 = !{ptr @make_phi_node, ptr @gimple_phi_arg_def_ptr, i64 1388517}
!43 = !{ptr @ideal_phi_node_len, ptr @ceil_log2, i64 940391}
!44 = !{ptr @allocate_phi_node, ptr @VEC_gimple_base_index, i64 127436}
!45 = !{ptr @allocate_phi_node, ptr @gimple_phi_capacity, i64 127436}
!46 = !{ptr @allocate_phi_node, ptr @VEC_gimple_base_pop, i64 127435}
!47 = !{ptr @allocate_phi_node, ptr @VEC_gimple_base_length, i64 127435}
!48 = !{ptr @allocate_phi_node, ptr @VEC_gimple_gc_free, i64 9468}
!49 = !{ptr @allocate_phi_node, ptr @ggc_alloc_stat, i64 197212}
!50 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 99036}
!51 = !{ptr @gimple_phi_arg_set_location, ptr @gimple_phi_arg, i64 3967931}
!52 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 7681273}
!53 = !{ptr @gimple_phi_arg_def_ptr, ptr @gimple_phi_arg, i64 1596114}
!54 = !{ptr @VEC_gimple_gc_free, ptr @ggc_free, i64 8780}
!55 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!56 = !{ptr @release_phi_node, ptr @gimple_phi_capacity, i64 222491}
!57 = !{ptr @release_phi_node, ptr @gimple_phi_num_args, i64 638690}
!58 = !{ptr @release_phi_node, ptr @gimple_phi_arg_imm_use_ptr, i64 416199}
!59 = !{ptr @release_phi_node, ptr @delink_imm_use, i64 416199}
!60 = !{ptr @release_phi_node, ptr @VEC_gimple_gc_safe_push, i64 222491}
!61 = !{ptr @VEC_gimple_gc_safe_push, ptr @VEC_gimple_gc_reserve, i64 222491}
!62 = !{ptr @VEC_gimple_gc_safe_push, ptr @VEC_gimple_base_quick_push, i64 222491}
!63 = !{ptr @VEC_gimple_gc_reserve, ptr @VEC_gimple_base_space, i64 222491}
!64 = !{ptr @VEC_gimple_gc_reserve, ptr @vec_gc_p_reserve, i64 30728}
!65 = !{ptr @reserve_phi_args_for_new_edge, ptr @VEC_edge_base_length, i64 631715}
!66 = !{ptr @reserve_phi_args_for_new_edge, ptr @ideal_phi_node_len, i64 631715}
!67 = !{ptr @reserve_phi_args_for_new_edge, ptr @gsi_start_phis, i64 631715}
!68 = !{ptr @reserve_phi_args_for_new_edge, ptr @gsi_end_p, i64 1681913}
!69 = !{ptr @reserve_phi_args_for_new_edge, ptr @gsi_stmt_ptr, i64 1050198}
!70 = !{ptr @reserve_phi_args_for_new_edge, ptr @gimple_phi_capacity, i64 1050198}
!71 = !{ptr @reserve_phi_args_for_new_edge, ptr @resize_phi_node, i64 15972}
!72 = !{ptr @reserve_phi_args_for_new_edge, ptr @gimple_phi_result, i64 15972}
!73 = !{ptr @reserve_phi_args_for_new_edge, ptr @release_phi_node, i64 15972}
!74 = !{ptr @reserve_phi_args_for_new_edge, ptr @gimple_phi_arg_imm_use_ptr, i64 1050198}
!75 = !{ptr @reserve_phi_args_for_new_edge, ptr @set_ssa_use_from_ptr, i64 1050198}
!76 = !{ptr @reserve_phi_args_for_new_edge, ptr @gsi_next, i64 1050198}
!77 = !{ptr @resize_phi_node, ptr @gimple_phi_capacity, i64 15971}
!78 = !{ptr @resize_phi_node, ptr @fancy_abort, i64 1}
!79 = !{ptr @resize_phi_node, ptr @gimple_phi_num_args, i64 142753}
!80 = !{ptr @resize_phi_node, ptr @allocate_phi_node, i64 15971}
!81 = !{ptr @resize_phi_node, ptr @gimple_phi_arg_imm_use_ptr, i64 302423}
!82 = !{ptr @resize_phi_node, ptr @gimple_phi_arg_def_ptr, i64 207583}
!83 = !{ptr @resize_phi_node, ptr @relink_imm_use_stmt, i64 94840}
!84 = !{ptr @resize_phi_node, ptr @gimple_phi_arg_set_location, i64 112743}
!85 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 2538558}
!86 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 2538558}
!87 = !{ptr @relink_imm_use_stmt, ptr @relink_imm_use, i64 94844}
!88 = !{ptr @relink_imm_use_stmt, ptr @link_imm_use, i64 1}
!89 = !{ptr @relink_imm_use, ptr @fancy_abort, i64 1}
!90 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 1263883}
!91 = !{ptr @add_phi_node_to_bb, ptr @phi_nodes, i64 617352}
!92 = !{ptr @add_phi_node_to_bb, ptr @gimple_seq_alloc, i64 174936}
!93 = !{ptr @add_phi_node_to_bb, ptr @set_phi_nodes, i64 174936}
!94 = !{ptr @add_phi_node_to_bb, ptr @gsi_last, i64 308676}
!95 = !{ptr @add_phi_node_to_bb, ptr @gsi_insert_after, i64 308676}
!96 = !{ptr @add_phi_node_to_bb, ptr @gimple_set_bb, i64 308676}
!97 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!98 = !{ptr @set_phi_nodes, ptr @fancy_abort, i64 1}
!99 = !{ptr @set_phi_nodes, ptr @gsi_start, i64 174936}
!100 = !{ptr @set_phi_nodes, ptr @gsi_end_p, i64 174937}
!101 = !{ptr @set_phi_nodes, ptr @gsi_stmt, i64 1}
!102 = !{ptr @set_phi_nodes, ptr @gimple_set_bb, i64 1}
!103 = !{ptr @set_phi_nodes, ptr @gsi_next, i64 1}
!104 = !{ptr @gsi_last, ptr @gimple_seq_last, i64 308676}
!105 = !{ptr @gsi_last, ptr @gimple_bb, i64 133134}
!106 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 174936}
!107 = !{ptr @gsi_start, ptr @gimple_bb, i64 1}
!108 = !{ptr @create_phi_node, ptr @VEC_edge_base_length, i64 308676}
!109 = !{ptr @create_phi_node, ptr @make_phi_node, i64 308676}
!110 = !{ptr @create_phi_node, ptr @add_phi_node_to_bb, i64 308676}
!111 = !{ptr @add_phi_arg, ptr @gimple_bb, i64 1488359}
!112 = !{ptr @add_phi_arg, ptr @fancy_abort, i64 3}
!113 = !{ptr @add_phi_arg, ptr @gimple_phi_num_args, i64 2976718}
!114 = !{ptr @add_phi_arg, ptr @gimple_phi_capacity, i64 1488359}
!115 = !{ptr @add_phi_arg, ptr @gimple_phi_result_ptr, i64 1}
!116 = !{ptr @add_phi_arg, ptr @get_def_from_ptr, i64 1}
!117 = !{ptr @add_phi_arg, ptr @gimple_phi_arg_imm_use_ptr, i64 1488359}
!118 = !{ptr @add_phi_arg, ptr @set_ssa_use_from_ptr, i64 1488359}
!119 = !{ptr @add_phi_arg, ptr @gimple_phi_arg_set_location, i64 1488359}
!120 = !{ptr @remove_phi_args, ptr @gsi_start_phis, i64 641386}
!121 = !{ptr @remove_phi_args, ptr @gsi_end_p, i64 1720335}
!122 = !{ptr @remove_phi_args, ptr @gsi_stmt, i64 1078949}
!123 = !{ptr @remove_phi_args, ptr @remove_phi_arg_num, i64 1078949}
!124 = !{ptr @remove_phi_args, ptr @gsi_next, i64 1078949}
!125 = !{ptr @remove_phi_arg_num, ptr @gimple_phi_num_args, i64 1078950}
!126 = !{ptr @remove_phi_arg_num, ptr @fancy_abort, i64 1}
!127 = !{ptr @remove_phi_arg_num, ptr @gimple_phi_arg_imm_use_ptr, i64 3035554}
!128 = !{ptr @remove_phi_arg_num, ptr @delink_imm_use, i64 1078950}
!129 = !{ptr @remove_phi_arg_num, ptr @relink_imm_use, i64 978302}
!130 = !{ptr @remove_phi_arg_num, ptr @gimple_phi_arg_location, i64 978302}
!131 = !{ptr @remove_phi_arg_num, ptr @gimple_phi_arg_set_location, i64 978302}
!132 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 978303}
!133 = !{ptr @remove_phi_node, ptr @gsi_stmt, i64 206485}
!134 = !{ptr @remove_phi_node, ptr @insert_debug_temps_for_defs, i64 203195}
!135 = !{ptr @remove_phi_node, ptr @gsi_remove, i64 206485}
!136 = !{ptr @remove_phi_node, ptr @release_phi_node, i64 206485}
!137 = !{ptr @remove_phi_node, ptr @gimple_phi_result, i64 203195}
!138 = !{ptr @remove_phi_node, ptr @release_ssa_name, i64 203195}
!139 = !{ptr @remove_phi_nodes, ptr @gsi_start_phis, i64 389116}
!140 = !{ptr @remove_phi_nodes, ptr @gsi_end_p, i64 403438}
!141 = !{ptr @remove_phi_nodes, ptr @remove_phi_node, i64 14322}
!142 = !{ptr @remove_phi_nodes, ptr @set_phi_nodes, i64 389116}
!143 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!144 = !{!"function_entry_count", i64 10775}
!145 = !{!146, !146, i64 0}
!146 = !{!"any pointer", !147, i64 0}
!147 = !{!"omnipotent char", !148, i64 0}
!148 = !{!"Simple C/C++ TBAA"}
!149 = !{!150, !150, i64 0}
!150 = !{!"long", !147, i64 0}
!151 = !{!"function_entry_count", i64 308676}
!152 = !{!147, !147, i64 0}
!153 = !{!"branch_weights", i32 209641, i32 99037}
!154 = !{!"branch_weights", i32 308676, i32 1}
!155 = !{!156, !146, i64 24}
!156 = !{!"ssa_use_operand_d", !146, i64 0, !146, i64 8, !147, i64 16, !146, i64 24}
!157 = !{!"branch_weights", i32 308676, i32 1079845}
!158 = distinct !{!158, !159}
!159 = !{!"llvm.loop.mustprogress"}
!160 = !{!"function_entry_count", i64 940391}
!161 = !{!"tree-phinodes.c:ideal_phi_node_len"}
!162 = !{!"function_entry_count", i64 324647}
!163 = !{!"tree-phinodes.c:allocate_phi_node"}
!164 = !{!"branch_weights", i32 1459205790, i32 -2095054207}
!165 = !{!"branch_weights", i32 23690, i32 118207}
!166 = !{!"branch_weights", i32 11270, i32 130626}
!167 = distinct !{!167, !159}
!168 = !{!"branch_weights", i32 1, i32 118207}
!169 = !{!"branch_weights", i32 8782, i32 109426}
!170 = !{!"tree-phinodes.c:gimple_phi_set_result"}
!171 = !{!"function_entry_count", i64 99036}
!172 = !{!"tree-phinodes.c:make_ssa_name"}
!173 = !{!"function_entry_count", i64 3967931}
!174 = !{!"tree-phinodes.c:gimple_phi_arg_set_location"}
!175 = !{!176, !177, i64 40}
!176 = !{!"phi_arg_d", !156, i64 0, !146, i64 32, !177, i64 40}
!177 = !{!"int", !147, i64 0}
!178 = !{!"function_entry_count", i64 7681273}
!179 = !{!"tree-phinodes.c:gimple_phi_arg_imm_use_ptr"}
!180 = !{!"function_entry_count", i64 1596114}
!181 = !{!"tree-phinodes.c:gimple_phi_arg_def_ptr"}
!182 = !{!"function_entry_count", i64 2895226}
!183 = !{!"tree-phinodes.c:gimple_phi_capacity"}
!184 = !{!"function_entry_count", i64 118206}
!185 = !{!"tree-phinodes.c:VEC_gimple_base_index"}
!186 = !{!"tree-phinodes.c:VEC_gimple_base_pop"}
!187 = !{!188, !177, i64 0}
!188 = !{!"VEC_gimple_base", !177, i64 0, !177, i64 4, !147, i64 8}
!189 = !{!"tree-phinodes.c:VEC_gimple_base_length"}
!190 = !{!"function_entry_count", i64 8781}
!191 = !{!"tree-phinodes.c:VEC_gimple_gc_free"}
!192 = !{!"branch_weights", i32 1, i32 8782}
!193 = !{!"function_entry_count", i64 14223621}
!194 = !{!"tree-phinodes.c:gimple_phi_arg"}
!195 = !{!"branch_weights", i32 1, i32 14223622}
!196 = !{!"function_entry_count", i64 222491}
!197 = !{!"branch_weights", i32 1, i32 222491}
!198 = !{!"branch_weights", i32 193710, i32 222491}
!199 = distinct !{!199, !159}
!200 = !{!"function_entry_count", i64 4837117}
!201 = !{!"tree-phinodes.c:gimple_phi_num_args"}
!202 = !{!"function_entry_count", i64 4033708}
!203 = !{!"tree-phinodes.c:delink_imm_use"}
!204 = !{!156, !146, i64 0}
!205 = !{!"branch_weights", i32 2937861, i32 1095849}
!206 = !{!156, !146, i64 8}
!207 = !{!"tree-phinodes.c:VEC_gimple_gc_safe_push"}
!208 = !{!"tree-phinodes.c:VEC_gimple_gc_reserve"}
!209 = !{!"branch_weights", i32 30728, i32 191765}
!210 = !{!"tree-phinodes.c:VEC_gimple_base_quick_push"}
!211 = !{!"tree-phinodes.c:VEC_gimple_base_space"}
!212 = !{!"branch_weights", i32 16422, i32 206071}
!213 = !{!188, !177, i64 4}
!214 = !{!"function_entry_count", i64 631715}
!215 = !{!216, !146, i64 0}
!216 = !{!"basic_block_def", !146, i64 0, !146, i64 8, !146, i64 16, !146, i64 24, !147, i64 32, !146, i64 48, !146, i64 56, !147, i64 64, !150, i64 72, !177, i64 80, !177, i64 84, !177, i64 88, !177, i64 92, !177, i64 96}
!217 = !{i8 0, i8 2}
!218 = !{!"branch_weights", i32 631715, i32 1}
!219 = !{!"branch_weights", i32 15972, i32 1034229}
!220 = !{!"branch_weights", i32 418485, i32 631715}
!221 = distinct !{!221, !159}
!222 = !{!"tree-phinodes.c:VEC_edge_base_length"}
!223 = !{!"branch_weights", i32 49461, i32 890932}
!224 = !{!225, !177, i64 0}
!225 = !{!"VEC_edge_base", !177, i64 0, !177, i64 4, !147, i64 8}
!226 = !{!"function_entry_count", i64 3980623}
!227 = !{!"tree-phinodes.c:gsi_end_p"}
!228 = !{!229, !146, i64 0}
!229 = !{!"", !146, i64 0, !146, i64 8, !146, i64 16}
!230 = !{!"function_entry_count", i64 1050199}
!231 = !{!"tree-phinodes.c:gsi_stmt_ptr"}
!232 = !{!"function_entry_count", i64 15971}
!233 = !{!"tree-phinodes.c:resize_phi_node"}
!234 = !{!"branch_weights", i32 15972, i32 1}
!235 = !{!"branch_weights", i32 1, i32 15971}
!236 = !{!"branch_weights", i32 78875, i32 15971}
!237 = distinct !{!237, !159}
!238 = !{!"branch_weights", i32 15971, i32 1}
!239 = !{!"branch_weights", i32 15971, i32 96779}
!240 = distinct !{!240, !159}
!241 = !{!"function_entry_count", i64 219167}
!242 = !{!"tree-phinodes.c:gimple_phi_result"}
!243 = !{!"function_entry_count", i64 2538558}
!244 = !{!"tree-phinodes.c:set_ssa_use_from_ptr"}
!245 = !{!"function_entry_count", i64 2129149}
!246 = !{!"tree-phinodes.c:gsi_next"}
!247 = !{!248, !146, i64 16}
!248 = !{!"gimple_seq_node_d", !146, i64 0, !146, i64 8, !146, i64 16}
!249 = !{!"function_entry_count", i64 94845}
!250 = !{!"tree-phinodes.c:relink_imm_use_stmt"}
!251 = !{!"branch_weights", i32 1, i32 94846}
!252 = !{!"function_entry_count", i64 1073148}
!253 = !{!"tree-phinodes.c:relink_imm_use"}
!254 = !{!"branch_weights", i32 1073149, i32 1}
!255 = !{!"branch_weights", i32 534844, i32 538306}
!256 = !{!"tree-phinodes.c:link_imm_use"}
!257 = !{!"branch_weights", i32 1050200, i32 1488360}
!258 = !{!"branch_weights", i32 1263885, i32 224476}
!259 = !{!"function_entry_count", i64 1263884}
!260 = !{!"tree-phinodes.c:link_imm_use_to_list"}
!261 = !{!"branch_weights", i32 174937, i32 133741}
!262 = !{!"function_entry_count", i64 617352}
!263 = !{!"tree-phinodes.c:phi_nodes"}
!264 = !{!216, !177, i64 96}
!265 = !{!"branch_weights", i32 617353, i32 1}
!266 = !{!"branch_weights", i32 1, i32 617353}
!267 = !{!268, !146, i64 8}
!268 = !{!"gimple_bb_info", !146, i64 0, !146, i64 8}
!269 = !{!"function_entry_count", i64 564052}
!270 = !{!"tree-phinodes.c:set_phi_nodes"}
!271 = !{!"branch_weights", i32 564053, i32 1}
!272 = !{!"branch_weights", i32 389117, i32 174937}
!273 = !{!"branch_weights", i32 1, i32 174936}
!274 = !{!"branch_weights", i32 0, i32 1}
!275 = distinct !{!275, !159}
!276 = !{!"tree-phinodes.c:gsi_last"}
!277 = !{!229, !146, i64 8}
!278 = !{!"branch_weights", i32 175542, i32 133136}
!279 = !{!248, !146, i64 0}
!280 = !{!"branch_weights", i32 1, i32 133136}
!281 = !{!229, !146, i64 16}
!282 = !{!"function_entry_count", i64 174936}
!283 = !{!"tree-phinodes.c:gsi_start"}
!284 = !{!"branch_weights", i32 174937, i32 1}
!285 = !{!"function_entry_count", i64 1285435}
!286 = !{!"tree-phinodes.c:gsi_stmt"}
!287 = !{!"tree-phinodes.c:gimple_seq_first"}
!288 = !{!289, !146, i64 0}
!289 = !{!"gimple_seq_d", !146, i64 0, !146, i64 8, !146, i64 16}
!290 = !{!"function_entry_count", i64 1621494}
!291 = !{!"tree-phinodes.c:gimple_bb"}
!292 = !{!"tree-phinodes.c:gimple_seq_last"}
!293 = !{!"branch_weights", i32 1, i32 308677}
!294 = !{!289, !146, i64 8}
!295 = !{!"function_entry_count", i64 1488359}
!296 = !{!297, !146, i64 8}
!297 = !{!"edge_def", !146, i64 0, !146, i64 8, !147, i64 16, !146, i64 24, !146, i64 32, !177, i64 40, !177, i64 44, !177, i64 48, !177, i64 52, !150, i64 56}
!298 = !{!"branch_weights", i32 1488360, i32 1}
!299 = !{!"branch_weights", i32 1, i32 1488360}
!300 = !{!297, !177, i64 44}
!301 = !{!297, !177, i64 48}
!302 = !{!"function_entry_count", i64 0}
!303 = !{!"tree-phinodes.c:get_def_from_ptr"}
!304 = !{!"tree-phinodes.c:gimple_phi_result_ptr"}
!305 = !{!"function_entry_count", i64 641386}
!306 = !{!"branch_weights", i32 641386, i32 1}
!307 = !{!"branch_weights", i32 437565, i32 641386}
!308 = distinct !{!308, !159}
!309 = !{!"function_entry_count", i64 1078950}
!310 = !{!"tree-phinodes.c:remove_phi_arg_num"}
!311 = !{!"branch_weights", i32 1078951, i32 1}
!312 = !{!"branch_weights", i32 100648, i32 978304}
!313 = !{!"function_entry_count", i64 978303}
!314 = !{!"tree-phinodes.c:gimple_phi_arg_location"}
!315 = !{!"function_entry_count", i64 206485}
!316 = !{!"branch_weights", i32 3290, i32 203197}
!317 = !{!"function_entry_count", i64 389116}
!318 = !{!"branch_weights", i32 14322, i32 374795}
!319 = !{!"branch_weights", i32 0, i32 14322}
!320 = distinct !{!320, !159}
