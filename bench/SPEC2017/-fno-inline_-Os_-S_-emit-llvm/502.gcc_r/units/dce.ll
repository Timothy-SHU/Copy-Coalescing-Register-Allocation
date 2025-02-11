; ModuleID = 'dce.c'
source_filename = "dce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_link = type { ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.df_byte_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [7 x i8] c"ud dce\00", align 1
@pass_ud_rtl_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_ud_dce, ptr @rest_of_handle_ud_dce, ptr null, ptr null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@flag_dce = external local_unnamed_addr global i32, align 4
@df_in_progress = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rtl dce\00", align 1
@pass_fast_rtl_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_fast_dce, ptr @rest_of_handle_fast_dce, ptr null, ptr null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"byte-dce\00", align 1
@pass_fast_rtl_byte_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_fast_dce, ptr @rest_of_handle_fast_byte_dce, ptr null, ptr null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@worklist = internal unnamed_addr global ptr null, align 8
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dce_blocks_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@dce_tmp_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@marked = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Finding needed instructions:\0A\00", align 1
@target_flags = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Finished finding needed instructions:\0A\00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dce.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.7 = private unnamed_addr constant [30 x i8] c"  Adding insn %d to worklist\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Processing use of \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" in insn %d:\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"DCE: Deleting insn %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"processing block %d live out = \00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"finished processing insn %d live out = \00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"processing block %d lr out = \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_ud_dce() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 1
  %3 = load i32, ptr @flag_dce, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 7) #14
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_ud_dce() #0 {
  tail call fastcc void @init_dce(i8 noundef zeroext 0) #15
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 0) #15
  tail call fastcc void @mark_artificial_uses() #15
  %1 = load ptr, ptr @worklist, align 8
  %2 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %1) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_rtx_base_pop(ptr noundef %5) #15
  tail call fastcc void @mark_reg_dependencies(ptr noundef %6) #15
  %7 = load ptr, ptr @worklist, align 8
  %8 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !9

10:                                               ; preds = %4, %0
  tail call fastcc void @VEC_rtx_heap_free() #15
  %11 = load ptr, ptr @df, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 4
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  tail call void @df_remove_problem(ptr noundef %13) #14
  tail call fastcc void @delete_unmarked_insns() #15
  tail call fastcc void @fini_dce(i8 noundef zeroext 0) #15
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @run_fast_df_dce() local_unnamed_addr #0 {
  %1 = load i32, ptr @flag_dce, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @df_clear_flags(i32 noundef 48) #14
  store i1 true, ptr @df_in_progress, align 1
  %5 = tail call i32 @rest_of_handle_fast_dce() #15
  store i1 false, ptr @df_in_progress, align 1
  %6 = tail call i32 @df_set_flags(i32 noundef %4) #14
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_fast_dce() #0 {
  tail call fastcc void @init_dce(i8 noundef zeroext 1) #15
  tail call fastcc void @fast_dce(i8 noundef zeroext 0) #15
  tail call fastcc void @fini_dce(i8 noundef zeroext 1) #15
  ret i32 0
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @run_fast_dce() local_unnamed_addr #0 {
  %1 = load i32, ptr @flag_dce, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @rest_of_handle_fast_dce() #15
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_fast_dce() #0 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dce, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 6) #14
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_fast_byte_dce() #0 {
  tail call void @df_byte_lr_add_problem() #14
  tail call fastcc void @init_dce(i8 noundef zeroext 1) #15
  tail call fastcc void @fast_dce(i8 noundef zeroext 1) #15
  tail call fastcc void @fini_dce(i8 noundef zeroext 1) #15
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dce(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load i1, ptr @df_in_progress, align 1
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = icmp eq i8 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @df_chain_add_problem(i32 noundef 2) #14
  br label %6

6:                                                ; preds = %5, %3
  tail call void @df_analyze() #14
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @df_dump(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %7
  %12 = icmp eq i8 %0, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @dce_tmp_bitmap_obstack) #14
  br label %14

14:                                               ; preds = %13, %11
  %15 = tail call i32 @get_max_uid() #14
  %16 = add nsw i32 %15, 1
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %16) #14
  store ptr %17, ptr @marked, align 8, !tbaa !11
  tail call void @sbitmap_zero(ptr noundef %17) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prescan_insns_for_dce(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %1
  %7 = load i1, ptr @df_in_progress, align 1
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr @target_flags, align 4, !tbaa !5
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = tail call i32 @ix86_cfun_abi() #14
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %8
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #14
  br label %17

17:                                               ; preds = %15, %12, %6
  %18 = phi ptr [ null, %6 ], [ %16, %15 ], [ null, %12 ]
  %19 = load ptr, ptr @cfun, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !20
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %77, label %28

28:                                               ; preds = %17
  %29 = icmp eq ptr %18, null
  br label %30

30:                                               ; preds = %28, %68
  %31 = phi ptr [ %24, %28 ], [ %70, %68 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %66, label %37

37:                                               ; preds = %30, %64
  %38 = phi ptr [ %40, %64 ], [ %35, %30 ]
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !21
  %41 = load ptr, ptr %32, align 8, !tbaa !21
  %42 = load ptr, ptr %41, align 8, !tbaa !24
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = icmp eq ptr %38, %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %37
  %47 = load i32, ptr %38, align 8
  %48 = and i32 %47, 65535
  %49 = add nsw i32 %48, -7
  %50 = icmp ult i32 %49, 4
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  br i1 %29, label %57, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !21
  %55 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %18, i32 noundef %54) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52, %51
  %58 = tail call fastcc zeroext i8 @deletable_insn_p(ptr noundef nonnull %38, i8 noundef zeroext %0, ptr noundef %18) #15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  tail call fastcc void @mark_nonreg_stores(ptr noundef %62, ptr noundef nonnull %38, i8 noundef zeroext %0) #15
  br label %64

63:                                               ; preds = %57
  tail call fastcc void @mark_insn(ptr noundef nonnull %38, i8 noundef zeroext %0) #15
  br label %64

64:                                               ; preds = %46, %63, %60, %52
  %65 = icmp eq ptr %40, null
  br i1 %65, label %66, label %37, !llvm.loop !25

66:                                               ; preds = %64, %37, %30
  br i1 %29, label %68, label %67

67:                                               ; preds = %66
  tail call void @bitmap_clear(ptr noundef nonnull %18) #14
  br label %68

68:                                               ; preds = %66, %67
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !17
  %71 = load ptr, ptr @cfun, align 8, !tbaa !11
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !20
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %30, !llvm.loop !26

77:                                               ; preds = %68, %17
  %78 = icmp eq ptr %18, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  tail call void @bitmap_obstack_free(ptr noundef nonnull %18) #14
  br label %80

80:                                               ; preds = %79, %77
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 38, i64 1, ptr nonnull %81)
  br label %85

85:                                               ; preds = %83, %80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_artificial_uses() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %0, %37
  %7 = phi ptr [ %39, %37 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %9) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %6, %33
  %14 = phi ptr [ %35, %33 ], [ %11, %6 ]
  %15 = phi ptr [ %34, %33 ], [ %10, %6 ]
  %16 = getelementptr inbounds %struct.df_base_ref, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %31, %29 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  tail call fastcc void @mark_insn(ptr noundef %28, i8 noundef zeroext 0) #15
  br label %29

29:                                               ; preds = %19, %25
  %30 = getelementptr inbounds %struct.df_link, ptr %20, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !llvm.loop !32

33:                                               ; preds = %29, %13
  %34 = getelementptr inbounds ptr, ptr %15, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %13, !llvm.loop !33

37:                                               ; preds = %33, %6
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %6, !llvm.loop !34

41:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !35
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_base_pop(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8, !tbaa !35
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !35
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_dependencies(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @df, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !21
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %5, %49
  %19 = phi ptr [ %51, %49 ], [ %16, %5 ]
  %20 = phi ptr [ %50, %49 ], [ %15, %5 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr nonnull %21)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  tail call void @print_simple_rtl(ptr noundef %25, ptr noundef %27) #14
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %29 = load i32, ptr %9, align 8, !tbaa !21
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.9, i32 noundef %29) #15
  br label %31

31:                                               ; preds = %23, %18
  %32 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31, %45
  %36 = phi ptr [ %47, %45 ], [ %33, %31 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !28
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  tail call fastcc void @mark_insn(ptr noundef %44, i8 noundef zeroext 0) #15
  br label %45

45:                                               ; preds = %35, %41
  %46 = getelementptr inbounds %struct.df_link, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %35, !llvm.loop !41

49:                                               ; preds = %45, %31
  %50 = getelementptr inbounds ptr, ptr %20, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %18, !llvm.loop !42

53:                                               ; preds = %49, %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_heap_free() unnamed_addr #5 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @worklist, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @df_remove_problem(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_unmarked_insns() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr %3, align 8, !tbaa !15
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %75, label %10

10:                                               ; preds = %0, %62
  %11 = phi ptr [ %63, %62 ], [ %1, %0 ]
  %12 = phi ptr [ %66, %62 ], [ %7, %0 ]
  %13 = phi i8 [ %64, %62 ], [ 0, %0 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %10, %56
  %20 = phi ptr [ %23, %56 ], [ %17, %10 ]
  %21 = phi i8 [ %57, %56 ], [ %13, %10 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = load ptr, ptr %14, align 8, !tbaa !21
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = icmp eq ptr %20, %27
  br i1 %28, label %59, label %29

29:                                               ; preds = %19
  %30 = load i32, ptr %20, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = tail call i32 @noop_move_p(ptr noundef nonnull %20) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @marked_insn_p(ptr noundef nonnull %20) #15, !range !44
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37, %34
  %41 = tail call zeroext i8 @dbg_cnt(i32 noundef 5) #14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !21
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.10, i32 noundef %48) #15
  br label %50

50:                                               ; preds = %46, %43
  tail call fastcc void @delete_corresponding_reg_eq_notes(ptr noundef nonnull %20) #15
  %51 = load i32, ptr %20, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 10
  %54 = select i1 %53, i8 1, i8 %21
  %55 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %20) #14
  br label %56

56:                                               ; preds = %29, %50, %40, %37
  %57 = phi i8 [ %54, %50 ], [ %21, %40 ], [ %21, %37 ], [ %21, %29 ]
  %58 = icmp eq ptr %23, null
  br i1 %58, label %59, label %19, !llvm.loop !45

59:                                               ; preds = %56, %19
  %60 = phi i8 [ %21, %19 ], [ %57, %56 ]
  %61 = load ptr, ptr @cfun, align 8, !tbaa !11
  br label %62

62:                                               ; preds = %10, %59
  %63 = phi ptr [ %61, %59 ], [ %11, %10 ]
  %64 = phi i8 [ %60, %59 ], [ %13, %10 ]
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !13
  %69 = load ptr, ptr %68, align 8, !tbaa !15
  %70 = icmp eq ptr %66, %69
  br i1 %70, label %71, label %10, !llvm.loop !46

71:                                               ; preds = %62
  %72 = icmp eq i8 %64, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = tail call zeroext i8 @delete_unreachable_blocks() #14
  br label %75

75:                                               ; preds = %0, %73, %71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_dce(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @marked, align 8, !tbaa !11
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  tail call void @free(ptr noundef %3) #15
  tail call void @free(ptr noundef %2) #15
  %4 = icmp eq i8 %0, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  tail call void @bitmap_obstack_release(ptr noundef nonnull @dce_tmp_bitmap_obstack) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @deletable_insn_p(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %62

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @insn_nothrow_p(ptr noundef nonnull %0) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %62, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 8
  %12 = load i1, ptr @df_in_progress, align 1
  %13 = and i32 %11, 16842751
  %14 = icmp ne i32 %13, 10
  %15 = select i1 %14, i1 true, i1 %12
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = and i32 %11, -2080374784
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %11, 33554432
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %1, ptr noundef %2) #15
  br label %62

24:                                               ; preds = %16, %10
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %60 [
    i16 24, label %62
    i16 138, label %62
    i16 25, label %29
    i16 15, label %44
  ]

29:                                               ; preds = %24
  %30 = icmp eq i8 %1, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #15
  %39 = icmp ugt i32 %38, 52
  %40 = load i32, ptr @reload_completed, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  %43 = zext i1 %42 to i8
  br label %62

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = load i32, ptr %46, align 8, !tbaa !49
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %53, %44
  %50 = phi i64 [ %54, %53 ], [ %48, %44 ]
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = add nsw i64 %50, -1
  %55 = load ptr, ptr %45, align 8, !tbaa !21
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %55, i64 0, i32 1, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = tail call fastcc zeroext i8 @deletable_insn_p_1(ptr noundef %57) #15, !range !51
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %49, !llvm.loop !52

60:                                               ; preds = %24
  %61 = tail call fastcc zeroext i8 @deletable_insn_p_1(ptr noundef nonnull %26) #15, !range !51
  br label %62

62:                                               ; preds = %49, %53, %29, %31, %37, %24, %24, %7, %3, %60, %22
  %63 = phi i8 [ %61, %60 ], [ %23, %22 ], [ 0, %3 ], [ 0, %7 ], [ 0, %24 ], [ 0, %24 ], [ 0, %31 ], [ %43, %37 ], [ 0, %29 ], [ 1, %49 ], [ 0, %53 ]
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_nonreg_stores(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, ptr @mark_nonreg_stores_2, ptr @mark_nonreg_stores_1
  tail call void @note_stores(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @marked_insn_p(ptr noundef %0) #15, !range !44
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef %0) #15
  br label %8

8:                                                ; preds = %7, %5
  %9 = load ptr, ptr @marked, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !21
  tail call fastcc void @SET_BIT(ptr noundef %9, i32 noundef %11) #15
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 8, !tbaa !21
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, i32 noundef %15) #15
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, ptr %0, align 8
  %19 = load i1, ptr @df_in_progress, align 1
  %20 = and i32 %18, 16842751
  %21 = icmp ne i32 %20, 10
  %22 = select i1 %21, i1 true, i1 %19
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = and i32 %18, -2080374784
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %18, 33554432
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext %1, ptr noundef null) #15
  br label %31

31:                                               ; preds = %23, %17, %29, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @insn_nothrow_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_call_stack_args(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 237, ptr noundef nonnull @.str.6) #14
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @target_flags, align 4, !tbaa !5
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @ix86_cfun_abi() #14
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %524

16:                                               ; preds = %13, %9
  %17 = icmp eq i8 %1, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = icmp eq ptr %3, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 243, ptr noundef nonnull @.str.6) #14
  br label %21

21:                                               ; preds = %18, %20
  tail call void @bitmap_clear(ptr noundef %3) #14
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %524, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8 %2, 0
  br label %29

29:                                               ; preds = %27, %181
  %30 = phi ptr [ %25, %27 ], [ %185, %181 ]
  %31 = phi i64 [ 9223372036854775807, %27 ], [ %183, %181 ]
  %32 = phi i64 [ 0, %27 ], [ %182, %181 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 24
  br i1 %37, label %38, label %181

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !21
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %44, label %181

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mem_attrs, ptr %47, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  br label %62

52:                                               ; preds = %44
  %53 = lshr i32 %41, 16
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %524, label %56

56:                                               ; preds = %52
  %57 = zext nneg i32 %54 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !21
  %60 = zext i8 %59 to i64
  %61 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %60) #14
  br label %62

62:                                               ; preds = %56, %49
  %63 = phi ptr [ %51, %49 ], [ %61, %56 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %524, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %45, align 8, !tbaa !21
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 49
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !21
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 37
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !21
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 30
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !21
  br label %85

85:                                               ; preds = %82, %76, %70, %65
  %86 = phi ptr [ %72, %82 ], [ %66, %76 ], [ %66, %70 ], [ %66, %65 ]
  %87 = phi i64 [ %84, %82 ], [ 0, %76 ], [ 0, %70 ], [ 0, %65 ]
  %88 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %174, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %86, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  %94 = and i1 %28, %93
  br i1 %94, label %95, label %524

95:                                               ; preds = %90
  %96 = load ptr, ptr @df, align 8, !tbaa !11
  %97 = getelementptr inbounds %struct.df, ptr %96, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !37
  %99 = load i32, ptr %23, align 8, !tbaa !21
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = getelementptr inbounds %struct.df_insn_info, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  %105 = load ptr, ptr %104, align 8, !tbaa !11
  %106 = icmp eq ptr %105, null
  br i1 %106, label %524, label %107

107:                                              ; preds = %95, %114
  %108 = phi ptr [ %116, %114 ], [ %105, %95 ]
  %109 = phi ptr [ %115, %114 ], [ %104, %95 ]
  %110 = getelementptr inbounds %struct.df_base_ref, ptr %108, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !21
  %112 = tail call i32 @rtx_equal_p(ptr noundef nonnull %86, ptr noundef %111) #14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = getelementptr inbounds ptr, ptr %109, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !11
  %117 = icmp eq ptr %116, null
  br i1 %117, label %524, label %107, !llvm.loop !55

118:                                              ; preds = %107
  %119 = load ptr, ptr %109, align 8, !tbaa !11
  %120 = icmp eq ptr %119, null
  br i1 %120, label %524, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.df_base_ref, ptr %119, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !21
  %124 = icmp eq ptr %123, null
  br i1 %124, label %524, label %129

125:                                              ; preds = %129
  %126 = getelementptr inbounds %struct.df_link, ptr %130, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !21
  %128 = icmp eq ptr %127, null
  br i1 %128, label %524, label %129, !llvm.loop !56

129:                                              ; preds = %121, %125
  %130 = phi ptr [ %127, %125 ], [ %123, %121 ]
  %131 = load ptr, ptr %130, align 8, !tbaa !28
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 255
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %125, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.df_base_ref, ptr %131, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !21
  %138 = load ptr, ptr %137, align 8, !tbaa !30
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = add nsw i32 %140, -7
  %142 = icmp ult i32 %141, 4
  br i1 %142, label %143, label %524

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !21
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 23
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = tail call ptr @single_set_2(ptr noundef nonnull %138, ptr noundef nonnull %145) #14
  %151 = icmp eq ptr %150, null
  br i1 %151, label %524, label %152

152:                                              ; preds = %143, %149
  %153 = phi ptr [ %150, %149 ], [ %145, %143 ]
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !21
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 49
  br i1 %158, label %159, label %524

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !21
  %162 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  %163 = icmp eq ptr %161, %162
  br i1 %163, label %164, label %524

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !21
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 30
  br i1 %169, label %170, label %524

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %172 = load i64, ptr %171, align 8, !tbaa !21
  %173 = add nsw i64 %172, %87
  br label %174

174:                                              ; preds = %85, %170
  %175 = phi i64 [ %173, %170 ], [ %87, %85 ]
  %176 = tail call i64 @llvm.smin.i64(i64 %31, i64 %175)
  %177 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !21
  %179 = add nsw i64 %178, %175
  %180 = tail call i64 @llvm.smax.i64(i64 %32, i64 %179)
  br label %181

181:                                              ; preds = %174, %29, %38
  %182 = phi i64 [ %180, %174 ], [ %32, %38 ], [ %32, %29 ]
  %183 = phi i64 [ %176, %174 ], [ %31, %38 ], [ %31, %29 ]
  %184 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %184, align 8, !tbaa !21
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %29, !llvm.loop !57

187:                                              ; preds = %181
  %188 = icmp slt i64 %183, %182
  br i1 %188, label %189, label %524

189:                                              ; preds = %187
  %190 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #14
  %191 = load ptr, ptr %24, align 8, !tbaa !21
  %192 = icmp eq ptr %191, null
  br i1 %192, label %320, label %193

193:                                              ; preds = %189, %316
  %194 = phi ptr [ %318, %316 ], [ %191, %189 ]
  %195 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !21
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 24
  br i1 %199, label %200, label %316

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !21
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 43
  br i1 %205, label %206, label %316

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !21
  %209 = load i32, ptr %208, align 8
  %210 = and i32 %209, 65535
  %211 = icmp eq i32 %210, 49
  br i1 %211, label %212, label %227

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !21
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 37
  br i1 %217, label %218, label %227

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1, i32 0, i32 0, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !21
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 65535
  %223 = icmp eq i32 %222, 30
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %226 = load i64, ptr %225, align 8, !tbaa !21
  br label %227

227:                                              ; preds = %224, %218, %212, %206
  %228 = phi ptr [ %214, %224 ], [ %208, %218 ], [ %208, %212 ], [ %208, %206 ]
  %229 = phi i64 [ %226, %224 ], [ 0, %218 ], [ 0, %212 ], [ 0, %206 ]
  %230 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  %231 = icmp eq ptr %228, %230
  br i1 %231, label %282, label %232

232:                                              ; preds = %227
  %233 = load ptr, ptr @df, align 8, !tbaa !11
  %234 = getelementptr inbounds %struct.df, ptr %233, i64 0, i32 10
  %235 = load ptr, ptr %234, align 8, !tbaa !37
  %236 = load i32, ptr %23, align 8, !tbaa !21
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds ptr, ptr %235, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !11
  %240 = getelementptr inbounds %struct.df_insn_info, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !40
  br label %242

242:                                              ; preds = %242, %232
  %243 = phi ptr [ %249, %242 ], [ %241, %232 ]
  %244 = load ptr, ptr %243, align 8, !tbaa !11, !nonnull !58, !noundef !58
  %245 = getelementptr inbounds %struct.df_base_ref, ptr %244, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !21
  %247 = tail call i32 @rtx_equal_p(ptr noundef nonnull %228, ptr noundef %246) #14
  %248 = icmp eq i32 %247, 0
  %249 = getelementptr inbounds ptr, ptr %243, i64 1
  br i1 %248, label %242, label %250

250:                                              ; preds = %242
  %251 = load ptr, ptr %243, align 8, !tbaa !11
  %252 = getelementptr inbounds %struct.df_base_ref, ptr %251, i64 0, i32 2
  br label %253

253:                                              ; preds = %253, %250
  %254 = phi ptr [ %260, %253 ], [ %252, %250 ]
  %255 = load ptr, ptr %254, align 8, !tbaa !21, !nonnull !58, !noundef !58
  %256 = load ptr, ptr %255, align 8, !tbaa !28
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 255
  %259 = icmp eq i32 %258, 1
  %260 = getelementptr inbounds %struct.df_link, ptr %255, i64 0, i32 1
  br i1 %259, label %253, label %261

261:                                              ; preds = %253
  %262 = load ptr, ptr %255, align 8, !tbaa !28
  %263 = getelementptr inbounds %struct.df_base_ref, ptr %262, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !21
  %265 = load ptr, ptr %264, align 8, !tbaa !30
  %266 = getelementptr inbounds %struct.rtx_def, ptr %265, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !21
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 23
  br i1 %270, label %273, label %271

271:                                              ; preds = %261
  %272 = tail call ptr @single_set_2(ptr noundef nonnull %265, ptr noundef nonnull %267) #14
  br label %273

273:                                              ; preds = %261, %271
  %274 = phi ptr [ %272, %271 ], [ %267, %261 ]
  %275 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 1
  %276 = load ptr, ptr %275, align 8, !tbaa !21
  %277 = getelementptr inbounds %struct.rtx_def, ptr %276, i64 0, i32 1, i32 0, i32 0, i64 1
  %278 = load ptr, ptr %277, align 8, !tbaa !21
  %279 = getelementptr inbounds %struct.rtx_def, ptr %278, i64 0, i32 1
  %280 = load i64, ptr %279, align 8, !tbaa !21
  %281 = add nsw i64 %280, %229
  br label %282

282:                                              ; preds = %273, %227
  %283 = phi i64 [ %281, %273 ], [ %229, %227 ]
  %284 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %285

285:                                              ; preds = %314, %282
  %286 = phi i64 [ %283, %282 ], [ %315, %314 ]
  %287 = load ptr, ptr %284, align 8, !tbaa !21
  %288 = icmp eq ptr %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.mem_attrs, ptr %287, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !53
  br label %302

292:                                              ; preds = %285
  %293 = load i32, ptr %202, align 8
  %294 = lshr i32 %293, 16
  %295 = and i32 %294, 255
  %296 = icmp ne i32 %295, 1
  tail call void @llvm.assume(i1 %296)
  %297 = zext nneg i32 %295 to i64
  %298 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !21
  %300 = zext i8 %299 to i64
  %301 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %300) #14
  br label %302

302:                                              ; preds = %292, %289
  %303 = phi ptr [ %291, %289 ], [ %301, %292 ]
  %304 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1
  %305 = load i64, ptr %304, align 8, !tbaa !21
  %306 = add nsw i64 %305, %283
  %307 = icmp slt i64 %286, %306
  br i1 %307, label %308, label %316

308:                                              ; preds = %302
  %309 = sub nsw i64 %286, %183
  %310 = trunc i64 %309 to i32
  %311 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %190, i32 noundef %310) #14
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 354, ptr noundef nonnull @.str.6) #14
  br label %314

314:                                              ; preds = %308, %313
  %315 = add nsw i64 %286, 1
  br label %285, !llvm.loop !59

316:                                              ; preds = %302, %193, %200
  %317 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1, i32 0, i32 0, i64 1
  %318 = load ptr, ptr %317, align 8, !tbaa !21
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %193, !llvm.loop !60

320:                                              ; preds = %316, %189
  %321 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %322 = load ptr, ptr %321, align 8, !tbaa !21
  %323 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %324 = icmp eq i8 %2, 0
  %325 = icmp eq ptr %322, null
  br i1 %325, label %518, label %326

326:                                              ; preds = %320, %516
  %327 = phi ptr [ %337, %516 ], [ %322, %320 ]
  %328 = load ptr, ptr %323, align 8, !tbaa !21
  %329 = getelementptr inbounds %struct.basic_block_def, ptr %328, i64 0, i32 7
  %330 = load ptr, ptr %329, align 8, !tbaa !21
  %331 = load ptr, ptr %330, align 8, !tbaa !24
  %332 = icmp eq ptr %327, %331
  br i1 %332, label %336, label %333

333:                                              ; preds = %326
  %334 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 0, i32 1, i32 0, i32 0, i64 1
  %335 = load ptr, ptr %334, align 8, !tbaa !21
  br label %336

336:                                              ; preds = %326, %333
  %337 = phi ptr [ %335, %333 ], [ null, %326 ]
  %338 = load i32, ptr %327, align 8
  %339 = trunc i32 %338 to i16
  switch i16 %339, label %516 [
    i16 10, label %518
    i16 8, label %340
    i16 7, label %340
    i16 9, label %340
  ]

340:                                              ; preds = %336, %336, %336
  %341 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !21
  %343 = load i32, ptr %342, align 8
  %344 = and i32 %343, 65535
  %345 = icmp eq i32 %344, 23
  br i1 %345, label %349, label %346

346:                                              ; preds = %340
  %347 = tail call ptr @single_set_2(ptr noundef nonnull %327, ptr noundef nonnull %342) #14
  %348 = icmp eq ptr %347, null
  br i1 %348, label %518, label %349

349:                                              ; preds = %340, %346
  %350 = phi ptr [ %347, %346 ], [ %342, %340 ]
  %351 = getelementptr inbounds %struct.rtx_def, ptr %350, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !21
  %353 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  %354 = icmp eq ptr %352, %353
  br i1 %354, label %518, label %355

355:                                              ; preds = %349
  %356 = load i32, ptr %352, align 8
  %357 = and i32 %356, 65535
  %358 = icmp eq i32 %357, 43
  br i1 %358, label %359, label %516

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !21
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = icmp eq i32 %363, 49
  br i1 %364, label %365, label %380

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !21
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = icmp eq i32 %369, 37
  br i1 %370, label %371, label %380

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1, i32 0, i32 0, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !21
  %374 = load i32, ptr %373, align 8
  %375 = and i32 %374, 65535
  %376 = icmp eq i32 %375, 30
  br i1 %376, label %377, label %380

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.rtx_def, ptr %373, i64 0, i32 1
  %379 = load i64, ptr %378, align 8, !tbaa !21
  br label %380

380:                                              ; preds = %377, %371, %365, %359
  %381 = phi ptr [ %367, %377 ], [ %361, %371 ], [ %361, %365 ], [ %361, %359 ]
  %382 = phi i64 [ %379, %377 ], [ 0, %371 ], [ 0, %365 ], [ 0, %359 ]
  %383 = icmp eq ptr %381, %353
  br i1 %383, label %470, label %384

384:                                              ; preds = %380
  %385 = load i32, ptr %381, align 8
  %386 = and i32 %385, 65535
  %387 = icmp eq i32 %386, 37
  %388 = and i1 %324, %387
  br i1 %388, label %389, label %518

389:                                              ; preds = %384
  %390 = load ptr, ptr @df, align 8, !tbaa !11
  %391 = getelementptr inbounds %struct.df, ptr %390, i64 0, i32 10
  %392 = load ptr, ptr %391, align 8, !tbaa !37
  %393 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 0, i32 1
  %394 = load i32, ptr %393, align 8, !tbaa !21
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds ptr, ptr %392, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !11
  %398 = getelementptr inbounds %struct.df_insn_info, ptr %397, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !40
  %400 = load ptr, ptr %399, align 8, !tbaa !11
  %401 = icmp eq ptr %400, null
  br i1 %401, label %518, label %402

402:                                              ; preds = %389, %409
  %403 = phi ptr [ %411, %409 ], [ %400, %389 ]
  %404 = phi ptr [ %410, %409 ], [ %399, %389 ]
  %405 = getelementptr inbounds %struct.df_base_ref, ptr %403, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !21
  %407 = tail call i32 @rtx_equal_p(ptr noundef nonnull %381, ptr noundef %406) #14
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %402
  %410 = getelementptr inbounds ptr, ptr %404, i64 1
  %411 = load ptr, ptr %410, align 8, !tbaa !11
  %412 = icmp eq ptr %411, null
  br i1 %412, label %518, label %402, !llvm.loop !61

413:                                              ; preds = %402
  %414 = load ptr, ptr %404, align 8, !tbaa !11
  %415 = icmp eq ptr %414, null
  br i1 %415, label %518, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.df_base_ref, ptr %414, i64 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !21
  %419 = icmp eq ptr %418, null
  br i1 %419, label %518, label %424

420:                                              ; preds = %424
  %421 = getelementptr inbounds %struct.df_link, ptr %425, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !21
  %423 = icmp eq ptr %422, null
  br i1 %423, label %518, label %424, !llvm.loop !62

424:                                              ; preds = %416, %420
  %425 = phi ptr [ %422, %420 ], [ %418, %416 ]
  %426 = load ptr, ptr %425, align 8, !tbaa !28
  %427 = load i32, ptr %426, align 8
  %428 = and i32 %427, 255
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %420, label %430

430:                                              ; preds = %424
  %431 = getelementptr inbounds %struct.df_base_ref, ptr %426, i64 0, i32 3
  %432 = load ptr, ptr %431, align 8, !tbaa !21
  %433 = load ptr, ptr %432, align 8, !tbaa !30
  %434 = load i32, ptr %433, align 8
  %435 = and i32 %434, 65535
  %436 = add nsw i32 %435, -7
  %437 = icmp ult i32 %436, 4
  br i1 %437, label %438, label %518

438:                                              ; preds = %430
  %439 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 1
  %440 = load ptr, ptr %439, align 8, !tbaa !21
  %441 = load i32, ptr %440, align 8
  %442 = and i32 %441, 65535
  %443 = icmp eq i32 %442, 23
  br i1 %443, label %447, label %444

444:                                              ; preds = %438
  %445 = tail call ptr @single_set_2(ptr noundef nonnull %433, ptr noundef nonnull %440) #14
  %446 = icmp eq ptr %445, null
  br i1 %446, label %518, label %447

447:                                              ; preds = %438, %444
  %448 = phi ptr [ %445, %444 ], [ %440, %438 ]
  %449 = getelementptr inbounds %struct.rtx_def, ptr %448, i64 0, i32 1, i32 0, i32 0, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !21
  %451 = load i32, ptr %450, align 8
  %452 = and i32 %451, 65535
  %453 = icmp eq i32 %452, 49
  br i1 %453, label %454, label %518

454:                                              ; preds = %447
  %455 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !21
  %457 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  %458 = icmp eq ptr %456, %457
  br i1 %458, label %459, label %518

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.rtx_def, ptr %450, i64 0, i32 1, i32 0, i32 0, i64 1
  %461 = load ptr, ptr %460, align 8, !tbaa !21
  %462 = load i32, ptr %461, align 8
  %463 = and i32 %462, 65535
  %464 = icmp eq i32 %463, 30
  br i1 %464, label %465, label %518

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.rtx_def, ptr %461, i64 0, i32 1
  %467 = load i64, ptr %466, align 8, !tbaa !21
  %468 = add nsw i64 %467, %382
  %469 = load i32, ptr %352, align 8
  br label %470

470:                                              ; preds = %465, %380
  %471 = phi i32 [ %469, %465 ], [ %356, %380 ]
  %472 = phi i64 [ %468, %465 ], [ %382, %380 ]
  %473 = lshr i32 %471, 16
  %474 = and i32 %473, 255
  %475 = zext nneg i32 %474 to i64
  %476 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !21
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %518, label %479

479:                                              ; preds = %470
  %480 = icmp sge i64 %472, %183
  %481 = icmp slt i64 %472, %182
  %482 = and i1 %480, %481
  br i1 %482, label %498, label %504

483:                                              ; preds = %498
  %484 = add nsw i64 %499, 1
  %485 = load i32, ptr %352, align 8
  %486 = lshr i32 %485, 16
  %487 = and i32 %486, 255
  %488 = zext nneg i32 %487 to i64
  %489 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %488
  %490 = load i8, ptr %489, align 1, !tbaa !21
  %491 = zext i8 %490 to i64
  %492 = add nsw i64 %472, %491
  %493 = icmp slt i64 %484, %492
  %494 = icmp sge i64 %484, %183
  %495 = and i1 %493, %494
  %496 = icmp slt i64 %484, %182
  %497 = and i1 %495, %496
  br i1 %497, label %498, label %504, !llvm.loop !63

498:                                              ; preds = %479, %483
  %499 = phi i64 [ %484, %483 ], [ %472, %479 ]
  %500 = sub nsw i64 %499, %183
  %501 = trunc i64 %500 to i32
  %502 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %190, i32 noundef %501) #14
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %504, label %483

504:                                              ; preds = %483, %498, %479
  %505 = tail call fastcc zeroext i8 @deletable_insn_p(ptr noundef nonnull %327, i8 noundef zeroext %2, ptr noundef null) #15
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %518, label %507

507:                                              ; preds = %504
  br i1 %17, label %509, label %508

508:                                              ; preds = %507
  tail call fastcc void @mark_insn(ptr noundef nonnull %327, i8 noundef zeroext %2) #15
  br label %513

509:                                              ; preds = %507
  %510 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 0, i32 1
  %511 = load i32, ptr %510, align 8, !tbaa !21
  %512 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %511) #14
  br label %513

513:                                              ; preds = %509, %508
  %514 = load ptr, ptr %190, align 8, !tbaa !64
  %515 = icmp eq ptr %514, null
  br i1 %515, label %518, label %516

516:                                              ; preds = %355, %336, %513
  %517 = icmp eq ptr %337, null
  br i1 %517, label %518, label %326, !llvm.loop !66

518:                                              ; preds = %513, %416, %389, %516, %336, %349, %346, %384, %470, %504, %413, %444, %459, %454, %447, %430, %409, %420, %320
  %519 = phi i1 [ true, %320 ], [ true, %420 ], [ true, %409 ], [ true, %430 ], [ true, %447 ], [ true, %454 ], [ true, %459 ], [ true, %444 ], [ true, %413 ], [ true, %504 ], [ true, %470 ], [ true, %384 ], [ true, %346 ], [ true, %349 ], [ true, %336 ], [ true, %516 ], [ true, %389 ], [ true, %416 ], [ false, %513 ]
  %520 = phi i8 [ 0, %320 ], [ 0, %420 ], [ 0, %409 ], [ 0, %430 ], [ 0, %447 ], [ 0, %454 ], [ 0, %459 ], [ 0, %444 ], [ 0, %413 ], [ 0, %504 ], [ 0, %470 ], [ 0, %384 ], [ 0, %346 ], [ 0, %349 ], [ 0, %336 ], [ 0, %516 ], [ 0, %389 ], [ 0, %416 ], [ 1, %513 ]
  tail call void @bitmap_obstack_free(ptr noundef %190) #14
  %521 = icmp ne ptr %3, null
  %522 = and i1 %521, %519
  br i1 %522, label %523, label %524

523:                                              ; preds = %518
  tail call void @bitmap_clear(ptr noundef nonnull %3) #14
  br label %524

524:                                              ; preds = %135, %152, %159, %164, %149, %118, %52, %90, %62, %95, %121, %114, %125, %22, %518, %523, %187, %13
  %525 = phi i8 [ 1, %13 ], [ 1, %187 ], [ 0, %523 ], [ %520, %518 ], [ 1, %22 ], [ 0, %125 ], [ 0, %114 ], [ 0, %121 ], [ 0, %95 ], [ 0, %62 ], [ 0, %90 ], [ 0, %52 ], [ 0, %118 ], [ 0, %149 ], [ 0, %164 ], [ 0, %159 ], [ 0, %152 ], [ 0, %135 ]
  ret i8 %525
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !21
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @deletable_insn_p_1(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %4 [
    i16 22, label %8
    i16 29, label %8
    i16 18, label %8
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @volatile_refs_p(ptr noundef nonnull %0) #14
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %1, %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @volatile_refs_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_nonreg_stores_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @mark_insn(ptr noundef %2, i8 noundef zeroext 1) #15
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_nonreg_stores_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call fastcc void @mark_insn(ptr noundef %2, i8 noundef zeroext 0) #15
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @marked_insn_p(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 159, ptr noundef nonnull @.str.6) #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @marked, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !21
  %8 = lshr i32 %7, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !67
  %12 = and i32 %7, 63
  %13 = zext nneg i32 %12 to i64
  %14 = lshr i64 %11, %13
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 1
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_heap_reserve() #15
  %2 = load ptr, ptr @worklist, align 8, !tbaa !11
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %2, ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
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
  %15 = load i64, ptr %14, align 8, !tbaa !67
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !21
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !21
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !67
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !11
  %2 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %1) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #14
  store ptr %5, ptr @worklist, align 8, !tbaa !11
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !35
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !35
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = load i32, ptr %0, align 8, !tbaa !35
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #8 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #15
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @print_simple_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @noop_move_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_corresponding_reg_eq_notes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !21
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.df_insn_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %1, %47
  %15 = phi ptr [ %48, %47 ], [ %2, %1 ]
  %16 = phi ptr [ %50, %47 ], [ %12, %1 ]
  %17 = phi ptr [ %49, %47 ], [ %11, %1 ]
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !21
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %14, %38
  %28 = phi ptr [ %45, %38 ], [ %25, %14 ]
  %29 = getelementptr inbounds %struct.df_base_ref, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = tail call ptr @find_reg_note(ptr noundef %31, i32 noundef 4, ptr noundef null) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = tail call ptr @find_reg_note(ptr noundef %31, i32 noundef 3, ptr noundef null) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 494, ptr noundef nonnull @.str.6) #14
  br label %38

38:                                               ; preds = %27, %34, %37
  %39 = phi ptr [ %35, %34 ], [ null, %37 ], [ %32, %27 ]
  tail call void @remove_note(ptr noundef %31, ptr noundef %39) #14
  %40 = load ptr, ptr @df, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.df, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %27, !llvm.loop !78

47:                                               ; preds = %38, %14
  %48 = phi ptr [ %15, %14 ], [ %40, %38 ]
  %49 = getelementptr inbounds ptr, ptr %17, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !79

52:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fast_dce(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call ptr @df_get_postorder(i32 noundef 2) #14
  %5 = tail call i32 @df_get_n_blocks(i32 noundef 2) #14
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  %9 = load ptr, ptr @df, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 1) #15
  %14 = icmp sgt i32 %5, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = zext nneg i32 %5 to i64
  br label %21

17:                                               ; preds = %21, %1
  %18 = icmp eq i8 %0, 0
  %19 = getelementptr inbounds i8, ptr %3, i64 8
  %20 = zext nneg i32 %5 to i64
  br i1 %14, label %28, label %103

21:                                               ; preds = %15, %21
  %22 = phi i64 [ 0, %15 ], [ %26, %21 ]
  %23 = getelementptr inbounds i32, ptr %4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %24) #14
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %17, label %21, !llvm.loop !82

28:                                               ; preds = %17, %85
  %29 = phi i64 [ %86, %85 ], [ 0, %17 ]
  %30 = phi i8 [ %87, %85 ], [ 0, %17 ]
  %31 = getelementptr inbounds i32, ptr %4, i64 %29
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %33 = load ptr, ptr @cfun, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef %32) #15
  %39 = icmp slt i32 %32, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %32) #14
  br label %81

42:                                               ; preds = %28
  %43 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %32) #14
  %44 = trunc i32 %43 to i8
  %45 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %38) #15, !range !51
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, ptr %11, ptr %13
  br i1 %18, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call fastcc zeroext i8 @byte_dce_process_block(ptr noundef %38, i8 noundef zeroext %44, ptr noundef %47) #15
  br label %52

50:                                               ; preds = %42
  %51 = tail call fastcc zeroext i8 @dce_process_block(ptr noundef %38, i8 noundef zeroext %44, ptr noundef %47) #15, !range !51
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8 [ %49, %48 ], [ %51, %50 ]
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %32) #14
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %57 = tail call fastcc ptr @ei_start_1(ptr noundef %38) #15
  store i32 0, ptr %3, align 8, !tbaa.struct !84
  store ptr %57, ptr %19, align 8, !tbaa.struct !85
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %57, ptr noundef nonnull %2) #15, !range !51
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %56, %73
  %61 = phi i8 [ %74, %73 ], [ %30, %56 ]
  %62 = load ptr, ptr %2, align 8, !tbaa !11
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !27
  %66 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %65) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load ptr, ptr %62, align 8, !tbaa !86
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !27
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %71) #14
  br label %73

73:                                               ; preds = %60, %68
  %74 = phi i8 [ %61, %68 ], [ 1, %60 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #15
  %75 = load i32, ptr %3, align 8
  %76 = load ptr, ptr %19, align 8
  %77 = call fastcc zeroext i8 @ei_cond(i32 %75, ptr %76, ptr noundef nonnull %2) #15, !range !51
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %60, !llvm.loop !88

79:                                               ; preds = %73, %56
  %80 = phi i8 [ %30, %56 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %81

81:                                               ; preds = %52, %79, %40
  %82 = phi i8 [ %30, %40 ], [ %80, %79 ], [ %30, %52 ]
  %83 = add nuw nsw i64 %29, 1
  %84 = icmp eq i64 %83, %20
  br i1 %84, label %88, label %85

85:                                               ; preds = %81, %102
  %86 = phi i64 [ %83, %81 ], [ 0, %102 ]
  %87 = phi i8 [ %82, %81 ], [ 0, %102 ]
  br label %28, !llvm.loop !89

88:                                               ; preds = %81
  %89 = icmp eq i8 %82, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %88
  %91 = tail call i32 @df_clear_flags(i32 noundef 1) #14
  tail call fastcc void @delete_unmarked_insns() #15
  %92 = load ptr, ptr @marked, align 8, !tbaa !11
  tail call void @sbitmap_zero(ptr noundef %92) #14
  tail call void @bitmap_clear(ptr noundef %6) #14
  tail call void @bitmap_clear(ptr noundef %7) #14
  %93 = load ptr, ptr @df, align 8, !tbaa !11
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 1, i64 1
  %95 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 1, i64 5
  %96 = select i1 %18, ptr %94, ptr %95
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  tail call void @df_analyze_problem(ptr noundef %97, ptr noundef %8, ptr noundef %4, i32 noundef %5) #14
  %98 = and i32 %91, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = tail call i32 @df_set_flags(i32 noundef 1) #14
  br label %102

102:                                              ; preds = %100, %90
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 1) #15
  br i1 %14, label %85, label %103

103:                                              ; preds = %88, %102, %17
  tail call fastcc void @delete_unmarked_insns() #15
  tail call void @bitmap_obstack_free(ptr noundef %6) #14
  tail call void @bitmap_obstack_free(ptr noundef %7) #14
  tail call void @bitmap_obstack_free(ptr noundef %8) #14
  ret void
}

; Function Attrs: optsize
declare ptr @df_get_postorder(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_get_n_blocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @byte_dce_process_block(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_tmp_bitmap_obstack) #14
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %11 = load ptr, ptr @df, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 5
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.df_problem, ptr %14, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !27
  %19 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %18) #15
  %20 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  tail call void @bitmap_clear(ptr noundef %21) #14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %22) #15
  store i32 0, ptr %5, align 8, !tbaa.struct !84
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !85
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %4) #15, !range !51
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %10, %27
  %28 = load ptr, ptr %4, align 8, !tbaa !11
  tail call void %16(ptr noundef %28) #14
  call fastcc void @ei_next(ptr noundef nonnull %5) #15
  %29 = load i32, ptr %5, align 8
  %30 = load ptr, ptr %24, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %4) #15, !range !51
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %27, !llvm.loop !95

33:                                               ; preds = %27, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %34

34:                                               ; preds = %33, %3
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !27
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %35, ptr noundef nonnull @.str.11, i32 noundef %39) #15
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %42 = load i32, ptr %38, align 8, !tbaa !27
  %43 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %42) #15
  %44 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !93
  tail call void @df_print_byte_regset(ptr noundef %41, ptr noundef %45) #14
  br label %46

46:                                               ; preds = %37, %34
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !27
  %49 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %48) #15
  %50 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  tail call void @bitmap_copy(ptr noundef %8, ptr noundef %51) #14
  tail call void @df_byte_lr_simulate_artificial_refs_at_end(ptr noundef %0, ptr noundef %8) #14
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %129, label %57

57:                                               ; preds = %46, %125
  %58 = phi ptr [ %127, %125 ], [ %55, %46 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !21
  %60 = load ptr, ptr %59, align 8, !tbaa !24
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %129, label %64

64:                                               ; preds = %57
  %65 = load i32, ptr %58, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %125

69:                                               ; preds = %64
  %70 = load ptr, ptr @df, align 8, !tbaa !11
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !37
  %73 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !21
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = getelementptr inbounds %struct.df_insn_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !74
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = icmp eq ptr %80, null
  br i1 %81, label %114, label %82

82:                                               ; preds = %69, %110
  %83 = phi ptr [ %112, %110 ], [ %80, %69 ]
  %84 = phi ptr [ %111, %110 ], [ %79, %69 ]
  %85 = getelementptr inbounds %struct.df_base_ref, ptr %83, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !21
  %87 = call i32 @df_byte_lr_get_regno_start(i32 noundef %86) #14
  %88 = call i32 @df_byte_lr_get_regno_len(i32 noundef %86) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %89 = call zeroext i8 @df_compute_accessed_bytes(ptr noundef nonnull %83, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %90 = load i32, ptr %6, align 4
  %91 = load i32, ptr %7, align 4
  %92 = call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %86) #14
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %82
  %95 = icmp eq i8 %89, 0
  %96 = sub i32 %91, %90
  %97 = select i1 %95, i32 %96, i32 %88
  %98 = select i1 %95, i32 %90, i32 0
  %99 = add i32 %98, %87
  %100 = add i32 %97, %99
  %101 = call i32 @llvm.umax.i32(i32 %100, i32 %99)
  br label %102

102:                                              ; preds = %105, %94
  %103 = phi i32 [ %99, %94 ], [ %106, %105 ]
  %104 = icmp eq i32 %103, %101
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = add i32 %103, 1
  %107 = call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %103) #14
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %102, label %109, !llvm.loop !96

109:                                              ; preds = %82, %105
  call fastcc void @mark_insn(ptr noundef nonnull %58, i8 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %114

110:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %111 = getelementptr inbounds ptr, ptr %84, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !11
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %82, !llvm.loop !97

114:                                              ; preds = %110, %69, %109
  call void @df_byte_lr_simulate_defs(ptr noundef nonnull %58, ptr noundef %8) #14
  %115 = call fastcc i32 @marked_insn_p(ptr noundef nonnull %58) #15, !range !44
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @df_byte_lr_simulate_uses(ptr noundef nonnull %58, ptr noundef %8) #14
  br label %118

118:                                              ; preds = %117, %114
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %73, align 8, !tbaa !21
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %119, ptr noundef nonnull @.str.12, i32 noundef %122) #15
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !11
  call void @df_print_byte_regset(ptr noundef %124, ptr noundef %8) #14
  br label %125

125:                                              ; preds = %64, %121, %118
  %126 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !21
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %57, !llvm.loop !98

129:                                              ; preds = %57, %125, %46
  call void @df_byte_lr_simulate_artificial_refs_at_top(ptr noundef %0, ptr noundef %8) #14
  %130 = load i32, ptr %47, align 8, !tbaa !27
  %131 = call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %130) #15
  %132 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !99
  %134 = call zeroext i8 @bitmap_equal_p(ptr noundef %8, ptr noundef %133) #14
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, ptr %47, align 8, !tbaa !27
  %138 = call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %137) #15
  %139 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !99
  call void @bitmap_copy(ptr noundef %140, ptr noundef %8) #14
  br label %141

141:                                              ; preds = %129, %136
  %142 = zext i1 %135 to i8
  call void @bitmap_obstack_free(ptr noundef %8) #14
  ret i8 %142
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #15
  store i32 0, ptr %3, align 8, !tbaa.struct !84
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !85
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #15, !range !51
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !100
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #15
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #15, !range !51
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !101

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @dce_process_block(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_tmp_bitmap_obstack) #14
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %9 = load ptr, ptr @df, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = getelementptr inbounds %struct.df_problem, ptr %12, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !27
  %17 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %16) #15
  %18 = getelementptr inbounds %struct.df_lr_bb_info, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  tail call void @bitmap_clear(ptr noundef %19) #14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #15
  store i32 0, ptr %5, align 8, !tbaa.struct !84
  %22 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !85
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %4) #15, !range !51
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %8, %25
  %26 = load ptr, ptr %4, align 8, !tbaa !11
  tail call void %14(ptr noundef %26) #14
  call fastcc void @ei_next(ptr noundef nonnull %5) #15
  %27 = load i32, ptr %5, align 8
  %28 = load ptr, ptr %22, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %4) #15, !range !51
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %25, !llvm.loop !104

31:                                               ; preds = %25, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !27
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.13, i32 noundef %37) #15
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %40 = load i32, ptr %36, align 8, !tbaa !27
  %41 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %40) #15
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  tail call void @df_print_regset(ptr noundef %39, ptr noundef %43) #14
  br label %44

44:                                               ; preds = %35, %32
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !27
  %47 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %46) #15
  %48 = getelementptr inbounds %struct.df_lr_bb_info, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %49) #14
  tail call void @df_simulate_initialize_backwards(ptr noundef %0, ptr noundef %6) #14
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !21
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  %54 = icmp eq ptr %53, null
  br i1 %54, label %106, label %55

55:                                               ; preds = %44, %102
  %56 = phi ptr [ %104, %102 ], [ %53, %44 ]
  %57 = load ptr, ptr %50, align 8, !tbaa !21
  %58 = load ptr, ptr %57, align 8, !tbaa !24
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %106, label %62

62:                                               ; preds = %55
  %63 = load i32, ptr %56, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = load ptr, ptr @df, align 8, !tbaa !11
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !37
  %71 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !21
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %70, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = getelementptr inbounds %struct.df_insn_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !74
  %78 = load ptr, ptr %77, align 8, !tbaa !11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %98, label %84

80:                                               ; preds = %91
  %81 = getelementptr inbounds ptr, ptr %86, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84, !llvm.loop !105

84:                                               ; preds = %67, %80
  %85 = phi ptr [ %82, %80 ], [ %78, %67 ]
  %86 = phi ptr [ %81, %80 ], [ %77, %67 ]
  %87 = getelementptr inbounds %struct.df_base_ref, ptr %85, i64 0, i32 6
  %88 = load i32, ptr %87, align 8, !tbaa !21
  %89 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %88) #14
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load ptr, ptr %86, align 8, !tbaa !11
  %93 = getelementptr inbounds %struct.df_base_ref, ptr %92, i64 0, i32 6
  %94 = load i32, ptr %93, align 8, !tbaa !21
  %95 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %94) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %80, label %97

97:                                               ; preds = %91, %84
  tail call fastcc void @mark_insn(ptr noundef nonnull %56, i8 noundef zeroext 1) #15
  br label %98

98:                                               ; preds = %80, %67, %97
  tail call void @df_simulate_defs(ptr noundef nonnull %56, ptr noundef %6) #14
  %99 = tail call fastcc i32 @marked_insn_p(ptr noundef nonnull %56) #15, !range !44
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call void @df_simulate_uses(ptr noundef nonnull %56, ptr noundef %6) #14
  br label %102

102:                                              ; preds = %62, %98, %101
  %103 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !21
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %55, !llvm.loop !106

106:                                              ; preds = %55, %102, %44
  tail call void @df_simulate_finalize_backwards(ptr noundef %0, ptr noundef %6) #14
  %107 = load i32, ptr %45, align 8, !tbaa !27
  %108 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %107) #15
  %109 = getelementptr inbounds %struct.df_lr_bb_info, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !107
  %111 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %6, ptr noundef %110) #14
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, ptr %45, align 8, !tbaa !27
  %115 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %114) #15
  %116 = getelementptr inbounds %struct.df_lr_bb_info, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !107
  tail call void @bitmap_copy(ptr noundef %117, ptr noundef %6) #14
  br label %118

118:                                              ; preds = %113, %106
  %119 = zext i1 %112 to i8
  tail call void @bitmap_obstack_free(ptr noundef %6) #14
  ret i8 %119
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #15, !range !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #15
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
  %5 = tail call fastcc ptr @ei_container(ptr %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #15
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #15
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.6) #14
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !108
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare void @df_analyze_problem(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @df_print_byte_regset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_byte_lr_simulate_artificial_refs_at_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_byte_lr_get_regno_start(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_byte_lr_get_regno_len(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @df_compute_accessed_bytes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_byte_lr_simulate_defs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_byte_lr_simulate_uses(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_byte_lr_simulate_artificial_refs_at_top(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @df, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_simulate_initialize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_simulate_defs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_simulate_uses(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_simulate_finalize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #15
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #15
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #15
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #15
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !110
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.6) #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: optsize
declare void @df_byte_lr_add_problem() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !12, i64 8}
!14 = !{!"function", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !12, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!15 = !{!16, !12, i64 0}
!16 = !{!"control_flow_graph", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !12, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!17 = !{!18, !12, i64 56}
!18 = !{!"basic_block_def", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !12, i64 48, !12, i64 56, !7, i64 64, !19, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!19 = !{!"long", !7, i64 0}
!20 = !{!16, !12, i64 8}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !12, i64 8}
!23 = !{!"rtl_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32}
!24 = !{!23, !12, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!18, !6, i64 80}
!28 = !{!29, !12, i64 0}
!29 = !{!"df_link", !12, i64 0, !12, i64 8}
!30 = !{!31, !12, i64 0}
!31 = !{!"df_insn_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !6, i64 40}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!36, !6, i64 0}
!36 = !{!"VEC_rtx_base", !6, i64 0, !6, i64 4, !7, i64 8}
!37 = !{!38, !12, i64 248}
!38 = !{!"df", !7, i64 0, !7, i64 64, !12, i64 128, !39, i64 136, !39, i64 176, !12, i64 216, !12, i64 224, !12, i64 232, !6, i64 240, !6, i64 244, !12, i64 248, !6, i64 256, !6, i64 260, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !6, i64 344, !6, i64 348, !12, i64 352, !6, i64 360, !6, i64 364, !7, i64 365, !7, i64 366}
!39 = !{!"df_ref_info", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!40 = !{!31, !12, i64 16}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = !{!18, !12, i64 48}
!44 = !{i32 0, i32 2}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = !{!48, !12, i64 0}
!48 = !{!"simple_bitmap_def", !12, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!49 = !{!50, !6, i64 0}
!50 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!51 = !{i8 0, i8 2}
!52 = distinct !{!52, !10}
!53 = !{!54, !12, i64 16}
!54 = !{!"mem_attrs", !12, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !7, i64 32}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = !{}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = !{!65, !12, i64 0}
!65 = !{!"bitmap_head_def", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 24}
!66 = distinct !{!66, !10}
!67 = !{!19, !19, i64 0}
!68 = !{!36, !6, i64 4}
!69 = !{!70, !12, i64 8}
!70 = !{!"df_scan_bb_info", !12, i64 0, !12, i64 8}
!71 = !{!72, !6, i64 16}
!72 = !{!"dataflow", !12, i64 0, !12, i64 8, !6, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !6, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!73 = !{!72, !12, i64 8}
!74 = !{!31, !12, i64 8}
!75 = !{!38, !12, i64 232}
!76 = !{!77, !12, i64 0}
!77 = !{!"df_reg_info", !12, i64 0, !6, i64 8}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = !{!38, !12, i64 272}
!81 = !{!38, !12, i64 280}
!82 = distinct !{!82, !10}
!83 = !{!16, !12, i64 16}
!84 = !{i64 0, i64 4, !5, i64 8, i64 8, !11}
!85 = !{i64 0, i64 8, !11}
!86 = !{!87, !12, i64 0}
!87 = !{!"edge_def", !12, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !19, i64 56}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = !{!72, !12, i64 0}
!91 = !{!92, !12, i64 64}
!92 = !{!"df_problem", !6, i64 0, !6, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !6, i64 152, !7, i64 156}
!93 = !{!94, !12, i64 24}
!94 = !{!"df_byte_lr_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!95 = distinct !{!95, !10}
!96 = distinct !{!96, !10}
!97 = distinct !{!97, !10}
!98 = distinct !{!98, !10}
!99 = !{!94, !12, i64 16}
!100 = !{!87, !6, i64 48}
!101 = distinct !{!101, !10}
!102 = !{!103, !12, i64 24}
!103 = !{!"df_lr_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = !{!103, !12, i64 16}
!108 = !{!109, !6, i64 0}
!109 = !{!"", !6, i64 0, !12, i64 8}
!110 = !{!111, !6, i64 0}
!111 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
