; ModuleID = 'regstat.c'
source_filename = "regstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }

@regstat_n_sets_and_refs = dso_local local_unnamed_addr global ptr null, align 8
@reg_info_p = dso_local local_unnamed_addr global ptr null, align 8
@reg_info_p_size = dso_local local_unnamed_addr global i64 0, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [10 x i8] c"regstat.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@df_bitmap_obstack = external global %struct.bitmap_obstack, align 8
@setjmp_crosses = internal unnamed_addr global ptr null, align 8
@max_regno = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @regstat_init_n_sets_and_refs() local_unnamed_addr #0 !prof !98 {
  %1 = tail call i32 @max_reg_num() #10
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !99
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !102

4:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 37) #10
  br label %5

5:                                                ; preds = %4, %0
  tail call void @df_grow_reg_info() #10
  %6 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !102

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @.str.1) #10
  br label %9

9:                                                ; preds = %5, %8
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #10
  store ptr %12, ptr @regstat_n_sets_and_refs, align 8, !tbaa !103
  %13 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !105
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %1, 0
  br i1 %14, label %23, label %16, !prof !102

16:                                               ; preds = %9
  br i1 %15, label %86, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr @df, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  br label %30

23:                                               ; preds = %9
  br i1 %15, label %86, label %24, !prof !111

24:                                               ; preds = %23
  %25 = load ptr, ptr @df, align 8, !tbaa !103
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !110
  %28 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  br label %69

30:                                               ; preds = %17, %56
  %31 = phi i64 [ 0, %17 ], [ %67, %56 ]
  %32 = getelementptr inbounds ptr, ptr %20, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  %34 = getelementptr inbounds %struct.df_reg_info, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !112
  %36 = load ptr, ptr %33, align 8, !tbaa !99
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %30, %51
  %39 = phi ptr [ %54, %51 ], [ %36, %30 ]
  %40 = phi i32 [ %52, %51 ], [ %35, %30 ]
  %41 = getelementptr inbounds %struct.df_base_ref, ptr %39, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !99
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %42, align 8, !tbaa !114
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 7
  %49 = sext i1 %48 to i32
  %50 = add nsw i32 %40, %49
  br label %51

51:                                               ; preds = %44, %38
  %52 = phi i32 [ %40, %38 ], [ %50, %44 ]
  %53 = getelementptr inbounds %struct.df_base_ref, ptr %39, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !99
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %38, !llvm.loop !116

56:                                               ; preds = %51, %30
  %57 = phi i32 [ %35, %30 ], [ %52, %51 ]
  %58 = getelementptr inbounds ptr, ptr %22, i64 %31
  %59 = load ptr, ptr %58, align 8, !tbaa !103
  %60 = getelementptr inbounds %struct.df_reg_info, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !112
  %62 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %31
  store i32 %61, ptr %62, align 4, !tbaa !118
  %63 = trunc i64 %31 to i32
  %64 = tail call fastcc i32 @REG_N_SETS(i32 noundef %63) #11
  %65 = add nsw i32 %64, %57
  %66 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %31, i32 1
  store i32 %65, ptr %66, align 4, !tbaa !120
  %67 = add nuw nsw i64 %31, 1
  %68 = icmp eq i64 %67, %10
  br i1 %68, label %86, label %30, !llvm.loop !121

69:                                               ; preds = %24, %69
  %70 = phi i64 [ 0, %24 ], [ %84, %69 ]
  %71 = getelementptr inbounds ptr, ptr %27, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !103
  %73 = getelementptr inbounds %struct.df_reg_info, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !112
  %75 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %70
  store i32 %74, ptr %75, align 4, !tbaa !118
  %76 = getelementptr inbounds ptr, ptr %29, i64 %70
  %77 = load ptr, ptr %76, align 8, !tbaa !103
  %78 = getelementptr inbounds %struct.df_reg_info, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !112
  %80 = trunc i64 %70 to i32
  %81 = tail call fastcc i32 @REG_N_SETS(i32 noundef %80) #11
  %82 = add i32 %81, %79
  %83 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %12, i64 %70, i32 1
  store i32 %82, ptr %83, align 4, !tbaa !120
  %84 = add nuw nsw i64 %70, 1
  %85 = icmp eq i64 %84, %10
  br i1 %85, label %86, label %69, !prof !122, !llvm.loop !123

86:                                               ; preds = %56, %69, %16, %23
  %87 = load i8, ptr @timevar_enable, align 1, !tbaa !99
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89, !prof !102

89:                                               ; preds = %86
  tail call void @timevar_pop_1(i32 noundef 37) #10
  br label %90

90:                                               ; preds = %89, %86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_grow_reg_info() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #3 !prof !124 !PGOFuncName !125 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !103
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !118
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @regstat_free_n_sets_and_refs() local_unnamed_addr #0 !prof !98 {
  %1 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !103
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !126

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 95, ptr noundef nonnull @.str.1) #10
  %4 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !103
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  tail call void @free(ptr noundef %6) #11
  store ptr null, ptr @regstat_n_sets_and_refs, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @regstat_compute_ri() local_unnamed_addr #0 !prof !127 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #10
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #10
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #10
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #10
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  %8 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !128

10:                                               ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 356, ptr noundef nonnull @.str.1) #10
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i8, ptr @timevar_enable, align 1, !tbaa !99
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !128

14:                                               ; preds = %11
  tail call void @timevar_push_1(i32 noundef 37) #10
  br label %15

15:                                               ; preds = %14, %11
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #10
  store ptr %16, ptr @setjmp_crosses, align 8, !tbaa !103
  %17 = tail call i32 @max_reg_num() #10
  store i32 %17, ptr @max_regno, align 4, !tbaa !105
  %18 = sext i32 %17 to i64
  store i64 %18, ptr @reg_info_p_size, align 8, !tbaa !129
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 28) #10
  store ptr %19, ptr @reg_info_p, align 8, !tbaa !103
  %20 = load ptr, ptr @cfun, align 8, !tbaa !103
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !131
  %23 = load ptr, ptr %22, align 8, !tbaa !133
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !137
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %41, label %29, !prof !138

29:                                               ; preds = %15, %29
  %30 = phi ptr [ %34, %29 ], [ %25, %15 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !139
  tail call fastcc void @regstat_bb_compute_ri(i32 noundef %32, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #11
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !135
  %35 = load ptr, ptr @cfun, align 8, !tbaa !103
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !131
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !137
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %41, label %29, !prof !140, !llvm.loop !141

41:                                               ; preds = %29, %15
  tail call void @bitmap_obstack_free(ptr noundef %3) #10
  tail call void @bitmap_obstack_free(ptr noundef %4) #10
  tail call void @bitmap_obstack_free(ptr noundef %5) #10
  %42 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !103
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %42, i32 noundef 53, ptr noundef nonnull %1) #11
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #11, !range !142
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %45, !prof !143

45:                                               ; preds = %41
  %46 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  br label %47

47:                                               ; preds = %45, %47
  %48 = load i32, ptr %1, align 4, !tbaa !105
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.reg_info_t, ptr %46, i64 %49, i32 6
  store i32 0, ptr %50, align 4, !tbaa !144
  %51 = getelementptr inbounds %struct.reg_info_t, ptr %46, i64 %49, i32 2
  store i32 -1, ptr %51, align 4, !tbaa !146
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #11
  %52 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #11, !range !142
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %47, !prof !147, !llvm.loop !148

54:                                               ; preds = %47, %41
  tail call void @bitmap_obstack_free(ptr noundef %6) #10
  tail call void @bitmap_obstack_free(ptr noundef %7) #10
  %55 = load i8, ptr @timevar_enable, align 1, !tbaa !99
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57, !prof !128

57:                                               ; preds = %54
  tail call void @timevar_pop_1(i32 noundef 37) #10
  br label %58

58:                                               ; preds = %57, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @regstat_bb_compute_ri(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !149 !PGOFuncName !150 {
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_iterator, align 8
  %11 = load ptr, ptr @cfun, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %17 = tail call ptr @df_get_live_out(ptr noundef %16) #10
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %17) #10
  tail call void @bitmap_clear(ptr noundef %3) #10
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %8) #11
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %8) #11, !range !142
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20, !prof !152

20:                                               ; preds = %6
  %21 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  br label %22

22:                                               ; preds = %20, %22
  %23 = load i32, ptr %8, align 4, !tbaa !105
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.reg_info_t, ptr %21, i64 %24, i32 6
  store i32 -1, ptr %25, align 4, !tbaa !144
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %8) #11, !range !142
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %22, !prof !153, !llvm.loop !154

28:                                               ; preds = %22, %6
  %29 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #11
  %30 = load ptr, ptr %29, align 8, !tbaa !103
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !155

32:                                               ; preds = %28, %42
  %33 = phi ptr [ %44, %42 ], [ %30, %28 ]
  %34 = phi ptr [ %43, %42 ], [ %29, %28 ]
  %35 = load i32, ptr %33, align 8
  %36 = and i32 %35, 131072
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %33, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !99
  %41 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %40) #10
  br label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds ptr, ptr %34, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !103
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !prof !156, !llvm.loop !157

46:                                               ; preds = %42, %28
  %47 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #11
  %48 = load i32, ptr %8, align 4, !tbaa !105
  %49 = load ptr, ptr %47, align 8, !tbaa !103
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51, !prof !152

51:                                               ; preds = %46, %63
  %52 = phi ptr [ %66, %63 ], [ %49, %46 ]
  %53 = phi ptr [ %65, %63 ], [ %47, %46 ]
  %54 = phi i32 [ %64, %63 ], [ %48, %46 ]
  %55 = load i32, ptr %52, align 8
  %56 = and i32 %55, 131072
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63, !prof !158

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %52, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !99
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %60) #10
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %60) #10
  br label %63

63:                                               ; preds = %58, %51
  %64 = phi i32 [ %60, %58 ], [ %54, %51 ]
  %65 = getelementptr inbounds ptr, ptr %53, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !103
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %51, !prof !159, !llvm.loop !160

68:                                               ; preds = %63, %46
  %69 = phi i32 [ %48, %46 ], [ %64, %63 ]
  store i32 %69, ptr %8, align 4, !tbaa !105
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !99
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !99
  %74 = icmp eq ptr %73, null
  br i1 %74, label %417, label %75, !prof !161

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 11
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  br label %78

78:                                               ; preds = %75, %412
  %79 = phi ptr [ %73, %75 ], [ %415, %412 ]
  %80 = phi i32 [ 0, %75 ], [ %413, %412 ]
  %81 = load ptr, ptr %70, align 8, !tbaa !99
  %82 = load ptr, ptr %81, align 8, !tbaa !162
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !99
  %85 = icmp eq ptr %79, %84
  br i1 %85, label %417, label %86, !prof !164

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #12
  %89 = load i32, ptr %79, align 8
  %90 = and i32 %89, 65535
  %91 = add nsw i32 %90, -11
  %92 = icmp ult i32 %91, -3
  br i1 %92, label %412, label %93, !prof !165

93:                                               ; preds = %86
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %10, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %9) #11
  %94 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %10, ptr noundef nonnull %9) #11, !range !142
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %106, label %96, !prof !166

96:                                               ; preds = %93
  %97 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  br label %98

98:                                               ; preds = %96, %98
  %99 = load i32, ptr %9, align 4, !tbaa !105
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.reg_info_t, ptr %97, i64 %100, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !146
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %101, align 4, !tbaa !146
  call fastcc void @bmp_iter_next(ptr noundef nonnull %10, ptr noundef nonnull %9) #11
  %104 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %10, ptr noundef nonnull %9) #11, !range !142
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %98, !prof !167, !llvm.loop !168

106:                                              ; preds = %98, %93
  %107 = add nsw i32 %80, 1
  tail call void @bitmap_clear(ptr noundef %2) #10
  %108 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 1, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !99
  %110 = icmp eq ptr %109, null
  br i1 %110, label %130, label %111, !prof !169

111:                                              ; preds = %106
  %112 = load ptr, ptr @reg_info_p, align 8
  br label %113

113:                                              ; preds = %111, %126
  %114 = phi ptr [ %109, %111 ], [ %128, %126 ]
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 16711680
  %117 = icmp eq i32 %116, 65536
  br i1 %117, label %118, label %126, !prof !170

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !99
  %121 = tail call fastcc i32 @rhs_regno(ptr noundef %120) #11
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.reg_info_t, ptr %112, i64 %122, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !171
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %123, align 4, !tbaa !171
  br label %126

126:                                              ; preds = %118, %113
  %127 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !99
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %113, !prof !172, !llvm.loop !173

130:                                              ; preds = %126, %106
  %131 = load i32, ptr %79, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %184, !prof !174

134:                                              ; preds = %130
  %135 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %79) #10
  %136 = tail call ptr @find_reg_note(ptr noundef nonnull %79, i32 noundef 30, ptr noundef null) #10
  %137 = icmp eq ptr %136, null
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %10, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %9) #11
  %138 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %10, ptr noundef nonnull %9) #11, !range !142
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %184, label %140, !prof !175

140:                                              ; preds = %134
  %141 = icmp eq i8 %135, 0
  br label %142

142:                                              ; preds = %140, %181
  %143 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %144 = load i32, ptr %9, align 4, !tbaa !105
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.reg_info_t, ptr %143, i64 %145, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !176
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %146, align 4, !tbaa !176
  %149 = load i32, ptr @optimize_size, align 4, !tbaa !105
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %168, !prof !177

151:                                              ; preds = %142
  %152 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !105
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %162, label %154, !prof !177

154:                                              ; preds = %151
  %155 = load ptr, ptr @cfun, align 8, !tbaa !103
  %156 = getelementptr inbounds %struct.function, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !131
  %158 = load ptr, ptr %157, align 8, !tbaa !133
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %158, i64 0, i32 8
  %160 = load i64, ptr %159, align 8, !tbaa !178
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %154, %151
  %163 = load i32, ptr %76, align 8, !tbaa !179
  %164 = add i32 %163, 9
  %165 = icmp ult i32 %164, 19
  br i1 %165, label %168, label %166, !prof !180

166:                                              ; preds = %162
  %167 = sdiv i32 %163, 10
  br label %168

168:                                              ; preds = %166, %162, %142, %154
  %169 = phi i32 [ 1000, %154 ], [ 1000, %142 ], [ %167, %166 ], [ 1, %162 ]
  %170 = getelementptr inbounds %struct.reg_info_t, ptr %143, i64 %145, i32 4
  %171 = load i32, ptr %170, align 4, !tbaa !181
  %172 = add nsw i32 %171, %169
  store i32 %172, ptr %170, align 4, !tbaa !181
  br i1 %141, label %177, label %173, !prof !177

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.reg_info_t, ptr %143, i64 %145, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !182
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %174, align 4, !tbaa !182
  br label %177

177:                                              ; preds = %173, %168
  br i1 %137, label %181, label %178, !prof !183

178:                                              ; preds = %177
  %179 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !103
  %180 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %179, i32 noundef %144) #10
  br label %181

181:                                              ; preds = %177, %178
  call fastcc void @bmp_iter_next(ptr noundef nonnull %10, ptr noundef nonnull %9) #11
  %182 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %10, ptr noundef nonnull %9) #11, !range !142
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %142, !prof !184, !llvm.loop !185

184:                                              ; preds = %181, %134, %130
  %185 = load ptr, ptr @df, align 8, !tbaa !103
  %186 = getelementptr inbounds %struct.df, ptr %185, i64 0, i32 10
  %187 = load ptr, ptr %186, align 8, !tbaa !186
  %188 = zext i32 %88 to i64
  %189 = getelementptr inbounds ptr, ptr %187, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !103
  %191 = getelementptr inbounds %struct.df_insn_info, ptr %190, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !187
  %193 = load ptr, ptr %192, align 8, !tbaa !103
  %194 = icmp eq ptr %193, null
  br i1 %194, label %239, label %195, !prof !188

195:                                              ; preds = %184, %229
  %196 = phi ptr [ %231, %229 ], [ %193, %184 ]
  %197 = phi ptr [ %230, %229 ], [ %192, %184 ]
  %198 = getelementptr inbounds %struct.df_mw_hardreg, ptr %196, i64 0, i32 1
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %229, !prof !189

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.df_mw_hardreg, ptr %196, i64 0, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !190
  %205 = getelementptr inbounds %struct.df_mw_hardreg, ptr %196, i64 0, i32 3
  %206 = load i32, ptr %205, align 8, !tbaa !192
  %207 = icmp ugt i32 %204, %206
  br i1 %207, label %221, label %212, !prof !193

208:                                              ; preds = %216
  %209 = add i32 %213, 1
  %210 = load i32, ptr %205, align 8, !tbaa !192
  %211 = icmp ugt i32 %209, %210
  br i1 %211, label %219, label %212, !prof !194, !llvm.loop !195

212:                                              ; preds = %202, %208
  %213 = phi i32 [ %209, %208 ], [ %204, %202 ]
  %214 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %213) #10
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %229, !prof !196

216:                                              ; preds = %212
  %217 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %213) #10
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %208, label %229

219:                                              ; preds = %208
  %220 = load i32, ptr %203, align 4, !tbaa !190
  br label %221

221:                                              ; preds = %219, %202
  %222 = phi i32 [ %220, %219 ], [ %204, %202 ]
  %223 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %222) #10
  %224 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %225 = zext i32 %222 to i64
  %226 = getelementptr inbounds %struct.reg_info_t, ptr %224, i64 %225, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !146
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %226, align 4, !tbaa !146
  br label %229

229:                                              ; preds = %216, %212, %221, %195
  %230 = getelementptr inbounds ptr, ptr %197, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !103
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %195, !prof !197, !llvm.loop !198

233:                                              ; preds = %229
  %234 = load ptr, ptr @df, align 8, !tbaa !103
  %235 = getelementptr inbounds %struct.df, ptr %234, i64 0, i32 10
  %236 = load ptr, ptr %235, align 8, !tbaa !186
  %237 = getelementptr inbounds ptr, ptr %236, i64 %188
  %238 = load ptr, ptr %237, align 8, !tbaa !103
  br label %239

239:                                              ; preds = %233, %184
  %240 = phi ptr [ %238, %233 ], [ %190, %184 ]
  %241 = getelementptr inbounds %struct.df_insn_info, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !199
  %243 = load ptr, ptr %242, align 8, !tbaa !103
  %244 = icmp eq ptr %243, null
  br i1 %244, label %349, label %245, !prof !200

245:                                              ; preds = %239, %339
  %246 = phi ptr [ %341, %339 ], [ %243, %239 ]
  %247 = phi ptr [ %340, %339 ], [ %242, %239 ]
  %248 = load i32, ptr %79, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 10
  br i1 %250, label %251, label %255, !prof !201

251:                                              ; preds = %245
  %252 = load i32, ptr %246, align 8
  %253 = and i32 %252, 12582912
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %339, !prof !202

255:                                              ; preds = %251, %245
  %256 = getelementptr inbounds %struct.df_base_ref, ptr %246, i64 0, i32 6
  %257 = load i32, ptr %256, align 8, !tbaa !99
  %258 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %257) #10
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %276, label %260, !prof !203

260:                                              ; preds = %255
  %261 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %257) #10
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %269, label %263, !prof !204

263:                                              ; preds = %260
  %264 = load i32, ptr %246, align 8
  %265 = and i32 %264, 1114112
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %289, !prof !205

267:                                              ; preds = %263
  %268 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %4, i32 noundef %257) #10
  br label %289

269:                                              ; preds = %260
  %270 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %257) #10
  %271 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %272 = zext i32 %257 to i64
  %273 = getelementptr inbounds %struct.reg_info_t, ptr %271, i64 %272, i32 2
  %274 = load i32, ptr %273, align 4, !tbaa !146
  %275 = add nsw i32 %274, %107
  store i32 %275, ptr %273, align 4, !tbaa !146
  br label %289

276:                                              ; preds = %255
  %277 = load i32, ptr %246, align 8
  %278 = and i32 %277, 268435456
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %289, !prof !206

280:                                              ; preds = %276
  %281 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %257) #10
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %289, !prof !207

283:                                              ; preds = %280
  %284 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %285 = zext i32 %257 to i64
  %286 = getelementptr inbounds %struct.reg_info_t, ptr %284, i64 %285, i32 2
  %287 = load i32, ptr %286, align 4, !tbaa !146
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr %286, align 4, !tbaa !146
  br label %289

289:                                              ; preds = %276, %280, %283, %269, %267, %263
  %290 = icmp ugt i32 %257, 52
  br i1 %290, label %291, label %326, !prof !208

291:                                              ; preds = %289
  %292 = load i32, ptr @optimize_size, align 4, !tbaa !105
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %311, !prof !209

294:                                              ; preds = %291
  %295 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !105
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %305, label %297, !prof !209

297:                                              ; preds = %294
  %298 = load ptr, ptr @cfun, align 8, !tbaa !103
  %299 = getelementptr inbounds %struct.function, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !131
  %301 = load ptr, ptr %300, align 8, !tbaa !133
  %302 = getelementptr inbounds %struct.basic_block_def, ptr %301, i64 0, i32 8
  %303 = load i64, ptr %302, align 8, !tbaa !178
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %297, %294
  %306 = load i32, ptr %76, align 8, !tbaa !179
  %307 = add i32 %306, 9
  %308 = icmp ult i32 %307, 19
  br i1 %308, label %311, label %309, !prof !210

309:                                              ; preds = %305
  %310 = sdiv i32 %306, 10
  br label %311

311:                                              ; preds = %309, %305, %291, %297
  %312 = phi i32 [ 1000, %297 ], [ 1000, %291 ], [ %310, %309 ], [ 1, %305 ]
  %313 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %314 = zext i32 %257 to i64
  %315 = getelementptr inbounds %struct.reg_info_t, ptr %313, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !211
  %317 = add nsw i32 %316, %312
  store i32 %317, ptr %315, align 4, !tbaa !211
  %318 = getelementptr inbounds %struct.reg_info_t, ptr %313, i64 %314, i32 6
  %319 = load i32, ptr %318, align 4, !tbaa !144
  %320 = icmp eq i32 %319, 0
  %321 = load i32, ptr %77, align 8, !tbaa !139
  br i1 %320, label %324, label %322, !prof !212

322:                                              ; preds = %311
  %323 = icmp eq i32 %319, %321
  br i1 %323, label %326, label %324, !prof !213

324:                                              ; preds = %322, %311
  %325 = phi i32 [ %321, %311 ], [ -1, %322 ]
  store i32 %325, ptr %318, align 4, !tbaa !144
  br label %326

326:                                              ; preds = %324, %322, %289
  %327 = load i32, ptr %246, align 8
  %328 = and i32 %327, 12582912
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333, !prof !214

330:                                              ; preds = %326
  %331 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %257) #10
  %332 = load i32, ptr %246, align 8
  br label %333

333:                                              ; preds = %330, %326
  %334 = phi i32 [ %332, %330 ], [ %327, %326 ]
  %335 = and i32 %334, 1114112
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %339, !prof !215

337:                                              ; preds = %333
  %338 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %257) #10
  br label %339

339:                                              ; preds = %333, %337, %251
  %340 = getelementptr inbounds ptr, ptr %247, i64 1
  %341 = load ptr, ptr %340, align 8, !tbaa !103
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %245, !prof !216, !llvm.loop !217

343:                                              ; preds = %339
  %344 = load ptr, ptr @df, align 8, !tbaa !103
  %345 = getelementptr inbounds %struct.df, ptr %344, i64 0, i32 10
  %346 = load ptr, ptr %345, align 8, !tbaa !186
  %347 = getelementptr inbounds ptr, ptr %346, i64 %188
  %348 = load ptr, ptr %347, align 8, !tbaa !103
  br label %349

349:                                              ; preds = %343, %239
  %350 = phi ptr [ %348, %343 ], [ %240, %239 ]
  %351 = getelementptr inbounds %struct.df_insn_info, ptr %350, i64 0, i32 2
  %352 = load ptr, ptr %351, align 8, !tbaa !218
  %353 = load ptr, ptr %352, align 8, !tbaa !103
  %354 = icmp eq ptr %353, null
  br i1 %354, label %412, label %355, !prof !200

355:                                              ; preds = %349, %408
  %356 = phi ptr [ %410, %408 ], [ %353, %349 ]
  %357 = phi ptr [ %409, %408 ], [ %352, %349 ]
  %358 = getelementptr inbounds %struct.df_base_ref, ptr %356, i64 0, i32 6
  %359 = load i32, ptr %358, align 8, !tbaa !99
  %360 = icmp ugt i32 %359, 52
  br i1 %360, label %361, label %396, !prof !219

361:                                              ; preds = %355
  %362 = load i32, ptr @optimize_size, align 4, !tbaa !105
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %381, !prof !220

364:                                              ; preds = %361
  %365 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !105
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %375, label %367, !prof !220

367:                                              ; preds = %364
  %368 = load ptr, ptr @cfun, align 8, !tbaa !103
  %369 = getelementptr inbounds %struct.function, ptr %368, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !131
  %371 = load ptr, ptr %370, align 8, !tbaa !133
  %372 = getelementptr inbounds %struct.basic_block_def, ptr %371, i64 0, i32 8
  %373 = load i64, ptr %372, align 8, !tbaa !178
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %381, label %375

375:                                              ; preds = %367, %364
  %376 = load i32, ptr %76, align 8, !tbaa !179
  %377 = add i32 %376, 9
  %378 = icmp ult i32 %377, 19
  br i1 %378, label %381, label %379, !prof !221

379:                                              ; preds = %375
  %380 = sdiv i32 %376, 10
  br label %381

381:                                              ; preds = %379, %375, %361, %367
  %382 = phi i32 [ 1000, %367 ], [ 1000, %361 ], [ %380, %379 ], [ 1, %375 ]
  %383 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %384 = zext i32 %359 to i64
  %385 = getelementptr inbounds %struct.reg_info_t, ptr %383, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !211
  %387 = add nsw i32 %386, %382
  store i32 %387, ptr %385, align 4, !tbaa !211
  %388 = getelementptr inbounds %struct.reg_info_t, ptr %383, i64 %384, i32 6
  %389 = load i32, ptr %388, align 4, !tbaa !144
  %390 = icmp eq i32 %389, 0
  %391 = load i32, ptr %77, align 8, !tbaa !139
  br i1 %390, label %394, label %392, !prof !222

392:                                              ; preds = %381
  %393 = icmp eq i32 %389, %391
  br i1 %393, label %396, label %394, !prof !223

394:                                              ; preds = %392, %381
  %395 = phi i32 [ %391, %381 ], [ -1, %392 ]
  store i32 %395, ptr %388, align 4, !tbaa !144
  br label %396

396:                                              ; preds = %394, %392, %355
  %397 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %359) #10
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %408, !prof !224

399:                                              ; preds = %396
  %400 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %359) #10
  %401 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %402 = zext i32 %359 to i64
  %403 = getelementptr inbounds %struct.reg_info_t, ptr %401, i64 %402, i32 2
  %404 = load i32, ptr %403, align 4, !tbaa !146
  %405 = add nsw i32 %404, 1
  store i32 %405, ptr %403, align 4, !tbaa !146
  %406 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %4, i32 noundef %359) #10
  %407 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %359) #10
  br label %408

408:                                              ; preds = %399, %396
  %409 = getelementptr inbounds ptr, ptr %357, i64 1
  %410 = load ptr, ptr %409, align 8, !tbaa !103
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %355, !prof !225, !llvm.loop !226

412:                                              ; preds = %408, %349, %86
  %413 = phi i32 [ %80, %86 ], [ %107, %349 ], [ %107, %408 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %414 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !99
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %78, !prof !227, !llvm.loop !228

417:                                              ; preds = %78, %412, %68
  %418 = phi i32 [ 0, %68 ], [ %413, %412 ], [ %80, %78 ]
  %419 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %1, ptr noundef %5) #10
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %8) #11
  %420 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %8) #11, !range !142
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %432, label %422, !prof !152

422:                                              ; preds = %417
  %423 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  br label %424

424:                                              ; preds = %422, %424
  %425 = load i32, ptr %8, align 4, !tbaa !105
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.reg_info_t, ptr %423, i64 %426, i32 2
  %428 = load i32, ptr %427, align 4, !tbaa !146
  %429 = add nsw i32 %428, %418
  store i32 %429, ptr %427, align 4, !tbaa !146
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %430 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %8) #11, !range !142
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %424, !prof !229, !llvm.loop !230

432:                                              ; preds = %424, %417
  tail call void @bitmap_clear(ptr noundef %5) #10
  tail call void @bitmap_clear(ptr noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 !prof !231 !PGOFuncName !232 {
  %5 = load ptr, ptr %1, align 8, !tbaa !233
  store ptr %5, ptr %0, align 8, !tbaa !235
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !237
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !238

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !235
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !239
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14, !prof !241
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !242
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !243
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !105
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !244 !PGOFuncName !245 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !243
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !246

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !247

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !105
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !248, !llvm.loop !249

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !105
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !105
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !242
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !235
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !242
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !250

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !129
  store i64 %35, ptr %3, align 8, !tbaa !243
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !251

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !105
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !105
  %40 = load i32, ptr %23, align 8, !tbaa !242
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !242
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !252, !llvm.loop !253

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !254
  store ptr %44, ptr %0, align 8, !tbaa !235
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !255

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !239
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !105
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !243
  store i32 %16, ptr %1, align 4, !tbaa !105
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !256 !PGOFuncName !257 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !243
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !243
  %6 = load i32, ptr %1, align 4, !tbaa !105
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !258 !PGOFuncName !259 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  ret ptr %5
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #3 !prof !258 !PGOFuncName !260 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #11
  %3 = load ptr, ptr %2, align 8, !tbaa !261
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #3 !prof !258 !PGOFuncName !263 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #11
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !264
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !265 !PGOFuncName !266 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !99
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !267 !PGOFuncName !268 {
  %2 = load ptr, ptr @df, align 8, !tbaa !103
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !269
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !271

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !272
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @regstat_free_ri() local_unnamed_addr #0 !prof !127 {
  %1 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !273

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.1) #10
  %4 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  store i64 0, ptr @reg_info_p_size, align 8, !tbaa !129
  tail call void @free(ptr noundef %6) #11
  store ptr null, ptr @reg_info_p, align 8, !tbaa !103
  %7 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !103
  tail call void @bitmap_obstack_free(ptr noundef %7) #10
  store ptr null, ptr @setjmp_crosses, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @regstat_get_setjmp_crosses() local_unnamed_addr #9 !prof !274 {
  %1 = load ptr, ptr @setjmp_crosses, align 8, !tbaa !103
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @regstat_compute_calls_crossed() local_unnamed_addr #0 !prof !274 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #10
  %2 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !275

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.1) #10
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !99
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !275

8:                                                ; preds = %5
  tail call void @timevar_push_1(i32 noundef 37) #10
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call i32 @max_reg_num() #10
  store i32 %10, ptr @max_regno, align 4, !tbaa !105
  %11 = sext i32 %10 to i64
  store i64 %11, ptr @reg_info_p_size, align 8, !tbaa !129
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 28) #10
  store ptr %12, ptr @reg_info_p, align 8, !tbaa !103
  %13 = load ptr, ptr @cfun, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !131
  %16 = load ptr, ptr %15, align 8, !tbaa !133
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !135
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %34, label %22, !prof !161

22:                                               ; preds = %9, %22
  %23 = phi ptr [ %27, %22 ], [ %18, %9 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !139
  tail call fastcc void @regstat_bb_compute_calls_crossed(i32 noundef %25, ptr noundef %1) #11
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !135
  %28 = load ptr, ptr @cfun, align 8, !tbaa !103
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !137
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %34, label %22, !prof !276, !llvm.loop !277

34:                                               ; preds = %22, %9
  tail call void @bitmap_obstack_free(ptr noundef %1) #10
  %35 = load i8, ptr @timevar_enable, align 1, !tbaa !99
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37, !prof !275

37:                                               ; preds = %34
  tail call void @timevar_pop_1(i32 noundef 37) #10
  br label %38

38:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @regstat_bb_compute_calls_crossed(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !278 !PGOFuncName !279 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  %10 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %9, i32 noundef %0) #11
  %11 = tail call ptr @df_get_live_out(ptr noundef %10) #10
  tail call void @bitmap_copy(ptr noundef %1, ptr noundef %11) #10
  %12 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %0) #11
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !280

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %2 ]
  %17 = phi ptr [ %26, %25 ], [ %12, %2 ]
  %18 = load i32, ptr %16, align 8
  %19 = and i32 %18, 131072
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !99
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %23) #10
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !prof !156, !llvm.loop !281

29:                                               ; preds = %25, %2
  %30 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %0) #11
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33, !prof !282

33:                                               ; preds = %29, %43
  %34 = phi ptr [ %45, %43 ], [ %31, %29 ]
  %35 = phi ptr [ %44, %43 ], [ %30, %29 ]
  %36 = load i32, ptr %34, align 8
  %37 = and i32 %36, 131072
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43, !prof !283

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.df_base_ref, ptr %34, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !99
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %41) #10
  br label %43

43:                                               ; preds = %39, %33
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !103
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %33, !prof !284, !llvm.loop !285

47:                                               ; preds = %43, %29
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !99
  %50 = getelementptr inbounds %struct.rtl_bb_info, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !99
  %52 = icmp eq ptr %51, null
  br i1 %52, label %165, label %53, !prof !193

53:                                               ; preds = %47, %161
  %54 = phi ptr [ %163, %161 ], [ %51, %47 ]
  %55 = load ptr, ptr %48, align 8, !tbaa !99
  %56 = load ptr, ptr %55, align 8, !tbaa !162
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !99
  %59 = icmp eq ptr %54, %58
  br i1 %59, label %165, label %60, !prof !286

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %63 = load i32, ptr %54, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %161, !prof !287

67:                                               ; preds = %60
  %68 = icmp eq i32 %64, 10
  br i1 %68, label %69, label %108, !prof !288

69:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #11
  %70 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #11, !range !142
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %107, label %72, !prof !289

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 11
  %74 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %75 = load ptr, ptr @cfun, align 8
  br label %76

76:                                               ; preds = %72, %100
  %77 = load i32, ptr %3, align 4, !tbaa !105
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.reg_info_t, ptr %74, i64 %78, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !176
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !176
  %82 = load i32, ptr @optimize_size, align 4, !tbaa !105
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %100, !prof !290

84:                                               ; preds = %76
  %85 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !105
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87, !prof !290

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !131
  %90 = load ptr, ptr %89, align 8, !tbaa !133
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 8
  %92 = load i64, ptr %91, align 8, !tbaa !178
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %87, %84
  %95 = load i32, ptr %73, align 8, !tbaa !179
  %96 = add i32 %95, 9
  %97 = icmp ult i32 %96, 19
  br i1 %97, label %100, label %98, !prof !291

98:                                               ; preds = %94
  %99 = sdiv i32 %95, 10
  br label %100

100:                                              ; preds = %98, %94, %76, %87
  %101 = phi i32 [ 1000, %87 ], [ 1000, %76 ], [ %99, %98 ], [ 1, %94 ]
  %102 = getelementptr inbounds %struct.reg_info_t, ptr %74, i64 %78, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !181
  %104 = add nsw i32 %103, %101
  store i32 %104, ptr %102, align 4, !tbaa !181
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  %105 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #11, !range !142
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %76, !prof !292, !llvm.loop !293

107:                                              ; preds = %100, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  br label %108

108:                                              ; preds = %107, %67
  %109 = load ptr, ptr @df, align 8, !tbaa !103
  %110 = getelementptr inbounds %struct.df, ptr %109, i64 0, i32 10
  %111 = load ptr, ptr %110, align 8, !tbaa !186
  %112 = zext i32 %62 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !103
  %115 = getelementptr inbounds %struct.df_insn_info, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !199
  %117 = load ptr, ptr %116, align 8, !tbaa !103
  %118 = icmp eq ptr %117, null
  br i1 %118, label %146, label %119, !prof !294

119:                                              ; preds = %108, %136
  %120 = phi ptr [ %138, %136 ], [ %117, %108 ]
  %121 = phi ptr [ %137, %136 ], [ %116, %108 ]
  %122 = load i32, ptr %54, align 8
  %123 = and i32 %122, 65535
  %124 = icmp ne i32 %123, 10
  %125 = load i32, ptr %120, align 8
  %126 = and i32 %125, 12582912
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %124, i1 true, i1 %127
  %129 = and i32 %125, 1114112
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %128, i1 %130, i1 false
  br i1 %131, label %132, label %136, !prof !295

132:                                              ; preds = %119
  %133 = getelementptr inbounds %struct.df_base_ref, ptr %120, i64 0, i32 6
  %134 = load i32, ptr %133, align 8, !tbaa !99
  %135 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %1, i32 noundef %134) #10
  br label %136

136:                                              ; preds = %119, %132
  %137 = getelementptr inbounds ptr, ptr %121, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !103
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %119, !prof !296, !llvm.loop !297

140:                                              ; preds = %136
  %141 = load ptr, ptr @df, align 8, !tbaa !103
  %142 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 10
  %143 = load ptr, ptr %142, align 8, !tbaa !186
  %144 = getelementptr inbounds ptr, ptr %143, i64 %112
  %145 = load ptr, ptr %144, align 8, !tbaa !103
  br label %146

146:                                              ; preds = %140, %108
  %147 = phi ptr [ %145, %140 ], [ %114, %108 ]
  %148 = getelementptr inbounds %struct.df_insn_info, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !218
  %150 = load ptr, ptr %149, align 8, !tbaa !103
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152, !prof !294

152:                                              ; preds = %146, %152
  %153 = phi ptr [ %159, %152 ], [ %150, %146 ]
  %154 = phi ptr [ %158, %152 ], [ %149, %146 ]
  %155 = getelementptr inbounds %struct.df_base_ref, ptr %153, i64 0, i32 6
  %156 = load i32, ptr %155, align 8, !tbaa !99
  %157 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %156) #10
  %158 = getelementptr inbounds ptr, ptr %154, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !103
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %152, !prof !298, !llvm.loop !299

161:                                              ; preds = %152, %146, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %162 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !99
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %53, !prof !300, !llvm.loop !301

165:                                              ; preds = %53, %161, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @regstat_free_calls_crossed() local_unnamed_addr #0 !prof !274 {
  %1 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !302

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 523, ptr noundef nonnull @.str.1) #10
  %4 = load ptr, ptr @reg_info_p, align 8, !tbaa !103
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  store i64 0, ptr @reg_info_p_size, align 8, !tbaa !129
  tail call void @free(ptr noundef %6) #11
  store ptr null, ptr @reg_info_p, align 8, !tbaa !103
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!97}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!36 = !{ptr @regstat_init_n_sets_and_refs, ptr @max_reg_num, i64 21431}
!37 = !{ptr @regstat_init_n_sets_and_refs, ptr @timevar_push_1, i64 1}
!38 = !{ptr @regstat_init_n_sets_and_refs, ptr @df_grow_reg_info, i64 21431}
!39 = !{ptr @regstat_init_n_sets_and_refs, ptr @fancy_abort, i64 1}
!40 = !{ptr @regstat_init_n_sets_and_refs, ptr @xmalloc, i64 21431}
!41 = !{ptr @regstat_init_n_sets_and_refs, ptr @REG_N_SETS, i64 4735223}
!42 = !{ptr @regstat_init_n_sets_and_refs, ptr @timevar_pop_1, i64 1}
!43 = !{ptr @regstat_free_n_sets_and_refs, ptr @fancy_abort, i64 1}
!44 = !{ptr @regstat_free_n_sets_and_refs, ptr @free, i64 21431}
!45 = !{ptr @regstat_compute_ri, ptr @bitmap_obstack_alloc_stat, i64 88674}
!46 = !{ptr @regstat_compute_ri, ptr @fancy_abort, i64 1}
!47 = !{ptr @regstat_compute_ri, ptr @timevar_push_1, i64 1}
!48 = !{ptr @regstat_compute_ri, ptr @max_reg_num, i64 14779}
!49 = !{ptr @regstat_compute_ri, ptr @xcalloc, i64 14779}
!50 = !{ptr @regstat_compute_ri, ptr @regstat_bb_compute_ri, i64 670024}
!51 = !{ptr @regstat_compute_ri, ptr @bitmap_obstack_free, i64 73895}
!52 = !{ptr @regstat_compute_ri, ptr @bmp_iter_set_init, i64 14779}
!53 = !{ptr @regstat_compute_ri, ptr @bmp_iter_set, i64 14804}
!54 = !{ptr @regstat_compute_ri, ptr @bmp_iter_next, i64 25}
!55 = !{ptr @regstat_compute_ri, ptr @timevar_pop_1, i64 1}
!56 = !{ptr @regstat_bb_compute_ri, ptr @VEC_basic_block_base_index, i64 670068}
!57 = !{ptr @regstat_bb_compute_ri, ptr @df_get_live_out, i64 670068}
!58 = !{ptr @regstat_bb_compute_ri, ptr @bitmap_copy, i64 670068}
!59 = !{ptr @regstat_bb_compute_ri, ptr @bitmap_clear, i64 4783414}
!60 = !{ptr @regstat_bb_compute_ri, ptr @bmp_iter_set_init, i64 4344421}
!61 = !{ptr @regstat_bb_compute_ri, ptr @bmp_iter_set, i64 24797477}
!62 = !{ptr @regstat_bb_compute_ri, ptr @bmp_iter_next, i64 20453056}
!63 = !{ptr @regstat_bb_compute_ri, ptr @df_get_artificial_defs, i64 670068}
!64 = !{ptr @regstat_bb_compute_ri, ptr @bitmap_clear_bit, i64 2837583}
!65 = !{ptr @regstat_bb_compute_ri, ptr @df_get_artificial_uses, i64 670068}
!66 = !{ptr @regstat_bb_compute_ri, ptr @bitmap_set_bit, i64 11814828}
!67 = !{ptr @regstat_bb_compute_ri, ptr @rhs_regno, i64 1322929}
!68 = !{ptr @regstat_bb_compute_ri, ptr @can_throw_internal, i64 231075}
!69 = !{ptr @regstat_bb_compute_ri, ptr @find_reg_note, i64 231075}
!70 = !{ptr @regstat_bb_compute_ri, ptr @bitmap_bit_p, i64 6719121}
!71 = !{ptr @regstat_bb_compute_ri, ptr @bitmap_and_compl_into, i64 670068}
!72 = !{ptr @df_get_artificial_defs, ptr @df_scan_get_bb_info, i64 918482}
!73 = !{ptr @df_get_artificial_uses, ptr @df_scan_get_bb_info, i64 918482}
!74 = !{ptr @regstat_free_ri, ptr @fancy_abort, i64 1}
!75 = !{ptr @regstat_free_ri, ptr @free, i64 14779}
!76 = !{ptr @regstat_free_ri, ptr @bitmap_obstack_free, i64 14779}
!77 = !{ptr @regstat_compute_calls_crossed, ptr @bitmap_obstack_alloc_stat, i64 6652}
!78 = !{ptr @regstat_compute_calls_crossed, ptr @fancy_abort, i64 1}
!79 = !{ptr @regstat_compute_calls_crossed, ptr @timevar_push_1, i64 1}
!80 = !{ptr @regstat_compute_calls_crossed, ptr @max_reg_num, i64 6652}
!81 = !{ptr @regstat_compute_calls_crossed, ptr @xcalloc, i64 6652}
!82 = !{ptr @regstat_compute_calls_crossed, ptr @regstat_bb_compute_calls_crossed, i64 248378}
!83 = !{ptr @regstat_compute_calls_crossed, ptr @bitmap_obstack_free, i64 6652}
!84 = !{ptr @regstat_compute_calls_crossed, ptr @timevar_pop_1, i64 1}
!85 = !{ptr @regstat_bb_compute_calls_crossed, ptr @VEC_basic_block_base_index, i64 248414}
!86 = !{ptr @regstat_bb_compute_calls_crossed, ptr @df_get_live_out, i64 248414}
!87 = !{ptr @regstat_bb_compute_calls_crossed, ptr @bitmap_copy, i64 248414}
!88 = !{ptr @regstat_bb_compute_calls_crossed, ptr @df_get_artificial_defs, i64 248414}
!89 = !{ptr @regstat_bb_compute_calls_crossed, ptr @bitmap_clear_bit, i64 777055}
!90 = !{ptr @regstat_bb_compute_calls_crossed, ptr @df_get_artificial_uses, i64 248414}
!91 = !{ptr @regstat_bb_compute_calls_crossed, ptr @bitmap_set_bit, i64 1906063}
!92 = !{ptr @regstat_bb_compute_calls_crossed, ptr @bmp_iter_set_init, i64 87613}
!93 = !{ptr @regstat_bb_compute_calls_crossed, ptr @bmp_iter_set, i64 539260}
!94 = !{ptr @regstat_bb_compute_calls_crossed, ptr @bmp_iter_next, i64 451647}
!95 = !{ptr @regstat_free_calls_crossed, ptr @fancy_abort, i64 1}
!96 = !{ptr @regstat_free_calls_crossed, ptr @free, i64 6652}
!97 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!98 = !{!"function_entry_count", i64 21431}
!99 = !{!100, !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!"branch_weights", i32 21432, i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"any pointer", !100, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !100, i64 0}
!107 = !{!108, !104, i64 224}
!108 = !{!"df", !100, i64 0, !100, i64 64, !104, i64 128, !109, i64 136, !109, i64 176, !104, i64 216, !104, i64 224, !104, i64 232, !106, i64 240, !106, i64 244, !104, i64 248, !106, i64 256, !106, i64 260, !104, i64 264, !104, i64 272, !104, i64 280, !104, i64 288, !104, i64 296, !104, i64 304, !104, i64 312, !104, i64 320, !104, i64 328, !104, i64 336, !106, i64 344, !106, i64 348, !104, i64 352, !106, i64 360, !106, i64 364, !100, i64 365, !100, i64 366}
!109 = !{!"df_ref_info", !104, i64 0, !104, i64 8, !104, i64 16, !106, i64 24, !106, i64 28, !106, i64 32, !106, i64 36}
!110 = !{!108, !104, i64 216}
!111 = !{!"branch_weights", i32 1, i32 21431}
!112 = !{!113, !106, i64 8}
!113 = !{!"df_reg_info", !104, i64 0, !106, i64 8}
!114 = !{!115, !104, i64 0}
!115 = !{!"df_insn_info", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !106, i64 40}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!119, !106, i64 0}
!119 = !{!"regstat_n_sets_and_refs_t", !106, i64 0, !106, i64 4}
!120 = !{!119, !106, i64 4}
!121 = distinct !{!121, !117}
!122 = !{!"branch_weights", i32 21431, i32 4714214}
!123 = distinct !{!123, !117}
!124 = !{!"function_entry_count", i64 4735644}
!125 = !{!"regstat.c:REG_N_SETS"}
!126 = !{!"branch_weights", i32 1, i32 21432}
!127 = !{!"function_entry_count", i64 14779}
!128 = !{!"branch_weights", i32 14780, i32 1}
!129 = !{!130, !130, i64 0}
!130 = !{!"long", !100, i64 0}
!131 = !{!132, !104, i64 8}
!132 = !{!"function", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !106, i64 104, !106, i64 108, !106, i64 112, !106, i64 116, !106, i64 120, !106, i64 124, !104, i64 128, !106, i64 136, !106, i64 137, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139}
!133 = !{!134, !104, i64 0}
!134 = !{!"control_flow_graph", !104, i64 0, !104, i64 8, !104, i64 16, !106, i64 24, !106, i64 28, !106, i64 32, !104, i64 40, !106, i64 48, !100, i64 52, !100, i64 60, !106, i64 68, !106, i64 72}
!135 = !{!136, !104, i64 56}
!136 = !{!"basic_block_def", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !100, i64 32, !104, i64 48, !104, i64 56, !100, i64 64, !130, i64 72, !106, i64 80, !106, i64 84, !106, i64 88, !106, i64 92, !106, i64 96}
!137 = !{!134, !104, i64 8}
!138 = !{!"branch_weights", i32 1, i32 14779}
!139 = !{!136, !106, i64 80}
!140 = !{!"branch_weights", i32 14779, i32 655290}
!141 = distinct !{!141, !117}
!142 = !{i8 0, i8 2}
!143 = !{!"branch_weights", i32 14755, i32 25}
!144 = !{!145, !106, i64 24}
!145 = !{!"reg_info_t", !106, i64 0, !106, i64 4, !106, i64 8, !106, i64 12, !106, i64 16, !106, i64 20, !106, i64 24}
!146 = !{!145, !106, i64 8}
!147 = !{!"branch_weights", i32 25, i32 0}
!148 = distinct !{!148, !117}
!149 = !{!"function_entry_count", i64 670068}
!150 = !{!"regstat.c:regstat_bb_compute_ri"}
!151 = !{!134, !104, i64 16}
!152 = !{!"branch_weights", i32 1, i32 670068}
!153 = !{!"branch_weights", i32 670068, i32 7206975}
!154 = distinct !{!154, !117}
!155 = !{!"branch_weights", i32 670068, i32 1}
!156 = !{!"branch_weights", i32 1, i32 0}
!157 = distinct !{!157, !117}
!158 = !{!"branch_weights", i32 2680273, i32 1}
!159 = !{!"branch_weights", i32 670068, i32 2010205}
!160 = distinct !{!160, !117}
!161 = !{!"branch_weights", i32 1, i32 6652}
!162 = !{!163, !104, i64 0}
!163 = !{!"rtl_bb_info", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !106, i64 32}
!164 = !{!"branch_weights", i32 670069, i32 3984046}
!165 = !{!"branch_weights", i32 1812199567, i32 -23730881}
!166 = !{!"branch_weights", i32 1242, i32 2795993}
!167 = !{!"branch_weights", i32 2795993, i32 0}
!168 = distinct !{!168, !117}
!169 = !{!"branch_weights", i32 481167, i32 2316068}
!170 = !{!"branch_weights", i32 1334390, i32 981679}
!171 = !{!145, !106, i64 4}
!172 = !{!"branch_weights", i32 2316068, i32 0}
!173 = distinct !{!173, !117}
!174 = !{!"branch_weights", i32 233077, i32 2564159}
!175 = !{!"branch_weights", i32 1, i32 233076}
!176 = !{!145, !106, i64 12}
!177 = !{!"branch_weights", i32 2520630, i32 1}
!178 = !{!136, !130, i64 72}
!179 = !{!136, !106, i64 88}
!180 = !{!"branch_weights", i32 1, i32 1606327}
!181 = !{!145, !106, i64 16}
!182 = !{!145, !106, i64 20}
!183 = !{!"branch_weights", i32 2520591, i32 40}
!184 = !{!"branch_weights", i32 233076, i32 2287554}
!185 = distinct !{!185, !117}
!186 = !{!108, !104, i64 248}
!187 = !{!115, !104, i64 32}
!188 = !{!"branch_weights", i32 2796819, i32 416}
!189 = !{!"branch_weights", i32 255, i32 162}
!190 = !{!191, !106, i64 12}
!191 = !{!"df_mw_hardreg", !104, i64 0, !106, i64 8, !106, i64 10, !106, i64 12, !106, i64 16, !106, i64 20}
!192 = !{!191, !106, i64 16}
!193 = !{!"branch_weights", i32 1, i32 127}
!194 = !{!"branch_weights", i32 127, i32 32513}
!195 = distinct !{!195, !117}
!196 = !{!"branch_weights", i32 1, i32 255}
!197 = !{!"branch_weights", i32 416, i32 0}
!198 = distinct !{!198, !117}
!199 = !{!115, !104, i64 8}
!200 = !{!"branch_weights", i32 1, i32 2797234}
!201 = !{!"branch_weights", i32 10721537, i32 1676960}
!202 = !{!"branch_weights", i32 159982, i32 10561556}
!203 = !{!"branch_weights", i32 230159, i32 1606783}
!204 = !{!"branch_weights", i32 581135, i32 1025649}
!205 = !{!"branch_weights", i32 1025456, i32 194}
!206 = !{!"branch_weights", i32 230099, i32 61}
!207 = !{!"branch_weights", i32 230099, i32 1}
!208 = !{!"branch_weights", i32 1003477, i32 833465}
!209 = !{!"branch_weights", i32 1003477, i32 1}
!210 = !{!"branch_weights", i32 1, i32 670815}
!211 = !{!145, !106, i64 0}
!212 = !{!"branch_weights", i32 2211, i32 1001267}
!213 = !{!"branch_weights", i32 418644, i32 582624}
!214 = !{!"branch_weights", i32 1639142, i32 197800}
!215 = !{!"branch_weights", i32 1836710, i32 232}
!216 = !{!"branch_weights", i32 2797234, i32 9601262}
!217 = distinct !{!217, !117}
!218 = !{!115, !104, i64 16}
!219 = !{!"branch_weights", i32 1730069, i32 1373184}
!220 = !{!"branch_weights", i32 1730069, i32 1}
!221 = !{!"branch_weights", i32 1, i32 1184329}
!222 = !{!"branch_weights", i32 403178, i32 1326892}
!223 = !{!"branch_weights", i32 78122, i32 1248771}
!224 = !{!"branch_weights", i32 1429963, i32 1673290}
!225 = !{!"branch_weights", i32 2797234, i32 306018}
!226 = distinct !{!226, !117}
!227 = !{!"branch_weights", i32 6652, i32 4640810}
!228 = distinct !{!228, !117}
!229 = !{!"branch_weights", i32 670068, i32 6635009}
!230 = distinct !{!230, !117}
!231 = !{!"function_entry_count", i64 4473528}
!232 = !{!"regstat.c:bmp_iter_set_init"}
!233 = !{!234, !104, i64 0}
!234 = !{!"bitmap_head_def", !104, i64 0, !104, i64 8, !106, i64 16, !104, i64 24}
!235 = !{!236, !104, i64 0}
!236 = !{!"", !104, i64 0, !104, i64 8, !106, i64 16, !130, i64 24}
!237 = !{!236, !104, i64 8}
!238 = !{!"branch_weights", i32 1381944, i32 3091586}
!239 = !{!240, !106, i64 16}
!240 = !{!"bitmap_element_def", !104, i64 0, !104, i64 8, !106, i64 16, !100, i64 24}
!241 = !{!"branch_weights", i32 3927566, i32 545964}
!242 = !{!236, !106, i64 16}
!243 = !{!236, !130, i64 24}
!244 = !{!"function_entry_count", i64 25427497}
!245 = !{!"regstat.c:bmp_iter_set"}
!246 = !{!"branch_weights", i32 9994099, i32 15433400}
!247 = !{!"branch_weights", i32 20953969, i32 1}
!248 = !{!"branch_weights", i32 217837470, i32 20953969}
!249 = distinct !{!249, !117}
!250 = !{!"branch_weights", i32 1, i32 8176226}
!251 = !{!"branch_weights", i32 6358355, i32 5520571}
!252 = !{!"branch_weights", i32 8176226, i32 3702699}
!253 = distinct !{!253, !117}
!254 = !{!240, !104, i64 0}
!255 = !{!"branch_weights", i32 4473529, i32 3702699}
!256 = !{!"function_entry_count", i64 20953969}
!257 = !{!"regstat.c:bmp_iter_next"}
!258 = !{!"function_entry_count", i64 918482}
!259 = !{!"regstat.c:VEC_basic_block_base_index"}
!260 = !{!"regstat.c:df_get_artificial_defs"}
!261 = !{!262, !104, i64 0}
!262 = !{!"df_scan_bb_info", !104, i64 0, !104, i64 8}
!263 = !{!"regstat.c:df_get_artificial_uses"}
!264 = !{!262, !104, i64 8}
!265 = !{!"function_entry_count", i64 1334389}
!266 = !{!"regstat.c:rhs_regno"}
!267 = !{!"function_entry_count", i64 1836964}
!268 = !{!"regstat.c:df_scan_get_bb_info"}
!269 = !{!270, !106, i64 16}
!270 = !{!"dataflow", !104, i64 0, !104, i64 8, !106, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !106, i64 48, !100, i64 52, !100, i64 53, !100, i64 54}
!271 = !{!"branch_weights", i32 1836965, i32 1}
!272 = !{!270, !104, i64 8}
!273 = !{!"branch_weights", i32 1, i32 14780}
!274 = !{!"function_entry_count", i64 6652}
!275 = !{!"branch_weights", i32 6653, i32 1}
!276 = !{!"branch_weights", i32 6652, i32 241763}
!277 = distinct !{!277, !117}
!278 = !{!"function_entry_count", i64 248414}
!279 = !{!"regstat.c:regstat_bb_compute_calls_crossed"}
!280 = !{!"branch_weights", i32 248414, i32 1}
!281 = distinct !{!281, !117}
!282 = !{!"branch_weights", i32 1, i32 248414}
!283 = !{!"branch_weights", i32 496829, i32 1}
!284 = !{!"branch_weights", i32 248414, i32 248415}
!285 = distinct !{!285, !117}
!286 = !{!"branch_weights", i32 248415, i32 1689757}
!287 = !{!"branch_weights", i32 -1231777885, i32 1240765821}
!288 = !{!"branch_weights", i32 88304, i32 1114321}
!289 = !{!"branch_weights", i32 1, i32 88303}
!290 = !{!"branch_weights", i32 455207, i32 1}
!291 = !{!"branch_weights", i32 1, i32 296060}
!292 = !{!"branch_weights", i32 88303, i32 366904}
!293 = distinct !{!293, !117}
!294 = !{!"branch_weights", i32 1, i32 1202623}
!295 = !{!"branch_weights", i32 583630699, i32 -1311280860}
!296 = !{!"branch_weights", i32 1202623, i32 3584383}
!297 = distinct !{!297, !117}
!298 = !{!"branch_weights", i32 1202623, i32 217719}
!299 = distinct !{!299, !117}
!300 = !{!"branch_weights", i32 127, i32 248085761}
!301 = distinct !{!301, !117}
!302 = !{!"branch_weights", i32 1, i32 6653}
