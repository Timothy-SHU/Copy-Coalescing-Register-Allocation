; ModuleID = 'df-core.c'
source_filename = "df-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }

@df = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"setting blocks to analyze \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@df_bitmap_obstack = dso_local global %struct.bitmap_obstack zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"clearing blocks_to_analyze\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"df-core.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dfinit\00", align 1
@pass_df_initialize_opt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr @gate_opt, ptr @rest_of_handle_df_initialize, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"no-opt dfinit\00", align 1
@pass_df_initialize_no_opt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_no_opt, ptr @rest_of_handle_df_initialize, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"dfinish\00", align 1
@pass_df_finish = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.7, ptr null, ptr @rest_of_handle_df_finish, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"df_analyze called\0A\00", align 1
@user_problem = internal global %struct.df_problem zeroinitializer, align 8
@user_dflow = internal global %struct.dataflow zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"shoving block %d into %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" (nil)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\0A\0Astarting region dump\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"\0A\0A%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\0ADataflow summary:\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"def_info->table_size = %d, use_info->table_size = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%c%d(%d)\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%c%d(%d) \00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"insn %d bb %d luid %d defs \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" uses \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c" eq_uses \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"reg %d defs \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%c%d \00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"reg %d bb %d insn %d flag 0x%x type 0x%x \00", align 1
@flag_dump_noaddr = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"loc #(#) chain \00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"loc %p(%p) chain \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"chain \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@optimize = external local_unnamed_addr global i32, align 4
@current_function_sp_is_unchanging = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [80 x i8] c"df_worklist_dataflow_doublequeue:n_basic_blocks %d n_edges %d count %d (%5.2g)\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"insn %d luid %d\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" defs \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c" eq uses \00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" mws \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"mw %c r[%d..%d]\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_add_problem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.df_problem, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @df_add_problem(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @df, align 8, !tbaa !11
  %8 = load i32, ptr %0, align 8, !tbaa !12
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %6
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #19
  store ptr %0, ptr %14, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 7
  store i8 0, ptr %15, align 4, !tbaa !15
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 8
  store i8 1, ptr %16, align 1, !tbaa !16
  %17 = load ptr, ptr @df, align 8, !tbaa !11
  %18 = load i32, ptr %0, align 8, !tbaa !12
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 %19
  store ptr %14, ptr %20, align 8, !tbaa !11
  %21 = load ptr, ptr @df, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !17
  %25 = icmp sgt i32 %23, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %13
  %27 = zext nneg i32 %23 to i64
  br label %28

28:                                               ; preds = %26, %37
  %29 = phi i64 [ %27, %26 ], [ %30, %37 ]
  %30 = add nsw i64 %29, -1
  %31 = load ptr, ptr @df, align 8, !tbaa !11
  %32 = getelementptr inbounds [8 x ptr], ptr %31, i64 0, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = load i32, ptr %34, align 8, !tbaa !12
  %36 = icmp ult i32 %18, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds [8 x ptr], ptr %31, i64 0, i64 %29
  store ptr %33, ptr %38, align 8, !tbaa !11
  %39 = icmp ugt i64 %29, 1
  br i1 %39, label %28, label %43, !llvm.loop !20

40:                                               ; preds = %28
  %41 = and i64 %29, 4294967295
  %42 = getelementptr inbounds [8 x ptr], ptr %31, i64 0, i64 %41
  br label %45

43:                                               ; preds = %37
  %44 = load ptr, ptr @df, align 8, !tbaa !11
  br label %45

45:                                               ; preds = %13, %43, %40
  %46 = phi ptr [ %42, %40 ], [ %44, %43 ], [ %21, %13 ]
  store ptr %14, ptr %46, align 8, !tbaa !11
  br label %47

47:                                               ; preds = %45, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @df_set_flags(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %4 = load i8, ptr %3, align 4
  %5 = sext i8 %4 to i32
  %6 = trunc i32 %0 to i8
  %7 = or i8 %4, %6
  store i8 %7, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @df_clear_flags(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 27
  %4 = load i8, ptr %3, align 4
  %5 = sext i8 %4 to i32
  %6 = trunc i32 %0 to i8
  %7 = xor i8 %6, -1
  %8 = and i8 %4, %7
  store i8 %8, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_set_blocks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %4, label %141, label %7

7:                                                ; preds = %1
  br i1 %6, label %9, label %8

8:                                                ; preds = %7
  tail call void @bitmap_print(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19
  br label %9

9:                                                ; preds = %8, %7
  %10 = load ptr, ptr @df, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %86, label %134

18:                                               ; preds = %9
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #19
  %20 = load ptr, ptr @df, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %19, ptr noundef %22, ptr noundef nonnull %0) #19
  %24 = load ptr, ptr @df, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !17
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %18, %75
  %29 = phi i64 [ %76, %75 ], [ 0, %18 ]
  %30 = phi ptr [ %77, %75 ], [ %24, %18 ]
  %31 = getelementptr inbounds [8 x ptr], ptr %30, i64 0, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.dataflow, ptr %32, i64 0, i32 9
  %34 = load i8, ptr %33, align 2, !tbaa !23
  %35 = icmp eq i8 %34, 0
  %36 = load ptr, ptr %32, align 8, !tbaa !13
  br i1 %35, label %44, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.df_problem, ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  tail call void %39(ptr noundef %43) #19
  br label %75

44:                                               ; preds = %37, %28
  %45 = getelementptr inbounds %struct.df_problem, ptr %36, i64 0, i32 21
  %46 = load i8, ptr %45, align 4, !tbaa !25
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %19, i32 noundef 0, ptr noundef nonnull %3) #18
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !26
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %53

53:                                               ; preds = %51, %70
  %54 = phi ptr [ %52, %51 ], [ %71, %70 ]
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !27
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !29
  %59 = load i32, ptr %3, align 4, !tbaa !31
  %60 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %58, i32 noundef %59) #18
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %53
  %63 = tail call fastcc ptr @df_get_bb_info(ptr noundef nonnull %32, i32 noundef %59) #18
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %32, align 8, !tbaa !13
  %67 = getelementptr inbounds %struct.df_problem, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !32
  tail call void %68(ptr noundef nonnull %60, ptr noundef nonnull %63) #19
  tail call fastcc void @df_set_bb_info(ptr noundef nonnull %32, i32 noundef %59, ptr noundef null) #18
  %69 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %70

70:                                               ; preds = %62, %65, %53
  %71 = phi ptr [ %54, %62 ], [ %69, %65 ], [ %54, %53 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !26
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %53, !llvm.loop !33

74:                                               ; preds = %70, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %75

75:                                               ; preds = %44, %74, %41
  %76 = add nuw nsw i64 %29, 1
  %77 = load ptr, ptr @df, align 8, !tbaa !11
  %78 = getelementptr inbounds %struct.df, ptr %77, i64 0, i32 12
  %79 = load i32, ptr %78, align 4, !tbaa !17
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %76, %80
  br i1 %81, label %28, label %82, !llvm.loop !34

82:                                               ; preds = %75, %18
  tail call void @bitmap_obstack_free(ptr noundef %19) #19
  %83 = load ptr, ptr @df, align 8, !tbaa !11
  %84 = getelementptr inbounds %struct.df, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  br label %138

86:                                               ; preds = %14, %123
  %87 = phi ptr [ %124, %123 ], [ %10, %14 ]
  %88 = phi i64 [ %126, %123 ], [ 0, %14 ]
  %89 = phi ptr [ %125, %123 ], [ null, %14 ]
  %90 = getelementptr inbounds [8 x ptr], ptr %87, i64 0, i64 %88
  %91 = load ptr, ptr %90, align 8, !tbaa !11
  %92 = getelementptr inbounds %struct.dataflow, ptr %91, i64 0, i32 9
  %93 = load i8, ptr %92, align 2, !tbaa !23
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %123, label %95

95:                                               ; preds = %86
  %96 = load ptr, ptr %91, align 8, !tbaa !13
  %97 = getelementptr inbounds %struct.df_problem, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !24
  %99 = icmp eq ptr %98, null
  br i1 %99, label %123, label %100

100:                                              ; preds = %95
  %101 = icmp eq ptr %89, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %100
  %103 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #19
  %104 = load ptr, ptr @cfun, align 8, !tbaa !11
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !27
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %102, %109
  %110 = phi ptr [ %115, %109 ], [ %107, %102 ]
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 9
  %112 = load i32, ptr %111, align 8, !tbaa !35
  %113 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %103, i32 noundef %112) #19
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !11
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %109, !llvm.loop !38

117:                                              ; preds = %109, %102, %100
  %118 = phi ptr [ %89, %100 ], [ %103, %102 ], [ %103, %109 ]
  %119 = load ptr, ptr %91, align 8, !tbaa !13
  %120 = getelementptr inbounds %struct.df_problem, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !24
  tail call void %121(ptr noundef %118) #19
  %122 = load ptr, ptr @df, align 8, !tbaa !11
  br label %123

123:                                              ; preds = %117, %95, %86
  %124 = phi ptr [ %122, %117 ], [ %87, %95 ], [ %87, %86 ]
  %125 = phi ptr [ %118, %117 ], [ %89, %95 ], [ %89, %86 ]
  %126 = add nuw nsw i64 %88, 1
  %127 = getelementptr inbounds %struct.df, ptr %124, i64 0, i32 12
  %128 = load i32, ptr %127, align 4, !tbaa !17
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %86, label %131, !llvm.loop !39

131:                                              ; preds = %123
  %132 = icmp eq ptr %125, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %131
  tail call void @bitmap_obstack_free(ptr noundef nonnull %125) #19
  br label %134

134:                                              ; preds = %14, %133, %131
  %135 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #19
  %136 = load ptr, ptr @df, align 8, !tbaa !11
  %137 = getelementptr inbounds %struct.df, ptr %136, i64 0, i32 2
  store ptr %135, ptr %137, align 8, !tbaa !22
  br label %138

138:                                              ; preds = %134, %82
  %139 = phi ptr [ %135, %134 ], [ %85, %82 ]
  tail call void @bitmap_copy(ptr noundef %139, ptr noundef nonnull %0) #19
  %140 = load ptr, ptr @df, align 8, !tbaa !11
  br label %152

141:                                              ; preds = %1
  br i1 %6, label %144, label %142

142:                                              ; preds = %141
  %143 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr nonnull %5)
  br label %144

144:                                              ; preds = %142, %141
  %145 = load ptr, ptr @df, align 8, !tbaa !11
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !22
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  tail call void @bitmap_obstack_free(ptr noundef nonnull %147) #19
  %150 = load ptr, ptr @df, align 8, !tbaa !11
  %151 = getelementptr inbounds %struct.df, ptr %150, i64 0, i32 2
  store ptr null, ptr %151, align 8, !tbaa !22
  br label %152

152:                                              ; preds = %144, %149, %138
  %153 = phi ptr [ %140, %138 ], [ %150, %149 ], [ %145, %144 ]
  %154 = phi i8 [ 1, %138 ], [ 0, %149 ], [ 0, %144 ]
  %155 = getelementptr inbounds %struct.df, ptr %153, i64 0, i32 28
  store i8 %154, ptr %155, align 1, !tbaa !40
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 0) #19
  tail call void @df_maybe_reorganize_use_refs(i32 noundef 0) #19
  tail call void @df_mark_solutions_dirty() #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 {
  %5 = load ptr, ptr %1, align 8, !tbaa !41
  store ptr %5, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !45
  %7 = icmp eq ptr %5, null
  %8 = lshr i32 %2, 7
  br i1 %7, label %9, label %11

9:                                                ; preds = %16, %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !43
  %10 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !46
  br label %19

11:                                               ; preds = %4, %16
  %12 = phi ptr [ %17, %16 ], [ %5, %4 ]
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp ult i32 %14, %8
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !48
  store ptr %17, ptr %0, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %11

19:                                               ; preds = %11, %9
  %20 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %21 = phi ptr [ @bitmap_zero_bits, %9 ], [ %12, %11 ]
  %22 = icmp eq i32 %20, %8
  %23 = shl i32 %20, 7
  %24 = select i1 %22, i32 %2, i32 %23
  %25 = lshr i32 %24, 6
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !49
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %21, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %32 = and i32 %24, 63
  %33 = zext nneg i32 %32 to i64
  %34 = lshr i64 %30, %33
  store i64 %34, ptr %31, align 8, !tbaa !51
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = add i32 %24, %36
  store i32 %37, ptr %3, align 4, !tbaa !31
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !51
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !31
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !52

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !31
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !31
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !49
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !43
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !49
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !50
  store i64 %35, ptr %3, align 8, !tbaa !51
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !31
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !31
  %40 = load i32, ptr %23, align 8, !tbaa !49
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !49
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !53

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !48
  store ptr %44, ptr %0, align 8, !tbaa !43
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !46
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !31
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !51
  store i32 %16, ptr %1, align 4, !tbaa !31
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_bb_info(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %6, %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ], [ null, %6 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_set_bb_info(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.4) #19
  %8 = load ptr, ptr %4, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %5, %3 ], [ %8, %7 ]
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  store ptr %2, ptr %12, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !51
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !51
  %6 = load i32, ptr %1, align 4, !tbaa !31
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @df_maybe_reorganize_def_refs(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_maybe_reorganize_use_refs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @df_mark_solutions_dirty() local_unnamed_addr #9 {
  %1 = load ptr, ptr @df, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !17
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 1, %7 ], [ %14, %9 ]
  %11 = getelementptr inbounds [8 x ptr], ptr %1, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 8
  store i8 1, ptr %13, align 1, !tbaa !16
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !56

16:                                               ; preds = %9, %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_remove_problem(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %79, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.df_problem, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 604, ptr noundef nonnull @.str.4) #19
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr @df, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %18, label %73

14:                                               ; preds = %29
  %15 = icmp sgt i32 %33, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %14
  %17 = zext nneg i32 %33 to i64
  br label %36

18:                                               ; preds = %9, %29
  %19 = phi ptr [ %30, %29 ], [ %10, %9 ]
  %20 = phi i64 [ %31, %29 ], [ 0, %9 ]
  %21 = getelementptr inbounds [8 x ptr], ptr %19, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.df_problem, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  tail call void @df_remove_problem(ptr noundef nonnull %22) #18
  %28 = load ptr, ptr @df, align 8, !tbaa !11
  br label %29

29:                                               ; preds = %18, %27
  %30 = phi ptr [ %19, %18 ], [ %28, %27 ]
  %31 = add nuw nsw i64 %20, 1
  %32 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 12
  %33 = load i32, ptr %32, align 4, !tbaa !17
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %18, label %14, !llvm.loop !58

36:                                               ; preds = %16, %69
  %37 = phi i64 [ 1, %16 ], [ %72, %69 ]
  %38 = phi i64 [ 0, %16 ], [ %70, %69 ]
  %39 = getelementptr inbounds [8 x ptr], ptr %30, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = trunc i64 %38 to i32
  %44 = add nuw nsw i32 %43, 1
  %45 = icmp slt i32 %44, %33
  br i1 %45, label %46, label %60

46:                                               ; preds = %42, %46
  %47 = phi i64 [ %59, %46 ], [ %38, %42 ]
  %48 = phi i64 [ %53, %46 ], [ %37, %42 ]
  %49 = phi ptr [ %54, %46 ], [ %30, %42 ]
  %50 = getelementptr inbounds [8 x ptr], ptr %49, i64 0, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = getelementptr inbounds [8 x ptr], ptr %49, i64 0, i64 %47
  store ptr %51, ptr %52, align 8, !tbaa !11
  %53 = add nuw nsw i64 %48, 1
  %54 = load ptr, ptr @df, align 8, !tbaa !11
  %55 = getelementptr inbounds %struct.df, ptr %54, i64 0, i32 12
  %56 = load i32, ptr %55, align 4, !tbaa !17
  %57 = trunc i64 %53 to i32
  %58 = icmp sgt i32 %56, %57
  %59 = add nuw nsw i64 %47, 1
  br i1 %58, label %46, label %60, !llvm.loop !59

60:                                               ; preds = %46, %42
  %61 = phi i64 [ %38, %42 ], [ %48, %46 ]
  %62 = phi ptr [ %30, %42 ], [ %54, %46 ]
  %63 = and i64 %61, 4294967295
  %64 = getelementptr inbounds [8 x ptr], ptr %62, i64 0, i64 %63
  store ptr null, ptr %64, align 8, !tbaa !11
  %65 = load ptr, ptr @df, align 8, !tbaa !11
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 12
  %67 = load i32, ptr %66, align 4, !tbaa !17
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %66, align 4, !tbaa !17
  br label %73

69:                                               ; preds = %36
  %70 = add nuw nsw i64 %38, 1
  %71 = icmp eq i64 %70, %17
  %72 = add nuw nsw i64 %37, 1
  br i1 %71, label %73, label %36, !llvm.loop !60

73:                                               ; preds = %69, %9, %14, %60
  %74 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void %74() #19
  %75 = load ptr, ptr @df, align 8, !tbaa !11
  %76 = load i32, ptr %4, align 8, !tbaa !12
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 %77
  store ptr null, ptr %78, align 8, !tbaa !11
  br label %79

79:                                               ; preds = %1, %73
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_finish_pass(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %59, label %4

4:                                                ; preds = %1
  tail call void @df_maybe_reorganize_def_refs(i32 noundef 0) #19
  tail call void @df_maybe_reorganize_use_refs(i32 noundef 0) #19
  %5 = load ptr, ptr @df, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !17
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %4, %35
  %10 = phi ptr [ %36, %35 ], [ %5, %4 ]
  %11 = phi i64 [ %38, %35 ], [ 0, %4 ]
  %12 = phi i32 [ %37, %35 ], [ 0, %4 ]
  %13 = getelementptr inbounds [8 x ptr], ptr %10, i64 0, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 9
  %17 = load i8, ptr %16, align 2, !tbaa !23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.df_problem, ptr %15, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 659, ptr noundef nonnull @.str.4) #19
  %24 = load ptr, ptr %20, align 8, !tbaa !57
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi ptr [ %21, %19 ], [ %24, %23 ]
  tail call void %26() #19
  %27 = load ptr, ptr @df, align 8, !tbaa !11
  %28 = getelementptr inbounds [8 x ptr], ptr %27, i64 0, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !11
  %29 = load ptr, ptr @df, align 8, !tbaa !11
  %30 = load i32, ptr %15, align 8, !tbaa !12
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 1, i64 %31
  store ptr null, ptr %32, align 8, !tbaa !11
  %33 = add nsw i32 %12, 1
  %34 = load ptr, ptr @df, align 8, !tbaa !11
  br label %35

35:                                               ; preds = %25, %9
  %36 = phi ptr [ %34, %25 ], [ %10, %9 ]
  %37 = phi i32 [ %33, %25 ], [ %12, %9 ]
  %38 = add nuw nsw i64 %11, 1
  %39 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 12
  %40 = load i32, ptr %39, align 4, !tbaa !17
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %9, label %43, !llvm.loop !61

43:                                               ; preds = %35, %4
  %44 = phi ptr [ %5, %4 ], [ %36, %35 ]
  %45 = phi i32 [ 0, %4 ], [ %37, %35 ]
  %46 = phi i32 [ %7, %4 ], [ %40, %35 ]
  %47 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 12
  %48 = sub nsw i32 %46, %45
  store i32 %48, ptr %47, align 4, !tbaa !17
  %49 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 27
  store i8 0, ptr %49, align 4
  tail call void @df_process_deferred_rescans() #19
  %50 = load ptr, ptr @df, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %43
  tail call void @bitmap_obstack_free(ptr noundef nonnull %52) #19
  %55 = load ptr, ptr @df, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.df, ptr %55, i64 0, i32 2
  store ptr null, ptr %56, align 8, !tbaa !22
  tail call void @df_mark_solutions_dirty() #18
  %57 = load ptr, ptr @df, align 8, !tbaa !11
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 28
  store i8 0, ptr %58, align 1, !tbaa !40
  br label %59

59:                                               ; preds = %43, %54, %1
  ret void
}

; Function Attrs: optsize
declare void @df_process_deferred_rescans() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_opt() #10 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !31
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_df_initialize() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 707, ptr noundef nonnull @.str.4) #19
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 368) #19
  store ptr %5, ptr @df, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  store i8 0, ptr %6, align 4
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @df_bitmap_obstack) #19
  store i32 0, ptr @current_function_sp_is_unchanging, align 4, !tbaa !31
  tail call void @df_scan_add_problem() #19
  tail call void @df_scan_alloc(ptr noundef null) #19
  tail call void @df_lr_add_problem() #19
  %7 = load i32, ptr @optimize, align 4, !tbaa !31
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @df_live_add_problem() #19
  br label %10

10:                                               ; preds = %9, %4
  %11 = load ptr, ptr @cfun, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !62
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr @xmalloc(i64 noundef %17) #19
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 21
  store ptr %18, ptr %20, align 8, !tbaa !63
  %21 = load ptr, ptr @cfun, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !62
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr @xmalloc(i64 noundef %27) #19
  %29 = load ptr, ptr @df, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 22
  store ptr %28, ptr %30, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = tail call i32 @post_order_compute(ptr noundef %32, i8 noundef zeroext 1, i8 noundef zeroext 1) #19
  %34 = load ptr, ptr @df, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 23
  store i32 %33, ptr %35, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 22
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = tail call i32 @inverted_post_order_compute(ptr noundef %37) #19
  %39 = load ptr, ptr @df, align 8, !tbaa !11
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 24
  store i32 %38, ptr %40, align 4, !tbaa !66
  %41 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 23
  %42 = load i32, ptr %41, align 8, !tbaa !65
  %43 = icmp eq i32 %42, %38
  br i1 %43, label %45, label %44

44:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 729, ptr noundef nonnull @.str.4) #19
  br label %45

45:                                               ; preds = %10, %44
  %46 = tail call ptr @xmalloc(i64 noundef 212) #19
  %47 = load ptr, ptr @df, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 25
  store ptr %46, ptr %48, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %46, i8 0, i64 212, i1 false)
  tail call void @df_hard_reg_init() #19
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 1) #19
  tail call void @df_scan_blocks() #19
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 0) #19
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_no_opt() #10 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !31
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_df_finish() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 807, ptr noundef nonnull @.str.4) #19
  %4 = load ptr, ptr @df, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %1, %0 ], [ %4, %3 ]
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !17
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %5, %10
  %11 = phi i64 [ %18, %10 ], [ 0, %5 ]
  %12 = phi ptr [ %19, %10 ], [ %6, %5 ]
  %13 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.df_problem, ptr %15, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  tail call void %17() #19
  %18 = add nuw nsw i64 %11, 1
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 12
  %21 = load i32, ptr %20, align 4, !tbaa !17
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %10, label %24, !llvm.loop !69

24:                                               ; preds = %10, %5
  %25 = phi ptr [ %6, %5 ], [ %19, %10 ]
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  tail call void @free(ptr noundef nonnull %27) #18
  %30 = load ptr, ptr @df, align 8, !tbaa !11
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %30, %29 ], [ %25, %24 ]
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 22
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %34) #18
  %37 = load ptr, ptr @df, align 8, !tbaa !11
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi ptr [ %37, %36 ], [ %32, %31 ]
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 25
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  tail call void @free(ptr noundef %41) #18
  %42 = load ptr, ptr @df, align 8, !tbaa !11
  tail call void @free(ptr noundef %42) #18
  store ptr null, ptr @df, align 8, !tbaa !11
  tail call void @bitmap_obstack_release(ptr noundef nonnull @df_bitmap_obstack) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_worklist_dataflow(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #19
  %8 = load ptr, ptr @cfun, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = tail call ptr @sbitmap_alloc(i32 noundef %12) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %14 = load ptr, ptr %0, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.df_problem, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !70
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1016, ptr noundef nonnull @.str.4) #19
  br label %19

19:                                               ; preds = %4, %18
  %20 = load ptr, ptr @cfun, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !62
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr @xmalloc(i64 noundef %26) #19
  %28 = load ptr, ptr @cfun, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !62
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %19, %34
  %35 = phi i64 [ %38, %34 ], [ 0, %19 ]
  %36 = phi i32 [ %39, %34 ], [ %32, %19 ]
  %37 = getelementptr inbounds i32, ptr %27, i64 %35
  store i32 %36, ptr %37, align 4, !tbaa !31
  %38 = add nuw nsw i64 %35, 1
  %39 = load i32, ptr %31, align 8, !tbaa !62
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %34, label %42, !llvm.loop !71

42:                                               ; preds = %34, %19
  tail call void @sbitmap_zero(ptr noundef %13) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6) #18
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #18, !range !26
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %49, %42
  %46 = icmp sgt i32 %3, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = zext nneg i32 %3 to i64
  br label %53

49:                                               ; preds = %42, %49
  %50 = load i32, ptr %6, align 4, !tbaa !31
  tail call fastcc void @SET_BIT(ptr noundef %13, i32 noundef %50) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %51 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #18, !range !26
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %45, label %49, !llvm.loop !72

53:                                               ; preds = %47, %53
  %54 = phi i64 [ 0, %47 ], [ %61, %53 ]
  %55 = getelementptr inbounds i32, ptr %2, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !31
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %27, i64 %57
  %59 = trunc i64 %54 to i32
  store i32 %59, ptr %58, align 4, !tbaa !31
  %60 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %59) #19
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, %48
  br i1 %62, label %63, label %53, !llvm.loop !73

63:                                               ; preds = %53, %45
  %64 = load ptr, ptr %0, align 8, !tbaa !13
  %65 = getelementptr inbounds %struct.df_problem, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !74
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void %66(ptr noundef %1) #19
  br label %69

69:                                               ; preds = %68, %63
  tail call fastcc void @df_worklist_dataflow_doublequeue(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %13, ptr noundef %2, ptr noundef %27) #18
  %70 = load ptr, ptr %13, align 8, !tbaa !75
  tail call void @free(ptr noundef %70) #18
  tail call void @free(ptr noundef %13) #18
  tail call void @free(ptr noundef %27) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !50
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !77
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !77
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !50
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_worklist_dataflow_doublequeue(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.df_problem, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !70
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #19
  %10 = load ptr, ptr %1, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %5
  %13 = icmp eq i32 %8, 1
  br label %14

14:                                               ; preds = %12, %31
  %15 = phi ptr [ %1, %12 ], [ %17, %31 ]
  %16 = phi i32 [ 0, %12 ], [ %20, %31 ]
  %17 = phi ptr [ %9, %12 ], [ %15, %31 ]
  br label %18

18:                                               ; preds = %14, %28
  %19 = phi i32 [ %20, %28 ], [ %16, %14 ]
  %20 = add nsw i32 %19, 1
  %21 = tail call i32 @bitmap_first_set_bit(ptr noundef nonnull %15) #19
  %22 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %15, i32 noundef %21) #19
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, ptr %3, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !31
  br i1 %13, label %26, label %27

26:                                               ; preds = %18
  tail call fastcc void @df_worklist_propagate_forward(ptr noundef nonnull %0, i32 noundef %25, ptr noundef %4, ptr noundef %17, ptr noundef %2) #18
  br label %28

27:                                               ; preds = %18
  tail call fastcc void @df_worklist_propagate_backward(ptr noundef nonnull %0, i32 noundef %25, ptr noundef %4, ptr noundef %17, ptr noundef %2) #18
  br label %28

28:                                               ; preds = %27, %26
  %29 = load ptr, ptr %15, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !78

31:                                               ; preds = %28
  %32 = load ptr, ptr %17, align 8, !tbaa !41
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %14, !llvm.loop !79

34:                                               ; preds = %31, %5
  %35 = phi ptr [ %9, %5 ], [ %15, %31 ]
  %36 = phi i32 [ 0, %5 ], [ %20, %31 ]
  %37 = phi ptr [ %1, %5 ], [ %17, %31 ]
  tail call void @bitmap_obstack_free(ptr noundef %35) #19
  tail call void @bitmap_obstack_free(ptr noundef nonnull %37) #19
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr @cfun, align 8, !tbaa !11
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !27
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !81
  %48 = sitofp i32 %36 to float
  %49 = sitofp i32 %45 to float
  %50 = fdiv float %48, %49
  %51 = fpext float %50 to double
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %38, ptr noundef nonnull @.str.35, i32 noundef %45, i32 noundef %47, i32 noundef %36, double noundef %51) #18
  br label %53

53:                                               ; preds = %40, %34
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_analyze_problem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !77
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.df_problem, ptr %8, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !82
  tail call void @timevar_push_1(i32 noundef %10) #19
  br label %11

11:                                               ; preds = %4, %7
  %12 = load ptr, ptr %0, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.df_problem, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  tail call void %14(ptr noundef %1) #19
  %17 = load ptr, ptr %0, align 8, !tbaa !13
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %12, %11 ]
  %20 = getelementptr inbounds %struct.df_problem, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  tail call void %21(ptr noundef %1) #19
  %24 = load ptr, ptr %0, align 8, !tbaa !13
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %27 = getelementptr inbounds %struct.df_problem, ptr %26, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  tail call void %28(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #19
  %31 = load ptr, ptr %0, align 8, !tbaa !13
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %26, %25 ]
  %34 = getelementptr inbounds %struct.df_problem, ptr %33, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35(ptr noundef %1) #19
  br label %38

38:                                               ; preds = %32, %37
  %39 = load i8, ptr @timevar_enable, align 1, !tbaa !77
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 8, !tbaa !13
  %43 = getelementptr inbounds %struct.df_problem, ptr %42, i64 0, i32 20
  %44 = load i32, ptr %43, align 8, !tbaa !82
  tail call void @timevar_pop_1(i32 noundef %44) #19
  br label %45

45:                                               ; preds = %38, %41
  %46 = getelementptr inbounds %struct.dataflow, ptr %0, i64 0, i32 7
  store i8 1, ptr %46, align 4, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_analyze() local_unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #19
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %4) #18
  %7 = load ptr, ptr @df, align 8, !tbaa !11
  br label %8

8:                                                ; preds = %6, %0
  %9 = phi ptr [ %7, %6 ], [ %2, %0 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %11) #18
  br label %14

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr @cfun, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !62
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr @xmalloc(i64 noundef %21) #19
  %23 = load ptr, ptr @df, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 21
  store ptr %22, ptr %24, align 8, !tbaa !63
  %25 = load ptr, ptr @cfun, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !27
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !62
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call ptr @xmalloc(i64 noundef %31) #19
  %33 = load ptr, ptr @df, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 22
  store ptr %32, ptr %34, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 21
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = tail call i32 @post_order_compute(ptr noundef %36, i8 noundef zeroext 1, i8 noundef zeroext 1) #19
  %38 = load ptr, ptr @df, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 23
  store i32 %37, ptr %39, align 8, !tbaa !65
  %40 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 22
  %41 = load ptr, ptr %40, align 8, !tbaa !64
  %42 = tail call i32 @inverted_post_order_compute(ptr noundef %41) #19
  %43 = load ptr, ptr @df, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 24
  store i32 %42, ptr %44, align 4, !tbaa !66
  %45 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 23
  %46 = load i32, ptr %45, align 8, !tbaa !65
  %47 = icmp eq i32 %46, %42
  br i1 %47, label %49, label %48

48:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1139, ptr noundef nonnull @.str.4) #19
  br label %49

49:                                               ; preds = %14, %48
  tail call void @df_compute_regs_ever_live(i8 noundef zeroext 0) #19
  tail call void @df_process_deferred_rescans() #19
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr nonnull %50)
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr @df, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.df, ptr %55, i64 0, i32 27
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, 64
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  tail call void @df_verify() #18
  %61 = load ptr, ptr @df, align 8, !tbaa !11
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi ptr [ %61, %60 ], [ %55, %54 ]
  %64 = getelementptr inbounds %struct.df, ptr %63, i64 0, i32 23
  %65 = load i32, ptr %64, align 8, !tbaa !65
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62, %67
  %68 = phi i64 [ %75, %67 ], [ 0, %62 ]
  %69 = phi ptr [ %76, %67 ], [ %63, %62 ]
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 21
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = getelementptr inbounds i32, ptr %71, i64 %68
  %73 = load i32, ptr %72, align 4, !tbaa !31
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %73) #19
  %75 = add nuw nsw i64 %68, 1
  %76 = load ptr, ptr @df, align 8, !tbaa !11
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 23
  %78 = load i32, ptr %77, align 8, !tbaa !65
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %67, label %81, !llvm.loop !87

81:                                               ; preds = %67, %62
  %82 = phi ptr [ %63, %62 ], [ %76, %67 ]
  %83 = getelementptr inbounds %struct.df, ptr %82, i64 0, i32 28
  %84 = load i8, ptr %83, align 1, !tbaa !40
  %85 = icmp eq i8 %84, 0
  %86 = getelementptr inbounds %struct.df, ptr %82, i64 0, i32 2
  br i1 %85, label %109, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %86, align 8, !tbaa !22
  tail call void @bitmap_and_into(ptr noundef %88, ptr noundef %1) #19
  %89 = load ptr, ptr @df, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.df, ptr %89, i64 0, i32 21
  %91 = load ptr, ptr %90, align 8, !tbaa !63
  %92 = getelementptr inbounds %struct.df, ptr %89, i64 0, i32 23
  %93 = load i32, ptr %92, align 8, !tbaa !65
  %94 = getelementptr inbounds %struct.df, ptr %89, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !22
  %96 = tail call fastcc i32 @df_prune_to_subcfg(ptr noundef %91, i32 noundef %93, ptr noundef %95) #18
  %97 = load ptr, ptr @df, align 8, !tbaa !11
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 23
  store i32 %96, ptr %98, align 8, !tbaa !65
  %99 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 22
  %100 = load ptr, ptr %99, align 8, !tbaa !64
  %101 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 24
  %102 = load i32, ptr %101, align 4, !tbaa !66
  %103 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !22
  %105 = tail call fastcc i32 @df_prune_to_subcfg(ptr noundef %100, i32 noundef %102, ptr noundef %104) #18
  %106 = load ptr, ptr @df, align 8, !tbaa !11
  %107 = getelementptr inbounds %struct.df, ptr %106, i64 0, i32 24
  store i32 %105, ptr %107, align 4, !tbaa !66
  tail call void @bitmap_obstack_free(ptr noundef %1) #19
  %108 = load ptr, ptr @df, align 8, !tbaa !11
  br label %110

109:                                              ; preds = %81
  store ptr %1, ptr %86, align 8, !tbaa !22
  br label %110

110:                                              ; preds = %109, %87
  %111 = phi ptr [ %82, %109 ], [ %108, %87 ]
  %112 = getelementptr inbounds %struct.df, ptr %111, i64 0, i32 12
  %113 = load i32, ptr %112, align 4, !tbaa !17
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %147

115:                                              ; preds = %110, %140
  %116 = phi i64 [ %141, %140 ], [ 1, %110 ]
  %117 = phi ptr [ %142, %140 ], [ %111, %110 ]
  %118 = getelementptr inbounds [8 x ptr], ptr %117, i64 0, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !11
  %120 = getelementptr inbounds %struct.dataflow, ptr %119, i64 0, i32 8
  %121 = load i8, ptr %120, align 1, !tbaa !16
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %115
  %124 = load ptr, ptr %119, align 8, !tbaa !13
  %125 = getelementptr inbounds %struct.df_problem, ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !70
  %127 = icmp eq i32 %126, 1
  %128 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !22
  br i1 %127, label %130, label %135

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 22
  %132 = load ptr, ptr %131, align 8, !tbaa !64
  %133 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 24
  %134 = load i32, ptr %133, align 4, !tbaa !66
  tail call void @df_analyze_problem(ptr noundef nonnull %119, ptr noundef %129, ptr noundef %132, i32 noundef %134) #18
  br label %140

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 21
  %137 = load ptr, ptr %136, align 8, !tbaa !63
  %138 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 23
  %139 = load i32, ptr %138, align 8, !tbaa !65
  tail call void @df_analyze_problem(ptr noundef nonnull %119, ptr noundef %129, ptr noundef %137, i32 noundef %139) #18
  br label %140

140:                                              ; preds = %130, %135, %115
  %141 = add nuw nsw i64 %116, 1
  %142 = load ptr, ptr @df, align 8, !tbaa !11
  %143 = getelementptr inbounds %struct.df, ptr %142, i64 0, i32 12
  %144 = load i32, ptr %143, align 4, !tbaa !17
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %141, %145
  br i1 %146, label %115, label %147, !llvm.loop !88

147:                                              ; preds = %140, %110
  %148 = phi ptr [ %111, %110 ], [ %142, %140 ]
  br i1 %85, label %149, label %154

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.df, ptr %148, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !22
  tail call void @bitmap_obstack_free(ptr noundef %151) #19
  %152 = load ptr, ptr @df, align 8, !tbaa !11
  %153 = getelementptr inbounds %struct.df, ptr %152, i64 0, i32 2
  store ptr null, ptr %153, align 8, !tbaa !22
  br label %154

154:                                              ; preds = %149, %147
  ret void
}

; Function Attrs: optsize
declare i32 @post_order_compute(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @inverted_post_order_compute(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_compute_regs_ever_live(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_verify() local_unnamed_addr #0 {
  tail call void @df_scan_verify() #19
  ret void
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @df_prune_to_subcfg(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i64 [ 0, %5 ], [ %21, %19 ]
  %9 = phi i32 [ 0, %5 ], [ %20, %19 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !31
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %11) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %10, align 4, !tbaa !31
  %16 = add i32 %9, 1
  %17 = zext i32 %9 to i64
  %18 = getelementptr inbounds i32, ptr %0, i64 %17
  store i32 %15, ptr %18, align 4, !tbaa !31
  br label %19

19:                                               ; preds = %7, %14
  %20 = phi i32 [ %16, %14 ], [ %9, %7 ]
  %21 = add nuw nsw i64 %8, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %23, label %7, !llvm.loop !89

23:                                               ; preds = %19, %3
  %24 = phi i32 [ 0, %3 ], [ %20, %19 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @df_get_n_blocks(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %13 [
    i32 0, label %2
    i32 1, label %3
  ]

2:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1220, ptr noundef nonnull @.str.4) #19
  br label %13

3:                                                ; preds = %1
  %4 = load ptr, ptr @df, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1224, ptr noundef nonnull @.str.4) #19
  %9 = load ptr, ptr @df, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 24
  br label %23

13:                                               ; preds = %2, %1
  %14 = load ptr, ptr @df, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1228, ptr noundef nonnull @.str.4) #19
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %14, %13 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 23
  br label %23

23:                                               ; preds = %20, %10
  %24 = phi ptr [ %12, %10 ], [ %22, %20 ]
  %25 = load i32, ptr %24, align 4, !tbaa !31
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_get_postorder(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %13 [
    i32 0, label %2
    i32 1, label %3
  ]

2:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1240, ptr noundef nonnull @.str.4) #19
  br label %13

3:                                                ; preds = %1
  %4 = load ptr, ptr @df, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1244, ptr noundef nonnull @.str.4) #19
  %9 = load ptr, ptr @df, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 22
  br label %23

13:                                               ; preds = %2, %1
  %14 = load ptr, ptr @df, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1247, ptr noundef nonnull @.str.4) #19
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %14, %13 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 21
  br label %23

23:                                               ; preds = %20, %10
  %24 = phi ptr [ %12, %10 ], [ %22, %20 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_simple_dataflow(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) @user_problem, i8 0, i64 160, i1 false)
  store i32 %0, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 1), align 4, !tbaa !70
  store ptr %1, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 6), align 8, !tbaa !74
  store ptr %2, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 8), align 8, !tbaa !90
  store ptr %3, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 9), align 8, !tbaa !91
  store ptr %4, ptr getelementptr inbounds (%struct.df_problem, ptr @user_problem, i64 0, i32 10), align 8, !tbaa !92
  store ptr @user_problem, ptr @user_dflow, align 8, !tbaa !13
  tail call void @df_worklist_dataflow(ptr noundef nonnull @user_dflow, ptr noundef %5, ptr noundef %6, i32 noundef %7) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @df_get_bb_dirty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %12) #19
  %14 = trunc i32 %13 to i8
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i8 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %16
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_set_bb_dirty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !17
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  br label %10

10:                                               ; preds = %8, %22
  %11 = phi ptr [ %2, %8 ], [ %23, %22 ]
  %12 = phi i64 [ 1, %8 ], [ %24, %22 ]
  %13 = getelementptr inbounds [8 x ptr], ptr %11, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %9, align 8, !tbaa !35
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %16, i32 noundef %19) #19
  %21 = load ptr, ptr @df, align 8, !tbaa !11
  br label %22

22:                                               ; preds = %18, %10
  %23 = phi ptr [ %21, %18 ], [ %11, %10 ]
  %24 = add nuw nsw i64 %12, 1
  %25 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !17
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %10, label %29, !llvm.loop !94

29:                                               ; preds = %22, %4
  tail call void @df_mark_solutions_dirty() #18
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_set_bb_dirty_nonlr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !17
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  br label %10

10:                                               ; preds = %8, %30
  %11 = phi ptr [ %2, %8 ], [ %31, %30 ]
  %12 = phi ptr [ %2, %8 ], [ %32, %30 ]
  %13 = phi i64 [ 1, %8 ], [ %33, %30 ]
  %14 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %9, align 8, !tbaa !35
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %21, i32 noundef %24) #19
  %26 = load ptr, ptr @df, align 8, !tbaa !11
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %26, %23 ], [ %11, %19 ]
  %29 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 8
  store i8 1, ptr %29, align 1, !tbaa !16
  br label %30

30:                                               ; preds = %10, %27
  %31 = phi ptr [ %11, %10 ], [ %28, %27 ]
  %32 = phi ptr [ %12, %10 ], [ %28, %27 ]
  %33 = add nuw nsw i64 %13, 1
  %34 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 12
  %35 = load i32, ptr %34, align 4, !tbaa !17
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %10, label %38, !llvm.loop !95

38:                                               ; preds = %30, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_compact_blocks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = shl i32 %5, 3
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #19
  %8 = sext i32 %6 to i64
  %9 = tail call ptr @xmalloc(i64 noundef %8) #19
  %10 = load ptr, ptr @df, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %153

14:                                               ; preds = %0, %146
  %15 = phi i64 [ %147, %146 ], [ 0, %0 ]
  %16 = phi ptr [ %148, %146 ], [ %10, %0 ]
  %17 = getelementptr inbounds [8 x ptr], ptr %16, i64 0, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = icmp eq ptr %20, null
  br i1 %21, label %65, label %22

22:                                               ; preds = %14
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef nonnull %20) #19
  %23 = load ptr, ptr %19, align 8, !tbaa !93
  tail call void @bitmap_clear(ptr noundef %23) #19
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 0) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %19, align 8, !tbaa !93
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %27, i32 noundef 0) #19
  br label %29

29:                                               ; preds = %26, %22
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 1) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %19, align 8, !tbaa !93
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef 1) #19
  br label %35

35:                                               ; preds = %32, %29
  %36 = load ptr, ptr @cfun, align 8, !tbaa !11
  %37 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !27
  %39 = load ptr, ptr %38, align 8, !tbaa !96
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %35, %55
  %46 = phi ptr [ %58, %55 ], [ %41, %35 ]
  %47 = phi i32 [ %56, %55 ], [ 2, %35 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !35
  %50 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %49) #19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %19, align 8, !tbaa !93
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %53, i32 noundef %47) #19
  br label %55

55:                                               ; preds = %52, %45
  %56 = add nuw nsw i32 %47, 1
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !97
  %59 = load ptr, ptr @cfun, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !27
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !98
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %45, !llvm.loop !99

65:                                               ; preds = %55, %35, %14
  %66 = load ptr, ptr %18, align 8, !tbaa !13
  %67 = getelementptr inbounds %struct.df_problem, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !32
  %69 = icmp eq ptr %68, null
  br i1 %69, label %146, label %70

70:                                               ; preds = %65
  tail call void @df_grow_bb_info(ptr noundef nonnull %18) #19
  %71 = getelementptr inbounds %struct.dataflow, ptr %18, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %72, i64 %8, i1 false)
  %73 = load ptr, ptr @cfun, align 8, !tbaa !11
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !27
  %76 = load ptr, ptr %75, align 8, !tbaa !96
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !97
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %75, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !98
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %102, label %82

82:                                               ; preds = %70, %82
  %83 = phi ptr [ %95, %82 ], [ %78, %70 ]
  %84 = phi i32 [ %93, %82 ], [ 2, %70 ]
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !35
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %9, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !11
  tail call fastcc void @df_set_bb_info(ptr noundef nonnull %18, i32 noundef %84, ptr noundef %89) #18
  %90 = load i32, ptr %85, align 8, !tbaa !35
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %9, i64 %91
  store ptr null, ptr %92, align 8, !tbaa !11
  %93 = add nuw nsw i32 %84, 1
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !97
  %96 = load ptr, ptr @cfun, align 8, !tbaa !11
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !27
  %99 = getelementptr inbounds %struct.control_flow_graph, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !98
  %101 = icmp eq ptr %95, %100
  br i1 %101, label %102, label %82, !llvm.loop !100

102:                                              ; preds = %82, %70
  %103 = phi i32 [ 2, %70 ], [ %93, %82 ]
  %104 = phi ptr [ %75, %70 ], [ %98, %82 ]
  %105 = load ptr, ptr %71, align 8, !tbaa !54
  %106 = zext nneg i32 %103 to i64
  %107 = getelementptr inbounds ptr, ptr %105, i64 %106
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 5
  %109 = load i32, ptr %108, align 8, !tbaa !62
  %110 = sub nsw i32 %109, %103
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %107, i8 0, i64 %112, i1 false)
  %113 = load ptr, ptr @cfun, align 8, !tbaa !11
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !27
  %116 = getelementptr inbounds %struct.control_flow_graph, ptr %115, i64 0, i32 5
  %117 = load i32, ptr %116, align 8, !tbaa !62
  %118 = icmp sgt i32 %117, 2
  br i1 %118, label %119, label %146

119:                                              ; preds = %102, %137
  %120 = phi ptr [ %138, %137 ], [ %113, %102 ]
  %121 = phi i64 [ %139, %137 ], [ 2, %102 ]
  %122 = phi ptr [ %141, %137 ], [ %115, %102 ]
  %123 = getelementptr inbounds %struct.control_flow_graph, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !29
  %125 = trunc i64 %121 to i32
  %126 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %124, i32 noundef %125) #18
  %127 = getelementptr inbounds ptr, ptr %9, i64 %121
  %128 = load ptr, ptr %127, align 8, !tbaa !11
  %129 = icmp ne ptr %128, null
  %130 = icmp ne ptr %126, null
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load ptr, ptr %18, align 8, !tbaa !13
  %134 = getelementptr inbounds %struct.df_problem, ptr %133, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !32
  tail call void %135(ptr noundef nonnull %126, ptr noundef nonnull %128) #19
  %136 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %137

137:                                              ; preds = %132, %119
  %138 = phi ptr [ %136, %132 ], [ %120, %119 ]
  %139 = add nuw nsw i64 %121, 1
  %140 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !27
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 5
  %143 = load i32, ptr %142, align 8, !tbaa !62
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %139, %144
  br i1 %145, label %119, label %146, !llvm.loop !101

146:                                              ; preds = %137, %102, %65
  %147 = add nuw nsw i64 %15, 1
  %148 = load ptr, ptr @df, align 8, !tbaa !11
  %149 = getelementptr inbounds %struct.df, ptr %148, i64 0, i32 12
  %150 = load i32, ptr %149, align 4, !tbaa !17
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %147, %151
  br i1 %152, label %14, label %153, !llvm.loop !102

153:                                              ; preds = %146, %0
  %154 = phi ptr [ %10, %0 ], [ %148, %146 ]
  %155 = getelementptr inbounds %struct.df, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !22
  %157 = icmp eq ptr %156, null
  br i1 %157, label %212, label %158

158:                                              ; preds = %153
  %159 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 0) #19
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr @df, align 8, !tbaa !11
  %163 = getelementptr inbounds %struct.df, ptr %162, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !22
  %165 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %164, i32 noundef 0) #19
  br label %166

166:                                              ; preds = %161, %158
  %167 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef 1) #19
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr @df, align 8, !tbaa !11
  %171 = getelementptr inbounds %struct.df, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !22
  %173 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %172, i32 noundef 1) #19
  br label %174

174:                                              ; preds = %169, %166
  %175 = load ptr, ptr @df, align 8, !tbaa !11
  %176 = getelementptr inbounds %struct.df, ptr %175, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !22
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef %177) #19
  %178 = load ptr, ptr @df, align 8, !tbaa !11
  %179 = getelementptr inbounds %struct.df, ptr %178, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !22
  tail call void @bitmap_clear(ptr noundef %180) #19
  %181 = load ptr, ptr @cfun, align 8, !tbaa !11
  %182 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !27
  %184 = load ptr, ptr %183, align 8, !tbaa !96
  %185 = getelementptr inbounds %struct.basic_block_def, ptr %184, i64 0, i32 6
  %186 = load ptr, ptr %185, align 8, !tbaa !97
  %187 = getelementptr inbounds %struct.control_flow_graph, ptr %183, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !98
  %189 = icmp eq ptr %186, %188
  br i1 %189, label %212, label %190

190:                                              ; preds = %174, %202
  %191 = phi ptr [ %205, %202 ], [ %186, %174 ]
  %192 = phi i32 [ %203, %202 ], [ 2, %174 ]
  %193 = getelementptr inbounds %struct.basic_block_def, ptr %191, i64 0, i32 9
  %194 = load i32, ptr %193, align 8, !tbaa !35
  %195 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %194) #19
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %190
  %198 = load ptr, ptr @df, align 8, !tbaa !11
  %199 = getelementptr inbounds %struct.df, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !22
  %201 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %200, i32 noundef %192) #19
  br label %202

202:                                              ; preds = %197, %190
  %203 = add nuw nsw i32 %192, 1
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %191, i64 0, i32 6
  %205 = load ptr, ptr %204, align 8, !tbaa !97
  %206 = load ptr, ptr @cfun, align 8, !tbaa !11
  %207 = getelementptr inbounds %struct.function, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !27
  %209 = getelementptr inbounds %struct.control_flow_graph, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !98
  %211 = icmp eq ptr %205, %210
  br i1 %211, label %212, label %190, !llvm.loop !103

212:                                              ; preds = %202, %174, %153
  tail call void @bitmap_obstack_free(ptr noundef %7) #19
  tail call void @free(ptr noundef %9) #18
  %213 = load ptr, ptr @cfun, align 8, !tbaa !11
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !27
  %216 = load ptr, ptr %215, align 8, !tbaa !96
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %216, i64 0, i32 6
  %218 = load ptr, ptr %217, align 8, !tbaa !97
  %219 = getelementptr inbounds %struct.control_flow_graph, ptr %215, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !98
  %221 = icmp eq ptr %218, %220
  br i1 %221, label %238, label %222

222:                                              ; preds = %212, %222
  %223 = phi ptr [ %234, %222 ], [ %215, %212 ]
  %224 = phi ptr [ %231, %222 ], [ %218, %212 ]
  %225 = phi i32 [ %229, %222 ], [ 2, %212 ]
  %226 = getelementptr inbounds %struct.control_flow_graph, ptr %223, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !29
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %227, i32 noundef %225, ptr noundef %224) #18
  %228 = getelementptr inbounds %struct.basic_block_def, ptr %224, i64 0, i32 9
  store i32 %225, ptr %228, align 8, !tbaa !35
  %229 = add nuw nsw i32 %225, 1
  %230 = getelementptr inbounds %struct.basic_block_def, ptr %224, i64 0, i32 6
  %231 = load ptr, ptr %230, align 8, !tbaa !97
  %232 = load ptr, ptr @cfun, align 8, !tbaa !11
  %233 = getelementptr inbounds %struct.function, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !27
  %235 = getelementptr inbounds %struct.control_flow_graph, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !98
  %237 = icmp eq ptr %231, %236
  br i1 %237, label %238, label %222, !llvm.loop !104

238:                                              ; preds = %222, %212
  %239 = phi ptr [ %213, %212 ], [ %232, %222 ]
  %240 = phi i32 [ 2, %212 ], [ %229, %222 ]
  %241 = phi ptr [ %215, %212 ], [ %234, %222 ]
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 3
  %243 = load i32, ptr %242, align 8, !tbaa !80
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %247, label %245

245:                                              ; preds = %238
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1493, ptr noundef nonnull @.str.4) #19
  %246 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %247

247:                                              ; preds = %238, %245
  %248 = phi ptr [ %239, %238 ], [ %246, %245 ]
  %249 = getelementptr inbounds %struct.function, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !27
  %251 = getelementptr inbounds %struct.control_flow_graph, ptr %250, i64 0, i32 5
  %252 = load i32, ptr %251, align 8, !tbaa !62
  %253 = icmp slt i32 %240, %252
  br i1 %253, label %254, label %266

254:                                              ; preds = %247, %254
  %255 = phi ptr [ %262, %254 ], [ %250, %247 ]
  %256 = phi i32 [ %259, %254 ], [ %240, %247 ]
  %257 = getelementptr inbounds %struct.control_flow_graph, ptr %255, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !29
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %258, i32 noundef %256, ptr noundef null) #18
  %259 = add nuw nsw i32 %256, 1
  %260 = load ptr, ptr @cfun, align 8, !tbaa !11
  %261 = getelementptr inbounds %struct.function, ptr %260, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !27
  %263 = getelementptr inbounds %struct.control_flow_graph, ptr %262, i64 0, i32 5
  %264 = load i32, ptr %263, align 8, !tbaa !62
  %265 = icmp slt i32 %259, %264
  br i1 %265, label %254, label %266, !llvm.loop !105

266:                                              ; preds = %254, %247
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_grow_bb_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_bb_replace(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, i32 noundef %4, i32 noundef %0) #18
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr @df, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1517, ptr noundef nonnull @.str.4) #19
  br label %13

13:                                               ; preds = %9, %12
  %14 = load ptr, ptr @cfun, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %18, i32 noundef %0) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1518, ptr noundef nonnull @.str.4) #19
  br label %22

22:                                               ; preds = %13, %21
  %23 = load ptr, ptr @df, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 12
  %25 = load i32, ptr %24, align 4, !tbaa !17
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22, %42
  %28 = phi ptr [ %43, %42 ], [ %23, %22 ]
  %29 = phi i64 [ %44, %42 ], [ 0, %22 ]
  %30 = getelementptr inbounds [8 x ptr], ptr %28, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.dataflow, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  tail call void @df_grow_bb_info(ptr noundef nonnull %31) #19
  %36 = tail call fastcc ptr @df_get_bb_info(ptr noundef nonnull %31, i32 noundef %0) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1526, ptr noundef nonnull @.str.4) #19
  br label %39

39:                                               ; preds = %35, %38
  %40 = tail call fastcc ptr @df_get_bb_info(ptr noundef nonnull %31, i32 noundef %4) #18
  tail call fastcc void @df_set_bb_info(ptr noundef nonnull %31, i32 noundef %0, ptr noundef %40) #18
  %41 = load ptr, ptr @df, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %39, %27
  %43 = phi ptr [ %41, %39 ], [ %28, %27 ]
  %44 = add nuw nsw i64 %29, 1
  %45 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 12
  %46 = load i32, ptr %45, align 4, !tbaa !17
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %27, label %49, !llvm.loop !106

49:                                               ; preds = %42, %22
  tail call fastcc void @df_clear_bb_dirty(ptr noundef %1) #18
  %50 = load ptr, ptr @cfun, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !29
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %54, i32 noundef %0, ptr noundef %1) #18
  store i32 %0, ptr %3, align 8, !tbaa !35
  %55 = load ptr, ptr @cfun, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !29
  %60 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %59, i32 noundef %0) #18
  tail call void @df_set_bb_dirty(ptr noundef %60) #18
  %61 = load ptr, ptr @cfun, align 8, !tbaa !11
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !27
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !29
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %65, i32 noundef %4, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_clear_bb_dirty(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi ptr [ %2, %6 ], [ %21, %20 ]
  %10 = phi i64 [ 1, %6 ], [ %22, %20 ]
  %11 = getelementptr inbounds [8 x ptr], ptr %9, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.dataflow, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = load i32, ptr %7, align 8, !tbaa !35
  %18 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %14, i32 noundef %17) #19
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi ptr [ %19, %16 ], [ %9, %8 ]
  %22 = add nuw nsw i64 %10, 1
  %23 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 12
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %8, label %27, !llvm.loop !107

27:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_bb_delete(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #18
  %8 = load ptr, ptr @df, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10, %28
  %15 = phi ptr [ %29, %28 ], [ %8, %10 ]
  %16 = phi i64 [ %30, %28 ], [ 0, %10 ]
  %17 = getelementptr inbounds [8 x ptr], ptr %15, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.df_problem, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = tail call fastcc ptr @df_get_bb_info(ptr noundef nonnull %18, i32 noundef %0) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  tail call void %21(ptr noundef %7, ptr noundef nonnull %24) #19
  tail call fastcc void @df_set_bb_info(ptr noundef nonnull %18, i32 noundef %0, ptr noundef null) #18
  %27 = load ptr, ptr @df, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %23, %26, %14
  %29 = phi ptr [ %15, %23 ], [ %27, %26 ], [ %15, %14 ]
  %30 = add nuw nsw i64 %16, 1
  %31 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 12
  %32 = load i32, ptr %31, align 4, !tbaa !17
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %14, label %35, !llvm.loop !108

35:                                               ; preds = %28, %10
  tail call fastcc void @df_clear_bb_dirty(ptr noundef %7) #18
  tail call void @df_mark_solutions_dirty() #18
  br label %36

36:                                               ; preds = %1, %35
  ret void
}

; Function Attrs: optsize
declare void @df_scan_verify() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @df_bb_regno_first_def_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = load ptr, ptr @df, align 8
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  br label %14

14:                                               ; preds = %7, %43
  %15 = phi ptr [ %5, %7 ], [ %45, %43 ]
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !77
  %25 = load ptr, ptr %13, align 8, !tbaa !111
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.df_insn_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %37

33:                                               ; preds = %37
  %34 = getelementptr inbounds ptr, ptr %39, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37, !llvm.loop !114

37:                                               ; preds = %22, %33
  %38 = phi ptr [ %35, %33 ], [ %31, %22 ]
  %39 = phi ptr [ %34, %33 ], [ %30, %22 ]
  %40 = getelementptr inbounds %struct.df_base_ref, ptr %38, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !77
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %47, label %33

43:                                               ; preds = %33, %22, %17
  %44 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %14, !llvm.loop !115

47:                                               ; preds = %43, %14, %37, %2
  %48 = phi ptr [ null, %2 ], [ %38, %37 ], [ null, %14 ], [ null, %43 ]
  ret ptr %48
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @df_bb_regno_last_def_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = load ptr, ptr @df, align 8
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  br label %14

14:                                               ; preds = %8, %43
  %15 = phi ptr [ %6, %8 ], [ %45, %43 ]
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !77
  %25 = load ptr, ptr %13, align 8, !tbaa !111
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.df_insn_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %37

33:                                               ; preds = %37
  %34 = getelementptr inbounds ptr, ptr %39, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37, !llvm.loop !117

37:                                               ; preds = %22, %33
  %38 = phi ptr [ %35, %33 ], [ %31, %22 ]
  %39 = phi ptr [ %34, %33 ], [ %30, %22 ]
  %40 = getelementptr inbounds %struct.df_base_ref, ptr %38, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !77
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %47, label %33

43:                                               ; preds = %33, %22, %17
  %44 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %14, !llvm.loop !118

47:                                               ; preds = %43, %14, %37, %2
  %48 = phi ptr [ null, %2 ], [ %38, %37 ], [ null, %14 ], [ null, %43 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_find_def(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ %4, %2 ]
  %13 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %14 = icmp eq i32 %12, 37
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1736, ptr noundef nonnull @.str.4) #19
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !77
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.df_insn_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !112
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %33

29:                                               ; preds = %44
  %30 = getelementptr inbounds ptr, ptr %35, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33, !llvm.loop !119

33:                                               ; preds = %16, %29
  %34 = phi ptr [ %31, %29 ], [ %27, %16 ]
  %35 = phi ptr [ %30, %29 ], [ %26, %16 ]
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  br label %44

44:                                               ; preds = %33, %41
  %45 = phi ptr [ %43, %41 ], [ %37, %33 ]
  %46 = tail call i32 @rtx_equal_p(ptr noundef %45, ptr noundef nonnull %13) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %29, label %48

48:                                               ; preds = %44, %29, %16
  %49 = phi ptr [ null, %16 ], [ null, %29 ], [ %34, %44 ]
  ret ptr %49
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @df_reg_defined(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @df_find_def(ptr noundef %0, ptr noundef %1) #18
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @df_find_use(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ %4, %2 ]
  %13 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %14 = icmp eq i32 %12, 37
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1770, ptr noundef nonnull @.str.4) #19
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !77
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = zext i32 %18 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.df_insn_info, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %33

29:                                               ; preds = %44
  %30 = getelementptr inbounds ptr, ptr %35, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33, !llvm.loop !121

33:                                               ; preds = %16, %29
  %34 = phi ptr [ %31, %29 ], [ %27, %16 ]
  %35 = phi ptr [ %30, %29 ], [ %26, %16 ]
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %34, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  br label %44

44:                                               ; preds = %33, %41
  %45 = phi ptr [ %43, %41 ], [ %37, %33 ]
  %46 = tail call i32 @rtx_equal_p(ptr noundef %45, ptr noundef nonnull %13) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %29, label %84

48:                                               ; preds = %29
  %49 = load ptr, ptr @df, align 8, !tbaa !11
  br label %50

50:                                               ; preds = %48, %16
  %51 = phi ptr [ %49, %48 ], [ %19, %16 ]
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 27
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !111
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !122
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %69

65:                                               ; preds = %80
  %66 = getelementptr inbounds ptr, ptr %71, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69, !llvm.loop !123

69:                                               ; preds = %56, %65
  %70 = phi ptr [ %67, %65 ], [ %63, %56 ]
  %71 = phi ptr [ %66, %65 ], [ %62, %56 ]
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %70, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !77
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !77
  br label %80

80:                                               ; preds = %69, %77
  %81 = phi ptr [ %79, %77 ], [ %73, %69 ]
  %82 = tail call i32 @rtx_equal_p(ptr noundef %81, ptr noundef nonnull %13) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %65, label %84

84:                                               ; preds = %44, %80, %65, %56, %50
  %85 = phi ptr [ null, %50 ], [ null, %56 ], [ %70, %80 ], [ null, %65 ], [ %34, %44 ]
  ret ptr %85
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @df_reg_used(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef %1) #18
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @df_print_regset(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #15 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.10, ptr noundef %0) #18
  br label %23

8:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %3) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !26
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8, %20
  %12 = load i32, ptr %3, align 4, !tbaa !31
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %12) #18
  %14 = icmp ult i32 %12, 53
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %18) #18
  br label %20

20:                                               ; preds = %11, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %11, !llvm.loop !124

23:                                               ; preds = %20, %8, %6
  %24 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_print_byte_regset(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = tail call i32 @max_reg_num() #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %64, label %9

9:                                                ; preds = %7
  %10 = zext i32 %5 to i64
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.10, ptr noundef %0) #18
  br label %64

13:                                               ; preds = %9, %61
  %14 = phi i64 [ 0, %9 ], [ %62, %61 ]
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 @df_byte_lr_get_regno_start(i32 noundef %15) #19
  %17 = tail call i32 @df_byte_lr_get_regno_len(i32 noundef %15) #19
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef %16, ptr noundef nonnull %4) #18
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !26
  %21 = icmp eq i8 %20, 0
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %17, %16
  %24 = icmp uge i32 %22, %23
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %19
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %15) #18
  %28 = icmp ult i64 %14, 53
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %14
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %29, %26
  %34 = tail call i32 @fputc(i32 40, ptr %0)
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef %16, ptr noundef nonnull %4) #18
  %35 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !26
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = add i32 %23, -1
  br label %39

39:                                               ; preds = %37, %43
  %40 = phi ptr [ @.str.13, %37 ], [ @.str.16, %43 ]
  %41 = load i32, ptr %4, align 4, !tbaa !31
  %42 = icmp ugt i32 %41, %38
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = sub i32 %41, %16
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %40, i32 noundef %44) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !26
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %39, !llvm.loop !125

48:                                               ; preds = %43, %39, %33
  %49 = tail call i32 @fputc(i32 41, ptr %0)
  br label %50

50:                                               ; preds = %48, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  br label %61

51:                                               ; preds = %13
  %52 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %1, i32 noundef %16) #19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %15) #18
  %56 = icmp ult i64 %14, 53
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %14
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %59) #18
  br label %61

61:                                               ; preds = %51, %57, %54, %50
  %62 = add nuw nsw i64 %14, 1
  %63 = icmp eq i64 %62, %10
  br i1 %63, label %64, label %13, !llvm.loop !126

64:                                               ; preds = %61, %7, %11
  %65 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_byte_lr_get_regno_start(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_byte_lr_get_regno_len(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_dump(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @df_dump_start(ptr noundef %0) #18
  %2 = load ptr, ptr @cfun, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  tail call void @df_print_bb_index(ptr noundef nonnull %8, ptr noundef %0) #19
  tail call void @df_dump_top(ptr noundef nonnull %8, ptr noundef %0) #18
  tail call void @df_dump_bottom(ptr noundef nonnull %8, ptr noundef %0) #18
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !127

12:                                               ; preds = %7, %1
  %13 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_dump_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %48

6:                                                ; preds = %1
  %7 = tail call ptr @current_function_name() #19
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %7) #18
  %9 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 19, i64 1, ptr nonnull %0)
  %10 = load ptr, ptr @df, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !128
  %17 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 4, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !129
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %16, i32 noundef %18) #18
  %20 = load ptr, ptr @df, align 8, !tbaa !11
  br label %21

21:                                               ; preds = %14, %6
  %22 = phi ptr [ %20, %14 ], [ %10, %6 ]
  %23 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 12
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21, %41
  %27 = phi ptr [ %42, %41 ], [ %22, %21 ]
  %28 = phi i64 [ %43, %41 ], [ 0, %21 ]
  %29 = getelementptr inbounds [8 x ptr], ptr %27, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 7
  %32 = load i8, ptr %31, align 4, !tbaa !15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %30, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.df_problem, ptr %35, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  tail call void %37(ptr noundef nonnull %0) #19
  %40 = load ptr, ptr @df, align 8, !tbaa !11
  br label %41

41:                                               ; preds = %34, %39, %26
  %42 = phi ptr [ %27, %34 ], [ %40, %39 ], [ %27, %26 ]
  %43 = add nuw nsw i64 %28, 1
  %44 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 12
  %45 = load i32, ptr %44, align 4, !tbaa !17
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %26, label %48, !llvm.loop !131

48:                                               ; preds = %41, %21, %1
  ret void
}

; Function Attrs: optsize
declare void @df_print_bb_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_dump_top(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !11
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7, %26
  %12 = phi ptr [ %27, %26 ], [ %3, %7 ]
  %13 = phi i64 [ %28, %26 ], [ 0, %7 ]
  %14 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 7
  %17 = load i8, ptr %16, align 4, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %15, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.df_problem, ptr %20, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !132
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call void %22(ptr noundef %0, ptr noundef nonnull %1) #19
  %25 = load ptr, ptr @df, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %19, %24, %11
  %27 = phi ptr [ %12, %19 ], [ %25, %24 ], [ %12, %11 ]
  %28 = add nuw nsw i64 %13, 1
  %29 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !17
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %11, label %33, !llvm.loop !133

33:                                               ; preds = %26, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_dump_bottom(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !11
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7, %26
  %12 = phi ptr [ %27, %26 ], [ %3, %7 ]
  %13 = phi i64 [ %28, %26 ], [ 0, %7 ]
  %14 = getelementptr inbounds [8 x ptr], ptr %12, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 7
  %17 = load i8, ptr %16, align 4, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %15, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.df_problem, ptr %20, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call void %22(ptr noundef %0, ptr noundef nonnull %1) #19
  %25 = load ptr, ptr @df, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %19, %24, %11
  %27 = phi ptr [ %12, %19 ], [ %25, %24 ], [ %12, %11 ]
  %28 = add nuw nsw i64 %13, 1
  %29 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !17
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %11, label %33, !llvm.loop !135

33:                                               ; preds = %26, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_dump_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @df, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %9 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 23, i64 1, ptr %0)
  tail call void @df_dump_start(ptr noundef %0) #18
  %10 = load ptr, ptr @df, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %12, i32 noundef 0, ptr noundef nonnull %3) #18
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %8, %15
  %16 = load ptr, ptr @cfun, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = load i32, ptr %3, align 4, !tbaa !31
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %21) #18
  tail call void @df_print_bb_index(ptr noundef %22, ptr noundef %0) #19
  tail call void @df_dump_top(ptr noundef %22, ptr noundef %0) #18
  tail call void @df_dump_bottom(ptr noundef %22, ptr noundef %0) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %15, !llvm.loop !136

25:                                               ; preds = %15, %8
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %28

27:                                               ; preds = %1
  tail call void @df_dump(ptr noundef %0) #18
  br label %28

28:                                               ; preds = %27, %25
  ret void
}

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_refs_chain_dump(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %2)
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %1, 0
  br label %9

9:                                                ; preds = %7, %27
  %10 = phi ptr [ %5, %7 ], [ %29, %27 ]
  %11 = phi ptr [ %0, %7 ], [ %28, %27 ]
  %12 = load i32, ptr %10, align 8
  %13 = and i32 %12, 65280
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 262144
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 117, i32 101
  %18 = select i1 %14, i32 100, i32 %17
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !77
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !77
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %18, i32 noundef %20, i32 noundef %22) #18
  br i1 %8, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  tail call void @df_chain_dump(ptr noundef %26, ptr noundef %2) #19
  br label %27

27:                                               ; preds = %24, %9
  %28 = getelementptr inbounds ptr, ptr %11, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !137

31:                                               ; preds = %27, %3
  %32 = tail call i32 @fputc(i32 125, ptr %2)
  ret void
}

; Function Attrs: optsize
declare void @df_chain_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @df_regs_chain_dump(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #15 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %1)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %17, %5 ], [ %0, %2 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 100, i32 117
  %11 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !77
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !77
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %10, i32 noundef %12, i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.df_base_ref, ptr %6, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !138

19:                                               ; preds = %5, %2
  %20 = tail call i32 @fputc(i32 125, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_debug(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !77
  tail call fastcc void @df_insn_uid_debug(i32 noundef %5, i8 noundef zeroext %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_insn_uid_debug(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @df, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.df_insn_info, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !139
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %0, i32 noundef %11) #18
  %13 = load ptr, ptr @df, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = getelementptr inbounds ptr, ptr %15, i64 %7
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.df_insn_info, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %3
  %22 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 6, i64 1, ptr %2)
  %23 = load ptr, ptr @df, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  %26 = getelementptr inbounds ptr, ptr %25, i64 %7
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.df_insn_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !112
  tail call void @df_refs_chain_dump(ptr noundef %29, i8 noundef zeroext %1, ptr noundef %2) #18
  %30 = load ptr, ptr @df, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.df, ptr %30, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = getelementptr inbounds ptr, ptr %32, i64 %7
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  br label %35

35:                                               ; preds = %21, %3
  %36 = phi ptr [ %34, %21 ], [ %17, %3 ]
  %37 = getelementptr inbounds %struct.df_insn_info, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 6, i64 1, ptr %2)
  %42 = load ptr, ptr @df, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.df, ptr %42, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !111
  %45 = getelementptr inbounds ptr, ptr %44, i64 %7
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = getelementptr inbounds %struct.df_insn_info, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !120
  tail call void @df_refs_chain_dump(ptr noundef %48, i8 noundef zeroext %1, ptr noundef %2) #18
  %49 = load ptr, ptr @df, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = getelementptr inbounds ptr, ptr %51, i64 %7
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  br label %54

54:                                               ; preds = %40, %35
  %55 = phi ptr [ %53, %40 ], [ %36, %35 ]
  %56 = getelementptr inbounds %struct.df_insn_info, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !122
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %54
  %60 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 9, i64 1, ptr %2)
  %61 = load ptr, ptr @df, align 8, !tbaa !11
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !111
  %64 = getelementptr inbounds ptr, ptr %63, i64 %7
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !122
  tail call void @df_refs_chain_dump(ptr noundef %67, i8 noundef zeroext %1, ptr noundef %2) #18
  %68 = load ptr, ptr @df, align 8, !tbaa !11
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !111
  %71 = getelementptr inbounds ptr, ptr %70, i64 %7
  %72 = load ptr, ptr %71, align 8, !tbaa !11
  br label %73

73:                                               ; preds = %59, %54
  %74 = phi ptr [ %72, %59 ], [ %55, %54 ]
  %75 = getelementptr inbounds %struct.df_insn_info, ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !140
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %73
  %79 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 5, i64 1, ptr %2)
  %80 = load ptr, ptr @df, align 8, !tbaa !11
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 10
  %82 = load ptr, ptr %81, align 8, !tbaa !111
  %83 = getelementptr inbounds ptr, ptr %82, i64 %7
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = getelementptr inbounds %struct.df_insn_info, ptr %84, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !140
  tail call fastcc void @df_mws_dump(ptr noundef %86, ptr noundef %2) #18
  br label %87

87:                                               ; preds = %78, %73
  %88 = tail call i32 @fputc(i32 10, ptr %2)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_debug_regno(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !139
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %7, i32 noundef %14, i32 noundef %16) #18
  %18 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  tail call void @df_refs_chain_dump(ptr noundef %19, i8 noundef zeroext 0, ptr noundef %1) #18
  %20 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 6, i64 1, ptr %1)
  %21 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !120
  tail call void @df_refs_chain_dump(ptr noundef %22, i8 noundef zeroext 0, ptr noundef %1) #18
  %23 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 9, i64 1, ptr %1)
  %24 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  tail call void @df_refs_chain_dump(ptr noundef %25, i8 noundef zeroext 0, ptr noundef %1) #18
  %26 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @df_regno_debug(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #15 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %0) #18
  %4 = load ptr, ptr @df, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  tail call void @df_regs_chain_dump(ptr noundef %10, ptr noundef %1) #18
  %11 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 6, i64 1, ptr %1)
  %12 = load ptr, ptr @df, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !144
  %15 = getelementptr inbounds ptr, ptr %14, i64 %7
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  tail call void @df_regs_chain_dump(ptr noundef %17, ptr noundef %1) #18
  %18 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 9, i64 1, ptr %1)
  %19 = load ptr, ptr @df, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !145
  %22 = getelementptr inbounds ptr, ptr %21, i64 %7
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = load ptr, ptr %23, align 8, !tbaa !142
  tail call void @df_regs_chain_dump(ptr noundef %24, ptr noundef %1) #18
  %25 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_ref_debug(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65280
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 100, i32 117
  %7 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %6, i32 noundef %8) #18
  %10 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %24

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = load ptr, ptr %19, align 8, !tbaa !146
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !77
  br label %24

24:                                               ; preds = %15, %17
  %25 = phi ptr [ %21, %17 ], [ %16, %15 ]
  %26 = phi i32 [ %23, %17 ], [ -1, %15 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !77
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !35
  %30 = ashr i32 %12, 16
  %31 = lshr i32 %12, 8
  %32 = and i32 %31, 255
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %11, i32 noundef %29, i32 noundef %26, i32 noundef %30, i32 noundef %32) #18
  %34 = load i32, ptr %0, align 8
  %35 = and i32 %34, 254
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %49

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !77
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !31
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 15, i64 1, ptr %1)
  br label %51

46:                                               ; preds = %41
  %47 = load ptr, ptr %39, align 8, !tbaa !11
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %39, ptr noundef %47) #18
  br label %51

49:                                               ; preds = %24, %37
  %50 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 6, i64 1, ptr %1)
  br label %51

51:                                               ; preds = %44, %46, %49
  %52 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !77
  tail call void @df_chain_dump(ptr noundef %53, ptr noundef %1) #19
  %54 = tail call i32 @fputc(i32 10, ptr %1)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_df_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call void @df_insn_debug(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %2) #18
  tail call void @debug_rtx(ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare void @debug_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_df_reg(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call void @df_regno_debug(i32 noundef %2, ptr noundef %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !77
  ret i32 %3
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_df_regno(i32 noundef %0) local_unnamed_addr #15 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call void @df_regno_debug(i32 noundef %0, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_df_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call void @df_ref_debug(ptr noundef %0, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_df_defno(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call void @df_ref_debug(ptr noundef %7, ptr noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_df_useno(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call void @df_ref_debug(ptr noundef %7, ptr noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_df_chain(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call void @df_chain_dump(ptr noundef %0, ptr noundef %2) #19
  %3 = load ptr, ptr @stderr, align 8, !tbaa !11
  %4 = tail call i32 @fputc(i32 noundef 10, ptr noundef %3) #18
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_scan_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_scan_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_lr_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_live_add_problem() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_hard_reg_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_scan_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_worklist_propagate_forward(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  %8 = load ptr, ptr @cfun, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %1) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %14) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %5
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %13) #18
  store i32 0, ptr %7, align 8, !tbaa.struct !150
  %19 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !151
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %6) #18, !range !26
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %17, %40
  %23 = load ptr, ptr %6, align 8, !tbaa !11
  %24 = load ptr, ptr %23, align 8, !tbaa !152
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !35
  %27 = lshr i32 %26, 6
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !50
  %31 = and i32 %26, 63
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = and i64 %33, %30
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %0, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.df_problem, ptr %37, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !91
  tail call void %39(ptr noundef nonnull %23) #19
  br label %40

40:                                               ; preds = %22, %36
  call fastcc void @ei_next(ptr noundef nonnull %7) #18
  %41 = load i32, ptr %7, align 8
  %42 = load ptr, ptr %19, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %6) #18, !range !26
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %22, !llvm.loop !154

45:                                               ; preds = %5
  %46 = load ptr, ptr %0, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.df_problem, ptr %46, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void %48(ptr noundef nonnull %13) #19
  br label %51

51:                                               ; preds = %40, %17, %45, %50
  %52 = load ptr, ptr %0, align 8, !tbaa !13
  %53 = getelementptr inbounds %struct.df_problem, ptr %52, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  %55 = tail call zeroext i8 %54(i32 noundef %1) #19
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %59 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %58) #18
  store i32 0, ptr %7, align 8, !tbaa.struct !150
  %60 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %59, ptr %60, align 8, !tbaa.struct !151
  %61 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %59, ptr noundef nonnull %6) #18, !range !26
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %57, %83
  %64 = load ptr, ptr %6, align 8, !tbaa !11
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !155
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !35
  %69 = lshr i32 %68, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !50
  %73 = and i32 %68, 63
  %74 = zext nneg i32 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %75, %72
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %63
  %79 = zext i32 %68 to i64
  %80 = getelementptr inbounds i32, ptr %2, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !31
  %82 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %78, %63
  call fastcc void @ei_next(ptr noundef nonnull %7) #18
  %84 = load i32, ptr %7, align 8
  %85 = load ptr, ptr %60, align 8
  %86 = call fastcc zeroext i8 @ei_cond(i32 %84, ptr %85, ptr noundef nonnull %6) #18, !range !26
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %63, !llvm.loop !156

88:                                               ; preds = %83, %57, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_worklist_propagate_backward(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  %8 = load ptr, ptr @cfun, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %1) #18
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !157
  %16 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %15) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %5
  %19 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %14) #18
  store i32 0, ptr %7, align 8, !tbaa.struct !150
  %20 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %19, ptr %20, align 8, !tbaa.struct !151
  %21 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %6) #18, !range !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %18, %42
  %24 = load ptr, ptr %6, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !155
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !35
  %29 = lshr i32 %28, 6
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !50
  %33 = and i32 %28, 63
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = and i64 %35, %32
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %23
  %39 = load ptr, ptr %0, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.df_problem, ptr %39, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  tail call void %41(ptr noundef nonnull %24) #19
  br label %42

42:                                               ; preds = %23, %38
  call fastcc void @ei_next(ptr noundef nonnull %7) #18
  %43 = load i32, ptr %7, align 8
  %44 = load ptr, ptr %20, align 8
  %45 = call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %6) #18, !range !26
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %23, !llvm.loop !158

47:                                               ; preds = %5
  %48 = load ptr, ptr %0, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.df_problem, ptr %48, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !90
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void %50(ptr noundef nonnull %13) #19
  br label %53

53:                                               ; preds = %42, %18, %47, %52
  %54 = load ptr, ptr %0, align 8, !tbaa !13
  %55 = getelementptr inbounds %struct.df_problem, ptr %54, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  %57 = tail call zeroext i8 %56(i32 noundef %1) #19
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %53
  %60 = tail call fastcc ptr @ei_start_1(ptr noundef %13) #18
  store i32 0, ptr %7, align 8, !tbaa.struct !150
  %61 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %60, ptr %61, align 8, !tbaa.struct !151
  %62 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %60, ptr noundef nonnull %6) #18, !range !26
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %59, %83
  %65 = load ptr, ptr %6, align 8, !tbaa !11
  %66 = load ptr, ptr %65, align 8, !tbaa !152
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !35
  %69 = lshr i32 %68, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !50
  %73 = and i32 %68, 63
  %74 = zext nneg i32 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %75, %72
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %64
  %79 = zext i32 %68 to i64
  %80 = getelementptr inbounds i32, ptr %2, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !31
  %82 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %81) #19
  br label %83

83:                                               ; preds = %78, %64
  call fastcc void @ei_next(ptr noundef nonnull %7) #18
  %84 = load i32, ptr %7, align 8
  %85 = load ptr, ptr %61, align 8
  %86 = call fastcc zeroext i8 @ei_cond(i32 %84, ptr %85, ptr noundef nonnull %6) #18, !range !26
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %64, !llvm.loop !159

88:                                               ; preds = %83, %59, %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !160
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !11
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 738, ptr noundef nonnull @.str.4) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !162
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #18
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 687, ptr noundef nonnull @.str.4) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @df_mws_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %19, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %18, %5 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct.df_mw_hardreg, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 100, i32 117
  %13 = getelementptr inbounds %struct.df_mw_hardreg, ptr %6, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !164
  %15 = getelementptr inbounds %struct.df_mw_hardreg, ptr %6, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !166
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %12, i32 noundef %14, i32 noundef %16) #18
  %18 = getelementptr inbounds ptr, ptr %7, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !167

21:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 144}
!6 = !{!"df_problem", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !7, i64 152, !8, i64 156}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !7, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"dataflow", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!15 = !{!14, !8, i64 52}
!16 = !{!14, !8, i64 53}
!17 = !{!18, !7, i64 260}
!18 = !{!"df", !8, i64 0, !8, i64 64, !10, i64 128, !19, i64 136, !19, i64 176, !10, i64 216, !10, i64 224, !10, i64 232, !7, i64 240, !7, i64 244, !10, i64 248, !7, i64 256, !7, i64 260, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !7, i64 344, !7, i64 348, !10, i64 352, !7, i64 360, !7, i64 364, !8, i64 365, !8, i64 366}
!19 = !{!"df_ref_info", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!18, !10, i64 128}
!23 = !{!14, !8, i64 54}
!24 = !{!6, !10, i64 16}
!25 = !{!6, !8, i64 156}
!26 = !{i8 0, i8 2}
!27 = !{!28, !10, i64 8}
!28 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !10, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!29 = !{!30, !10, i64 16}
!30 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!31 = !{!7, !7, i64 0}
!32 = !{!6, !10, i64 24}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = !{!36, !7, i64 80}
!36 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !10, i64 48, !10, i64 56, !8, i64 64, !37, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!37 = !{!"long", !8, i64 0}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = !{!18, !8, i64 365}
!41 = !{!42, !10, i64 0}
!42 = !{!"bitmap_head_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24}
!43 = !{!44, !10, i64 0}
!44 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !37, i64 24}
!45 = !{!44, !10, i64 8}
!46 = !{!47, !7, i64 16}
!47 = !{!"bitmap_element_def", !10, i64 0, !10, i64 8, !7, i64 16, !8, i64 24}
!48 = !{!47, !10, i64 0}
!49 = !{!44, !7, i64 16}
!50 = !{!37, !37, i64 0}
!51 = !{!44, !37, i64 24}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !21}
!54 = !{!14, !10, i64 8}
!55 = !{!14, !7, i64 16}
!56 = distinct !{!56, !21}
!57 = !{!6, !10, i64 96}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = !{!30, !7, i64 32}
!63 = !{!18, !10, i64 328}
!64 = !{!18, !10, i64 336}
!65 = !{!18, !7, i64 344}
!66 = !{!18, !7, i64 348}
!67 = !{!18, !10, i64 352}
!68 = !{!6, !10, i64 88}
!69 = distinct !{!69, !21}
!70 = !{!6, !7, i64 4}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = !{!6, !10, i64 40}
!75 = !{!76, !10, i64 0}
!76 = !{!"simple_bitmap_def", !10, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!77 = !{!8, !8, i64 0}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = !{!30, !7, i64 24}
!81 = !{!30, !7, i64 28}
!82 = !{!6, !7, i64 152}
!83 = !{!6, !10, i64 8}
!84 = !{!6, !10, i64 32}
!85 = !{!6, !10, i64 48}
!86 = !{!6, !10, i64 80}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = !{!6, !10, i64 56}
!91 = !{!6, !10, i64 64}
!92 = !{!6, !10, i64 72}
!93 = !{!14, !10, i64 32}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = !{!30, !10, i64 0}
!97 = !{!36, !10, i64 56}
!98 = !{!30, !10, i64 8}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = !{!110, !10, i64 8}
!110 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32}
!111 = !{!18, !10, i64 248}
!112 = !{!113, !10, i64 8}
!113 = !{!"df_insn_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = !{!110, !10, i64 0}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = !{!113, !10, i64 16}
!121 = distinct !{!121, !21}
!122 = !{!113, !10, i64 24}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = !{!18, !7, i64 164}
!129 = !{!18, !7, i64 204}
!130 = !{!6, !10, i64 104}
!131 = distinct !{!131, !21}
!132 = !{!6, !10, i64 112}
!133 = distinct !{!133, !21}
!134 = !{!6, !10, i64 120}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = distinct !{!137, !21}
!138 = distinct !{!138, !21}
!139 = !{!113, !7, i64 40}
!140 = !{!113, !10, i64 32}
!141 = !{!18, !10, i64 216}
!142 = !{!143, !10, i64 0}
!143 = !{!"df_reg_info", !10, i64 0, !7, i64 8}
!144 = !{!18, !10, i64 224}
!145 = !{!18, !10, i64 232}
!146 = !{!113, !10, i64 0}
!147 = !{!18, !10, i64 136}
!148 = !{!18, !10, i64 176}
!149 = !{!36, !10, i64 0}
!150 = !{i64 0, i64 4, !31, i64 8, i64 8, !11}
!151 = !{i64 0, i64 8, !11}
!152 = !{!153, !10, i64 0}
!153 = !{!"edge_def", !10, i64 0, !10, i64 8, !8, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !37, i64 56}
!154 = distinct !{!154, !21}
!155 = !{!153, !10, i64 8}
!156 = distinct !{!156, !21}
!157 = !{!36, !10, i64 8}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = !{!161, !7, i64 0}
!161 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!162 = !{!163, !7, i64 0}
!163 = !{!"", !7, i64 0, !10, i64 8}
!164 = !{!165, !7, i64 12}
!165 = !{!"df_mw_hardreg", !10, i64 0, !7, i64 8, !7, i64 10, !7, i64 12, !7, i64 16, !7, i64 20}
!166 = !{!165, !7, i64 16}
!167 = distinct !{!167, !21}
