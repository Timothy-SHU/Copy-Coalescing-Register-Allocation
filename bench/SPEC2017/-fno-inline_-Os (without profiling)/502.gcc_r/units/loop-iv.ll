; ModuleID = 'loop-iv.c'
source_filename = "loop-iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtx_iv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_rd_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.niter_desc = type { ptr, ptr, i8, i8, i64, i64, ptr, ptr, ptr, i8, i32, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.df_link = type { ptr, ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.biv_entry = type { i32, %struct.rtx_iv }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [11 x i8] c"not simple\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"invariant \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" * iteration\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" (in %s)\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c" %s to %s\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" (first special)\00", align 1
@current_loop = internal unnamed_addr global ptr null, align 8
@clean_slate = internal unnamed_addr global i1 false, align 1
@bivs = internal unnamed_addr global ptr null, align 8
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"loop-iv.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@iv_ref_table = internal unnamed_addr global ptr null, align 8
@iv_ref_table_size = internal unnamed_addr global i32 0, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"Loop %d is simple:\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"  simple exit %d -> %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"  assumptions: \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"  does not roll if: \00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"  infinite if: \00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"  number of iterations: \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"  upper bound: \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Loop %d is not simple.\0A\00", align 1
@flag_tree_loop_optimize = external local_unnamed_addr global i32, align 4
@warn_unsafe_loop_optimizations = external local_unnamed_addr global i32, align 4
@flag_unsafe_loop_optimizations = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [39 x i8] c"assuming that the loop is not infinite\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"cannot optimize possibly infinite loops\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"assuming that the loop counter does not overflow\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"cannot optimize loop, the loop counter may overflow\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Analyzing operand \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c" of insn \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"  not simple.\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Analyzing def of \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c" in insn \00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"  already analysed.\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"  is \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Analyzing \00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c" for bivness.\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@reg_obstack = external global %struct.bitmap_obstack, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@.str.36 = private unnamed_addr constant [33 x i8] c";; improved upper bound by one.\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_iv_info(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 10, i64 1, ptr %0)
  br label %73

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 10, i64 1, ptr %0)
  %19 = load ptr, ptr %1, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %17, %12, %7
  %21 = phi ptr [ %19, %17 ], [ %3, %12 ], [ %3, %7 ]
  tail call void @print_rtl(ptr noundef %0, ptr noundef %21) #15
  %22 = load ptr, ptr %8, align 8, !tbaa !11
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %0)
  %27 = load ptr, ptr %8, align 8, !tbaa !11
  tail call void @print_rtl(ptr noundef %0, ptr noundef %27) #15
  %28 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 12, i64 1, ptr %0)
  br label %29

29:                                               ; preds = %25, %20
  %30 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %34) #16
  %36 = load i32, ptr %30, align 4, !tbaa !13
  %37 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !14
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !15
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !12
  %46 = zext i32 %38 to i64
  %47 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %45, ptr noundef %48) #16
  br label %50

50:                                               ; preds = %40, %29
  %51 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  %53 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 3, i64 1, ptr %0)
  %57 = load ptr, ptr %51, align 8, !tbaa !16
  tail call void @print_rtl(ptr noundef %0, ptr noundef %57) #15
  br label %58

58:                                               ; preds = %55, %50
  %59 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %0)
  %65 = load ptr, ptr %59, align 8, !tbaa !17
  tail call void @print_rtl(ptr noundef %0, ptr noundef %65) #15
  br label %66

66:                                               ; preds = %63, %58
  %67 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %68 = load i8, ptr %67, align 8
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %0)
  br label %73

73:                                               ; preds = %5, %71, %66
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lowpart_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %2) #15
  %5 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %4) #15
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iv_analysis_loop_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #15
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #15
  store ptr %0, ptr @current_loop, align 8, !tbaa !12
  %4 = load i1, ptr @clean_slate, align 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @df_set_flags(i32 noundef 36) #15
  %7 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @biv_hash, ptr noundef nonnull @biv_eq, ptr noundef nonnull @free) #15
  store ptr %7, ptr @bivs, align 8, !tbaa !12
  store i1 true, ptr @clean_slate, align 1
  br label %9

8:                                                ; preds = %1
  tail call fastcc void @clear_iv_info() #16
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %20, %13 ], [ 0, %9 ]
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !23
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %18) #15
  %20 = add nuw nsw i64 %14, 1
  %21 = load i32, ptr %10, align 4, !tbaa !18
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %13, label %24, !llvm.loop !25

24:                                               ; preds = %13, %9
  %25 = load ptr, ptr @df, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 1, i64 4
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  tail call void @df_remove_problem(ptr noundef %27) #15
  tail call void @df_process_deferred_rescans() #15
  tail call void @df_chain_add_problem(i32 noundef 2) #15
  tail call void @df_note_add_problem() #15
  tail call void @df_set_blocks(ptr noundef %3) #15
  tail call void @df_analyze() #15
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @df_dump_region(ptr noundef nonnull %28) #15
  br label %31

31:                                               ; preds = %30, %24
  tail call fastcc void @check_iv_ref_table_size() #16
  tail call void @bitmap_obstack_free(ptr noundef %3) #15
  tail call void @free(ptr noundef %2) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @biv_hash(ptr nocapture noundef readonly %0) #4 {
  %2 = load i32, ptr %0, align 8, !tbaa !27
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @biv_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !27
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #16
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_iv_info() unnamed_addr #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 3, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !29
  tail call fastcc void @check_iv_ref_table_size() #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @iv_ref_table, align 8, !tbaa !12
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %5, %14
  %9 = phi i64 [ 0, %5 ], [ %15, %14 ]
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %11) #16
  store ptr null, ptr %10, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %17, label %8, !llvm.loop !32

17:                                               ; preds = %14, %0
  %18 = load ptr, ptr @bivs, align 8, !tbaa !12
  tail call void @htab_empty(ptr noundef %18) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_remove_problem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_process_deferred_rescans() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_set_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_iv_ref_table_size() unnamed_addr #0 {
  %1 = load i32, ptr @iv_ref_table_size, align 4, !tbaa !33
  %2 = load ptr, ptr @df, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !29
  %5 = icmp ult i32 %1, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = lshr i32 %4, 2
  %8 = add i32 %7, %4
  %9 = load ptr, ptr @iv_ref_table, align 8, !tbaa !12
  %10 = zext i32 %8 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = tail call ptr @xrealloc(ptr noundef %9, i64 noundef %11) #15
  store ptr %12, ptr @iv_ref_table, align 8, !tbaa !12
  %13 = load i32, ptr @iv_ref_table_size, align 4, !tbaa !33
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = sub i32 %8, %13
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  store i32 %8, ptr @iv_ref_table_size, align 4, !tbaa !33
  br label %19

19:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @iv_analyze_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rtx_iv, align 8
  %6 = alloca %struct.rtx_iv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 6
  store i32 0, ptr %9, align 4, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %10 = load i32, ptr %1, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %2
  %14 = icmp eq i32 %12, 0
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 938, ptr noundef nonnull @.str.9) #15
  %17 = load i32, ptr %1, align 8
  br label %18

18:                                               ; preds = %4, %16
  %19 = phi i32 [ %10, %4 ], [ %17, %16 ]
  %20 = and i32 %19, 65535
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !33
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = icmp eq i32 %20, 37
  %27 = icmp eq i32 %8, 39
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25, %18
  %30 = tail call fastcc zeroext i8 @iv_analyze_op(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #16, !range !34
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %118, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %9, align 4, !tbaa !13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %118

35:                                               ; preds = %32
  store i32 %2, ptr %9, align 4, !tbaa !13
  %36 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 5
  store i32 %2, ptr %36, align 8, !tbaa !14
  br label %118

37:                                               ; preds = %25
  %38 = trunc i32 %7 to i16
  switch i16 %38, label %118 [
    i16 37, label %85
    i16 98, label %39
    i16 99, label %39
    i16 51, label %39
    i16 49, label %45
    i16 50, label %45
    i16 52, label %50
    i16 65, label %69
  ]

39:                                               ; preds = %37, %37, %37
  %40 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  br label %85

45:                                               ; preds = %37, %37
  %46 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  br label %80

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !33
  %60 = icmp eq i32 %59, 9
  %61 = select i1 %60, ptr %54, ptr %52
  %62 = select i1 %60, ptr %52, ptr %54
  %63 = load i32, ptr %61, align 8
  %64 = and i32 %63, 65535
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !33
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %80, label %118

69:                                               ; preds = %37
  %70 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !33
  %79 = icmp eq i32 %78, 9
  br i1 %79, label %80, label %118

80:                                               ; preds = %69, %50, %45
  %81 = phi ptr [ %73, %69 ], [ %61, %50 ], [ null, %45 ]
  %82 = phi ptr [ %71, %69 ], [ %62, %50 ], [ %47, %45 ]
  %83 = phi ptr [ null, %69 ], [ null, %50 ], [ %49, %45 ]
  %84 = icmp eq ptr %82, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %37, %39, %80
  %86 = phi i32 [ %2, %80 ], [ %2, %37 ], [ %44, %39 ]
  %87 = phi ptr [ %83, %80 ], [ null, %37 ], [ null, %39 ]
  %88 = phi ptr [ %82, %80 ], [ %1, %37 ], [ %41, %39 ]
  %89 = phi ptr [ %81, %80 ], [ null, %37 ], [ null, %39 ]
  %90 = call zeroext i8 @iv_analyze_expr(ptr noundef %0, ptr noundef nonnull %88, i32 noundef %86, ptr noundef nonnull %5) #16, !range !34
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %85, %80
  %93 = phi i32 [ %86, %85 ], [ %2, %80 ]
  %94 = phi ptr [ %87, %85 ], [ %83, %80 ]
  %95 = phi ptr [ %89, %85 ], [ %81, %80 ]
  %96 = icmp eq ptr %94, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = call zeroext i8 @iv_analyze_expr(ptr noundef %0, ptr noundef nonnull %94, i32 noundef %93, ptr noundef nonnull %6) #16, !range !34
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %97, %92
  switch i16 %38, label %114 [
    i16 98, label %101
    i16 99, label %101
    i16 51, label %104
    i16 49, label %105
    i16 50, label %105
    i16 52, label %108
    i16 65, label %111
  ]

101:                                              ; preds = %100, %100
  %102 = call fastcc zeroext i8 @iv_extend(ptr noundef nonnull %5, i32 noundef %8, i32 noundef %2) #16, !range !34
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %118, label %114

104:                                              ; preds = %100
  call fastcc void @iv_neg(ptr noundef nonnull %5) #16
  br label %114

105:                                              ; preds = %100, %100
  %106 = call fastcc zeroext i8 @iv_add(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %8) #16, !range !34
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %118, label %114

108:                                              ; preds = %100
  %109 = call fastcc zeroext i8 @iv_mult(ptr noundef nonnull %5, ptr noundef %95) #16, !range !34
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %118, label %114

111:                                              ; preds = %100
  %112 = call fastcc zeroext i8 @iv_shift(ptr noundef nonnull %5, ptr noundef %95) #16, !range !34
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %104, %100, %111, %108, %105, %101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !36
  %115 = load ptr, ptr %3, align 8, !tbaa !5
  %116 = icmp ne ptr %115, null
  %117 = zext i1 %116 to i8
  br label %118

118:                                              ; preds = %111, %108, %105, %101, %97, %85, %37, %69, %50, %32, %35, %29, %114
  %119 = phi i8 [ %117, %114 ], [ 0, %29 ], [ 1, %35 ], [ 1, %32 ], [ 0, %50 ], [ 0, %69 ], [ 0, %37 ], [ 0, %85 ], [ 0, %97 ], [ 0, %101 ], [ 0, %105 ], [ 0, %108 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  ret i8 %119
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @iv_analyze_op(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !12
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 18, i64 1, ptr nonnull %5)
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_rtl(ptr noundef %9, ptr noundef %1) #15
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %11 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 9, i64 1, ptr %10)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %13 = tail call i32 @print_rtl_single(ptr noundef %12, ptr noundef %0) #15
  br label %14

14:                                               ; preds = %7, %3
  %15 = tail call i32 @function_invariant_p(ptr noundef %1) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 39
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %1) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = tail call fastcc zeroext i8 @iv_analyze_op(ptr noundef %0, ptr noundef %26, ptr noundef %2) #16, !range !34
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %1, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = tail call fastcc zeroext i8 @iv_subreg(ptr noundef %2, i32 noundef %32) #16, !range !34
  br label %54

34:                                               ; preds = %17
  %35 = call fastcc i32 @iv_get_reaching_def(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #16, !range !37
  switch i32 %35, label %51 [
    i32 0, label %36
    i32 1, label %41
    i32 2, label %49
  ]

36:                                               ; preds = %34
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr nonnull %37)
  br label %54

41:                                               ; preds = %34, %14
  tail call fastcc void @iv_constant(ptr noundef %2, ptr noundef %1) #16
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 2, i64 1, ptr nonnull %42)
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @dump_iv_info(ptr noundef %46, ptr noundef %2) #16
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %48 = tail call i32 @fputc(i32 10, ptr %47)
  br label %54

49:                                               ; preds = %34
  %50 = tail call fastcc zeroext i8 @iv_analyze_biv(ptr noundef nonnull %1, ptr noundef %2) #16, !range !34
  br label %54

51:                                               ; preds = %34
  %52 = load ptr, ptr %4, align 8, !tbaa !12
  %53 = tail call fastcc zeroext i8 @iv_analyze_def(ptr noundef %52, ptr noundef %2) #16, !range !34
  br label %54

54:                                               ; preds = %41, %44, %36, %39, %24, %21, %51, %49, %29
  %55 = phi i8 [ %50, %49 ], [ %53, %51 ], [ %33, %29 ], [ 0, %21 ], [ 0, %24 ], [ 0, %39 ], [ 0, %36 ], [ 1, %44 ], [ 1, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @iv_extend(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = tail call ptr @get_iv_value(ptr noundef nonnull %0, ptr noundef %5) #16
  %15 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !14
  %17 = tail call ptr @simplify_gen_unary(i32 noundef %1, i32 noundef %2, ptr noundef %14, i32 noundef %16) #15
  store ptr %17, ptr %0, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !15
  store i32 %2, ptr %15, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  store i32 %2, ptr %19, align 4, !tbaa !13
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %21 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !16
  br label %35

24:                                               ; preds = %8, %3
  %25 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !14
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !15
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i32 %30, %1
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 %1, ptr %29, align 8, !tbaa !15
  br label %35

35:                                               ; preds = %28, %24, %34, %13
  %36 = phi i8 [ 1, %34 ], [ 1, %13 ], [ 0, %24 ], [ 0, %28 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_neg(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !15
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !14
  br i1 %4, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !5
  %9 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %6, ptr noundef %8, i32 noundef %6) #15
  store ptr %9, ptr %0, align 8, !tbaa !5
  %10 = load i32, ptr %5, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %10, ptr noundef %12, i32 noundef %10) #15
  store ptr %13, ptr %11, align 8, !tbaa !11
  br label %22

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %6, ptr noundef %16, i32 noundef %6) #15
  store ptr %17, ptr %15, align 8, !tbaa !17
  %18 = load i32, ptr %5, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %18, ptr noundef %20, i32 noundef %18) #15
  store ptr %21, ptr %19, align 8, !tbaa !16
  br label %22

22:                                               ; preds = %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @iv_add(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = zext i32 %9 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !35
  %22 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !14
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !35
  %27 = icmp ult i8 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  store i32 %23, ptr %10, align 8, !tbaa !14
  %29 = load ptr, ptr %0, align 8, !tbaa !5
  %30 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %23, ptr noundef %29, i32 noundef %9) #15
  store ptr %30, ptr %0, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %28, %18, %13, %7, %3
  %32 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !13
  %38 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !14
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = zext i32 %37 to i64
  %48 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !35
  %50 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !14
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !35
  %55 = icmp ult i8 %49, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  store i32 %51, ptr %38, align 8, !tbaa !14
  %57 = load ptr, ptr %1, align 8, !tbaa !5
  %58 = tail call ptr @simplify_gen_unary(i32 noundef 99, i32 noundef %51, ptr noundef %57, i32 noundef %37) #15
  store ptr %58, ptr %1, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %56, %46, %41, %35, %31
  %60 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !14
  %62 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !14
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %59
  %66 = load i32, ptr %4, align 8, !tbaa !15
  %67 = icmp eq i32 %66, 0
  %68 = load i32, ptr %32, align 8, !tbaa !15
  %69 = icmp eq i32 %68, 0
  br i1 %67, label %70, label %86

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !13
  br i1 %69, label %73, label %101

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !13
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %116

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 8, !tbaa !5
  %79 = load ptr, ptr %1, align 8, !tbaa !5
  %80 = tail call ptr @simplify_gen_binary(i32 noundef %2, i32 noundef %61, ptr noundef %78, ptr noundef %79) #15
  store ptr %80, ptr %0, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = tail call ptr @simplify_gen_binary(i32 noundef %2, i32 noundef %61, ptr noundef %82, ptr noundef %84) #15
  store ptr %85, ptr %81, align 8, !tbaa !11
  br label %116

86:                                               ; preds = %65
  br i1 %69, label %87, label %116

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %89 = load i32, ptr %88, align 4, !tbaa !13
  %90 = icmp eq i32 %89, %61
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !11
  %94 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !17
  %99 = load ptr, ptr %1, align 8, !tbaa !5
  %100 = tail call ptr @simplify_gen_binary(i32 noundef %2, i32 noundef %61, ptr noundef %98, ptr noundef %99) #15
  store ptr %100, ptr %97, align 8, !tbaa !17
  br label %116

101:                                              ; preds = %70
  %102 = icmp eq i32 %72, %61
  br i1 %102, label %103, label %116

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !11
  %106 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load ptr, ptr %0, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !36
  %110 = icmp eq i32 %2, 50
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  tail call fastcc void @iv_neg(ptr noundef nonnull %0) #16
  br label %112

112:                                              ; preds = %111, %108
  %113 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !17
  %115 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %61, ptr noundef %114, ptr noundef %109) #15
  store ptr %115, ptr %113, align 8, !tbaa !17
  br label %116

116:                                              ; preds = %86, %87, %91, %101, %103, %73, %59, %112, %96, %77
  %117 = phi i8 [ 1, %77 ], [ 1, %96 ], [ 1, %112 ], [ 0, %59 ], [ 0, %73 ], [ 0, %103 ], [ 0, %101 ], [ 0, %91 ], [ 0, %87 ], [ 0, %86 ]
  ret i8 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @iv_mult(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %7, %4
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !5
  %17 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %4, ptr noundef %16, ptr noundef nonnull %1) #15
  store ptr %17, ptr %0, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %4, ptr noundef %21, ptr noundef nonnull %1) #15
  store ptr %22, ptr %20, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %18, %15 ], [ %23, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %4, ptr noundef %26, ptr noundef nonnull %1) #15
  store ptr %27, ptr %25, align 8, !tbaa !12
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i8 [ 0, %2 ], [ 1, %24 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @iv_shift(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %7, %4
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !5
  %17 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %4, ptr noundef %16, ptr noundef nonnull %1) #15
  store ptr %17, ptr %0, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %4, ptr noundef %21, ptr noundef nonnull %1) #15
  store ptr %22, ptr %20, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %18, %15 ], [ %23, %19 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %4, ptr noundef %26, ptr noundef nonnull %1) #15
  store ptr %27, ptr %25, align 8, !tbaa !12
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i8 [ 0, %2 ], [ 1, %24 ]
  ret i8 %29
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @iv_analyze(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %1) #16, !range !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %12, %10 ], [ %1, %6 ]
  %15 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef %14) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %0, %13 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = tail call ptr @df_find_use(ptr noundef %20, ptr noundef %14) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %17, label %23, !llvm.loop !38

23:                                               ; preds = %17, %13, %3
  %24 = phi ptr [ %0, %3 ], [ %0, %13 ], [ %20, %17 ]
  %25 = tail call fastcc zeroext i8 @iv_analyze_op(ptr noundef %24, ptr noundef %1, ptr noundef %2) #16, !range !34
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @simple_reg_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %0) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ %2, %1 ]
  %14 = phi ptr [ %10, %8 ], [ %0, %1 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #16
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = lshr i32 %13, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !35
  %26 = icmp eq i8 %25, 2
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %20, %17, %12, %5
  %29 = phi i8 [ 0, %5 ], [ 0, %12 ], [ 0, %17 ], [ %27, %20 ]
  ret i8 %29
}

; Function Attrs: optsize
declare ptr @df_find_use(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @iv_analyze_result(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @df_find_def(ptr noundef %0, ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @iv_analyze_def(ptr noundef nonnull %4, ptr noundef %2) #16, !range !34
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8 [ %7, %6 ], [ 0, %3 ]
  ret i8 %9
}

; Function Attrs: optsize
declare ptr @df_find_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @iv_analyze_def(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 17, i64 1, ptr nonnull %8)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_rtl(ptr noundef %12, ptr noundef %7) #15
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %14 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 9, i64 1, ptr %13)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %16 = tail call i32 @print_rtl_single(ptr noundef %15, ptr noundef %5) #15
  br label %17

17:                                               ; preds = %10, %2
  tail call fastcc void @check_iv_ref_table_size() #16
  %18 = load ptr, ptr @iv_ref_table, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !35
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 20, i64 1, ptr nonnull %26)
  %30 = load ptr, ptr @iv_ref_table, align 8, !tbaa !12
  %31 = load i32, ptr %19, align 4, !tbaa !35
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  br label %35

35:                                               ; preds = %28, %25
  %36 = phi ptr [ %34, %28 ], [ %23, %25 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %36, i64 56, i1 false), !tbaa.struct !36
  br label %89

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  store i32 0, ptr %38, align 4, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %39 = load i32, ptr %7, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %93

42:                                               ; preds = %37
  %43 = load i32, ptr %5, align 8
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, -7
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %47, label %93

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = tail call ptr @single_set_2(ptr noundef nonnull %5, ptr noundef nonnull %49) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %93, label %56

56:                                               ; preds = %47, %53
  %57 = phi ptr [ %54, %53 ], [ %49, %47 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %93

63:                                               ; preds = %56
  %64 = icmp eq ptr %59, %7
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1084, ptr noundef nonnull @.str.9) #15
  br label %66

66:                                               ; preds = %63, %65
  %67 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %5) #15
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %70 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = select i1 %68, ptr %70, ptr %69
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = load i32, ptr %7, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = tail call zeroext i8 @iv_analyze_expr(ptr noundef nonnull %5, ptr noundef %72, i32 noundef %75, ptr noundef nonnull %1) #16, !range !34
  tail call fastcc void @record_iv(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %66
  tail call void @print_rtl(ptr noundef nonnull %77, ptr noundef nonnull %7) #15
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %81 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 9, i64 1, ptr %80)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %83 = tail call i32 @print_rtl_single(ptr noundef %82, ptr noundef nonnull %5) #15
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %85 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 5, i64 1, ptr %84)
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @dump_iv_info(ptr noundef %86, ptr noundef nonnull %1) #16
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %88 = tail call i32 @fputc(i32 10, ptr %87)
  br label %89

89:                                               ; preds = %66, %79, %35
  %90 = load ptr, ptr %1, align 8, !tbaa !5
  %91 = icmp ne ptr %90, null
  %92 = zext i1 %91 to i8
  br label %93

93:                                               ; preds = %89, %42, %56, %53, %37
  %94 = phi i8 [ 0, %37 ], [ 0, %53 ], [ 0, %56 ], [ 0, %42 ], [ %92, %89 ]
  ret i8 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @biv_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rtx_iv, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %1) #16, !range !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @df_find_def(ptr noundef %0, ptr noundef %1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1218, ptr noundef nonnull @.str.9) #15
  br label %11

11:                                               ; preds = %7, %10
  %12 = call fastcc zeroext i8 @latch_dominating_def(ptr noundef %1, ptr noundef nonnull %4) #16, !range !34
  %13 = icmp ne i8 %12, 0
  %14 = load ptr, ptr %4, align 8
  %15 = icmp eq ptr %14, %8
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = call fastcc zeroext i8 @iv_analyze_biv(ptr noundef %1, ptr noundef nonnull %3) #16, !range !34
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_iv, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %24 = icmp ne ptr %22, %23
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %17, %11, %2, %20
  %27 = phi i8 [ %25, %20 ], [ 0, %2 ], [ 0, %11 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #17
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @latch_dominating_def(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #16
  %4 = load ptr, ptr @df, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @current_loop, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !23
  %18 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %17) #16
  %19 = getelementptr inbounds %struct.df_rd_bb_info, ptr %18, i64 0, i32 4
  br label %20

20:                                               ; preds = %12, %68
  %21 = phi ptr [ %10, %12 ], [ %71, %68 ]
  %22 = phi ptr [ null, %12 ], [ %69, %68 ]
  %23 = load ptr, ptr @df, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = load i32, ptr %21, align 8
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.df_artificial_ref, ptr %21, i64 0, i32 1
  br label %36

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 1
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi ptr [ %30, %29 ], [ %35, %31 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !23
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %40) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %19, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !35
  %47 = tail call i32 @bitmap_bit_p(ptr noundef %44, i32 noundef %46) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %43
  %50 = icmp eq ptr %22, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %49
  %52 = load ptr, ptr @current_loop, align 8, !tbaa !12
  %53 = load i32, ptr %21, align 8
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.df_artificial_ref, ptr %21, i64 0, i32 1
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi ptr [ %57, %56 ], [ %62, %58 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %52, ptr noundef %65) #15
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63, %36, %43
  %69 = phi ptr [ %22, %43 ], [ %22, %36 ], [ %21, %63 ]
  %70 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %20, !llvm.loop !46

73:                                               ; preds = %68, %2
  %74 = phi ptr [ null, %2 ], [ %69, %68 ]
  store ptr %74, ptr %1, align 8, !tbaa !12
  br label %75

75:                                               ; preds = %63, %49, %73
  %76 = phi i8 [ 1, %73 ], [ 0, %49 ], [ 0, %63 ]
  ret i8 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @iv_analyze_biv(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 10, i64 1, ptr nonnull %9)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_rtl(ptr noundef %13, ptr noundef %0) #15
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %15 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 14, i64 1, ptr %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = zext nneg i32 %18 to i64
  %22 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !33
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %85

25:                                               ; preds = %20
  tail call fastcc void @iv_constant(ptr noundef %1, ptr noundef nonnull %0) #16
  br label %85

26:                                               ; preds = %16
  %27 = call fastcc zeroext i8 @latch_dominating_def(ptr noundef nonnull %0, ptr noundef nonnull %8) #16, !range !34
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %85, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr nonnull %30)
  br label %85

34:                                               ; preds = %26
  %35 = load ptr, ptr %8, align 8, !tbaa !12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call fastcc void @iv_constant(ptr noundef %1, ptr noundef nonnull %0) #16
  br label %85

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @analyzed_for_bivness_p(ptr noundef nonnull %0, ptr noundef %1) #16, !range !34
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 20, i64 1, ptr nonnull %42)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load ptr, ptr %1, align 8, !tbaa !5
  %48 = icmp ne ptr %47, null
  br label %85

49:                                               ; preds = %38
  %50 = call fastcc zeroext i8 @get_biv_step(ptr noundef nonnull %35, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %4) #16, !range !34
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %74

53:                                               ; preds = %49
  %54 = load i32, ptr %6, align 4, !tbaa !33
  %55 = load ptr, ptr %4, align 8, !tbaa !12
  %56 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %54, ptr noundef nonnull %0, ptr noundef %55) #15
  store ptr %56, ptr %1, align 8, !tbaa !5
  %57 = load ptr, ptr %3, align 8, !tbaa !12
  %58 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %54, ptr noundef %57, ptr noundef %55) #15
  %59 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !11
  %60 = load i32, ptr %5, align 4, !tbaa !33
  %61 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  store i32 %60, ptr %61, align 4, !tbaa !13
  %62 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  store i32 %54, ptr %62, align 8, !tbaa !14
  %63 = load i32, ptr %7, align 4, !tbaa !33
  %64 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  store i32 %63, ptr %64, align 8, !tbaa !15
  %65 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %66 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 4
  store ptr %65, ptr %66, align 8, !tbaa !16
  %67 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 3
  store ptr %55, ptr %67, align 8, !tbaa !17
  %68 = icmp ne i32 %60, %54
  %69 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %70 = zext i1 %68 to i8
  %71 = load i8, ptr %69, align 8
  %72 = and i8 %71, -2
  %73 = or disjoint i8 %72, %70
  store i8 %73, ptr %69, align 8
  br label %74

74:                                               ; preds = %53, %52
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 2, i64 1, ptr nonnull %75)
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @dump_iv_info(ptr noundef %79, ptr noundef nonnull %1) #16
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %81 = tail call i32 @fputc(i32 10, ptr %80)
  br label %82

82:                                               ; preds = %77, %74
  tail call fastcc void @record_biv(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  %83 = load ptr, ptr %1, align 8, !tbaa !5
  %84 = icmp ne ptr %83, null
  br label %85

85:                                               ; preds = %29, %32, %20, %82, %46, %37, %25
  %86 = phi i1 [ %48, %46 ], [ %84, %82 ], [ true, %37 ], [ true, %25 ], [ false, %20 ], [ false, %32 ], [ false, %29 ]
  %87 = zext i1 %86 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_iv_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1239, ptr noundef nonnull @.str.9) #15
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %12 = icmp eq ptr %10, %11
  %13 = icmp eq ptr %11, %1
  %14 = or i1 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !14
  %18 = load ptr, ptr %0, align 8, !tbaa !5
  %19 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %17, ptr noundef %10, ptr noundef %1) #15
  %20 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %17, ptr noundef %18, ptr noundef %19) #15
  br label %23

21:                                               ; preds = %8
  %22 = load ptr, ptr %0, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %20, %15 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !13
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %23
  %31 = tail call ptr @lowpart_subreg(i32 noundef %28, ptr noundef %24, i32 noundef %26) #16
  %32 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %25, align 8, !tbaa !14
  %37 = load i32, ptr %27, align 4, !tbaa !13
  %38 = tail call ptr @simplify_gen_unary(i32 noundef %33, i32 noundef %36, ptr noundef %31, i32 noundef %37) #15
  %39 = load i32, ptr %25, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %39, ptr noundef %43, ptr noundef %38) #15
  %45 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %39, ptr noundef %41, ptr noundef %44) #15
  br label %46

46:                                               ; preds = %30, %23, %35
  %47 = phi ptr [ %45, %35 ], [ %24, %23 ], [ %31, %30 ]
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iv_analysis_done() local_unnamed_addr #0 {
  %1 = load i1, ptr @clean_slate, align 1
  br i1 %1, label %2, label %5

2:                                                ; preds = %0
  tail call fastcc void @clear_iv_info() #16
  store i1 false, ptr @clean_slate, align 1
  tail call void @df_finish_pass(i8 noundef zeroext 1) #15
  %3 = load ptr, ptr @bivs, align 8, !tbaa !12
  tail call void @htab_delete(ptr noundef %3) #15
  %4 = load ptr, ptr @iv_ref_table, align 8, !tbaa !12
  tail call void @free(ptr noundef %4) #16
  store ptr null, ptr @iv_ref_table, align 8, !tbaa !12
  store i32 0, ptr @iv_ref_table_size, align 4, !tbaa !33
  store ptr null, ptr @bivs, align 8, !tbaa !12
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: optsize
declare void @df_finish_pass(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @canon_condition(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %5, ptr noundef %7) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @swap_condition(i32 noundef %3) #15
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %3, %1 ]
  %14 = phi ptr [ %5, %10 ], [ %7, %1 ]
  %15 = phi ptr [ %7, %10 ], [ %5, %1 ]
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %14, align 8
  br i1 %19, label %21, label %27

21:                                               ; preds = %12
  %22 = lshr i32 %20, 16
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1650, ptr noundef nonnull @.str.9) #15
  %26 = load i32, ptr %14, align 8
  br label %27

27:                                               ; preds = %12, %21, %25
  %28 = phi i32 [ %20, %21 ], [ %26, %25 ], [ %20, %12 ]
  %29 = phi i32 [ %23, %21 ], [ 0, %25 ], [ %18, %12 ]
  %30 = and i32 %28, 65535
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %32, label %82

32:                                               ; preds = %27
  %33 = zext nneg i32 %29 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !35
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %82, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %39 = load i8, ptr %38, align 1, !tbaa !35
  %40 = icmp ult i8 %39, 9
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %33
  %45 = load i64, ptr %44, align 8, !tbaa !47
  switch i32 %13, label %82 [
    i32 84, label %46
    i32 82, label %55
    i32 88, label %72
    i32 86, label %77
  ]

46:                                               ; preds = %41
  %47 = lshr i64 %45, 1
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %82, label %49

49:                                               ; preds = %46
  %50 = add nsw i64 %43, 1
  %51 = load i32, ptr %15, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = tail call ptr @gen_int_mode(i64 noundef %50, i32 noundef %53) #15
  br label %82

55:                                               ; preds = %41
  %56 = and i64 %45, %43
  %57 = load i32, ptr %15, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !35
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 3
  %65 = add nuw nsw i64 %64, 4294967295
  %66 = and i64 %65, 4294967295
  %67 = shl nuw i64 1, %66
  %68 = icmp eq i64 %56, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %55
  %70 = add nsw i64 %43, -1
  %71 = tail call ptr @gen_int_mode(i64 noundef %70, i32 noundef %29) #15
  br label %82

72:                                               ; preds = %41
  %73 = icmp ult i64 %43, %45
  br i1 %73, label %74, label %82

74:                                               ; preds = %72
  %75 = add nuw i64 %43, 1
  %76 = tail call ptr @gen_int_mode(i64 noundef %75, i32 noundef %29) #15
  br label %82

77:                                               ; preds = %41
  %78 = icmp eq i64 %43, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = add i64 %43, -1
  %81 = tail call ptr @gen_int_mode(i64 noundef %80, i32 noundef %29) #15
  br label %82

82:                                               ; preds = %49, %46, %69, %55, %74, %72, %79, %77, %41, %37, %32, %27
  %83 = phi i32 [ %13, %37 ], [ %13, %32 ], [ %13, %27 ], [ %13, %41 ], [ 87, %79 ], [ 86, %77 ], [ 89, %74 ], [ 88, %72 ], [ 83, %69 ], [ 82, %55 ], [ 85, %49 ], [ 84, %46 ]
  %84 = phi ptr [ %14, %37 ], [ %14, %32 ], [ %14, %27 ], [ %14, %41 ], [ %81, %79 ], [ %14, %77 ], [ %76, %74 ], [ %14, %72 ], [ %71, %69 ], [ %14, %55 ], [ %54, %49 ], [ %14, %46 ]
  %85 = load ptr, ptr %4, align 8, !tbaa !35
  %86 = icmp eq ptr %15, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load ptr, ptr %6, align 8, !tbaa !35
  %89 = icmp eq ptr %84, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %83, %92
  %94 = and i32 %91, 16711680
  %95 = icmp eq i32 %94, 1048576
  %96 = and i1 %93, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %90, %87, %82
  %98 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %83, i32 noundef 16, ptr noundef nonnull %15, ptr noundef %84) #15
  br label %99

99:                                               ; preds = %90, %97
  %100 = phi ptr [ %98, %97 ], [ %0, %90 ]
  ret ptr %100
}

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @simplify_using_condition(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !12
  %5 = load ptr, ptr %1, align 8, !tbaa !12
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @altered_reg_used, ptr noundef nonnull %2) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %98

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %11, %10 ], [ %0, %3 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 81
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !33
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load ptr, ptr %1, align 8, !tbaa !12
  %34 = call ptr @simplify_replace_rtx(ptr noundef %33, ptr noundef nonnull %19, ptr noundef nonnull %25) #15
  br label %96

35:                                               ; preds = %23, %17, %12
  %36 = load i32, ptr %5, align 8
  %37 = and i32 %36, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !33
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %98

42:                                               ; preds = %35
  %43 = call ptr @reversed_condition(ptr noundef nonnull %13) #15
  %44 = call ptr @reversed_condition(ptr noundef nonnull %5) #15
  %45 = load ptr, ptr %4, align 8, !tbaa !12
  %46 = call ptr @canon_condition(ptr noundef %45) #16
  store ptr %46, ptr %4, align 8, !tbaa !12
  %47 = call ptr @canon_condition(ptr noundef nonnull %5) #16
  %48 = icmp eq ptr %43, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = call ptr @canon_condition(ptr noundef nonnull %43) #16
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi ptr [ %50, %49 ], [ null, %42 ]
  %53 = icmp eq ptr %44, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call ptr @canon_condition(ptr noundef nonnull %44) #16
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi ptr [ %55, %54 ], [ null, %51 ]
  %58 = load ptr, ptr %4, align 8, !tbaa !12
  %59 = call i32 @rtx_equal_p(ptr noundef %47, ptr noundef %58) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  br label %96

63:                                               ; preds = %56
  %64 = icmp eq ptr %52, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = call i32 @rtx_equal_p(ptr noundef %47, ptr noundef nonnull %52) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  br label %96

70:                                               ; preds = %65, %63
  %71 = load ptr, ptr %4, align 8, !tbaa !12
  %72 = call fastcc zeroext i8 @implies_p(ptr noundef %71, ptr noundef %47) #16
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  br label %96

76:                                               ; preds = %70
  %77 = icmp eq ptr %57, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %4, align 8, !tbaa !12
  %80 = call fastcc zeroext i8 @implies_p(ptr noundef %79, ptr noundef nonnull %57) #16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  br label %96

84:                                               ; preds = %78, %76
  br i1 %64, label %98, label %85

85:                                               ; preds = %84
  %86 = call fastcc zeroext i8 @implies_p(ptr noundef %47, ptr noundef nonnull %52) #16
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  br label %96

90:                                               ; preds = %85
  br i1 %77, label %98, label %91

91:                                               ; preds = %90
  %92 = call fastcc zeroext i8 @implies_p(ptr noundef nonnull %57, ptr noundef nonnull %52) #16
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  br label %96

96:                                               ; preds = %32, %61, %68, %74, %82, %88, %94
  %97 = phi ptr [ %95, %94 ], [ %89, %88 ], [ %83, %82 ], [ %75, %74 ], [ %69, %68 ], [ %62, %61 ], [ %34, %32 ]
  store ptr %97, ptr %1, align 8, !tbaa !12
  br label %98

98:                                               ; preds = %96, %84, %90, %91, %35, %7
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @altered_reg_used(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #16
  %9 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %8) #15
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @reversed_condition(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @implies_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 81
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = tail call ptr @simplify_replace_rtx(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %10) #15
  %16 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %268, label %18

18:                                               ; preds = %14, %6
  %19 = load i32, ptr %10, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = tail call ptr @simplify_replace_rtx(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %8) #15
  %24 = load ptr, ptr @const_true_rtx, align 8
  %25 = icmp eq ptr %23, %24
  %26 = icmp eq ptr %24, %1
  %27 = or i1 %25, %26
  br i1 %27, label %268, label %31

28:                                               ; preds = %18, %2
  %29 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %268, label %31

31:                                               ; preds = %22, %28
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !33
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %38, label %268

38:                                               ; preds = %31
  %39 = load i32, ptr %1, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !33
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %268

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = load i32, ptr %47, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = load i32, ptr %51, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %45
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %61
  %64 = load i32, ptr %49, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = load i32, ptr %53, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %66, %69
  %71 = select i1 %70, i32 %66, i32 0
  br label %72

72:                                               ; preds = %45, %61, %63
  %73 = phi i32 [ %71, %63 ], [ %56, %61 ], [ 0, %45 ]
  %74 = trunc i32 %32 to i16
  switch i16 %74, label %97 [
    i16 83, label %75
    i16 85, label %75
  ]

75:                                               ; preds = %72, %72
  %76 = trunc i32 %39 to i16
  switch i16 %76, label %106 [
    i16 82, label %77
    i16 84, label %77
    i16 80, label %99
  ]

77:                                               ; preds = %75, %75
  %78 = icmp eq i32 %33, 83
  %79 = select i1 %78, ptr %49, ptr %47
  %80 = icmp eq i32 %40, 82
  %81 = select i1 %80, ptr %53, ptr %51
  %82 = zext nneg i32 %73 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !35
  %85 = and i8 %84, -2
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %87, label %96

87:                                               ; preds = %77
  %88 = select i1 %80, ptr %51, ptr %53
  %89 = select i1 %78, ptr %47, ptr %49
  %90 = tail call i32 @rtx_equal_p(ptr noundef %89, ptr noundef %88) #15
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = tail call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %73, ptr noundef %81, ptr noundef %79) #15
  %94 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %268, label %96

96:                                               ; preds = %77, %92, %87
  br label %268

97:                                               ; preds = %72
  %98 = icmp eq i32 %40, 80
  br i1 %98, label %99, label %106

99:                                               ; preds = %75, %97
  switch i16 %74, label %106 [
    i16 83, label %100
    i16 87, label %100
    i16 85, label %100
    i16 89, label %100
  ]

100:                                              ; preds = %99, %99, %99, %99
  %101 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef nonnull %51) #15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef %53) #15
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %268

106:                                              ; preds = %75, %99, %100, %103, %97
  %107 = load i32, ptr %0, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 80
  br i1 %109, label %110, label %234

110:                                              ; preds = %106
  %111 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %112 = icmp eq ptr %49, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i32, ptr %1, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 87
  %117 = icmp eq ptr %53, %49
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = icmp eq i32 %115, 86
  %121 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %122 = icmp eq ptr %53, %121
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %127

124:                                              ; preds = %119, %113
  %125 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef nonnull %51) #15
  %126 = trunc i32 %125 to i8
  br label %268

127:                                              ; preds = %119, %110
  %128 = load i32, ptr %49, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %234

131:                                              ; preds = %127
  %132 = load i32, ptr %1, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 89
  %135 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %136 = icmp eq ptr %53, %135
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %163

138:                                              ; preds = %131
  %139 = load i32, ptr %51, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 49
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %144 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 30
  br i1 %148, label %149, label %163

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !35
  %152 = icmp eq i64 %151, 9223372036854775807
  br i1 %152, label %163, label %153

153:                                              ; preds = %149
  %154 = add nsw i64 %151, 1
  %155 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !35
  %157 = sub nsw i64 0, %156
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load ptr, ptr %143, align 8, !tbaa !35
  %161 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef %160) #15
  %162 = trunc i32 %161 to i8
  br label %268

163:                                              ; preds = %153, %149, %142, %138, %131
  %164 = load i32, ptr %1, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 87
  br i1 %166, label %167, label %199

167:                                              ; preds = %163
  %168 = load i32, ptr %51, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 49
  %171 = icmp eq ptr %53, %111
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %173, label %199

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %175 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !35
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 30
  br i1 %179, label %180, label %199

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !35
  %183 = icmp eq i64 %182, -9223372036854775808
  br i1 %183, label %199, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %174, align 8, !tbaa !35
  %186 = tail call i32 @rtx_equal_p(ptr noundef %185, ptr noundef nonnull %47) #15
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, ptr %1, align 8
  br label %199

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %192 = load i64, ptr %191, align 8, !tbaa !35
  %193 = load ptr, ptr %175, align 8, !tbaa !35
  %194 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %195 = load i64, ptr %194, align 8, !tbaa !35
  %196 = sub nsw i64 0, %195
  %197 = icmp eq i64 %192, %196
  %198 = zext i1 %197 to i8
  br label %268

199:                                              ; preds = %188, %180, %173, %167, %163
  %200 = phi i32 [ %189, %188 ], [ %164, %180 ], [ %164, %173 ], [ %164, %167 ], [ %164, %163 ]
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 86
  br i1 %202, label %203, label %234

203:                                              ; preds = %199
  %204 = load i32, ptr %51, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 49
  %207 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %208 = icmp eq ptr %53, %207
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %210, label %234

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %212 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 30
  br i1 %216, label %217, label %234

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %219 = load i64, ptr %218, align 8, !tbaa !35
  %220 = icmp eq i64 %219, -9223372036854775808
  br i1 %220, label %234, label %221

221:                                              ; preds = %217
  %222 = load ptr, ptr %211, align 8, !tbaa !35
  %223 = tail call i32 @rtx_equal_p(ptr noundef %222, ptr noundef nonnull %47) #15
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !35
  %228 = load ptr, ptr %212, align 8, !tbaa !35
  %229 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1
  %230 = load i64, ptr %229, align 8, !tbaa !35
  %231 = sub nsw i64 0, %230
  %232 = icmp eq i64 %227, %231
  %233 = zext i1 %232 to i8
  br label %268

234:                                              ; preds = %127, %106, %199, %203, %210, %217, %221
  %235 = load i32, ptr %0, align 8
  %236 = and i32 %235, 65535
  %237 = and i32 %235, 65534
  %238 = icmp eq i32 %237, 82
  br i1 %238, label %239, label %268

239:                                              ; preds = %234
  %240 = load i32, ptr %49, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 30
  br i1 %242, label %243, label %268

243:                                              ; preds = %239
  %244 = icmp eq i32 %236, 83
  %245 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %246 = icmp eq ptr %49, %245
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %250 = load i64, ptr %249, align 8, !tbaa !35
  %251 = icmp sgt i64 %250, -1
  br i1 %251, label %252, label %268

252:                                              ; preds = %243, %248
  %253 = load i32, ptr %1, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %254, 89
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = load i32, ptr %53, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 30
  br i1 %259, label %260, label %268

260:                                              ; preds = %256
  %261 = tail call i32 @rtx_equal_p(ptr noundef nonnull %47, ptr noundef nonnull %51) #15
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %265 = load i64, ptr %264, align 8, !tbaa !35
  %266 = lshr i64 %265, 63
  %267 = trunc i64 %266 to i8
  br label %268

268:                                              ; preds = %234, %38, %31, %239, %248, %252, %256, %260, %103, %92, %28, %22, %14, %263, %225, %190, %159, %124, %96
  %269 = phi i8 [ 0, %96 ], [ %126, %124 ], [ %162, %159 ], [ %198, %190 ], [ %233, %225 ], [ %267, %263 ], [ 1, %14 ], [ 1, %22 ], [ 1, %28 ], [ 0, %38 ], [ 0, %31 ], [ 1, %92 ], [ 1, %103 ], [ 0, %234 ], [ 0, %260 ], [ 0, %256 ], [ 0, %252 ], [ 0, %248 ], [ 0, %239 ]
  ret i8 %269
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_simple_exit(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.niter_desc, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %6 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 2
  store i8 0, ptr %6, align 8, !tbaa !48
  %7 = tail call ptr @get_loop_body(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %70, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %5, i64 8
  %13 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 3
  %15 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 4
  %17 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 4
  %18 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %19 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 8
  br label %20

20:                                               ; preds = %11, %64
  %21 = phi i64 [ 0, %11 ], [ %66, %64 ]
  %22 = phi i8 [ 0, %11 ], [ %65, %64 ]
  %23 = getelementptr inbounds ptr, ptr %7, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %26 = call fastcc ptr @ei_start_1(ptr noundef nonnull %25) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !50
  store ptr %26, ptr %12, align 8, !tbaa.struct !51
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %3) #16, !range !34
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %20, %58
  %30 = phi i8 [ %59, %58 ], [ %22, %20 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %33) #15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  call fastcc void @check_simple_exit(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull %4) #16
  %37 = load i8, ptr %13, align 8, !tbaa !48
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = icmp eq i8 %30, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %39
  %42 = load i8, ptr %14, align 1, !tbaa !54
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr %15, align 1, !tbaa !54
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64, ptr %16, align 8, !tbaa !55
  %49 = load i64, ptr %17, align 8, !tbaa !55
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %44
  %52 = load ptr, ptr %18, align 8, !tbaa !56
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %19, align 8, !tbaa !56
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %39, %51, %54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !57
  br label %58

58:                                               ; preds = %54, %41, %47, %36, %29, %57
  %59 = phi i8 [ %30, %29 ], [ 1, %47 ], [ 1, %57 ], [ 1, %54 ], [ 1, %41 ], [ %30, %36 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %60 = load i32, ptr %5, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %3) #16, !range !34
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %29, !llvm.loop !58

64:                                               ; preds = %58, %20
  %65 = phi i8 [ %22, %20 ], [ %59, %58 ]
  %66 = add nuw nsw i64 %21, 1
  %67 = load i32, ptr %8, align 4, !tbaa !18
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %20, label %70, !llvm.loop !59

70:                                               ; preds = %64, %2
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %139, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %6, align 8, !tbaa !48
  %75 = icmp eq i8 %74, 0
  %76 = load i32, ptr %0, align 8, !tbaa !60
  br i1 %75, label %137, label %77

77:                                               ; preds = %73
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.10, i32 noundef %76) #16
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %80 = load ptr, ptr %1, align 8, !tbaa !61
  %81 = load ptr, ptr %80, align 8, !tbaa !62
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !23
  %84 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !23
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.11, i32 noundef %83, i32 noundef %87) #16
  %89 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %77
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %94 = call i64 @fwrite(ptr nonnull @.str.12, i64 15, i64 1, ptr %93)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %96 = load ptr, ptr %89, align 8, !tbaa !63
  call void @print_rtl(ptr noundef %95, ptr noundef %96) #15
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %98 = call i32 @fputc(i32 10, ptr %97)
  br label %99

99:                                               ; preds = %92, %77
  %100 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !64
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %105 = call i64 @fwrite(ptr nonnull @.str.14, i64 20, i64 1, ptr %104)
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %107 = load ptr, ptr %100, align 8, !tbaa !64
  call void @print_rtl(ptr noundef %106, ptr noundef %107) #15
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %109 = call i32 @fputc(i32 10, ptr %108)
  br label %110

110:                                              ; preds = %103, %99
  %111 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 8
  %112 = load ptr, ptr %111, align 8, !tbaa !56
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %116 = call i64 @fwrite(ptr nonnull @.str.15, i64 15, i64 1, ptr %115)
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %118 = load ptr, ptr %111, align 8, !tbaa !56
  call void @print_rtl(ptr noundef %117, ptr noundef %118) #15
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %120 = call i32 @fputc(i32 10, ptr %119)
  br label %121

121:                                              ; preds = %114, %110
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %123 = call i64 @fwrite(ptr nonnull @.str.16, i64 24, i64 1, ptr %122)
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %125 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 11
  %126 = load ptr, ptr %125, align 8, !tbaa !65
  call void @print_rtl(ptr noundef %124, ptr noundef %126) #15
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %128 = call i32 @fputc(i32 10, ptr %127)
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %130 = call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %129)
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %132 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 5
  %133 = load i64, ptr %132, align 8, !tbaa !66
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.18, i64 noundef %133) #16
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %136 = call i32 @fputc(i32 10, ptr %135)
  br label %139

137:                                              ; preds = %73
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.19, i32 noundef %76) #16
  br label %139

139:                                              ; preds = %121, %137, %70
  call void @free(ptr noundef %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !12
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_simple_exit(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.niter_desc, ptr %2, i64 0, i32 2
  store i8 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %50

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %12, ptr noundef nonnull %5) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %50, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.rtl_bb_info, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = tail call i32 @any_condjump_p(ptr noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 0) #16
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 1) #16
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %25, %22 ]
  store ptr %1, ptr %2, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.niter_desc, ptr %2, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !71
  %32 = load ptr, ptr %30, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = call ptr @get_condition(ptr noundef %36, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !72
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call ptr @reversed_condition(ptr noundef nonnull %37) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %39
  %48 = phi ptr [ %45, %44 ], [ %37, %39 ]
  %49 = load ptr, ptr %4, align 8, !tbaa !12
  call fastcc void @iv_number_of_iterations(ptr noundef nonnull %0, ptr noundef %49, ptr noundef nonnull %48, ptr noundef nonnull %2) #16
  br label %50

50:                                               ; preds = %44, %29, %15, %10, %3, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 738, ptr noundef nonnull @.str.9) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !73
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_simple_loop_desc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @simple_loop_desc(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %47

4:                                                ; preds = %1
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #15
  tail call void @iv_analysis_loop_init(ptr noundef %0) #16
  tail call void @find_simple_exit(ptr noundef %0, ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  store ptr %5, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.niter_desc, ptr %5, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.niter_desc, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.niter_desc, ptr %5, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, ptr @flag_tree_loop_optimize, align 4, !tbaa !33
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr @warn_unsafe_loop_optimizations, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.niter_desc, ptr %5, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !33
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.21, ptr @.str.20
  %32 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 216, ptr noundef nonnull @.str.22, ptr noundef nonnull %31) #15
  %33 = load ptr, ptr %11, align 8, !tbaa !63
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi ptr [ %33, %28 ], [ %12, %24 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !33
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.24, ptr @.str.23
  %41 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 216, ptr noundef nonnull @.str.22, ptr noundef nonnull %40) #15
  br label %42

42:                                               ; preds = %34, %37, %18
  %43 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !33
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  store ptr null, ptr %11, align 8, !tbaa !63
  %46 = getelementptr inbounds %struct.niter_desc, ptr %5, i64 0, i32 8
  store ptr null, ptr %46, align 8, !tbaa !56
  br label %47

47:                                               ; preds = %4, %14, %45, %42, %1
  %48 = phi ptr [ %2, %1 ], [ %5, %42 ], [ %5, %45 ], [ %5, %14 ], [ %5, %4 ]
  ret ptr %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @simple_loop_desc(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_simple_loop_desc(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = tail call fastcc ptr @simple_loop_desc(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #16
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  store ptr null, ptr %5, align 8, !tbaa !75
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !35
  ret i32 %3
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @function_invariant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @iv_subreg(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 7
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = tail call ptr @get_iv_value(ptr noundef nonnull %0, ptr noundef %4) #16
  %14 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !14
  %16 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef %13, i32 noundef %15) #16
  store ptr %16, ptr %0, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !15
  store i32 %1, ptr %14, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  store i32 %1, ptr %18, align 4, !tbaa !13
  %19 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %20 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !17
  %21 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !16
  br label %55

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !14
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %55, label %27

27:                                               ; preds = %23
  %28 = zext nneg i32 %1 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !13
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !35
  %36 = icmp ugt i8 %30, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  store i32 0, ptr %38, align 8, !tbaa !15
  store i32 %1, ptr %31, align 4, !tbaa !13
  %39 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !17
  %41 = load ptr, ptr %0, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %25, ptr noundef %41, ptr noundef %43) #15
  %45 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %40, ptr noundef %44) #15
  store ptr %45, ptr %0, align 8, !tbaa !5
  %46 = load i32, ptr %24, align 8, !tbaa !14
  %47 = load ptr, ptr %3, align 8, !tbaa !11
  %48 = load ptr, ptr %42, align 8, !tbaa !16
  %49 = tail call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %46, ptr noundef %47, ptr noundef %48) #15
  store ptr %49, ptr %3, align 8, !tbaa !11
  %50 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  store ptr %50, ptr %42, align 8, !tbaa !16
  %51 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  store ptr %51, ptr %39, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 7
  %53 = load i8, ptr %52, align 8
  %54 = and i8 %53, -2
  store i8 %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %27, %23, %37, %12
  %56 = phi i8 [ 1, %37 ], [ 1, %12 ], [ 1, %23 ], [ 0, %27 ]
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iv_get_reaching_def(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store ptr null, ptr %2, align 8, !tbaa !12
  %4 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %1) #16, !range !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %81, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %14, %10 ], [ %8, %6 ]
  %17 = phi ptr [ %12, %10 ], [ %1, %6 ]
  %18 = icmp eq i32 %16, 37
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 339, ptr noundef nonnull @.str.9) #15
  br label %20

20:                                               ; preds = %15, %19
  %21 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef nonnull %17) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 342, ptr noundef nonnull @.str.9) #15
  br label %24

24:                                               ; preds = %20, %23
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %81, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.df_link, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %81

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !78
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 2097152
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %33, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = and i32 %34, 255
  %42 = icmp eq i32 %41, 1
  %43 = getelementptr inbounds %struct.df_artificial_ref, ptr %33, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  %45 = select i1 %42, ptr %43, ptr %44
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = icmp eq ptr %48, %46
  br i1 %49, label %50, label %70

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr @df, align 8, !tbaa !12
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !79
  %55 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !35
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %54, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.df_insn_info, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !80
  %62 = load i32, ptr %51, align 8, !tbaa !35
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %54, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !12
  %66 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !80
  %68 = icmp slt i32 %61, %67
  %69 = zext i1 %68 to i8
  br label %72

70:                                               ; preds = %37
  %71 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %48, ptr noundef %46) #15
  br label %72

72:                                               ; preds = %70, %50
  %73 = phi i8 [ %69, %50 ], [ %71, %70 ]
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store ptr %33, ptr %2, align 8, !tbaa !12
  br label %81

76:                                               ; preds = %72
  %77 = load ptr, ptr @current_loop, align 8, !tbaa !12
  %78 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %77, ptr noundef %46) #15
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i32 0, i32 2
  br label %81

81:                                               ; preds = %76, %32, %28, %24, %3, %75
  %82 = phi i32 [ 3, %75 ], [ 0, %3 ], [ 1, %24 ], [ 0, %28 ], [ 0, %32 ], [ %80, %76 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @iv_constant(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  store i32 %5, ptr %6, align 4, !tbaa !13
  store ptr %1, ptr %0, align 8, !tbaa !5
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %8 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, -2
  store i8 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  store i32 0, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  store i32 %5, ptr %13, align 8, !tbaa !14
  %14 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %15 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !17
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_iv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 56) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !36
  tail call fastcc void @check_iv_ref_table_size() #16
  %4 = load ptr, ptr @iv_ref_table, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !35
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %3, ptr %8, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_rd_get_bb_info(i32 noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr @df, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !81
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @analyzed_for_bivness_p(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @bivs, align 8, !tbaa !12
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #16
  %5 = tail call ptr @htab_find_with_hash(ptr noundef %3, ptr noundef %0, i32 noundef %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.biv_entry, ptr %5, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !36
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i8 [ 1, %7 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @get_biv_step(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  store i32 %10, ptr %5, align 4, !tbaa !33
  %11 = tail call fastcc zeroext i8 @get_biv_step_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %10, ptr noundef %6) #16, !range !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %3, align 4, !tbaa !33
  %15 = load i32, ptr %5, align 4, !tbaa !33
  %16 = icmp eq i32 %14, %15
  %17 = load i32, ptr %4, align 4, !tbaa !33
  %18 = icmp eq i32 %17, 0
  %19 = xor i1 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 799, ptr noundef nonnull @.str.9) #15
  %21 = load i32, ptr %3, align 4, !tbaa !33
  %22 = load i32, ptr %5, align 4, !tbaa !33
  br label %23

23:                                               ; preds = %13, %20
  %24 = phi i32 [ %15, %13 ], [ %22, %20 ]
  %25 = phi i32 [ %14, %13 ], [ %21, %20 ]
  %26 = icmp eq i32 %25, %24
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8, !tbaa !12
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 800, ptr noundef nonnull @.str.9) #15
  br label %32

32:                                               ; preds = %31, %27, %23, %7
  %33 = phi i8 [ 0, %7 ], [ 1, %23 ], [ 1, %27 ], [ 1, %31 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_biv(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 64) #15
  %4 = load ptr, ptr @bivs, align 8, !tbaa !12
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #16
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef %0, i32 noundef %5, i32 noundef 1) #15
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #16
  store i32 %7, ptr %3, align 8, !tbaa !27
  %8 = getelementptr inbounds %struct.biv_entry, ptr %3, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !36
  %9 = load ptr, ptr %6, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 841, ptr noundef nonnull @.str.9) #15
  br label %12

12:                                               ; preds = %2, %11
  store ptr %3, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @get_biv_step_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %171

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call ptr @single_set_2(ptr noundef nonnull %11, ptr noundef nonnull %18) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %171, label %25

25:                                               ; preds = %16, %22
  %26 = phi ptr [ %23, %22 ], [ %18, %16 ]
  %27 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %11) #15
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = select i1 %28, ptr %30, ptr %29
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = trunc i32 %33 to i16
  switch i16 %35, label %171 [
    i16 39, label %88
    i16 37, label %88
    i16 49, label %36
    i16 50, label %36
    i16 98, label %79
    i16 99, label %79
  ]

36:                                               ; preds = %25, %25
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = icmp eq i32 %34, 49
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, ptr %38, align 8
  %44 = and i32 %43, 65535
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !33
  %48 = icmp eq i32 %47, 9
  %49 = select i1 %48, ptr %38, ptr %40
  %50 = select i1 %48, ptr %40, ptr %38
  br label %51

51:                                               ; preds = %42, %36
  %52 = phi ptr [ %40, %36 ], [ %49, %42 ]
  %53 = phi ptr [ %38, %36 ], [ %50, %42 ]
  %54 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %53) #16, !range !34
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %171, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %52, align 8
  %58 = and i32 %57, 65535
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !33
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %63, label %171

63:                                               ; preds = %56
  %64 = load i32, ptr %32, align 8
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, %5
  br i1 %67, label %88, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %53, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 39
  br i1 %71, label %72, label %171

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !35
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = icmp eq i32 %77, %5
  br i1 %78, label %88, label %171

79:                                               ; preds = %25, %25
  %80 = lshr i32 %33, 16
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, %5
  br i1 %82, label %83, label %171

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = tail call fastcc zeroext i8 @simple_reg_p(ptr noundef %85) #16, !range !34
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %171, label %88

88:                                               ; preds = %83, %63, %72, %25, %25
  %89 = phi ptr [ %32, %25 ], [ %32, %25 ], [ %53, %72 ], [ %53, %63 ], [ %85, %83 ]
  %90 = phi ptr [ null, %25 ], [ null, %25 ], [ %52, %72 ], [ %52, %63 ], [ null, %83 ]
  %91 = phi ptr [ null, %25 ], [ null, %25 ], [ %53, %72 ], [ %53, %63 ], [ %85, %83 ]
  %92 = load i32, ptr %89, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 39
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %89) #15
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %171, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = icmp eq i32 %103, %5
  br i1 %104, label %105, label %171

105:                                              ; preds = %88, %98
  %106 = phi ptr [ %100, %98 ], [ %89, %88 ]
  %107 = call fastcc i32 @iv_get_reaching_def(ptr noundef nonnull %11, ptr noundef nonnull %106, ptr noundef nonnull %8) #16, !range !37
  %108 = icmp ult i32 %107, 2
  br i1 %108, label %171, label %109

109:                                              ; preds = %105
  %110 = icmp eq i32 %107, 2
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = tail call i32 @rtx_equal_p(ptr noundef nonnull %106, ptr noundef %1) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %171, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  store ptr %115, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %4, align 4, !tbaa !33
  store i32 %5, ptr %3, align 4, !tbaa !33
  store ptr %115, ptr %6, align 8, !tbaa !12
  br label %120

116:                                              ; preds = %109
  %117 = load ptr, ptr %8, align 8, !tbaa !12
  %118 = tail call fastcc zeroext i8 @get_biv_step_1(ptr noundef %117, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #16, !range !34
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %171, label %120

120:                                              ; preds = %116, %114
  %121 = load i32, ptr %89, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 39
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = lshr i32 %121, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !35
  %130 = load i32, ptr %3, align 4, !tbaa !33
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !35
  %134 = icmp ugt i8 %129, %133
  br i1 %134, label %171, label %135

135:                                              ; preds = %124
  store i32 %126, ptr %3, align 4, !tbaa !33
  %136 = load ptr, ptr %2, align 8, !tbaa !12
  %137 = load ptr, ptr %6, align 8, !tbaa !12
  %138 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %5, ptr noundef %136, ptr noundef %137) #15
  store ptr %138, ptr %2, align 8, !tbaa !12
  %139 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  store ptr %139, ptr %6, align 8, !tbaa !12
  store i32 0, ptr %4, align 4, !tbaa !33
  br label %140

140:                                              ; preds = %135, %120
  switch i16 %35, label %171 [
    i16 37, label %170
    i16 39, label %170
    i16 49, label %141
    i16 50, label %141
    i16 98, label %155
    i16 99, label %155
  ]

141:                                              ; preds = %140, %140
  %142 = load i32, ptr %3, align 4, !tbaa !33
  %143 = icmp eq i32 %142, %5
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32, ptr %32, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = icmp eq i32 %147, %5
  br i1 %148, label %152, label %149

149:                                              ; preds = %144, %141
  %150 = load ptr, ptr %2, align 8, !tbaa !12
  %151 = tail call ptr @simplify_gen_binary(i32 noundef %34, i32 noundef %5, ptr noundef %150, ptr noundef %90) #15
  store ptr %151, ptr %2, align 8, !tbaa !12
  br label %170

152:                                              ; preds = %144
  %153 = load ptr, ptr %6, align 8, !tbaa !12
  %154 = tail call ptr @simplify_gen_binary(i32 noundef %34, i32 noundef %5, ptr noundef %153, ptr noundef %90) #15
  store ptr %154, ptr %6, align 8, !tbaa !12
  br label %170

155:                                              ; preds = %140, %140
  %156 = load i32, ptr %91, align 8
  %157 = lshr i32 %156, 16
  %158 = and i32 %157, 255
  %159 = load i32, ptr %3, align 4, !tbaa !33
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %155
  %162 = load i32, ptr %4, align 4, !tbaa !33
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load ptr, ptr %6, align 8, !tbaa !12
  %166 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %169, label %168

168:                                              ; preds = %164, %161, %155
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 768, ptr noundef nonnull @.str.9) #15
  br label %169

169:                                              ; preds = %164, %168
  store i32 %34, ptr %4, align 4, !tbaa !33
  br label %170

170:                                              ; preds = %149, %152, %140, %140, %169
  br label %171

171:                                              ; preds = %7, %124, %140, %116, %111, %105, %98, %95, %25, %83, %79, %72, %68, %51, %56, %22, %170
  %172 = phi i8 [ 1, %170 ], [ 0, %22 ], [ 0, %56 ], [ 0, %51 ], [ 0, %68 ], [ 0, %72 ], [ 0, %79 ], [ 0, %83 ], [ 0, %25 ], [ 0, %95 ], [ 0, %98 ], [ 0, %105 ], [ 0, %111 ], [ 0, %116 ], [ 0, %140 ], [ 0, %124 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  ret i8 %172
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !84
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 687, ptr noundef nonnull @.str.9) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iv_number_of_iterations(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.rtx_iv, align 8
  %6 = alloca %struct.rtx_iv, align 8
  %7 = alloca %struct.rtx_iv, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %10 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 6
  %11 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 7
  %12 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 8
  %13 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store i8 1, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 3
  store i8 0, ptr %14, align 1, !tbaa !54
  %15 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 11
  store ptr null, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 5
  store i64 0, ptr %16, align 8, !tbaa !66
  %17 = load i32, ptr %2, align 8
  %18 = and i32 %17, 65535
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !33
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2284, ptr noundef nonnull @.str.9) #15
  br label %24

24:                                               ; preds = %4, %23
  %25 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2290, ptr noundef nonnull @.str.9) #15
  br label %39

39:                                               ; preds = %24, %31, %38
  %40 = phi i32 [ %36, %31 ], [ 0, %38 ], [ %29, %24 ]
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !35
  %44 = and i8 %43, -2
  %45 = icmp eq i8 %44, 2
  br i1 %45, label %46, label %495

46:                                               ; preds = %39
  %47 = load ptr, ptr %25, align 8, !tbaa !35
  %48 = call zeroext i8 @iv_analyze(ptr noundef %1, ptr noundef %47, ptr noundef nonnull %5) #16, !range !34
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %495, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  store i32 %40, ptr %51, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 6
  store i32 %40, ptr %55, align 4, !tbaa !13
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %40, %54 ], [ %52, %50 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = call zeroext i8 @iv_analyze(ptr noundef %1, ptr noundef %59, ptr noundef nonnull %6) #16, !range !34
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %495, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  store i32 %40, ptr %63, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 6
  store i32 %40, ptr %67, align 4, !tbaa !13
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %40, %66 ], [ %64, %62 ]
  %70 = zext i32 %57 to i64
  %71 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !35
  %73 = icmp ugt i8 %72, 8
  br i1 %73, label %495, label %74

74:                                               ; preds = %68
  %75 = zext i32 %69 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !35
  %78 = icmp ugt i8 %77, 8
  br i1 %78, label %495, label %79

79:                                               ; preds = %74
  %80 = trunc i32 %17 to i16
  switch i16 %80, label %495 [
    i16 82, label %81
    i16 83, label %81
    i16 86, label %81
    i16 87, label %81
    i16 80, label %83
    i16 84, label %83
    i16 88, label %83
    i16 85, label %83
    i16 89, label %83
  ]

81:                                               ; preds = %79, %79, %79, %79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !36
  %82 = tail call i32 @swap_condition(i32 noundef %18) #15
  br label %83

83:                                               ; preds = %79, %79, %79, %79, %79, %81
  %84 = phi i32 [ %18, %79 ], [ %18, %79 ], [ %18, %79 ], [ %18, %79 ], [ %18, %79 ], [ %82, %81 ]
  %85 = call fastcc zeroext i8 @canonicalize_iv_subregs(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %84, ptr noundef nonnull %3) #16, !range !34
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %495, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %51, align 8, !tbaa !14
  %89 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 6
  %90 = load i32, ptr %89, align 4, !tbaa !13
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !35
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 3
  %96 = icmp eq i32 %84, 85
  %97 = and i32 %84, -2
  %98 = icmp eq i32 %97, 84
  %99 = zext i1 %98 to i32
  call void @get_mode_bounds(i32 noundef %90, i32 noundef %99, i32 noundef %88, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %100 = load ptr, ptr %8, align 8, !tbaa !12
  %101 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %100, i32 noundef %88) #16
  %102 = load ptr, ptr %9, align 8, !tbaa !12
  %103 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %102, i32 noundef %88) #16
  %104 = getelementptr inbounds %struct.rtx_iv, ptr %5, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !11
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 30
  br i1 %108, label %109, label %495

109:                                              ; preds = %87
  %110 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 30
  br i1 %114, label %115, label %495

115:                                              ; preds = %109
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %117 = icmp eq ptr %105, %116
  %118 = icmp eq ptr %111, %116
  %119 = or i1 %117, %118
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = icmp eq i32 %84, 80
  br i1 %121, label %126, label %495

122:                                              ; preds = %115
  %123 = icmp eq ptr %105, %116
  %124 = icmp eq ptr %111, %116
  %125 = and i1 %123, %124
  br i1 %125, label %495, label %130

126:                                              ; preds = %120
  %127 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef nonnull %105, ptr noundef nonnull %111) #15
  store ptr %127, ptr %104, align 8, !tbaa !11
  %128 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  store ptr %128, ptr %110, align 8, !tbaa !11
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %495, label %132

130:                                              ; preds = %122
  %131 = icmp eq i32 %84, 80
  br i1 %131, label %132, label %137

132:                                              ; preds = %126, %130
  %133 = phi ptr [ %111, %130 ], [ %128, %126 ]
  %134 = phi ptr [ %105, %130 ], [ %127, %126 ]
  %135 = load ptr, ptr %6, align 8, !tbaa !5
  %136 = load ptr, ptr %5, align 8, !tbaa !5
  br label %306

137:                                              ; preds = %130
  br i1 %123, label %138, label %142

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %140 = load i64, ptr %139, align 8, !tbaa !35
  %141 = sub nsw i64 0, %140
  br label %145

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !35
  br label %145

145:                                              ; preds = %142, %138
  %146 = phi i64 [ %141, %138 ], [ %144, %142 ]
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %495, label %148

148:                                              ; preds = %145
  %149 = call i64 @llvm.ctpop.i64(i64 %146), !range !86
  %150 = icmp ugt i64 %149, 1
  switch i32 %84, label %181 [
    i32 85, label %151
    i32 89, label %151
  ]

151:                                              ; preds = %148, %148
  br i1 %123, label %152, label %161

152:                                              ; preds = %151
  %153 = load ptr, ptr %5, align 8, !tbaa !5
  %154 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %153, i32 noundef %88) #16
  %155 = call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef 16, i32 noundef %90, ptr noundef %154, ptr noundef %103) #15
  %156 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %483, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %160 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef %153, ptr noundef %159) #15
  store ptr %160, ptr %5, align 8, !tbaa !5
  br label %170

161:                                              ; preds = %151
  %162 = load ptr, ptr %6, align 8, !tbaa !5
  %163 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %162, i32 noundef %88) #16
  %164 = call ptr @simplify_gen_relational(i32 noundef 81, i32 noundef 16, i32 noundef %90, ptr noundef %163, ptr noundef %101) #15
  %165 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %483, label %167

167:                                              ; preds = %161
  %168 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !12
  %169 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef %162, ptr noundef %168) #15
  store ptr %169, ptr %6, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %167, %158
  %171 = phi ptr [ %155, %158 ], [ %164, %167 ]
  %172 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %173 = icmp eq ptr %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %11, align 8, !tbaa !64
  %176 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %171, ptr noundef %175) #15
  store ptr %176, ptr %11, align 8, !tbaa !64
  %177 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi ptr [ %177, %174 ], [ %171, %170 ]
  %180 = select i1 %96, i32 84, i32 88
  br label %181

181:                                              ; preds = %148, %178
  %182 = phi ptr [ %179, %178 ], [ %116, %148 ]
  %183 = phi i32 [ %180, %178 ], [ %84, %148 ]
  %184 = phi i1 [ false, %178 ], [ true, %148 ]
  %185 = icmp eq ptr %105, %182
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load ptr, ptr %5, align 8, !tbaa !5
  %188 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %187, i32 noundef %88) #16
  %189 = call i32 @rtx_equal_p(ptr noundef %188, ptr noundef %101) #15
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %196, label %480

191:                                              ; preds = %181
  %192 = load ptr, ptr %6, align 8, !tbaa !5
  %193 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %192, i32 noundef %88) #16
  %194 = call i32 @rtx_equal_p(ptr noundef %193, ptr noundef %103) #15
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %480

196:                                              ; preds = %191, %186
  %197 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %198 = icmp eq ptr %105, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %88, ptr noundef nonnull %111, i32 noundef %88) #15
  br label %201

201:                                              ; preds = %196, %199
  %202 = phi ptr [ %200, %199 ], [ %105, %196 ]
  %203 = load ptr, ptr %6, align 8, !tbaa !5
  %204 = load ptr, ptr %5, align 8
  %205 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef %203, ptr noundef %204) #15
  %206 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %205, i32 noundef %88) #16
  %207 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %90, ptr noundef %206, ptr noundef %202) #15
  %208 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %209 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %210 = load i32, ptr %207, align 8
  %211 = and i32 %210, 65535
  %212 = icmp eq i32 %211, 30
  br i1 %212, label %213, label %241

213:                                              ; preds = %201
  br i1 %184, label %221, label %214

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !35
  %217 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %218 = load i64, ptr %217, align 8, !tbaa !35
  %219 = add nsw i64 %218, -1
  %220 = icmp eq i64 %216, %219
  br i1 %220, label %241, label %221

221:                                              ; preds = %214, %213
  %222 = icmp eq ptr %105, %208
  br i1 %222, label %223, label %232

223:                                              ; preds = %221
  %224 = load ptr, ptr %8, align 8, !tbaa !12
  %225 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef %224, ptr noundef %202) #15
  %226 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef %225, ptr noundef nonnull %207) #15
  %227 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %226, i32 noundef %88) #16
  %228 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %204, i32 noundef %88) #16
  %229 = call ptr @simplify_gen_relational(i32 noundef %183, i32 noundef 16, i32 noundef %90, ptr noundef %227, ptr noundef %228) #15
  %230 = call i32 @reverse_condition(i32 noundef %183) #15
  %231 = call ptr @simplify_gen_relational(i32 noundef %230, i32 noundef 16, i32 noundef %90, ptr noundef %227, ptr noundef %228) #15
  br label %241

232:                                              ; preds = %221
  %233 = load ptr, ptr %9, align 8, !tbaa !12
  %234 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef %233, ptr noundef %202) #15
  %235 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef %234, ptr noundef nonnull %207) #15
  %236 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %235, i32 noundef %88) #16
  %237 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %203, i32 noundef %88) #16
  %238 = call ptr @simplify_gen_relational(i32 noundef %183, i32 noundef 16, i32 noundef %90, ptr noundef %237, ptr noundef %236) #15
  %239 = call i32 @reverse_condition(i32 noundef %183) #15
  %240 = call ptr @simplify_gen_relational(i32 noundef %239, i32 noundef 16, i32 noundef %90, ptr noundef %237, ptr noundef %236) #15
  br label %241

241:                                              ; preds = %214, %232, %223, %201
  %242 = phi ptr [ %231, %223 ], [ %240, %232 ], [ %209, %201 ], [ %209, %214 ]
  %243 = phi ptr [ %229, %223 ], [ %238, %232 ], [ %208, %201 ], [ %209, %214 ]
  %244 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %245 = icmp eq ptr %243, %244
  br i1 %245, label %359, label %246

246:                                              ; preds = %241
  %247 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %248 = icmp eq ptr %243, %247
  br i1 %248, label %254, label %249

249:                                              ; preds = %246
  %250 = select i1 %150, ptr %10, ptr %12
  %251 = select i1 %150, ptr %243, ptr %242
  %252 = load ptr, ptr %250, align 8, !tbaa !12
  %253 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %251, ptr noundef %252) #15
  store ptr %253, ptr %250, align 8, !tbaa !12
  br label %254

254:                                              ; preds = %249, %246
  %255 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %256 = load i64, ptr %255, align 8, !tbaa !35
  %257 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %258 = load i64, ptr %257, align 8, !tbaa !35
  %259 = sub nsw i64 %256, %258
  %260 = load i32, ptr %203, align 8
  %261 = and i32 %260, 65535
  %262 = icmp eq i32 %261, 30
  br i1 %262, label %263, label %266

263:                                              ; preds = %254
  %264 = getelementptr inbounds %struct.rtx_def, ptr %203, i64 0, i32 1
  %265 = load i64, ptr %264, align 8, !tbaa !35
  br label %270

266:                                              ; preds = %254
  %267 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %268 = load i64, ptr %267, align 8, !tbaa !35
  %269 = sub nsw i64 %268, %259
  br label %270

270:                                              ; preds = %266, %263
  %271 = phi i64 [ %265, %263 ], [ %269, %266 ]
  %272 = load i32, ptr %204, align 8
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %273, 30
  %275 = select i1 %274, ptr %204, ptr %101
  %276 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1
  %277 = load i64, ptr %276, align 8, !tbaa !35
  %278 = sub nsw i64 %271, %277
  %279 = sdiv i64 %278, %259
  %280 = add nsw i64 %279, 1
  store i64 %280, ptr %16, align 8, !tbaa !66
  %281 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %282 = icmp eq ptr %105, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %270
  %284 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef nonnull %204, ptr noundef nonnull %207) #15
  %285 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef %284, ptr noundef %202) #15
  store ptr %285, ptr %5, align 8, !tbaa !5
  %286 = load ptr, ptr %6, align 8, !tbaa !5
  br label %291

287:                                              ; preds = %270
  %288 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef nonnull %203, ptr noundef nonnull %207) #15
  %289 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef %288, ptr noundef %202) #15
  store ptr %289, ptr %6, align 8, !tbaa !5
  %290 = load ptr, ptr %5, align 8, !tbaa !5
  br label %291

291:                                              ; preds = %287, %283
  %292 = phi ptr [ %289, %287 ], [ %286, %283 ]
  %293 = phi ptr [ %290, %287 ], [ %285, %283 ]
  %294 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %293, i32 noundef %88) #16
  %295 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %292, i32 noundef %88) #16
  %296 = call i32 @reverse_condition(i32 noundef %183) #15
  %297 = call ptr @simplify_gen_relational(i32 noundef %296, i32 noundef 16, i32 noundef %90, ptr noundef %294, ptr noundef %295) #15
  %298 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %299 = icmp eq ptr %297, %298
  br i1 %299, label %483, label %300

300:                                              ; preds = %291
  %301 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %302 = icmp eq ptr %297, %301
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %11, align 8, !tbaa !64
  %305 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %297, ptr noundef %304) #15
  store ptr %305, ptr %11, align 8, !tbaa !64
  br label %306

306:                                              ; preds = %132, %300, %303
  %307 = phi ptr [ %133, %132 ], [ %111, %300 ], [ %111, %303 ]
  %308 = phi ptr [ %134, %132 ], [ %105, %300 ], [ %105, %303 ]
  %309 = phi ptr [ %136, %132 ], [ %293, %300 ], [ %293, %303 ]
  %310 = phi ptr [ %135, %132 ], [ %292, %300 ], [ %292, %303 ]
  %311 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef %310, ptr noundef %309) #15
  store ptr %311, ptr %6, align 8, !tbaa !5
  %312 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  store ptr %312, ptr %5, align 8, !tbaa !5
  %313 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %88, ptr noundef %308, ptr noundef %307) #15
  %314 = getelementptr inbounds %struct.rtx_def, ptr %313, i64 0, i32 1
  %315 = load i64, ptr %314, align 8, !tbaa !35
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %306
  %318 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %88, ptr noundef nonnull %313, i32 noundef %90) #15
  %319 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %88, ptr noundef %311, i32 noundef %90) #15
  br label %320

320:                                              ; preds = %317, %306
  %321 = phi ptr [ %319, %317 ], [ %311, %306 ]
  %322 = phi ptr [ %318, %317 ], [ %313, %306 ]
  %323 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %322, i32 noundef %88) #16
  %324 = getelementptr inbounds %struct.rtx_def, ptr %323, i64 0, i32 1
  %325 = load i64, ptr %324, align 8, !tbaa !35
  %326 = and i64 %325, 1
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %337

328:                                              ; preds = %320, %328
  %329 = phi i64 [ %333, %328 ], [ 1, %320 ]
  %330 = phi i64 [ %334, %328 ], [ %95, %320 ]
  %331 = phi i64 [ %332, %328 ], [ %325, %320 ]
  %332 = lshr exact i64 %331, 1
  %333 = shl i64 %329, 1
  %334 = add i64 %330, -1
  %335 = and i64 %331, 2
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %328, label %337, !llvm.loop !87

337:                                              ; preds = %328, %320
  %338 = phi i64 [ %325, %320 ], [ %332, %328 ]
  %339 = phi i64 [ %95, %320 ], [ %334, %328 ]
  %340 = phi i64 [ 1, %320 ], [ %333, %328 ]
  %341 = add i64 %339, -1
  %342 = shl i64 2, %341
  %343 = add i64 %342, -1
  %344 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %343) #15
  %345 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %321, i32 noundef %88) #16
  %346 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %340) #15
  %347 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %90, ptr noundef %345, ptr noundef %346) #15
  %348 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %349 = call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef 16, i32 noundef %90, ptr noundef %347, ptr noundef %348) #15
  %350 = load ptr, ptr %12, align 8, !tbaa !56
  %351 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %349, ptr noundef %350) #15
  store ptr %351, ptr %12, align 8, !tbaa !56
  %352 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %340) #15
  %353 = call ptr @simplify_gen_binary(i32 noundef 59, i32 noundef %90, ptr noundef %345, ptr noundef %352) #15
  %354 = trunc i64 %339 to i32
  %355 = call fastcc i64 @inverse(i64 noundef %338, i32 noundef %354) #16
  %356 = call ptr @gen_int_mode(i64 noundef %355, i32 noundef %90) #15
  %357 = call ptr @simplify_gen_binary(i32 noundef 52, i32 noundef %90, ptr noundef %353, ptr noundef %356) #15
  %358 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef %90, ptr noundef %357, ptr noundef %344) #15
  br label %434

359:                                              ; preds = %241
  %360 = icmp eq ptr %111, %243
  br i1 %360, label %361, label %390

361:                                              ; preds = %359
  %362 = load ptr, ptr %5, align 8, !tbaa !5
  %363 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %362, i32 noundef %88) #16
  %364 = load ptr, ptr %6, align 8, !tbaa !5
  %365 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %364, i32 noundef %88) #16
  %366 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef nonnull %105, i32 noundef %88) #16
  %367 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %90, ptr noundef %103, ptr noundef %366) #15
  br i1 %150, label %377, label %368

368:                                              ; preds = %361
  %369 = call i32 @reverse_condition(i32 noundef %183) #15
  %370 = call ptr @simplify_gen_relational(i32 noundef %369, i32 noundef 16, i32 noundef %90, ptr noundef %365, ptr noundef %367) #15
  %371 = call ptr @copy_rtx(ptr noundef %363) #15
  %372 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %90, ptr noundef %371, ptr noundef nonnull %105) #15
  %373 = call ptr @copy_rtx(ptr noundef %365) #15
  %374 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %90, ptr noundef %373, ptr noundef nonnull %105) #15
  %375 = call ptr @simplify_gen_relational(i32 noundef %183, i32 noundef 16, i32 noundef %90, ptr noundef %372, ptr noundef %374) #15
  %376 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef %370, ptr noundef %375) #15
  br label %379

377:                                              ; preds = %361
  %378 = call ptr @simplify_gen_relational(i32 noundef %183, i32 noundef 16, i32 noundef %90, ptr noundef %365, ptr noundef %367) #15
  br label %379

379:                                              ; preds = %377, %368
  %380 = phi ptr [ %10, %377 ], [ %12, %368 ]
  %381 = phi ptr [ %378, %377 ], [ %376, %368 ]
  %382 = load ptr, ptr %380, align 8, !tbaa !12
  %383 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %381, ptr noundef %382) #15
  store ptr %383, ptr %380, align 8, !tbaa !12
  %384 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef %364, ptr noundef nonnull %105) #15
  %385 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %384, i32 noundef %88) #16
  %386 = call i32 @reverse_condition(i32 noundef %183) #15
  %387 = call ptr @simplify_gen_relational(i32 noundef %386, i32 noundef 16, i32 noundef %90, ptr noundef %363, ptr noundef %385) #15
  %388 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %90, ptr noundef %365, ptr noundef nonnull %105) #15
  %389 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %90, ptr noundef %388, ptr noundef %363) #15
  br label %420

390:                                              ; preds = %359
  %391 = call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %90, ptr noundef nonnull %111, i32 noundef %90) #15
  %392 = load ptr, ptr %5, align 8, !tbaa !5
  %393 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %392, i32 noundef %88) #16
  %394 = load ptr, ptr %6, align 8, !tbaa !5
  %395 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %394, i32 noundef %88) #16
  %396 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %391, i32 noundef %88) #16
  %397 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %90, ptr noundef %101, ptr noundef %396) #15
  br i1 %150, label %407, label %398

398:                                              ; preds = %390
  %399 = call i32 @reverse_condition(i32 noundef %183) #15
  %400 = call ptr @simplify_gen_relational(i32 noundef %399, i32 noundef 16, i32 noundef %90, ptr noundef %397, ptr noundef %393) #15
  %401 = call ptr @copy_rtx(ptr noundef %393) #15
  %402 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %90, ptr noundef %401, ptr noundef %391) #15
  %403 = call ptr @copy_rtx(ptr noundef %395) #15
  %404 = call ptr @simplify_gen_binary(i32 noundef 60, i32 noundef %90, ptr noundef %403, ptr noundef %391) #15
  %405 = call ptr @simplify_gen_relational(i32 noundef %183, i32 noundef 16, i32 noundef %90, ptr noundef %402, ptr noundef %404) #15
  %406 = call ptr @simplify_gen_binary(i32 noundef 61, i32 noundef 16, ptr noundef %400, ptr noundef %405) #15
  br label %409

407:                                              ; preds = %390
  %408 = call ptr @simplify_gen_relational(i32 noundef %183, i32 noundef 16, i32 noundef %90, ptr noundef %397, ptr noundef %393) #15
  br label %409

409:                                              ; preds = %407, %398
  %410 = phi ptr [ %10, %407 ], [ %12, %398 ]
  %411 = phi ptr [ %408, %407 ], [ %406, %398 ]
  %412 = load ptr, ptr %410, align 8, !tbaa !12
  %413 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %411, ptr noundef %412) #15
  store ptr %413, ptr %410, align 8, !tbaa !12
  %414 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %88, ptr noundef %392, ptr noundef nonnull %111) #15
  %415 = call ptr @lowpart_subreg(i32 noundef %90, ptr noundef %414, i32 noundef %88) #16
  %416 = call i32 @reverse_condition(i32 noundef %183) #15
  %417 = call ptr @simplify_gen_relational(i32 noundef %416, i32 noundef 16, i32 noundef %90, ptr noundef %415, ptr noundef %395) #15
  %418 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %90, ptr noundef %393, ptr noundef %391) #15
  %419 = call ptr @simplify_gen_binary(i32 noundef 50, i32 noundef %90, ptr noundef %395, ptr noundef %418) #15
  br label %420

420:                                              ; preds = %409, %379
  %421 = phi ptr [ %387, %379 ], [ %417, %409 ]
  %422 = phi ptr [ %105, %379 ], [ %391, %409 ]
  %423 = phi ptr [ %389, %379 ], [ %419, %409 ]
  %424 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %425 = icmp eq ptr %421, %424
  br i1 %425, label %483, label %426

426:                                              ; preds = %420
  %427 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %428 = icmp eq ptr %421, %427
  br i1 %428, label %432, label %429

429:                                              ; preds = %426
  %430 = load ptr, ptr %11, align 8, !tbaa !64
  %431 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %421, ptr noundef %430) #15
  store ptr %431, ptr %11, align 8, !tbaa !64
  br label %432

432:                                              ; preds = %426, %429
  %433 = call ptr @simplify_gen_binary(i32 noundef 59, i32 noundef %90, ptr noundef %423, ptr noundef %422) #15
  br label %434

434:                                              ; preds = %432, %337
  %435 = phi ptr [ %433, %432 ], [ %358, %337 ]
  store ptr %435, ptr %15, align 8, !tbaa !65
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %10) #16
  %436 = load ptr, ptr %10, align 8, !tbaa !63
  %437 = icmp eq ptr %436, null
  br i1 %437, label %443, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.rtx_def, ptr %436, i64 0, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !35
  %441 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %442 = icmp eq ptr %440, %441
  br i1 %442, label %495, label %443

443:                                              ; preds = %438, %434
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %11) #16
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %12) #16
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %15) #16
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %10) #16
  %444 = load ptr, ptr %10, align 8, !tbaa !63
  %445 = icmp eq ptr %444, null
  br i1 %445, label %451, label %446

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct.rtx_def, ptr %444, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !35
  %449 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %450 = icmp eq ptr %448, %449
  br i1 %450, label %495, label %451

451:                                              ; preds = %446, %443
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %11) #16
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %12) #16
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %15) #16
  %452 = load ptr, ptr %11, align 8, !tbaa !64
  %453 = icmp eq ptr %452, null
  br i1 %453, label %459, label %454

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.rtx_def, ptr %452, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !35
  %457 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %458 = icmp eq ptr %456, %457
  br i1 %458, label %492, label %459

459:                                              ; preds = %454, %451
  %460 = load ptr, ptr %15, align 8, !tbaa !65
  %461 = load i32, ptr %460, align 8
  %462 = and i32 %461, 65535
  %463 = icmp eq i32 %462, 30
  br i1 %463, label %464, label %474

464:                                              ; preds = %459
  %465 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1
  %466 = load i64, ptr %465, align 8, !tbaa !35
  store i8 1, ptr %14, align 1, !tbaa !54
  %467 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 10
  %468 = load i32, ptr %467, align 4, !tbaa !88
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %469
  %471 = load i64, ptr %470, align 8, !tbaa !47
  %472 = and i64 %471, %466
  %473 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 4
  store i64 %472, ptr %473, align 8, !tbaa !55
  store i64 %472, ptr %16, align 8, !tbaa !66
  br label %496

474:                                              ; preds = %459
  %475 = load i64, ptr %16, align 8, !tbaa !66
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %474
  %478 = call fastcc i64 @determine_max_iter(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %435) #16
  store i64 %478, ptr %16, align 8, !tbaa !66
  br label %479

479:                                              ; preds = %477, %474
  store ptr %435, ptr %15, align 8, !tbaa !65
  br label %496

480:                                              ; preds = %191, %186
  %481 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %482 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %481, ptr noundef null) #15
  store ptr %482, ptr %12, align 8, !tbaa !56
  br label %483

483:                                              ; preds = %480, %420, %291, %161, %152
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %10) #16
  %484 = load ptr, ptr %10, align 8, !tbaa !63
  %485 = icmp eq ptr %484, null
  br i1 %485, label %491, label %486

486:                                              ; preds = %483
  %487 = getelementptr inbounds %struct.rtx_def, ptr %484, i64 0, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !35
  %489 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %490 = icmp eq ptr %488, %489
  br i1 %490, label %495, label %491

491:                                              ; preds = %486, %483
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %12) #16
  br label %492

492:                                              ; preds = %454, %491
  store i8 1, ptr %14, align 1, !tbaa !54
  %493 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 4
  store ptr null, ptr %11, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %493, i8 0, i64 16, i1 false)
  %494 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  store ptr %494, ptr %15, align 8, !tbaa !65
  br label %496

495:                                              ; preds = %126, %39, %122, %486, %446, %438, %145, %120, %87, %109, %83, %79, %68, %74, %56, %46
  store i8 0, ptr %13, align 8, !tbaa !48
  br label %496

496:                                              ; preds = %464, %479, %495, %492
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @canonicalize_iv_subregs(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %155

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !12
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %155

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %155

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 7
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %155

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, %11
  br i1 %27, label %28, label %155

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !17
  %31 = icmp eq ptr %30, %16
  br i1 %31, label %32, label %155

32:                                               ; preds = %28
  switch i32 %2, label %66 [
    i32 84, label %33
    i32 85, label %33
    i32 88, label %41
    i32 89, label %41
    i32 80, label %49
  ]

33:                                               ; preds = %32, %32
  %34 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !15
  %36 = icmp eq i32 %35, 99
  br i1 %36, label %155, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !15
  %40 = icmp eq i32 %39, 99
  br i1 %40, label %155, label %67

41:                                               ; preds = %32, %32
  %42 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !15
  %44 = icmp eq i32 %43, 98
  br i1 %44, label %155, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !15
  %48 = icmp eq i32 %47, 98
  br i1 %48, label %155, label %67

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !15
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !15
  br i1 %52, label %59, label %55

55:                                               ; preds = %49
  %56 = icmp eq i32 %54, 0
  %57 = icmp eq i32 %51, %54
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %155

59:                                               ; preds = %49, %55
  %60 = icmp eq i32 %51, 98
  %61 = zext i1 %60 to i8
  %62 = icmp eq i32 %54, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = icmp eq i32 %54, 98
  %65 = zext i1 %64 to i8
  br label %67

66:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2129, ptr noundef nonnull @.str.9) #15
  br label %67

67:                                               ; preds = %45, %37, %59, %63, %66
  %68 = phi i8 [ undef, %66 ], [ %65, %63 ], [ %61, %59 ], [ 1, %37 ], [ 0, %45 ]
  %69 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !14
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !35
  %74 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !14
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !35
  %79 = icmp ult i8 %73, %78
  %80 = select i1 %79, i32 %75, i32 %70
  %81 = icmp eq i32 %70, %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !13
  %85 = icmp eq i32 %84, %70
  br i1 %85, label %86, label %155

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %91, label %155

91:                                               ; preds = %86
  %92 = icmp eq i8 %68, 0
  %93 = select i1 %92, i32 99, i32 98
  %94 = load ptr, ptr %0, align 8, !tbaa !5
  %95 = tail call ptr @simplify_gen_unary(i32 noundef %93, i32 noundef %80, ptr noundef %94, i32 noundef %70) #15
  store ptr %95, ptr %0, align 8, !tbaa !5
  store i32 %80, ptr %69, align 8, !tbaa !14
  %96 = load i32, ptr %74, align 8, !tbaa !14
  br label %97

97:                                               ; preds = %91, %67
  %98 = phi i32 [ %80, %91 ], [ %70, %67 ]
  %99 = phi i32 [ %96, %91 ], [ %75, %67 ]
  %100 = icmp eq i32 %99, %80
  br i1 %100, label %116, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %103 = load i32, ptr %102, align 4, !tbaa !13
  %104 = icmp eq i32 %103, %99
  br i1 %104, label %105, label %155

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  %108 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %155

110:                                              ; preds = %105
  %111 = icmp eq i8 %68, 0
  %112 = select i1 %111, i32 99, i32 98
  %113 = load ptr, ptr %1, align 8, !tbaa !5
  %114 = tail call ptr @simplify_gen_unary(i32 noundef %112, i32 noundef %80, ptr noundef %113, i32 noundef %99) #15
  store ptr %114, ptr %1, align 8, !tbaa !5
  store i32 %80, ptr %74, align 8, !tbaa !14
  %115 = load i32, ptr %69, align 8, !tbaa !14
  br label %116

116:                                              ; preds = %110, %97
  %117 = phi i32 [ %115, %110 ], [ %98, %97 ]
  %118 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  %119 = load i32, ptr %118, align 4, !tbaa !13
  %120 = icmp eq i32 %119, %117
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  %124 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %125 = icmp eq ptr %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %128 = load i32, ptr %127, align 4, !tbaa !13
  %129 = icmp eq i32 %117, %128
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  tail call fastcc void @shorten_into_mode(ptr noundef nonnull %0, i32 noundef %128, i32 noundef %2, i8 noundef zeroext %68, ptr noundef %3) #16
  %131 = load i32, ptr %74, align 8, !tbaa !14
  br label %132

132:                                              ; preds = %130, %126, %121, %116
  %133 = phi i32 [ %131, %130 ], [ %80, %126 ], [ %80, %121 ], [ %80, %116 ]
  %134 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 6
  %135 = load i32, ptr %134, align 4, !tbaa !13
  %136 = icmp eq i32 %135, %133
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.rtx_iv, ptr %1, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !11
  %140 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, ptr %118, align 4, !tbaa !13
  %144 = icmp eq i32 %143, %133
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = tail call i32 @swap_condition(i32 noundef %2) #15
  tail call fastcc void @shorten_into_mode(ptr noundef nonnull %1, i32 noundef %143, i32 noundef %146, i8 noundef zeroext %68, ptr noundef %3) #16
  %147 = load i32, ptr %134, align 4, !tbaa !13
  br label %148

148:                                              ; preds = %145, %142, %137, %132
  %149 = phi i32 [ %147, %145 ], [ %133, %142 ], [ %133, %137 ], [ %135, %132 ]
  %150 = load i32, ptr %118, align 4, !tbaa !13
  %151 = icmp eq i32 %150, %149
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 10
  store i32 %149, ptr %153, align 4, !tbaa !88
  %154 = getelementptr inbounds %struct.niter_desc, ptr %3, i64 0, i32 9
  store i8 %68, ptr %154, align 8, !tbaa !89
  br label %155

155:                                              ; preds = %148, %101, %105, %82, %86, %55, %41, %45, %33, %37, %19, %24, %28, %4, %9, %14, %152
  %156 = phi i8 [ 1, %152 ], [ 0, %14 ], [ 0, %9 ], [ 0, %4 ], [ 0, %28 ], [ 0, %24 ], [ 0, %19 ], [ 0, %37 ], [ 0, %33 ], [ 0, %45 ], [ 0, %41 ], [ 0, %55 ], [ 0, %86 ], [ 0, %82 ], [ 0, %105 ], [ 0, %101 ], [ 0, %148 ]
  ret i8 %156
}

; Function Attrs: optsize
declare void @get_mode_bounds(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @inverse(i64 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = add i32 %1, -1
  %4 = zext nneg i32 %3 to i64
  %5 = shl i64 2, %4
  %6 = add i64 %5, -1
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %16, %8 ], [ 0, %2 ]
  %10 = phi i64 [ %13, %8 ], [ 1, %2 ]
  %11 = phi i64 [ %15, %8 ], [ %0, %2 ]
  %12 = mul i64 %10, %11
  %13 = and i64 %12, %6
  %14 = mul i64 %11, %11
  %15 = and i64 %14, %6
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %8, !llvm.loop !90

18:                                               ; preds = %8, %2
  %19 = phi i64 [ 1, %2 ], [ %13, %8 ]
  ret i64 %19
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %9 = load ptr, ptr %2, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %290, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %290, label %18

18:                                               ; preds = %11
  %19 = icmp eq i32 %13, 3
  br i1 %19, label %20, label %57

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  store ptr %22, ptr %4, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  store ptr %24, ptr %5, align 8, !tbaa !12
  call fastcc void @eliminate_implied_conditions(i32 noundef %1, ptr noundef nonnull %4, ptr noundef %24) #16
  switch i32 %1, label %26 [
    i32 61, label %27
    i32 62, label %25
  ]

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1856, ptr noundef nonnull @.str.9) #15
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #16
  br label %34

27:                                               ; preds = %20, %25
  %28 = phi ptr [ @const_true_rtx, %25 ], [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %20 ]
  %29 = phi ptr [ getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), %25 ], [ @const_true_rtx, %20 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !12
  %31 = load ptr, ptr %28, align 8, !tbaa !12
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #16
  %32 = load ptr, ptr %4, align 8, !tbaa !12
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %40

34:                                               ; preds = %26, %27
  %35 = phi ptr [ undef, %26 ], [ %31, %27 ]
  %36 = load ptr, ptr %2, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  store ptr %35, ptr %37, align 8, !tbaa !35
  %38 = load ptr, ptr %2, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %39, align 8, !tbaa !35
  br label %290

40:                                               ; preds = %27
  %41 = icmp eq ptr %32, %30
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store ptr %24, ptr %2, align 8, !tbaa !12
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) #16
  br label %290

43:                                               ; preds = %40
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #16
  %44 = load ptr, ptr %5, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = icmp eq ptr %48, %31
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store ptr %44, ptr %2, align 8, !tbaa !12
  br label %290

51:                                               ; preds = %46, %43
  %52 = load ptr, ptr %4, align 8, !tbaa !12
  %53 = load ptr, ptr %2, align 8, !tbaa !12
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !35
  %55 = load ptr, ptr %2, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %44, ptr %56, align 8, !tbaa !35
  br label %290

57:                                               ; preds = %18
  %58 = icmp eq i32 %1, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1885, ptr noundef nonnull @.str.9) #15
  br label %60

60:                                               ; preds = %57, %59
  br label %61

61:                                               ; preds = %60, %61
  %62 = tail call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @replace_single_def_regs, ptr noundef nonnull %2) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %61

64:                                               ; preds = %61
  %65 = load ptr, ptr %2, align 8, !tbaa !12
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !33
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %290, label %72

72:                                               ; preds = %64
  %73 = tail call ptr @loop_preheader_edge(ptr noundef %0) #15
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  %75 = load ptr, ptr @cfun, align 8, !tbaa !12
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !91
  %78 = load ptr, ptr %77, align 8, !tbaa !93
  %79 = icmp eq ptr %74, %78
  br i1 %79, label %290, label %80

80:                                               ; preds = %72
  %81 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #15
  %82 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #15
  %83 = load ptr, ptr %2, align 8, !tbaa !12
  store ptr null, ptr %6, align 8, !tbaa !12
  br label %84

84:                                               ; preds = %276, %80
  %85 = phi ptr [ %73, %80 ], [ %278, %276 ]
  %86 = phi ptr [ %83, %80 ], [ %265, %276 ]
  %87 = phi i8 [ 1, %80 ], [ %266, %276 ]
  %88 = load ptr, ptr %85, align 8, !tbaa !62
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct.rtl_bb_info, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !68
  %93 = tail call i32 @any_condjump_p(ptr noundef %92) #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %146, label %95

95:                                               ; preds = %84
  %96 = load ptr, ptr %85, align 8, !tbaa !62
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %96, i64 0, i32 7
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = getelementptr inbounds %struct.rtl_bb_info, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !68
  %101 = tail call ptr @get_condition(ptr noundef %100, ptr noundef null, i32 noundef 0, i32 noundef 1) #15
  %102 = icmp eq ptr %101, null
  br i1 %102, label %146, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.edge_def, ptr %85, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !72
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = tail call ptr @reversed_condition(ptr noundef nonnull %101) #15
  %110 = icmp eq ptr %109, null
  br i1 %110, label %146, label %111

111:                                              ; preds = %103, %108
  %112 = phi ptr [ %109, %108 ], [ %101, %103 ]
  %113 = load ptr, ptr %2, align 8, !tbaa !12
  tail call void @simplify_using_condition(ptr noundef nonnull %112, ptr noundef nonnull %2, ptr noundef %81) #16
  %114 = load ptr, ptr %2, align 8, !tbaa !12
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load ptr, ptr %6, align 8, !tbaa !12
  br label %143

118:                                              ; preds = %111
  %119 = load i32, ptr %114, align 8
  %120 = and i32 %119, 65535
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !33
  %124 = icmp eq i32 %123, 9
  br i1 %124, label %279, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr %6, align 8, !tbaa !35
  %127 = icmp eq ptr %126, null
  br i1 %127, label %143, label %132

128:                                              ; preds = %132
  %129 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  %131 = icmp eq ptr %130, null
  br i1 %131, label %143, label %132, !llvm.loop !95

132:                                              ; preds = %125, %128
  %133 = phi ptr [ %130, %128 ], [ %126, %125 ]
  %134 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !35
  tail call void @simplify_using_condition(ptr noundef %135, ptr noundef nonnull %2, ptr noundef %81) #16
  %136 = load ptr, ptr %2, align 8, !tbaa !12
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !33
  %142 = icmp eq i32 %141, 9
  br i1 %142, label %279, label %128

143:                                              ; preds = %128, %116, %125
  %144 = phi ptr [ %117, %116 ], [ null, %125 ], [ %126, %128 ]
  %145 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %112, ptr noundef %144) #15
  store ptr %145, ptr %6, align 8, !tbaa !12
  br label %146

146:                                              ; preds = %95, %108, %143, %84
  %147 = load ptr, ptr %85, align 8, !tbaa !62
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 7
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = getelementptr inbounds %struct.rtl_bb_info, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !35
  %152 = icmp eq ptr %151, null
  br i1 %152, label %263, label %153

153:                                              ; preds = %146, %255
  %154 = phi ptr [ %259, %255 ], [ %151, %146 ]
  %155 = phi i8 [ %257, %255 ], [ %87, %146 ]
  %156 = phi ptr [ %256, %255 ], [ %86, %146 ]
  %157 = load ptr, ptr %85, align 8, !tbaa !62
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %157, i64 0, i32 7
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = load ptr, ptr %159, align 8, !tbaa !96
  %161 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !35
  %163 = icmp eq ptr %154, %162
  br i1 %163, label %263, label %164

164:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %165 = load ptr, ptr %2, align 8, !tbaa !12
  %166 = load i32, ptr %154, align 8
  %167 = and i32 %166, 65535
  %168 = add nsw i32 %167, -7
  %169 = icmp ult i32 %168, 4
  br i1 %169, label %170, label %255

170:                                              ; preds = %164
  tail call void @bitmap_clear(ptr noundef %82) #15
  %171 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !35
  tail call void @note_stores(ptr noundef %172, ptr noundef nonnull @mark_altered, ptr noundef %82) #15
  %173 = load i32, ptr %154, align 8
  %174 = and i32 %173, 65535
  %175 = icmp eq i32 %174, 10
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !47
  br label %178

178:                                              ; preds = %176, %188
  %179 = phi i64 [ %177, %176 ], [ %189, %188 ]
  %180 = phi i64 [ 0, %176 ], [ %190, %188 ]
  %181 = shl nuw nsw i64 1, %180
  %182 = and i64 %179, %181
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %178
  %185 = trunc i64 %180 to i32
  %186 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %82, i32 noundef %185) #15
  %187 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !47
  br label %188

188:                                              ; preds = %178, %184
  %189 = phi i64 [ %179, %178 ], [ %187, %184 ]
  %190 = add nuw nsw i64 %180, 1
  %191 = icmp eq i64 %190, 53
  br i1 %191, label %192, label %178, !llvm.loop !97

192:                                              ; preds = %188, %170
  %193 = call fastcc zeroext i8 @suitable_set_for_replacement(ptr noundef nonnull %154, ptr noundef nonnull %8, ptr noundef nonnull %7) #16, !range !34
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %235, label %195

195:                                              ; preds = %192
  %196 = load ptr, ptr %8, align 8, !tbaa !12
  %197 = load ptr, ptr %7, align 8, !tbaa !12
  tail call fastcc void @replace_in_expr(ptr noundef nonnull %2, ptr noundef %196, ptr noundef %197) #16
  %198 = load ptr, ptr %2, align 8, !tbaa !12
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !33
  %204 = icmp eq i32 %203, 9
  br i1 %204, label %254, label %205

205:                                              ; preds = %195
  %206 = load ptr, ptr %6, align 8, !tbaa !12
  %207 = icmp eq ptr %206, null
  br i1 %207, label %238, label %208

208:                                              ; preds = %205, %231
  %209 = phi ptr [ %233, %231 ], [ %206, %205 ]
  %210 = phi ptr [ %232, %231 ], [ %6, %205 ]
  %211 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !35
  %213 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1, i32 0, i32 0, i64 1
  %214 = load ptr, ptr %8, align 8, !tbaa !12
  %215 = load ptr, ptr %7, align 8, !tbaa !12
  tail call fastcc void @replace_in_expr(ptr noundef nonnull %211, ptr noundef %214, ptr noundef %215) #16
  %216 = load ptr, ptr %211, align 8, !tbaa !35
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, 65535
  %219 = zext nneg i32 %218 to i64
  %220 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !33
  %222 = icmp eq i32 %221, 9
  br i1 %222, label %223, label %225

223:                                              ; preds = %208
  %224 = load ptr, ptr %213, align 8, !tbaa !12
  store ptr %224, ptr %210, align 8, !tbaa !12
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %209) #15
  br label %231

225:                                              ; preds = %208
  %226 = icmp eq ptr %212, %216
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = load ptr, ptr %2, align 8, !tbaa !12
  %229 = icmp eq ptr %165, %228
  br i1 %229, label %231, label %230

230:                                              ; preds = %227, %225
  tail call void @simplify_using_condition(ptr noundef nonnull %216, ptr noundef nonnull %2, ptr noundef %81) #16
  br label %231

231:                                              ; preds = %227, %230, %223
  %232 = phi ptr [ %210, %223 ], [ %213, %230 ], [ %213, %227 ]
  %233 = load ptr, ptr %232, align 8, !tbaa !12
  %234 = icmp eq ptr %233, null
  br i1 %234, label %238, label %208, !llvm.loop !98

235:                                              ; preds = %192
  %236 = tail call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @altered_reg_used, ptr noundef %82) #15
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %231, %205, %235
  %239 = load ptr, ptr %2, align 8, !tbaa !12
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !33
  %245 = icmp eq i32 %244, 9
  br i1 %245, label %254, label %246

246:                                              ; preds = %238
  %247 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %81, ptr noundef %82) #15
  %248 = tail call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @altered_reg_used, ptr noundef %81) #15
  %249 = icmp ne i32 %248, 0
  %250 = icmp eq i8 %155, 0
  %251 = select i1 %249, i1 true, i1 %250
  br i1 %251, label %255, label %252

252:                                              ; preds = %246
  %253 = load ptr, ptr %2, align 8, !tbaa !12
  br label %255

254:                                              ; preds = %195, %238, %235
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br label %279

255:                                              ; preds = %164, %252, %246
  %256 = phi ptr [ %156, %246 ], [ %253, %252 ], [ %156, %164 ]
  %257 = phi i8 [ 0, %246 ], [ %155, %252 ], [ %155, %164 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %258 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %259 = load ptr, ptr %258, align 8, !tbaa !35
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %153, !llvm.loop !99

261:                                              ; preds = %255
  %262 = load ptr, ptr %85, align 8, !tbaa !62
  br label %263

263:                                              ; preds = %153, %261, %146
  %264 = phi ptr [ %147, %146 ], [ %262, %261 ], [ %157, %153 ]
  %265 = phi ptr [ %86, %146 ], [ %256, %261 ], [ %156, %153 ]
  %266 = phi i8 [ %87, %146 ], [ %257, %261 ], [ %155, %153 ]
  %267 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %264) #16, !range !34
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %279, label %269

269:                                              ; preds = %263
  %270 = tail call fastcc ptr @single_pred(ptr noundef %264) #16
  %271 = load ptr, ptr @cfun, align 8, !tbaa !12
  %272 = getelementptr inbounds %struct.function, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !91
  %274 = load ptr, ptr %273, align 8, !tbaa !93
  %275 = icmp eq ptr %270, %274
  br i1 %275, label %279, label %276

276:                                              ; preds = %269
  %277 = load ptr, ptr %85, align 8, !tbaa !62
  %278 = tail call fastcc ptr @single_pred_edge(ptr noundef %277) #16
  br label %84

279:                                              ; preds = %118, %269, %263, %132, %254
  %280 = phi ptr [ %156, %254 ], [ %86, %132 ], [ %86, %118 ], [ %265, %263 ], [ %265, %269 ]
  call void @free_EXPR_LIST_list(ptr noundef nonnull %6) #15
  %281 = load ptr, ptr %2, align 8, !tbaa !12
  %282 = load i32, ptr %281, align 8
  %283 = and i32 %282, 65535
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !33
  %287 = icmp eq i32 %286, 9
  br i1 %287, label %289, label %288

288:                                              ; preds = %279
  store ptr %280, ptr %2, align 8, !tbaa !12
  br label %289

289:                                              ; preds = %288, %279
  call void @bitmap_obstack_free(ptr noundef %81) #15
  call void @bitmap_obstack_free(ptr noundef %82) #15
  br label %290

290:                                              ; preds = %72, %64, %11, %3, %289, %51, %50, %42, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @determine_max_iter(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 61
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !35
  %21 = add i64 %20, 1
  %22 = and i64 %21, %20
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %18, %12, %3
  %25 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 10
  %26 = load i32, ptr %25, align 4, !tbaa !88
  %27 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 9
  %28 = load i8, ptr %27, align 8, !tbaa !89
  %29 = zext i8 %28 to i32
  call void @get_mode_bounds(i32 noundef %26, i32 noundef %29, i32 noundef %26, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %30 = load ptr, ptr %5, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !35
  %33 = load ptr, ptr %4, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !35
  %36 = sub nsw i64 %32, %35
  %37 = load i32, ptr %8, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 59
  br i1 %39, label %40, label %49

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !35
  br label %49

49:                                               ; preds = %24, %46
  %50 = phi i64 [ %48, %46 ], [ 1, %24 ]
  %51 = load i8, ptr %27, align 8, !tbaa !89
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 89, i32 85
  %54 = load i32, ptr %25, align 4, !tbaa !88
  %55 = call ptr @simplify_gen_relational(i32 noundef %53, i32 noundef 0, i32 noundef %54, ptr noundef %2, ptr noundef nonnull %30) #15
  store ptr %55, ptr %6, align 8, !tbaa !12
  call fastcc void @simplify_using_initial_values(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6) #16
  %56 = load ptr, ptr %6, align 8, !tbaa !12
  %57 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = add i64 %36, -1
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i64 @fwrite(ptr nonnull @.str.36, i64 32, i64 1, ptr nonnull %61)
  br label %65

65:                                               ; preds = %59, %63, %49
  %66 = phi i64 [ %60, %63 ], [ %60, %59 ], [ %36, %49 ]
  %67 = udiv i64 %66, %50
  br label %68

68:                                               ; preds = %40, %18, %65
  %69 = phi i64 [ %67, %65 ], [ %20, %18 ], [ %36, %40 ]
  %70 = getelementptr inbounds %struct.niter_desc, ptr %1, i64 0, i32 5
  store i64 %69, ptr %70, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret i64 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shorten_into_mode(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %8 = zext i8 %3 to i32
  %9 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !14
  call void @get_mode_bounds(i32 noundef %1, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %11 = load i32, ptr %9, align 8, !tbaa !14
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = load ptr, ptr %6, align 8, !tbaa !12
  %14 = call ptr @simplify_gen_relational(i32 noundef 85, i32 noundef 16, i32 noundef %11, ptr noundef %12, ptr noundef %13) #15
  %15 = load i32, ptr %9, align 8, !tbaa !14
  %16 = load ptr, ptr %0, align 8, !tbaa !5
  %17 = load ptr, ptr %7, align 8, !tbaa !12
  %18 = call ptr @simplify_gen_relational(i32 noundef 83, i32 noundef 16, i32 noundef %15, ptr noundef %16, ptr noundef %17) #15
  switch i32 %2, label %64 [
    i32 84, label %19
    i32 85, label %19
    i32 88, label %19
    i32 89, label %19
    i32 82, label %34
    i32 83, label %34
    i32 86, label %34
    i32 87, label %34
    i32 80, label %49
  ]

19:                                               ; preds = %5, %5, %5, %5
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %21 = icmp eq ptr %14, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %14, ptr noundef %24) #15
  store ptr %25, ptr %23, align 8, !tbaa !56
  %26 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi ptr [ %26, %22 ], [ %14, %19 ]
  %29 = icmp eq ptr %18, %28
  br i1 %29, label %65, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %18, ptr noundef %32) #15
  store ptr %33, ptr %31, align 8, !tbaa !64
  br label %65

34:                                               ; preds = %5, %5, %5, %5
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %36 = icmp eq ptr %18, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %18, ptr noundef %39) #15
  store ptr %40, ptr %38, align 8, !tbaa !56
  %41 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi ptr [ %41, %37 ], [ %18, %34 ]
  %44 = icmp eq ptr %14, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  %48 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %14, ptr noundef %47) #15
  store ptr %48, ptr %46, align 8, !tbaa !64
  br label %65

49:                                               ; preds = %5
  %50 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %51 = icmp eq ptr %18, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %18, ptr noundef %54) #15
  store ptr %55, ptr %53, align 8, !tbaa !56
  %56 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi ptr [ %56, %52 ], [ %18, %49 ]
  %59 = icmp eq ptr %14, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.niter_desc, ptr %4, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %14, ptr noundef %62) #15
  store ptr %63, ptr %61, align 8, !tbaa !56
  br label %65

64:                                               ; preds = %5
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2071, ptr noundef nonnull @.str.9) #15
  br label %65

65:                                               ; preds = %57, %60, %42, %45, %27, %30, %64
  %66 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 6
  store i32 %1, ptr %66, align 4, !tbaa !13
  %67 = icmp eq i8 %3, 0
  %68 = select i1 %67, i32 99, i32 98
  %69 = getelementptr inbounds %struct.rtx_iv, ptr %0, i64 0, i32 2
  store i32 %68, ptr %69, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_implied_conditions(i32 noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %10, %5 ], [ %2, %3 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  tail call fastcc void @eliminate_implied_condition(i32 noundef %0, ptr noundef %7, ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !100

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %17, %12 ], [ %2, %5 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  tail call fastcc void @eliminate_implied_condition(i32 noundef %0, ptr noundef %15, ptr noundef nonnull %1) #16
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !101

19:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @replace_single_def_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %91

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #16
  %9 = load ptr, ptr @df, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %91, label %17

17:                                               ; preds = %7, %73
  %18 = phi ptr [ %81, %73 ], [ %15, %7 ]
  %19 = phi i32 [ %74, %73 ], [ %8, %7 ]
  %20 = getelementptr inbounds %struct.df_base_ref, ptr %18, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %91

23:                                               ; preds = %17
  %24 = load i32, ptr %18, align 8
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %91, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %18, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %91

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @single_set_2(ptr noundef nonnull %30, ptr noundef nonnull %37) #15
  %43 = icmp eq ptr %42, null
  br i1 %43, label %91, label %44

44:                                               ; preds = %35, %41
  %45 = phi ptr [ %42, %41 ], [ %37, %35 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %91

51:                                               ; preds = %44
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #16
  %53 = icmp eq i32 %52, %19
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load ptr, ptr %28, align 8, !tbaa !35
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %56) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !35
  %62 = tail call i32 @function_invariant_p(ptr noundef %61) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  br label %83

67:                                               ; preds = %59, %54
  %68 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 37
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %69) #16
  %75 = load ptr, ptr @df, align 8, !tbaa !12
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !41
  %78 = zext i32 %74 to i64
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !12
  %81 = load ptr, ptr %80, align 8, !tbaa !102
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %17

83:                                               ; preds = %67, %64
  %84 = phi ptr [ %66, %64 ], [ %69, %67 ]
  %85 = tail call i32 @function_invariant_p(ptr noundef %84) #15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %1, align 8, !tbaa !12
  %89 = load ptr, ptr %0, align 8, !tbaa !12
  %90 = tail call ptr @simplify_replace_rtx(ptr noundef %88, ptr noundef %89, ptr noundef %84) #15
  store ptr %90, ptr %1, align 8, !tbaa !12
  br label %91

91:                                               ; preds = %23, %17, %73, %51, %44, %41, %27, %7, %83, %2, %87
  %92 = phi i32 [ 1, %87 ], [ 0, %2 ], [ -1, %83 ], [ -1, %7 ], [ -1, %27 ], [ -1, %41 ], [ -1, %44 ], [ -1, %51 ], [ -1, %73 ], [ -1, %17 ], [ -1, %23 ]
  ret i32 %92
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_altered(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #16
  %18 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %17) #15
  br label %19

19:                                               ; preds = %11, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @suitable_set_for_replacement(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %10) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %15, %14 ], [ %10, %8 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #15
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = select i1 %26, ptr %28, ptr %27
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = tail call fastcc zeroext i8 @simple_rhs_p(ptr noundef %30) #16, !range !34
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store ptr %20, ptr %1, align 8, !tbaa !12
  store ptr %30, ptr %2, align 8, !tbaa !12
  br label %34

34:                                               ; preds = %3, %24, %17, %14, %33
  %35 = phi i8 [ 1, %33 ], [ 0, %14 ], [ 0, %17 ], [ 0, %24 ], [ 0, %3 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_in_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !12
  %5 = tail call ptr @simplify_replace_rtx(ptr noundef %4, ptr noundef %1, ptr noundef %2) #15
  store ptr %5, ptr %0, align 8, !tbaa !12
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %3, %7
  %8 = tail call i32 @for_each_rtx(ptr noundef nonnull %0, ptr noundef nonnull @replace_single_def_regs, ptr noundef nonnull %0) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %7, !llvm.loop !104

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #16
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #16, !range !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 655, ptr noundef nonnull @.str.9) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !105
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #16
  ret ptr %7
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_implied_condition(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  switch i32 %0, label %16 [
    i32 61, label %4
    i32 62, label %10
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 8, !tbaa !12
  %6 = tail call fastcc zeroext i8 @implies_p(ptr noundef %1, ptr noundef %5) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @const_true_rtx, align 8, !tbaa !12
  store ptr %9, ptr %2, align 8, !tbaa !12
  br label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr %2, align 8, !tbaa !12
  %12 = tail call fastcc zeroext i8 @implies_p(ptr noundef %11, ptr noundef %1) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  store ptr %15, ptr %2, align 8, !tbaa !12
  br label %17

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1800, ptr noundef nonnull @.str.9) #15
  br label %17

17:                                               ; preds = %10, %14, %4, %8, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @simple_rhs_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @function_invariant_p(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %53

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %10 = icmp ult i32 %9, 53
  br i1 %10, label %11, label %53

11:                                               ; preds = %8, %4
  %12 = trunc i32 %5 to i16
  switch i16 %12, label %53 [
    i16 49, label %13
    i16 50, label %13
    i16 61, label %13
    i16 65, label %38
    i16 67, label %38
    i16 68, label %38
    i16 52, label %38
  ]

13:                                               ; preds = %11, %11, %11
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #16
  %23 = icmp ult i32 %22, 53
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %13
  %25 = tail call i32 @function_invariant_p(ptr noundef nonnull %15) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, ptr %17, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %17) #16
  %33 = icmp ult i32 %32, 53
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %27
  %35 = tail call i32 @function_invariant_p(ptr noundef nonnull %17) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34, %31
  br label %53

38:                                               ; preds = %11, %11, %11, %11
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = load i32, ptr %40, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %40) #16
  %48 = icmp ult i32 %47, 53
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @function_invariant_p(ptr noundef %42) #15
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i8
  br label %53

53:                                               ; preds = %11, %49, %38, %46, %34, %24, %1, %8, %37
  %54 = phi i8 [ 1, %37 ], [ 1, %8 ], [ 1, %1 ], [ 0, %24 ], [ 0, %34 ], [ 0, %46 ], [ 0, %38 ], [ %52, %49 ], [ 0, %11 ]
  ret i8 %54
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"rtx_iv", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !10, i64 44}
!14 = !{!6, !10, i64 40}
!15 = !{!6, !10, i64 16}
!16 = !{!6, !7, i64 32}
!17 = !{!6, !7, i64 24}
!18 = !{!19, !10, i64 36}
!19 = !{!"loop", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !20, i64 24, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !21, i64 80, !21, i64 96, !8, i64 112, !8, i64 113, !10, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!20 = !{!"lpt_decision", !10, i64 0, !10, i64 4}
!21 = !{!"", !22, i64 0, !22, i64 8}
!22 = !{!"long", !8, i64 0}
!23 = !{!24, !10, i64 80}
!24 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !22, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !10, i64 0}
!28 = !{!"biv_entry", !10, i64 0, !6, i64 8}
!29 = !{!30, !10, i64 164}
!30 = !{!"df", !8, i64 0, !8, i64 64, !7, i64 128, !31, i64 136, !31, i64 176, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !10, i64 256, !10, i64 260, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !10, i64 344, !10, i64 348, !7, i64 352, !10, i64 360, !10, i64 364, !8, i64 365, !8, i64 366}
!31 = !{!"df_ref_info", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!32 = distinct !{!32, !26}
!33 = !{!10, !10, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{!8, !8, i64 0}
!36 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 4, !33, i64 24, i64 8, !12, i64 32, i64 8, !12, i64 40, i64 4, !33, i64 44, i64 4, !33, i64 48, i64 4, !33}
!37 = !{i32 0, i32 4}
!38 = distinct !{!38, !26}
!39 = !{!40, !7, i64 0}
!40 = !{!"df_insn_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!41 = !{!30, !7, i64 216}
!42 = !{!19, !7, i64 16}
!43 = !{!30, !7, i64 128}
!44 = !{!45, !7, i64 32}
!45 = !{!"df_rd_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!46 = distinct !{!46, !26}
!47 = !{!22, !22, i64 0}
!48 = !{!49, !8, i64 16}
!49 = !{!"niter_desc", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 17, !22, i64 24, !22, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !10, i64 68, !7, i64 72}
!50 = !{i64 0, i64 4, !33, i64 8, i64 8, !12}
!51 = !{i64 0, i64 8, !12}
!52 = !{!53, !7, i64 8}
!53 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !22, i64 56}
!54 = !{!49, !8, i64 17}
!55 = !{!49, !22, i64 24}
!56 = !{!49, !7, i64 56}
!57 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 1, !35, i64 17, i64 1, !35, i64 24, i64 8, !47, i64 32, i64 8, !47, i64 40, i64 8, !12, i64 48, i64 8, !12, i64 56, i64 8, !12, i64 64, i64 1, !35, i64 68, i64 4, !33, i64 72, i64 8, !12}
!58 = distinct !{!58, !26}
!59 = distinct !{!59, !26}
!60 = !{!19, !10, i64 0}
!61 = !{!49, !7, i64 0}
!62 = !{!53, !7, i64 0}
!63 = !{!49, !7, i64 40}
!64 = !{!49, !7, i64 48}
!65 = !{!49, !7, i64 72}
!66 = !{!49, !22, i64 32}
!67 = !{!24, !7, i64 24}
!68 = !{!69, !7, i64 8}
!69 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32}
!70 = !{!24, !7, i64 8}
!71 = !{!49, !7, i64 8}
!72 = !{!53, !10, i64 48}
!73 = !{!74, !10, i64 0}
!74 = !{!"", !10, i64 0, !7, i64 8}
!75 = !{!19, !7, i64 64}
!76 = !{!77, !7, i64 8}
!77 = !{!"df_link", !7, i64 0, !7, i64 8}
!78 = !{!77, !7, i64 0}
!79 = !{!30, !7, i64 248}
!80 = !{!40, !10, i64 40}
!81 = !{!82, !10, i64 16}
!82 = !{!"dataflow", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!83 = !{!82, !7, i64 8}
!84 = !{!85, !10, i64 0}
!85 = !{!"VEC_edge_base", !10, i64 0, !10, i64 4, !8, i64 8}
!86 = !{i64 0, i64 64}
!87 = distinct !{!87, !26}
!88 = !{!49, !10, i64 68}
!89 = !{!49, !8, i64 64}
!90 = distinct !{!90, !26}
!91 = !{!92, !7, i64 8}
!92 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!93 = !{!94, !7, i64 0}
!94 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 60, !10, i64 68, !10, i64 72}
!95 = distinct !{!95, !26}
!96 = !{!69, !7, i64 0}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !26}
!100 = distinct !{!100, !26}
!101 = distinct !{!101, !26}
!102 = !{!103, !7, i64 0}
!103 = !{!"df_reg_info", !7, i64 0, !10, i64 8}
!104 = distinct !{!104, !26}
!105 = !{!24, !7, i64 0}
