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
define internal zeroext i8 @gate_ud_dce() #0 !prof !156 !PGOFuncName !157 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !158
  %2 = icmp sgt i32 %1, 1
  %3 = load i32, ptr @flag_dce, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !162

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
define internal noundef i32 @rest_of_handle_ud_dce() #0 !prof !156 !PGOFuncName !163 {
  tail call fastcc void @init_dce(i8 noundef zeroext 0) #15
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 0) #15
  tail call fastcc void @mark_artificial_uses() #15
  %1 = load ptr, ptr @worklist, align 8
  %2 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %1) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4, !prof !164

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %0 ]
  %6 = tail call fastcc ptr @VEC_rtx_base_pop(ptr noundef %5) #15
  tail call fastcc void @mark_reg_dependencies(ptr noundef %6) #15
  %7 = load ptr, ptr @worklist, align 8
  %8 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !prof !165, !llvm.loop !166

10:                                               ; preds = %4, %0
  tail call fastcc void @VEC_rtx_heap_free() #15
  %11 = load ptr, ptr @df, align 8, !tbaa !168
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 4
  %13 = load ptr, ptr %12, align 8, !tbaa !168
  tail call void @df_remove_problem(ptr noundef %13) #14
  tail call fastcc void @delete_unmarked_insns() #15
  tail call fastcc void @fini_dce(i8 noundef zeroext 0) #15
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @run_fast_df_dce() local_unnamed_addr #0 !prof !170 {
  %1 = load i32, ptr @flag_dce, align 4, !tbaa !158
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3, !prof !171

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
define internal noundef i32 @rest_of_handle_fast_dce() #0 !prof !172 !PGOFuncName !173 {
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
define dso_local void @run_fast_dce() local_unnamed_addr #0 !prof !174 {
  %1 = load i32, ptr @flag_dce, align 4, !tbaa !158
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !175

3:                                                ; preds = %0
  %4 = tail call i32 @rest_of_handle_fast_dce() #15
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_fast_dce() #0 !prof !156 !PGOFuncName !176 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !158
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_dce, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10, !prof !162

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
define internal noundef i32 @rest_of_handle_fast_byte_dce() #0 !prof !177 !PGOFuncName !178 {
  tail call void @df_byte_lr_add_problem() #14
  tail call fastcc void @init_dce(i8 noundef zeroext 1) #15
  tail call fastcc void @fast_dce(i8 noundef zeroext 1) #15
  tail call fastcc void @fini_dce(i8 noundef zeroext 1) #15
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dce(i8 noundef zeroext %0) unnamed_addr #0 !prof !179 !PGOFuncName !180 {
  %2 = load i1, ptr @df_in_progress, align 1
  br i1 %2, label %7, label %3, !prof !181

3:                                                ; preds = %1
  %4 = icmp eq i8 %0, 0
  br i1 %4, label %5, label %6, !prof !182

5:                                                ; preds = %3
  tail call void @df_chain_add_problem(i32 noundef 2) #14
  br label %6

6:                                                ; preds = %5, %3
  tail call void @df_analyze() #14
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !183

10:                                               ; preds = %7
  tail call void @df_dump(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %7
  %12 = icmp eq i8 %0, 0
  br i1 %12, label %14, label %13, !prof !184

13:                                               ; preds = %11
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @dce_tmp_bitmap_obstack) #14
  br label %14

14:                                               ; preds = %13, %11
  %15 = tail call i32 @get_max_uid() #14
  %16 = add nsw i32 %15, 1
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %16) #14
  store ptr %17, ptr @marked, align 8, !tbaa !168
  tail call void @sbitmap_zero(ptr noundef %17) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prescan_insns_for_dce(i8 noundef zeroext %0) unnamed_addr #0 !prof !179 !PGOFuncName !185 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !183

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr nonnull %2)
  br label %6

6:                                                ; preds = %4, %1
  %7 = load i1, ptr @df_in_progress, align 1
  br i1 %7, label %17, label %8, !prof !181

8:                                                ; preds = %6
  %9 = load i32, ptr @target_flags, align 4, !tbaa !158
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !prof !186

12:                                               ; preds = %8
  %13 = tail call i32 @ix86_cfun_abi() #14
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %8
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #14
  br label %17

17:                                               ; preds = %15, %12, %6
  %18 = phi ptr [ null, %6 ], [ %16, %15 ], [ null, %12 ]
  %19 = load ptr, ptr @cfun, align 8, !tbaa !168
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !187
  %22 = load ptr, ptr %21, align 8, !tbaa !189
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !191
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !194
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %77, label %28, !prof !195

28:                                               ; preds = %17
  %29 = icmp eq ptr %18, null
  br label %30

30:                                               ; preds = %28, %68
  %31 = phi ptr [ %24, %28 ], [ %70, %68 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !197
  %36 = icmp eq ptr %35, null
  br i1 %36, label %66, label %37, !prof !199

37:                                               ; preds = %30, %64
  %38 = phi ptr [ %40, %64 ], [ %35, %30 ]
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = load ptr, ptr %32, align 8, !tbaa !196
  %42 = load ptr, ptr %41, align 8, !tbaa !200
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !196
  %45 = icmp eq ptr %38, %44
  br i1 %45, label %66, label %46, !prof !201

46:                                               ; preds = %37
  %47 = load i32, ptr %38, align 8
  %48 = and i32 %47, 65535
  %49 = add nsw i32 %48, -7
  %50 = icmp ult i32 %49, 4
  br i1 %50, label %51, label %64, !prof !202

51:                                               ; preds = %46
  br i1 %29, label %57, label %52, !prof !203

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !196
  %55 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %18, i32 noundef %54) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64, !prof !204

57:                                               ; preds = %52, %51
  %58 = tail call fastcc zeroext i8 @deletable_insn_p(ptr noundef nonnull %38, i8 noundef zeroext %0, ptr noundef %18) #15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60, !prof !205

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !196
  tail call fastcc void @mark_nonreg_stores(ptr noundef %62, ptr noundef nonnull %38, i8 noundef zeroext %0) #15
  br label %64

63:                                               ; preds = %57
  tail call fastcc void @mark_insn(ptr noundef nonnull %38, i8 noundef zeroext %0) #15
  br label %64

64:                                               ; preds = %46, %63, %60, %52
  %65 = icmp eq ptr %40, null
  br i1 %65, label %66, label %37, !prof !206, !llvm.loop !207

66:                                               ; preds = %64, %37, %30
  br i1 %29, label %68, label %67, !prof !208

67:                                               ; preds = %66
  tail call void @bitmap_clear(ptr noundef nonnull %18) #14
  br label %68

68:                                               ; preds = %66, %67
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !191
  %71 = load ptr, ptr @cfun, align 8, !tbaa !168
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !187
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !194
  %76 = icmp eq ptr %70, %75
  br i1 %76, label %77, label %30, !prof !209, !llvm.loop !210

77:                                               ; preds = %68, %17
  %78 = icmp eq ptr %18, null
  br i1 %78, label %80, label %79, !prof !181

79:                                               ; preds = %77
  tail call void @bitmap_obstack_free(ptr noundef nonnull %18) #14
  br label %80

80:                                               ; preds = %79, %77
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !183

83:                                               ; preds = %80
  %84 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 38, i64 1, ptr nonnull %81)
  br label %85

85:                                               ; preds = %83, %80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_artificial_uses() unnamed_addr #0 !prof !156 !PGOFuncName !211 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !168
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6, !prof !164

6:                                                ; preds = %0, %37
  %7 = phi ptr [ %39, %37 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !212
  %10 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %9) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13, !prof !213

13:                                               ; preds = %6, %33
  %14 = phi ptr [ %35, %33 ], [ %11, %6 ]
  %15 = phi ptr [ %34, %33 ], [ %10, %6 ]
  %16 = getelementptr inbounds %struct.df_base_ref, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !196
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !214

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %31, %29 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !215
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %29, label %25, !prof !217

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  %28 = load ptr, ptr %27, align 8, !tbaa !218
  tail call fastcc void @mark_insn(ptr noundef %28, i8 noundef zeroext 0) #15
  br label %29

29:                                               ; preds = %19, %25
  %30 = getelementptr inbounds %struct.df_link, ptr %20, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !196
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !prof !220, !llvm.loop !221

33:                                               ; preds = %29, %13
  %34 = getelementptr inbounds ptr, ptr %15, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !168
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %13, !prof !222, !llvm.loop !223

37:                                               ; preds = %33, %6
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !168
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %6, !prof !224, !llvm.loop !225

41:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !226 !PGOFuncName !227 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !228

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !229
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_base_pop(ptr nocapture noundef %0) unnamed_addr #4 !prof !231 !PGOFuncName !232 {
  %2 = load i32, ptr %0, align 8, !tbaa !229
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !229
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_dependencies(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !231 !PGOFuncName !233 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %53, label %5, !prof !234

5:                                                ; preds = %1
  %6 = load ptr, ptr @df, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !235
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !196
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !168
  %14 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !238
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18, !prof !239

18:                                               ; preds = %5, %49
  %19 = phi ptr [ %51, %49 ], [ %16, %5 ]
  %20 = phi ptr [ %50, %49 ], [ %15, %5 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !prof !240

23:                                               ; preds = %18
  %24 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 18, i64 1, ptr nonnull %21)
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  tail call void @print_simple_rtl(ptr noundef %25, ptr noundef %27) #14
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %29 = load i32, ptr %9, align 8, !tbaa !196
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.9, i32 noundef %29) #15
  br label %31

31:                                               ; preds = %23, %18
  %32 = getelementptr inbounds %struct.df_base_ref, ptr %19, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !196
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35, !prof !241

35:                                               ; preds = %31, %45
  %36 = phi ptr [ %47, %45 ], [ %33, %31 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !215
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %45, label %41, !prof !242

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !196
  %44 = load ptr, ptr %43, align 8, !tbaa !218
  tail call fastcc void @mark_insn(ptr noundef %44, i8 noundef zeroext 0) #15
  br label %45

45:                                               ; preds = %35, %41
  %46 = getelementptr inbounds %struct.df_link, ptr %36, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !196
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %35, !prof !243, !llvm.loop !244

49:                                               ; preds = %45, %31
  %50 = getelementptr inbounds ptr, ptr %20, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !168
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %18, !prof !245, !llvm.loop !246

53:                                               ; preds = %49, %5, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_heap_free() unnamed_addr #5 !prof !156 !PGOFuncName !247 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !168
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !248

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @worklist, align 8, !tbaa !168
  ret void
}

; Function Attrs: optsize
declare void @df_remove_problem(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_unmarked_insns() unnamed_addr #0 !prof !179 !PGOFuncName !249 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !168
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !250
  %8 = load ptr, ptr %3, align 8, !tbaa !189
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %77, label %10, !prof !195

10:                                               ; preds = %0, %64
  %11 = phi ptr [ %65, %64 ], [ %1, %0 ]
  %12 = phi ptr [ %68, %64 ], [ %7, %0 ]
  %13 = phi i8 [ %66, %64 ], [ 0, %0 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19, !prof !199

19:                                               ; preds = %10, %58
  %20 = phi ptr [ %23, %58 ], [ %17, %10 ]
  %21 = phi i8 [ %59, %58 ], [ %13, %10 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  %24 = load ptr, ptr %14, align 8, !tbaa !196
  %25 = load ptr, ptr %24, align 8, !tbaa !200
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  %28 = icmp eq ptr %20, %27
  br i1 %28, label %61, label %29, !prof !201

29:                                               ; preds = %19
  %30 = load i32, ptr %20, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %58, !prof !202

34:                                               ; preds = %29
  %35 = tail call i32 @noop_move_p(ptr noundef nonnull %20) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40, !prof !251

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @marked_insn_p(ptr noundef nonnull %20) #15, !range !252
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58, !prof !253

40:                                               ; preds = %37, %34
  %41 = tail call zeroext i8 @dbg_cnt(i32 noundef 5) #14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %58, label %43, !prof !254

43:                                               ; preds = %40
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !255

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !196
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.10, i32 noundef %48) #15
  br label %50

50:                                               ; preds = %46, %43
  tail call fastcc void @delete_corresponding_reg_eq_notes(ptr noundef nonnull %20) #15
  %51 = load i32, ptr %20, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %55, !prof !254

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8 [ 1, %54 ], [ %21, %50 ]
  %57 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %20) #14
  br label %58

58:                                               ; preds = %29, %55, %40, %37
  %59 = phi i8 [ %56, %55 ], [ %21, %40 ], [ %21, %37 ], [ %21, %29 ]
  %60 = icmp eq ptr %23, null
  br i1 %60, label %61, label %19, !prof !206, !llvm.loop !256

61:                                               ; preds = %58, %19
  %62 = phi i8 [ %21, %19 ], [ %59, %58 ]
  %63 = load ptr, ptr @cfun, align 8, !tbaa !168
  br label %64

64:                                               ; preds = %10, %61
  %65 = phi ptr [ %63, %61 ], [ %11, %10 ]
  %66 = phi i8 [ %62, %61 ], [ %13, %10 ]
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !250
  %69 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !187
  %71 = load ptr, ptr %70, align 8, !tbaa !189
  %72 = icmp eq ptr %68, %71
  br i1 %72, label %73, label %10, !prof !209, !llvm.loop !257

73:                                               ; preds = %64
  %74 = icmp eq i8 %66, 0
  br i1 %74, label %77, label %75, !prof !258

75:                                               ; preds = %73
  %76 = tail call zeroext i8 @delete_unreachable_blocks() #14
  br label %77

77:                                               ; preds = %0, %75, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_dce(i8 noundef zeroext %0) unnamed_addr #0 !prof !179 !PGOFuncName !259 {
  %2 = load ptr, ptr @marked, align 8, !tbaa !168
  %3 = load ptr, ptr %2, align 8, !tbaa !260
  tail call void @free(ptr noundef %3) #15
  tail call void @free(ptr noundef %2) #15
  %4 = icmp eq i8 %0, 0
  br i1 %4, label %6, label %5, !prof !184

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
define internal fastcc zeroext i8 @deletable_insn_p(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !prof !262 !PGOFuncName !263 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %65, !prof !264

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @insn_nothrow_p(ptr noundef nonnull %0) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %65, label %10, !prof !265

10:                                               ; preds = %7
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %27, !prof !265

14:                                               ; preds = %10
  %15 = load i1, ptr @df_in_progress, align 1
  %16 = and i32 %11, 16777216
  %17 = icmp ne i32 %16, 0
  %18 = or i1 %17, %15
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = and i32 %11, -2080374784
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %11, 33554432
  %23 = icmp eq i32 %22, 0
  %24 = and i1 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext %1, ptr noundef %2) #15
  br label %65

27:                                               ; preds = %19, %14, %10
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %63 [
    i16 24, label %65
    i16 138, label %65
    i16 25, label %32
    i16 15, label %47
  ], !prof !266

32:                                               ; preds = %27
  %33 = icmp eq i8 %1, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !196
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #15
  %42 = icmp ugt i32 %41, 52
  %43 = load i32, ptr @reload_completed, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  %46 = zext i1 %45 to i8
  br label %65

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !196
  %50 = load i32, ptr %49, align 8, !tbaa !267
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %56, %47
  %53 = phi i64 [ %57, %56 ], [ %51, %47 ]
  %54 = trunc i64 %53 to i32
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65, !prof !269

56:                                               ; preds = %52
  %57 = add nsw i64 %53, -1
  %58 = load ptr, ptr %48, align 8, !tbaa !196
  %59 = getelementptr inbounds %struct.rtvec_def, ptr %58, i64 0, i32 1, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !168
  %61 = tail call fastcc zeroext i8 @deletable_insn_p_1(ptr noundef %60) #15, !range !270
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %52, !prof !271, !llvm.loop !272

63:                                               ; preds = %27
  %64 = tail call fastcc zeroext i8 @deletable_insn_p_1(ptr noundef nonnull %29) #15, !range !270
  br label %65

65:                                               ; preds = %52, %56, %32, %34, %40, %27, %27, %7, %3, %63, %25
  %66 = phi i8 [ %64, %63 ], [ %26, %25 ], [ 0, %3 ], [ 0, %7 ], [ 0, %27 ], [ 0, %27 ], [ 0, %34 ], [ %46, %40 ], [ 0, %32 ], [ 1, %52 ], [ 0, %56 ]
  ret i8 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_nonreg_stores(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !273 !PGOFuncName !274 {
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, ptr @mark_nonreg_stores_2, ptr @mark_nonreg_stores_1, !prof !275
  tail call void @note_stores(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !276 !PGOFuncName !277 {
  %3 = tail call fastcc i32 @marked_insn_p(ptr noundef %0) #15, !range !252
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31, !prof !278

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %7, label %8, !prof !279

7:                                                ; preds = %5
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef %0) #15
  br label %8

8:                                                ; preds = %7, %5
  %9 = load ptr, ptr @marked, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !196
  tail call fastcc void @SET_BIT(ptr noundef %9, i32 noundef %11) #15
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !280

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 8, !tbaa !196
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, i32 noundef %15) #15
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, ptr %0, align 8
  %19 = load i1, ptr @df_in_progress, align 1
  %20 = and i32 %18, 16842751
  %21 = icmp ne i32 %20, 10
  %22 = select i1 %21, i1 true, i1 %19
  %23 = and i32 %18, -2080374784
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %24, %22
  br i1 %25, label %31, label %26, !prof !281

26:                                               ; preds = %17
  %27 = and i32 %18, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @find_call_stack_args(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext %1, ptr noundef null) #15
  br label %31

31:                                               ; preds = %17, %26, %29, %2
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @insn_nothrow_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_call_stack_args(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !prof !177 !PGOFuncName !282 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 237, ptr noundef nonnull @.str.6) #14
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @target_flags, align 4, !tbaa !158
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @ix86_cfun_abi() #14
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %523

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
  %25 = load ptr, ptr %24, align 8, !tbaa !196
  %26 = icmp eq ptr %25, null
  br i1 %26, label %523, label %27

27:                                               ; preds = %22, %180
  %28 = phi ptr [ %184, %180 ], [ %25, %22 ]
  %29 = phi i64 [ %182, %180 ], [ 9223372036854775807, %22 ]
  %30 = phi i64 [ %181, %180 ], [ 0, %22 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !196
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 24
  br i1 %35, label %36, label %180

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !196
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %42, label %180

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !196
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.mem_attrs, ptr %45, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !283
  br label %60

50:                                               ; preds = %42
  %51 = lshr i32 %39, 16
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %523, label %54

54:                                               ; preds = %50
  %55 = zext nneg i32 %52 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !196
  %58 = zext i8 %57 to i64
  %59 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %58) #14
  br label %60

60:                                               ; preds = %54, %47
  %61 = phi ptr [ %49, %47 ], [ %59, %54 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %523, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %43, align 8, !tbaa !196
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 49
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !196
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !196
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 30
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !196
  br label %83

83:                                               ; preds = %80, %74, %68, %63
  %84 = phi ptr [ %70, %80 ], [ %64, %74 ], [ %64, %68 ], [ %64, %63 ]
  %85 = phi i64 [ %82, %80 ], [ 0, %74 ], [ 0, %68 ], [ 0, %63 ]
  %86 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !168
  %87 = icmp eq ptr %84, %86
  br i1 %87, label %173, label %88

88:                                               ; preds = %83
  %89 = icmp eq i8 %2, 0
  %90 = load i32, ptr %84, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  %93 = and i1 %89, %92
  br i1 %93, label %94, label %523

94:                                               ; preds = %88
  %95 = load ptr, ptr @df, align 8, !tbaa !168
  %96 = getelementptr inbounds %struct.df, ptr %95, i64 0, i32 10
  %97 = load ptr, ptr %96, align 8, !tbaa !235
  %98 = load i32, ptr %23, align 8, !tbaa !196
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !168
  %102 = getelementptr inbounds %struct.df_insn_info, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !238
  %104 = load ptr, ptr %103, align 8, !tbaa !168
  %105 = icmp eq ptr %104, null
  br i1 %105, label %523, label %106

106:                                              ; preds = %94, %113
  %107 = phi ptr [ %115, %113 ], [ %104, %94 ]
  %108 = phi ptr [ %114, %113 ], [ %103, %94 ]
  %109 = getelementptr inbounds %struct.df_base_ref, ptr %107, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !196
  %111 = tail call i32 @rtx_equal_p(ptr noundef nonnull %84, ptr noundef %110) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = getelementptr inbounds ptr, ptr %108, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !168
  %116 = icmp eq ptr %115, null
  br i1 %116, label %523, label %106, !llvm.loop !285

117:                                              ; preds = %106
  %118 = load ptr, ptr %108, align 8, !tbaa !168
  %119 = icmp eq ptr %118, null
  br i1 %119, label %523, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.df_base_ref, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !196
  %123 = icmp eq ptr %122, null
  br i1 %123, label %523, label %128

124:                                              ; preds = %128
  %125 = getelementptr inbounds %struct.df_link, ptr %129, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !196
  %127 = icmp eq ptr %126, null
  br i1 %127, label %523, label %128, !llvm.loop !286

128:                                              ; preds = %120, %124
  %129 = phi ptr [ %126, %124 ], [ %122, %120 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !215
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 255
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %124, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.df_base_ref, ptr %130, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !196
  %137 = load ptr, ptr %136, align 8, !tbaa !218
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = add nsw i32 %139, -7
  %141 = icmp ult i32 %140, 4
  br i1 %141, label %142, label %523

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !196
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 23
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = tail call ptr @single_set_2(ptr noundef nonnull %137, ptr noundef nonnull %144) #14
  %150 = icmp eq ptr %149, null
  br i1 %150, label %523, label %151

151:                                              ; preds = %142, %148
  %152 = phi ptr [ %149, %148 ], [ %144, %142 ]
  %153 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !196
  %155 = load i32, ptr %154, align 8
  %156 = and i32 %155, 65535
  %157 = icmp eq i32 %156, 49
  br i1 %157, label %158, label %523

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !196
  %161 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !168
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %163, label %523

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !196
  %166 = load i32, ptr %165, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 30
  br i1 %168, label %169, label %523

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !196
  %172 = add nsw i64 %171, %85
  br label %173

173:                                              ; preds = %83, %169
  %174 = phi i64 [ %172, %169 ], [ %85, %83 ]
  %175 = tail call i64 @llvm.smin.i64(i64 %29, i64 %174)
  %176 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !196
  %178 = add nsw i64 %177, %174
  %179 = tail call i64 @llvm.smax.i64(i64 %30, i64 %178)
  br label %180

180:                                              ; preds = %173, %27, %36
  %181 = phi i64 [ %179, %173 ], [ %30, %36 ], [ %30, %27 ]
  %182 = phi i64 [ %175, %173 ], [ %29, %36 ], [ %29, %27 ]
  %183 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !196
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %27, !llvm.loop !287

186:                                              ; preds = %180
  %187 = icmp slt i64 %182, %181
  br i1 %187, label %188, label %523

188:                                              ; preds = %186
  %189 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #14
  %190 = load ptr, ptr %24, align 8, !tbaa !196
  %191 = icmp eq ptr %190, null
  br i1 %191, label %319, label %192

192:                                              ; preds = %188, %315
  %193 = phi ptr [ %317, %315 ], [ %190, %188 ]
  %194 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !196
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 24
  br i1 %198, label %199, label %315

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !196
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 43
  br i1 %204, label %205, label %315

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !196
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 49
  br i1 %210, label %211, label %226

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !196
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 37
  br i1 %216, label %217, label %226

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1, i32 0, i32 0, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !196
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 30
  br i1 %222, label %223, label %226

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !196
  br label %226

226:                                              ; preds = %223, %217, %211, %205
  %227 = phi ptr [ %213, %223 ], [ %207, %217 ], [ %207, %211 ], [ %207, %205 ]
  %228 = phi i64 [ %225, %223 ], [ 0, %217 ], [ 0, %211 ], [ 0, %205 ]
  %229 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !168
  %230 = icmp eq ptr %227, %229
  br i1 %230, label %281, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr @df, align 8, !tbaa !168
  %233 = getelementptr inbounds %struct.df, ptr %232, i64 0, i32 10
  %234 = load ptr, ptr %233, align 8, !tbaa !235
  %235 = load i32, ptr %23, align 8, !tbaa !196
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %234, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !168
  %239 = getelementptr inbounds %struct.df_insn_info, ptr %238, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !238
  br label %241

241:                                              ; preds = %241, %231
  %242 = phi ptr [ %248, %241 ], [ %240, %231 ]
  %243 = load ptr, ptr %242, align 8, !tbaa !168, !nonnull !288, !noundef !288
  %244 = getelementptr inbounds %struct.df_base_ref, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !196
  %246 = tail call i32 @rtx_equal_p(ptr noundef nonnull %227, ptr noundef %245) #14
  %247 = icmp eq i32 %246, 0
  %248 = getelementptr inbounds ptr, ptr %242, i64 1
  br i1 %247, label %241, label %249

249:                                              ; preds = %241
  %250 = load ptr, ptr %242, align 8, !tbaa !168
  %251 = getelementptr inbounds %struct.df_base_ref, ptr %250, i64 0, i32 2
  br label %252

252:                                              ; preds = %252, %249
  %253 = phi ptr [ %259, %252 ], [ %251, %249 ]
  %254 = load ptr, ptr %253, align 8, !tbaa !196, !nonnull !288, !noundef !288
  %255 = load ptr, ptr %254, align 8, !tbaa !215
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 1
  %259 = getelementptr inbounds %struct.df_link, ptr %254, i64 0, i32 1
  br i1 %258, label %252, label %260

260:                                              ; preds = %252
  %261 = load ptr, ptr %254, align 8, !tbaa !215
  %262 = getelementptr inbounds %struct.df_base_ref, ptr %261, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !196
  %264 = load ptr, ptr %263, align 8, !tbaa !218
  %265 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 1
  %266 = load ptr, ptr %265, align 8, !tbaa !196
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 65535
  %269 = icmp eq i32 %268, 23
  br i1 %269, label %272, label %270

270:                                              ; preds = %260
  %271 = tail call ptr @single_set_2(ptr noundef nonnull %264, ptr noundef nonnull %266) #14
  br label %272

272:                                              ; preds = %260, %270
  %273 = phi ptr [ %271, %270 ], [ %266, %260 ]
  %274 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  %275 = load ptr, ptr %274, align 8, !tbaa !196
  %276 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1, i32 0, i32 0, i64 1
  %277 = load ptr, ptr %276, align 8, !tbaa !196
  %278 = getelementptr inbounds %struct.rtx_def, ptr %277, i64 0, i32 1
  %279 = load i64, ptr %278, align 8, !tbaa !196
  %280 = add nsw i64 %279, %228
  br label %281

281:                                              ; preds = %272, %226
  %282 = phi i64 [ %280, %272 ], [ %228, %226 ]
  %283 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %284

284:                                              ; preds = %313, %281
  %285 = phi i64 [ %282, %281 ], [ %314, %313 ]
  %286 = load ptr, ptr %283, align 8, !tbaa !196
  %287 = icmp eq ptr %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.mem_attrs, ptr %286, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !283
  br label %301

291:                                              ; preds = %284
  %292 = load i32, ptr %201, align 8
  %293 = lshr i32 %292, 16
  %294 = and i32 %293, 255
  %295 = icmp ne i32 %294, 1
  tail call void @llvm.assume(i1 %295)
  %296 = zext nneg i32 %294 to i64
  %297 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !196
  %299 = zext i8 %298 to i64
  %300 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %299) #14
  br label %301

301:                                              ; preds = %291, %288
  %302 = phi ptr [ %290, %288 ], [ %300, %291 ]
  %303 = getelementptr inbounds %struct.rtx_def, ptr %302, i64 0, i32 1
  %304 = load i64, ptr %303, align 8, !tbaa !196
  %305 = add nsw i64 %304, %282
  %306 = icmp slt i64 %285, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %301
  %308 = sub nsw i64 %285, %182
  %309 = trunc i64 %308 to i32
  %310 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %189, i32 noundef %309) #14
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 354, ptr noundef nonnull @.str.6) #14
  br label %313

313:                                              ; preds = %307, %312
  %314 = add nsw i64 %285, 1
  br label %284, !llvm.loop !289

315:                                              ; preds = %301, %192, %199
  %316 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !196
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %192, !llvm.loop !290

319:                                              ; preds = %315, %188
  %320 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %321 = load ptr, ptr %320, align 8, !tbaa !196
  %322 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %323 = icmp eq i8 %2, 0
  %324 = icmp eq ptr %321, null
  br i1 %324, label %517, label %325

325:                                              ; preds = %319, %515
  %326 = phi ptr [ %336, %515 ], [ %321, %319 ]
  %327 = load ptr, ptr %322, align 8, !tbaa !196
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %327, i64 0, i32 7
  %329 = load ptr, ptr %328, align 8, !tbaa !196
  %330 = load ptr, ptr %329, align 8, !tbaa !200
  %331 = icmp eq ptr %326, %330
  br i1 %331, label %335, label %332

332:                                              ; preds = %325
  %333 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %334 = load ptr, ptr %333, align 8, !tbaa !196
  br label %335

335:                                              ; preds = %325, %332
  %336 = phi ptr [ %334, %332 ], [ null, %325 ]
  %337 = load i32, ptr %326, align 8
  %338 = trunc i32 %337 to i16
  switch i16 %338, label %515 [
    i16 10, label %517
    i16 8, label %339
    i16 7, label %339
    i16 9, label %339
  ]

339:                                              ; preds = %335, %335, %335
  %340 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 1
  %341 = load ptr, ptr %340, align 8, !tbaa !196
  %342 = load i32, ptr %341, align 8
  %343 = and i32 %342, 65535
  %344 = icmp eq i32 %343, 23
  br i1 %344, label %348, label %345

345:                                              ; preds = %339
  %346 = tail call ptr @single_set_2(ptr noundef nonnull %326, ptr noundef nonnull %341) #14
  %347 = icmp eq ptr %346, null
  br i1 %347, label %517, label %348

348:                                              ; preds = %339, %345
  %349 = phi ptr [ %346, %345 ], [ %341, %339 ]
  %350 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !196
  %352 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !168
  %353 = icmp eq ptr %351, %352
  br i1 %353, label %517, label %354

354:                                              ; preds = %348
  %355 = load i32, ptr %351, align 8
  %356 = and i32 %355, 65535
  %357 = icmp eq i32 %356, 43
  br i1 %357, label %358, label %515

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.rtx_def, ptr %351, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !196
  %361 = load i32, ptr %360, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 49
  br i1 %363, label %364, label %379

364:                                              ; preds = %358
  %365 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !196
  %367 = load i32, ptr %366, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 37
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1, i32 0, i32 0, i64 1
  %372 = load ptr, ptr %371, align 8, !tbaa !196
  %373 = load i32, ptr %372, align 8
  %374 = and i32 %373, 65535
  %375 = icmp eq i32 %374, 30
  br i1 %375, label %376, label %379

376:                                              ; preds = %370
  %377 = getelementptr inbounds %struct.rtx_def, ptr %372, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !196
  br label %379

379:                                              ; preds = %376, %370, %364, %358
  %380 = phi ptr [ %366, %376 ], [ %360, %370 ], [ %360, %364 ], [ %360, %358 ]
  %381 = phi i64 [ %378, %376 ], [ 0, %370 ], [ 0, %364 ], [ 0, %358 ]
  %382 = icmp eq ptr %380, %352
  br i1 %382, label %469, label %383

383:                                              ; preds = %379
  %384 = load i32, ptr %380, align 8
  %385 = and i32 %384, 65535
  %386 = icmp eq i32 %385, 37
  %387 = and i1 %323, %386
  br i1 %387, label %388, label %517

388:                                              ; preds = %383
  %389 = load ptr, ptr @df, align 8, !tbaa !168
  %390 = getelementptr inbounds %struct.df, ptr %389, i64 0, i32 10
  %391 = load ptr, ptr %390, align 8, !tbaa !235
  %392 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %393 = load i32, ptr %392, align 8, !tbaa !196
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds ptr, ptr %391, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !168
  %397 = getelementptr inbounds %struct.df_insn_info, ptr %396, i64 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !238
  %399 = load ptr, ptr %398, align 8, !tbaa !168
  %400 = icmp eq ptr %399, null
  br i1 %400, label %517, label %401

401:                                              ; preds = %388, %408
  %402 = phi ptr [ %410, %408 ], [ %399, %388 ]
  %403 = phi ptr [ %409, %408 ], [ %398, %388 ]
  %404 = getelementptr inbounds %struct.df_base_ref, ptr %402, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !196
  %406 = tail call i32 @rtx_equal_p(ptr noundef nonnull %380, ptr noundef %405) #14
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %401
  %409 = getelementptr inbounds ptr, ptr %403, i64 1
  %410 = load ptr, ptr %409, align 8, !tbaa !168
  %411 = icmp eq ptr %410, null
  br i1 %411, label %517, label %401, !llvm.loop !291

412:                                              ; preds = %401
  %413 = load ptr, ptr %403, align 8, !tbaa !168
  %414 = icmp eq ptr %413, null
  br i1 %414, label %517, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds %struct.df_base_ref, ptr %413, i64 0, i32 2
  %417 = load ptr, ptr %416, align 8, !tbaa !196
  %418 = icmp eq ptr %417, null
  br i1 %418, label %517, label %423

419:                                              ; preds = %423
  %420 = getelementptr inbounds %struct.df_link, ptr %424, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !196
  %422 = icmp eq ptr %421, null
  br i1 %422, label %517, label %423, !llvm.loop !292

423:                                              ; preds = %415, %419
  %424 = phi ptr [ %421, %419 ], [ %417, %415 ]
  %425 = load ptr, ptr %424, align 8, !tbaa !215
  %426 = load i32, ptr %425, align 8
  %427 = and i32 %426, 255
  %428 = icmp eq i32 %427, 1
  br i1 %428, label %419, label %429

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.df_base_ref, ptr %425, i64 0, i32 3
  %431 = load ptr, ptr %430, align 8, !tbaa !196
  %432 = load ptr, ptr %431, align 8, !tbaa !218
  %433 = load i32, ptr %432, align 8
  %434 = and i32 %433, 65535
  %435 = add nsw i32 %434, -7
  %436 = icmp ult i32 %435, 4
  br i1 %436, label %437, label %517

437:                                              ; preds = %429
  %438 = getelementptr inbounds %struct.rtx_def, ptr %432, i64 1
  %439 = load ptr, ptr %438, align 8, !tbaa !196
  %440 = load i32, ptr %439, align 8
  %441 = and i32 %440, 65535
  %442 = icmp eq i32 %441, 23
  br i1 %442, label %446, label %443

443:                                              ; preds = %437
  %444 = tail call ptr @single_set_2(ptr noundef nonnull %432, ptr noundef nonnull %439) #14
  %445 = icmp eq ptr %444, null
  br i1 %445, label %517, label %446

446:                                              ; preds = %437, %443
  %447 = phi ptr [ %444, %443 ], [ %439, %437 ]
  %448 = getelementptr inbounds %struct.rtx_def, ptr %447, i64 0, i32 1, i32 0, i32 0, i64 1
  %449 = load ptr, ptr %448, align 8, !tbaa !196
  %450 = load i32, ptr %449, align 8
  %451 = and i32 %450, 65535
  %452 = icmp eq i32 %451, 49
  br i1 %452, label %453, label %517

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !196
  %456 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !168
  %457 = icmp eq ptr %455, %456
  br i1 %457, label %458, label %517

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 0, i32 1, i32 0, i32 0, i64 1
  %460 = load ptr, ptr %459, align 8, !tbaa !196
  %461 = load i32, ptr %460, align 8
  %462 = and i32 %461, 65535
  %463 = icmp eq i32 %462, 30
  br i1 %463, label %464, label %517

464:                                              ; preds = %458
  %465 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1
  %466 = load i64, ptr %465, align 8, !tbaa !196
  %467 = add nsw i64 %466, %381
  %468 = load i32, ptr %351, align 8
  br label %469

469:                                              ; preds = %464, %379
  %470 = phi i32 [ %468, %464 ], [ %355, %379 ]
  %471 = phi i64 [ %467, %464 ], [ %381, %379 ]
  %472 = lshr i32 %470, 16
  %473 = and i32 %472, 255
  %474 = zext nneg i32 %473 to i64
  %475 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !196
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %517, label %478

478:                                              ; preds = %469
  %479 = icmp sge i64 %471, %182
  %480 = icmp slt i64 %471, %181
  %481 = and i1 %479, %480
  br i1 %481, label %497, label %503

482:                                              ; preds = %497
  %483 = add nsw i64 %498, 1
  %484 = load i32, ptr %351, align 8
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 255
  %487 = zext nneg i32 %486 to i64
  %488 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %487
  %489 = load i8, ptr %488, align 1, !tbaa !196
  %490 = zext i8 %489 to i64
  %491 = add nsw i64 %471, %490
  %492 = icmp slt i64 %483, %491
  %493 = icmp sge i64 %483, %182
  %494 = and i1 %492, %493
  %495 = icmp slt i64 %483, %181
  %496 = and i1 %494, %495
  br i1 %496, label %497, label %503, !llvm.loop !293

497:                                              ; preds = %478, %482
  %498 = phi i64 [ %483, %482 ], [ %471, %478 ]
  %499 = sub nsw i64 %498, %182
  %500 = trunc i64 %499 to i32
  %501 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %189, i32 noundef %500) #14
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %482

503:                                              ; preds = %482, %497, %478
  %504 = tail call fastcc zeroext i8 @deletable_insn_p(ptr noundef nonnull %326, i8 noundef zeroext %2, ptr noundef null) #15
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %517, label %506

506:                                              ; preds = %503
  br i1 %17, label %508, label %507

507:                                              ; preds = %506
  tail call fastcc void @mark_insn(ptr noundef nonnull %326, i8 noundef zeroext %2) #15
  br label %512

508:                                              ; preds = %506
  %509 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %510 = load i32, ptr %509, align 8, !tbaa !196
  %511 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %510) #14
  br label %512

512:                                              ; preds = %508, %507
  %513 = load ptr, ptr %189, align 8, !tbaa !294
  %514 = icmp eq ptr %513, null
  br i1 %514, label %517, label %515

515:                                              ; preds = %354, %335, %512
  %516 = icmp eq ptr %336, null
  br i1 %516, label %517, label %325, !llvm.loop !296

517:                                              ; preds = %512, %415, %388, %515, %335, %348, %345, %383, %469, %503, %412, %443, %458, %453, %446, %429, %408, %419, %319
  %518 = phi i1 [ true, %319 ], [ true, %419 ], [ true, %408 ], [ true, %429 ], [ true, %446 ], [ true, %453 ], [ true, %458 ], [ true, %443 ], [ true, %412 ], [ true, %503 ], [ true, %469 ], [ true, %383 ], [ true, %345 ], [ true, %348 ], [ true, %335 ], [ true, %515 ], [ true, %388 ], [ true, %415 ], [ false, %512 ]
  %519 = phi i8 [ 0, %319 ], [ 0, %419 ], [ 0, %408 ], [ 0, %429 ], [ 0, %446 ], [ 0, %453 ], [ 0, %458 ], [ 0, %443 ], [ 0, %412 ], [ 0, %503 ], [ 0, %469 ], [ 0, %383 ], [ 0, %345 ], [ 0, %348 ], [ 0, %335 ], [ 0, %515 ], [ 0, %388 ], [ 0, %415 ], [ 1, %512 ]
  tail call void @bitmap_obstack_free(ptr noundef %189) #14
  %520 = icmp ne ptr %3, null
  %521 = and i1 %520, %518
  br i1 %521, label %522, label %523

522:                                              ; preds = %517
  tail call void @bitmap_clear(ptr noundef nonnull %3) #14
  br label %523

523:                                              ; preds = %134, %151, %158, %163, %148, %117, %50, %88, %60, %94, %120, %113, %124, %22, %517, %522, %186, %13
  %524 = phi i8 [ 1, %13 ], [ 1, %186 ], [ 0, %522 ], [ %519, %517 ], [ 1, %22 ], [ 0, %124 ], [ 0, %113 ], [ 0, %120 ], [ 0, %94 ], [ 0, %60 ], [ 0, %88 ], [ 0, %50 ], [ 0, %117 ], [ 0, %148 ], [ 0, %163 ], [ 0, %158 ], [ 0, %151 ], [ 0, %134 ]
  ret i8 %524
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !177 !PGOFuncName !297 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !196
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @deletable_insn_p_1(ptr noundef %0) unnamed_addr #0 !prof !298 !PGOFuncName !299 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %4 [
    i16 22, label %8
    i16 29, label %8
    i16 18, label %8
  ], !prof !300

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
define internal void @mark_nonreg_stores_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !301 !PGOFuncName !302 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %12, label %7, !prof !303

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %12, label %11, !prof !304

11:                                               ; preds = %7
  tail call fastcc void @mark_insn(ptr noundef %2, i8 noundef zeroext 1) #15
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_nonreg_stores_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !305 !PGOFuncName !306 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %12, label %7, !prof !307

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %12, label %11, !prof !308

11:                                               ; preds = %7
  tail call fastcc void @mark_insn(ptr noundef %2, i8 noundef zeroext 0) #15
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @marked_insn_p(ptr noundef readonly %0) unnamed_addr #0 !prof !309 !PGOFuncName !310 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !311

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 159, ptr noundef nonnull @.str.6) #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr @marked, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !196
  %8 = lshr i32 %7, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !312
  %12 = and i32 %7, 63
  %13 = zext nneg i32 %12 to i64
  %14 = lshr i64 %11, %13
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 1
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !231 !PGOFuncName !313 {
  tail call fastcc void @VEC_rtx_heap_reserve() #15
  %2 = load ptr, ptr @worklist, align 8, !tbaa !168
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %2, ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !314 !PGOFuncName !315 {
  %3 = load ptr, ptr %0, align 8, !tbaa !260
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !280

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
  %15 = load i64, ptr %14, align 8, !tbaa !312
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !196
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !196
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !312
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !312
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_reserve() unnamed_addr #0 !prof !231 !PGOFuncName !316 {
  %1 = load ptr, ptr @worklist, align 8, !tbaa !168
  %2 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %1) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !317

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #14
  store ptr %5, ptr @worklist, align 8, !tbaa !168
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !231 !PGOFuncName !318 {
  %3 = load i32, ptr %0, align 8, !tbaa !229
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !229
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !231 !PGOFuncName !319 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !320

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !321
  %6 = load i32, ptr %0, align 8, !tbaa !229
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
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #8 !prof !322 !PGOFuncName !323 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #15
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #8 !prof !322 !PGOFuncName !326 {
  %2 = load ptr, ptr @df, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !327
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !329

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !330
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !168
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
define internal fastcc void @delete_corresponding_reg_eq_notes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !331 !PGOFuncName !332 {
  %2 = load ptr, ptr @df, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !235
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !196
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.df_insn_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !333
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14, !prof !334

14:                                               ; preds = %1, %47
  %15 = phi ptr [ %48, %47 ], [ %2, %1 ]
  %16 = phi ptr [ %50, %47 ], [ %12, %1 ]
  %17 = phi ptr [ %49, %47 ], [ %11, %1 ]
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !196
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !335
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = load ptr, ptr %24, align 8, !tbaa !336
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27, !prof !338

27:                                               ; preds = %14, %38
  %28 = phi ptr [ %45, %38 ], [ %25, %14 ]
  %29 = getelementptr inbounds %struct.df_base_ref, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !196
  %31 = load ptr, ptr %30, align 8, !tbaa !218
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
  %40 = load ptr, ptr @df, align 8, !tbaa !168
  %41 = getelementptr inbounds %struct.df, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !335
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  %44 = load ptr, ptr %43, align 8, !tbaa !168
  %45 = load ptr, ptr %44, align 8, !tbaa !336
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %27, !prof !339, !llvm.loop !340

47:                                               ; preds = %38, %14
  %48 = phi ptr [ %15, %14 ], [ %40, %38 ]
  %49 = getelementptr inbounds ptr, ptr %17, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !168
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !prof !338, !llvm.loop !341

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
define internal fastcc void @fast_dce(i8 noundef zeroext %0) unnamed_addr #0 !prof !172 !PGOFuncName !342 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call ptr @df_get_postorder(i32 noundef 2) #14
  %5 = tail call i32 @df_get_n_blocks(i32 noundef 2) #14
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_blocks_bitmap_obstack) #14
  %9 = load ptr, ptr @df, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !343
  %12 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !344
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 1) #15
  %14 = icmp sgt i32 %5, 0
  br i1 %14, label %15, label %17, !prof !345

15:                                               ; preds = %1
  %16 = zext nneg i32 %5 to i64
  br label %21

17:                                               ; preds = %21, %1
  %18 = icmp eq i8 %0, 0
  %19 = getelementptr inbounds i8, ptr %3, i64 8
  %20 = zext nneg i32 %5 to i64
  br i1 %14, label %28, label %103, !prof !346

21:                                               ; preds = %15, %21
  %22 = phi i64 [ 0, %15 ], [ %26, %21 ]
  %23 = getelementptr inbounds i32, ptr %4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !158
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %24) #14
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %17, label %21, !prof !347, !llvm.loop !348

28:                                               ; preds = %17, %85
  %29 = phi i64 [ %86, %85 ], [ 0, %17 ]
  %30 = phi i8 [ %87, %85 ], [ 0, %17 ]
  %31 = getelementptr inbounds i32, ptr %4, i64 %29
  %32 = load i32, ptr %31, align 4, !tbaa !158
  %33 = load ptr, ptr @cfun, align 8, !tbaa !168
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !187
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !349
  %38 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef %32) #15
  %39 = icmp slt i32 %32, 2
  br i1 %39, label %40, label %42, !prof !350

40:                                               ; preds = %28
  %41 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %32) #14
  br label %81

42:                                               ; preds = %28
  %43 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %32) #14
  %44 = trunc i32 %43 to i8
  %45 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %38) #15, !range !270
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, ptr %11, ptr %13, !prof !351
  br i1 %18, label %50, label %48, !prof !351

48:                                               ; preds = %42
  %49 = tail call fastcc zeroext i8 @byte_dce_process_block(ptr noundef %38, i8 noundef zeroext %44, ptr noundef %47) #15
  br label %52

50:                                               ; preds = %42
  %51 = tail call fastcc zeroext i8 @dce_process_block(ptr noundef %38, i8 noundef zeroext %44, ptr noundef %47) #15, !range !270
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8 [ %49, %48 ], [ %51, %50 ]
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %32) #14
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %81, label %56, !prof !351

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %57 = tail call fastcc ptr @ei_start_1(ptr noundef %38) #15
  store i32 0, ptr %3, align 8, !tbaa.struct !352
  store ptr %57, ptr %19, align 8, !tbaa.struct !353
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %57, ptr noundef nonnull %2) #15, !range !270
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %56, %73
  %61 = phi i8 [ %74, %73 ], [ %30, %56 ]
  %62 = load ptr, ptr %2, align 8, !tbaa !168
  %63 = load ptr, ptr %62, align 8, !tbaa !354
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !212
  %66 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %65) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load ptr, ptr %62, align 8, !tbaa !354
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !212
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %7, i32 noundef %71) #14
  br label %73

73:                                               ; preds = %60, %68
  %74 = phi i8 [ %61, %68 ], [ 1, %60 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #15
  %75 = load i32, ptr %3, align 8
  %76 = load ptr, ptr %19, align 8
  %77 = call fastcc zeroext i8 @ei_cond(i32 %75, ptr %76, ptr noundef nonnull %2) #15, !range !270
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %60, !llvm.loop !356

79:                                               ; preds = %73, %56
  %80 = phi i8 [ %30, %56 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %81

81:                                               ; preds = %52, %79, %40
  %82 = phi i8 [ %30, %40 ], [ %80, %79 ], [ %30, %52 ]
  %83 = add nuw nsw i64 %29, 1
  %84 = icmp eq i64 %83, %20
  br i1 %84, label %88, label %85, !prof !347

85:                                               ; preds = %81, %102
  %86 = phi i64 [ %83, %81 ], [ 0, %102 ]
  %87 = phi i8 [ %82, %81 ], [ 0, %102 ]
  br label %28, !llvm.loop !357

88:                                               ; preds = %81
  %89 = icmp eq i8 %82, 0
  br i1 %89, label %103, label %90, !prof !358

90:                                               ; preds = %88
  %91 = tail call i32 @df_clear_flags(i32 noundef 1) #14
  tail call fastcc void @delete_unmarked_insns() #15
  %92 = load ptr, ptr @marked, align 8, !tbaa !168
  tail call void @sbitmap_zero(ptr noundef %92) #14
  tail call void @bitmap_clear(ptr noundef %6) #14
  tail call void @bitmap_clear(ptr noundef %7) #14
  %93 = load ptr, ptr @df, align 8, !tbaa !168
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 1, i64 1
  %95 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 1, i64 5
  %96 = select i1 %18, ptr %94, ptr %95
  %97 = load ptr, ptr %96, align 8, !tbaa !168
  tail call void @df_analyze_problem(ptr noundef %97, ptr noundef %8, ptr noundef %4, i32 noundef %5) #14
  %98 = and i32 %91, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = tail call i32 @df_set_flags(i32 noundef 1) #14
  br label %102

102:                                              ; preds = %100, %90
  tail call fastcc void @prescan_insns_for_dce(i8 noundef zeroext 1) #15
  br i1 %14, label %85, label %103, !prof !359

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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !360 !PGOFuncName !361 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @byte_dce_process_block(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !prof !177 !PGOFuncName !362 {
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
  %11 = load ptr, ptr @df, align 8, !tbaa !168
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 1, i64 5
  %13 = load ptr, ptr %12, align 8, !tbaa !168
  %14 = load ptr, ptr %13, align 8, !tbaa !363
  %15 = getelementptr inbounds %struct.df_problem, ptr %14, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !364
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !212
  %19 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %18) #15
  %20 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !366
  tail call void @bitmap_clear(ptr noundef %21) #14
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %22) #15
  store i32 0, ptr %5, align 8, !tbaa.struct !352
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !353
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %4) #15, !range !270
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %10, %27
  %28 = load ptr, ptr %4, align 8, !tbaa !168
  tail call void %16(ptr noundef %28) #14
  call fastcc void @ei_next(ptr noundef nonnull %5) #15
  %29 = load i32, ptr %5, align 8
  %30 = load ptr, ptr %24, align 8
  %31 = call fastcc zeroext i8 @ei_cond(i32 %29, ptr %30, ptr noundef nonnull %4) #15, !range !270
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %27, !llvm.loop !368

33:                                               ; preds = %27, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %34

34:                                               ; preds = %33, %3
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !212
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %35, ptr noundef nonnull @.str.11, i32 noundef %39) #15
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %42 = load i32, ptr %38, align 8, !tbaa !212
  %43 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %42) #15
  %44 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !366
  tail call void @df_print_byte_regset(ptr noundef %41, ptr noundef %45) #14
  br label %46

46:                                               ; preds = %37, %34
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !212
  %49 = tail call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %48) #15
  %50 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !366
  tail call void @bitmap_copy(ptr noundef %8, ptr noundef %51) #14
  tail call void @df_byte_lr_simulate_artificial_refs_at_end(ptr noundef %0, ptr noundef %8) #14
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !196
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !196
  %56 = icmp eq ptr %55, null
  br i1 %56, label %129, label %57

57:                                               ; preds = %46, %125
  %58 = phi ptr [ %127, %125 ], [ %55, %46 ]
  %59 = load ptr, ptr %52, align 8, !tbaa !196
  %60 = load ptr, ptr %59, align 8, !tbaa !200
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !196
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %129, label %64

64:                                               ; preds = %57
  %65 = load i32, ptr %58, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %125

69:                                               ; preds = %64
  %70 = load ptr, ptr @df, align 8, !tbaa !168
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !235
  %73 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !196
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !168
  %78 = getelementptr inbounds %struct.df_insn_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !333
  %80 = load ptr, ptr %79, align 8, !tbaa !168
  %81 = icmp eq ptr %80, null
  br i1 %81, label %114, label %82

82:                                               ; preds = %69, %110
  %83 = phi ptr [ %112, %110 ], [ %80, %69 ]
  %84 = phi ptr [ %111, %110 ], [ %79, %69 ]
  %85 = getelementptr inbounds %struct.df_base_ref, ptr %83, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !196
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
  br i1 %108, label %102, label %109, !llvm.loop !369

109:                                              ; preds = %82, %105
  call fastcc void @mark_insn(ptr noundef nonnull %58, i8 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %114

110:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %111 = getelementptr inbounds ptr, ptr %84, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !168
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %82, !llvm.loop !370

114:                                              ; preds = %110, %69, %109
  call void @df_byte_lr_simulate_defs(ptr noundef nonnull %58, ptr noundef %8) #14
  %115 = call fastcc i32 @marked_insn_p(ptr noundef nonnull %58) #15, !range !252
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  call void @df_byte_lr_simulate_uses(ptr noundef nonnull %58, ptr noundef %8) #14
  br label %118

118:                                              ; preds = %117, %114
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %73, align 8, !tbaa !196
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %119, ptr noundef nonnull @.str.12, i32 noundef %122) #15
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !168
  call void @df_print_byte_regset(ptr noundef %124, ptr noundef %8) #14
  br label %125

125:                                              ; preds = %64, %121, %118
  %126 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !196
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %57, !llvm.loop !371

129:                                              ; preds = %57, %125, %46
  call void @df_byte_lr_simulate_artificial_refs_at_top(ptr noundef %0, ptr noundef %8) #14
  %130 = load i32, ptr %47, align 8, !tbaa !212
  %131 = call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %130) #15
  %132 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !372
  %134 = call zeroext i8 @bitmap_equal_p(ptr noundef %8, ptr noundef %133) #14
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, ptr %47, align 8, !tbaa !212
  %138 = call fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %137) #15
  %139 = getelementptr inbounds %struct.df_byte_lr_bb_info, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !372
  call void @bitmap_copy(ptr noundef %140, ptr noundef %8) #14
  br label %141

141:                                              ; preds = %129, %136
  %142 = zext i1 %135 to i8
  call void @bitmap_obstack_free(ptr noundef %8) #14
  ret i8 %142
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !373 !PGOFuncName !374 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #15
  store i32 0, ptr %3, align 8, !tbaa.struct !352
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !353
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #15, !range !270
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !375

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !376
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !377

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #15
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #15, !range !270
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !378, !llvm.loop !379

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @dce_process_block(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !prof !373 !PGOFuncName !380 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @dce_tmp_bitmap_obstack) #14
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %32, label %8, !prof !351

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %9 = load ptr, ptr @df, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %12 = load ptr, ptr %11, align 8, !tbaa !363
  %13 = getelementptr inbounds %struct.df_problem, ptr %12, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !364
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !212
  %17 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %16) #15
  %18 = getelementptr inbounds %struct.df_lr_bb_info, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !381
  tail call void @bitmap_clear(ptr noundef %19) #14
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #15
  store i32 0, ptr %5, align 8, !tbaa.struct !352
  %22 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !353
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %4) #15, !range !270
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %8, %25
  %26 = load ptr, ptr %4, align 8, !tbaa !168
  tail call void %14(ptr noundef %26) #14
  call fastcc void @ei_next(ptr noundef nonnull %5) #15
  %27 = load i32, ptr %5, align 8
  %28 = load ptr, ptr %22, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %4) #15, !range !270
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %25, !llvm.loop !383

31:                                               ; preds = %25, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35, !prof !351

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !212
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %33, ptr noundef nonnull @.str.13, i32 noundef %37) #15
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !168
  %40 = load i32, ptr %36, align 8, !tbaa !212
  %41 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %40) #15
  %42 = getelementptr inbounds %struct.df_lr_bb_info, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !381
  tail call void @df_print_regset(ptr noundef %39, ptr noundef %43) #14
  br label %44

44:                                               ; preds = %35, %32
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !212
  %47 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %46) #15
  %48 = getelementptr inbounds %struct.df_lr_bb_info, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !381
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %49) #14
  tail call void @df_simulate_initialize_backwards(ptr noundef %0, ptr noundef %6) #14
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !196
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !196
  %54 = icmp eq ptr %53, null
  br i1 %54, label %106, label %55, !prof !384

55:                                               ; preds = %44, %102
  %56 = phi ptr [ %104, %102 ], [ %53, %44 ]
  %57 = load ptr, ptr %50, align 8, !tbaa !196
  %58 = load ptr, ptr %57, align 8, !tbaa !200
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !196
  %61 = icmp eq ptr %56, %60
  br i1 %61, label %106, label %62, !prof !385

62:                                               ; preds = %55
  %63 = load i32, ptr %56, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %102, !prof !386

67:                                               ; preds = %62
  %68 = load ptr, ptr @df, align 8, !tbaa !168
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !235
  %71 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !196
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %70, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !168
  %76 = getelementptr inbounds %struct.df_insn_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !333
  %78 = load ptr, ptr %77, align 8, !tbaa !168
  %79 = icmp eq ptr %78, null
  br i1 %79, label %98, label %84, !prof !387

80:                                               ; preds = %91
  %81 = getelementptr inbounds ptr, ptr %86, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !168
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84, !prof !388, !llvm.loop !389

84:                                               ; preds = %67, %80
  %85 = phi ptr [ %82, %80 ], [ %78, %67 ]
  %86 = phi ptr [ %81, %80 ], [ %77, %67 ]
  %87 = getelementptr inbounds %struct.df_base_ref, ptr %85, i64 0, i32 6
  %88 = load i32, ptr %87, align 8, !tbaa !196
  %89 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %88) #14
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97, !prof !390

91:                                               ; preds = %84
  %92 = load ptr, ptr %86, align 8, !tbaa !168
  %93 = getelementptr inbounds %struct.df_base_ref, ptr %92, i64 0, i32 6
  %94 = load i32, ptr %93, align 8, !tbaa !196
  %95 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %94) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %80, label %97, !prof !391

97:                                               ; preds = %91, %84
  tail call fastcc void @mark_insn(ptr noundef nonnull %56, i8 noundef zeroext 1) #15
  br label %98

98:                                               ; preds = %80, %67, %97
  tail call void @df_simulate_defs(ptr noundef nonnull %56, ptr noundef %6) #14
  %99 = tail call fastcc i32 @marked_insn_p(ptr noundef nonnull %56) #15, !range !252
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101, !prof !392

101:                                              ; preds = %98
  tail call void @df_simulate_uses(ptr noundef nonnull %56, ptr noundef %6) #14
  br label %102

102:                                              ; preds = %62, %98, %101
  %103 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !196
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %55, !prof !393, !llvm.loop !394

106:                                              ; preds = %55, %102, %44
  tail call void @df_simulate_finalize_backwards(ptr noundef %0, ptr noundef %6) #14
  %107 = load i32, ptr %45, align 8, !tbaa !212
  %108 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %107) #15
  %109 = getelementptr inbounds %struct.df_lr_bb_info, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !395
  %111 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %6, ptr noundef %110) #14
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %118, !prof !396

113:                                              ; preds = %106
  %114 = load i32, ptr %45, align 8, !tbaa !212
  %115 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %114) #15
  %116 = getelementptr inbounds %struct.df_lr_bb_info, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !395
  tail call void @bitmap_copy(ptr noundef %117, ptr noundef %6) #14
  br label %118

118:                                              ; preds = %113, %106
  %119 = zext i1 %112 to i8
  tail call void @bitmap_obstack_free(ptr noundef %6) #14
  ret i8 %119
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !373 !PGOFuncName !397 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !398 !PGOFuncName !399 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #15, !range !270
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !400

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #15
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !168
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !401 !PGOFuncName !402 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !403

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #15
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #15
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !377

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.6) #14
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !404
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !404
  ret void
}

; Function Attrs: optsize
declare void @df_analyze_problem(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_byte_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 !prof !177 !PGOFuncName !406 {
  %2 = load ptr, ptr @df, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 5
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !327
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !330
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !168
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
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 !prof !407 !PGOFuncName !408 {
  %2 = load ptr, ptr @df, align 8, !tbaa !168
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !327
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !409

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !330
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !168
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !398 !PGOFuncName !410 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !411

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !401 !PGOFuncName !412 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !403

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #15
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #15
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !413 !PGOFuncName !414 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !415

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !416
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !418 !PGOFuncName !419 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !420

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.6) #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !168
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !401 !PGOFuncName !421 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !168
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!155}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!35 = !{ptr @gate_ud_dce, ptr @dbg_cnt, i64 36}
!36 = !{ptr @rest_of_handle_ud_dce, ptr @init_dce, i64 38}
!37 = !{ptr @rest_of_handle_ud_dce, ptr @prescan_insns_for_dce, i64 38}
!38 = !{ptr @rest_of_handle_ud_dce, ptr @mark_artificial_uses, i64 38}
!39 = !{ptr @rest_of_handle_ud_dce, ptr @VEC_rtx_base_length, i64 654046}
!40 = !{ptr @rest_of_handle_ud_dce, ptr @VEC_rtx_base_pop, i64 654008}
!41 = !{ptr @rest_of_handle_ud_dce, ptr @mark_reg_dependencies, i64 654008}
!42 = !{ptr @rest_of_handle_ud_dce, ptr @VEC_rtx_heap_free, i64 38}
!43 = !{ptr @rest_of_handle_ud_dce, ptr @df_remove_problem, i64 38}
!44 = !{ptr @rest_of_handle_ud_dce, ptr @delete_unmarked_insns, i64 38}
!45 = !{ptr @rest_of_handle_ud_dce, ptr @fini_dce, i64 38}
!46 = !{ptr @run_fast_df_dce, ptr @df_clear_flags, i64 239}
!47 = !{ptr @run_fast_df_dce, ptr @rest_of_handle_fast_dce, i64 239}
!48 = !{ptr @run_fast_df_dce, ptr @df_set_flags, i64 239}
!49 = !{ptr @rest_of_handle_fast_dce, ptr @init_dce, i64 307}
!50 = !{ptr @rest_of_handle_fast_dce, ptr @fast_dce, i64 307}
!51 = !{ptr @rest_of_handle_fast_dce, ptr @fini_dce, i64 307}
!52 = !{ptr @run_fast_dce, ptr @rest_of_handle_fast_dce, i64 28}
!53 = !{ptr @gate_fast_dce, ptr @dbg_cnt, i64 36}
!54 = !{ptr @init_dce, ptr @df_chain_add_problem, i64 38}
!55 = !{ptr @init_dce, ptr @df_analyze, i64 105}
!56 = !{ptr @init_dce, ptr @df_dump, i64 1}
!57 = !{ptr @init_dce, ptr @bitmap_obstack_initialize, i64 612}
!58 = !{ptr @init_dce, ptr @get_max_uid, i64 345}
!59 = !{ptr @init_dce, ptr @sbitmap_alloc, i64 345}
!60 = !{ptr @init_dce, ptr @sbitmap_zero, i64 345}
!61 = !{ptr @prescan_insns_for_dce, ptr @fwrite, i64 2}
!62 = !{ptr @prescan_insns_for_dce, ptr @ix86_cfun_abi, i64 1}
!63 = !{ptr @prescan_insns_for_dce, ptr @bitmap_obstack_alloc_stat, i64 105}
!64 = !{ptr @prescan_insns_for_dce, ptr @bitmap_bit_p, i64 1774671}
!65 = !{ptr @prescan_insns_for_dce, ptr @deletable_insn_p, i64 5589061}
!66 = !{ptr @prescan_insns_for_dce, ptr @mark_nonreg_stores, i64 3576113}
!67 = !{ptr @prescan_insns_for_dce, ptr @mark_insn, i64 2012948}
!68 = !{ptr @prescan_insns_for_dce, ptr @bitmap_clear, i64 461852}
!69 = !{ptr @prescan_insns_for_dce, ptr @bitmap_obstack_free, i64 105}
!70 = !{ptr @mark_artificial_uses, ptr @df_get_artificial_uses, i64 149747}
!71 = !{ptr @mark_artificial_uses, ptr @mark_insn, i64 57}
!72 = !{ptr @mark_reg_dependencies, ptr @fwrite, i64 1}
!73 = !{ptr @mark_reg_dependencies, ptr @print_simple_rtl, i64 1}
!74 = !{ptr @mark_reg_dependencies, ptr @fprintf, i64 1}
!75 = !{ptr @mark_reg_dependencies, ptr @mark_insn, i64 520197}
!76 = !{ptr @VEC_rtx_heap_free, ptr @free, i64 37}
!77 = !{ptr @delete_unmarked_insns, ptr @noop_move_p, i64 5589062}
!78 = !{ptr @delete_unmarked_insns, ptr @marked_insn_p, i64 5589061}
!79 = !{ptr @delete_unmarked_insns, ptr @dbg_cnt, i64 1912}
!80 = !{ptr @delete_unmarked_insns, ptr @fprintf, i64 1}
!81 = !{ptr @delete_unmarked_insns, ptr @delete_corresponding_reg_eq_notes, i64 1911}
!82 = !{ptr @delete_unmarked_insns, ptr @delete_insn_and_edges, i64 1911}
!83 = !{ptr @delete_unmarked_insns, ptr @delete_unreachable_blocks, i64 1}
!84 = !{ptr @fini_dce, ptr @free, i64 690}
!85 = !{ptr @fini_dce, ptr @bitmap_obstack_release, i64 612}
!86 = !{ptr @deletable_insn_p, ptr @insn_nothrow_p, i64 3587320}
!87 = !{ptr @deletable_insn_p, ptr @deletable_insn_p_1, i64 3767953}
!88 = !{ptr @mark_nonreg_stores, ptr @note_stores, i64 3586946}
!89 = !{ptr @mark_insn, ptr @marked_insn_p, i64 6285635}
!90 = !{ptr @mark_insn, ptr @VEC_rtx_heap_safe_push, i64 671219}
!91 = !{ptr @mark_insn, ptr @SET_BIT, i64 5604074}
!92 = !{ptr @mark_insn, ptr @fprintf, i64 1}
!93 = !{ptr @mark_insn, ptr @find_call_stack_args, i64 1}
!94 = !{ptr @deletable_insn_p_1, ptr @volatile_refs_p, i64 3767957}
!95 = !{ptr @mark_nonreg_stores_1, ptr @mark_insn, i64 654468}
!96 = !{ptr @mark_nonreg_stores_2, ptr @mark_insn, i64 81708}
!97 = !{ptr @marked_insn_p, ptr @fancy_abort, i64 1}
!98 = !{ptr @VEC_rtx_heap_safe_push, ptr @VEC_rtx_heap_reserve, i64 671218}
!99 = !{ptr @VEC_rtx_heap_safe_push, ptr @VEC_rtx_base_quick_push, i64 671218}
!100 = !{ptr @VEC_rtx_heap_reserve, ptr @VEC_rtx_base_space, i64 671218}
!101 = !{ptr @VEC_rtx_heap_reserve, ptr @vec_heap_p_reserve, i64 462}
!102 = !{ptr @df_get_artificial_uses, ptr @df_scan_get_bb_info, i64 153687}
!103 = !{ptr @delete_corresponding_reg_eq_notes, ptr @find_reg_note, i64 1}
!104 = !{ptr @delete_corresponding_reg_eq_notes, ptr @remove_note, i64 1}
!105 = !{ptr @fast_dce, ptr @df_get_postorder, i64 307}
!106 = !{ptr @fast_dce, ptr @df_get_n_blocks, i64 307}
!107 = !{ptr @fast_dce, ptr @bitmap_obstack_alloc_stat, i64 921}
!108 = !{ptr @fast_dce, ptr @prescan_insns_for_dce, i64 308}
!109 = !{ptr @fast_dce, ptr @bitmap_set_bit, i64 2787959}
!110 = !{ptr @fast_dce, ptr @VEC_basic_block_base_index, i64 1393036}
!111 = !{ptr @fast_dce, ptr @bitmap_bit_p, i64 1392443}
!112 = !{ptr @fast_dce, ptr @bb_has_eh_pred, i64 1392423}
!113 = !{ptr @fast_dce, ptr @byte_dce_process_block, i64 1}
!114 = !{ptr @fast_dce, ptr @dce_process_block, i64 1392422}
!115 = !{ptr @fast_dce, ptr @ei_start_1, i64 1}
!116 = !{ptr @fast_dce, ptr @ei_cond, i64 21}
!117 = !{ptr @fast_dce, ptr @ei_next, i64 20}
!118 = !{ptr @fast_dce, ptr @df_clear_flags, i64 1}
!119 = !{ptr @fast_dce, ptr @delete_unmarked_insns, i64 308}
!120 = !{ptr @fast_dce, ptr @sbitmap_zero, i64 1}
!121 = !{ptr @fast_dce, ptr @bitmap_clear, i64 2}
!122 = !{ptr @fast_dce, ptr @df_analyze_problem, i64 1}
!123 = !{ptr @fast_dce, ptr @bitmap_obstack_free, i64 921}
!124 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 1398846}
!125 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 4009782}
!126 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 2610936}
!127 = !{ptr @dce_process_block, ptr @bitmap_obstack_alloc_stat, i64 1398846}
!128 = !{ptr @dce_process_block, ptr @df_lr_get_bb_info, i64 2797695}
!129 = !{ptr @dce_process_block, ptr @bitmap_clear, i64 1}
!130 = !{ptr @dce_process_block, ptr @ei_start_1, i64 1}
!131 = !{ptr @dce_process_block, ptr @ei_cond, i64 21}
!132 = !{ptr @dce_process_block, ptr @ei_next, i64 20}
!133 = !{ptr @dce_process_block, ptr @fprintf, i64 1}
!134 = !{ptr @dce_process_block, ptr @df_print_regset, i64 1}
!135 = !{ptr @dce_process_block, ptr @bitmap_copy, i64 1398847}
!136 = !{ptr @dce_process_block, ptr @df_simulate_initialize_backwards, i64 1398846}
!137 = !{ptr @dce_process_block, ptr @bitmap_bit_p, i64 54920381}
!138 = !{ptr @dce_process_block, ptr @mark_insn, i64 3122577}
!139 = !{ptr @dce_process_block, ptr @df_simulate_defs, i64 4902550}
!140 = !{ptr @dce_process_block, ptr @marked_insn_p, i64 4902550}
!141 = !{ptr @dce_process_block, ptr @df_simulate_uses, i64 4902477}
!142 = !{ptr @dce_process_block, ptr @df_simulate_finalize_backwards, i64 1398846}
!143 = !{ptr @dce_process_block, ptr @bitmap_equal_p, i64 1398846}
!144 = !{ptr @dce_process_block, ptr @bitmap_obstack_free, i64 1398846}
!145 = !{ptr @ei_cond, ptr @ei_end_p, i64 4009785}
!146 = !{ptr @ei_cond, ptr @ei_edge, i64 2610939}
!147 = !{ptr @ei_next, ptr @ei_container, i64 5221877}
!148 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 2610939}
!149 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!150 = !{ptr @ei_end_p, ptr @ei_container, i64 8019569}
!151 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 4009785}
!152 = !{ptr @ei_edge, ptr @ei_container, i64 5221877}
!153 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 2610939}
!154 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!155 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!156 = !{!"function_entry_count", i64 38}
!157 = !{!"dce.c:gate_ud_dce"}
!158 = !{!159, !159, i64 0}
!159 = !{!"int", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !{!"branch_weights", i32 1521, i32 79}
!163 = !{!"dce.c:rest_of_handle_ud_dce"}
!164 = !{!"branch_weights", i32 1, i32 155}
!165 = !{!"branch_weights", i32 155, i32 2684721}
!166 = distinct !{!166, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !{!169, !169, i64 0}
!169 = !{!"any pointer", !160, i64 0}
!170 = !{!"function_entry_count", i64 240}
!171 = !{!"branch_weights", i32 1, i32 241}
!172 = !{!"function_entry_count", i64 307}
!173 = !{!"dce.c:rest_of_handle_fast_dce"}
!174 = !{!"function_entry_count", i64 29}
!175 = !{!"branch_weights", i32 1, i32 30}
!176 = !{!"dce.c:gate_fast_dce"}
!177 = !{!"function_entry_count", i64 0}
!178 = !{!"dce.c:rest_of_handle_fast_byte_dce"}
!179 = !{!"function_entry_count", i64 345}
!180 = !{!"dce.c:init_dce"}
!181 = !{!"branch_weights", i32 241, i32 106}
!182 = !{!"branch_weights", i32 39, i32 68}
!183 = !{!"branch_weights", i32 346, i32 1}
!184 = !{!"branch_weights", i32 39, i32 308}
!185 = !{!"dce.c:prescan_insns_for_dce"}
!186 = !{!"branch_weights", i32 1, i32 106}
!187 = !{!188, !169, i64 8}
!188 = !{!"function", !169, i64 0, !169, i64 8, !169, i64 16, !169, i64 24, !169, i64 32, !169, i64 40, !169, i64 48, !169, i64 56, !169, i64 64, !169, i64 72, !169, i64 80, !169, i64 88, !169, i64 96, !159, i64 104, !159, i64 108, !159, i64 112, !159, i64 116, !159, i64 120, !159, i64 124, !169, i64 128, !159, i64 136, !159, i64 137, !159, i64 138, !159, i64 138, !159, i64 138, !159, i64 138, !159, i64 138, !159, i64 138, !159, i64 138, !159, i64 139, !159, i64 139, !159, i64 139, !159, i64 139, !159, i64 139, !159, i64 139, !159, i64 139}
!189 = !{!190, !169, i64 0}
!190 = !{!"control_flow_graph", !169, i64 0, !169, i64 8, !169, i64 16, !159, i64 24, !159, i64 28, !159, i64 32, !169, i64 40, !159, i64 48, !160, i64 52, !160, i64 60, !159, i64 68, !159, i64 72}
!191 = !{!192, !169, i64 56}
!192 = !{!"basic_block_def", !169, i64 0, !169, i64 8, !169, i64 16, !169, i64 24, !160, i64 32, !169, i64 48, !169, i64 56, !160, i64 64, !193, i64 72, !159, i64 80, !159, i64 84, !159, i64 88, !159, i64 92, !159, i64 96}
!193 = !{!"long", !160, i64 0}
!194 = !{!190, !169, i64 8}
!195 = !{!"branch_weights", i32 1, i32 345}
!196 = !{!160, !160, i64 0}
!197 = !{!198, !169, i64 8}
!198 = !{!"rtl_bb_info", !169, i64 0, !169, i64 8, !169, i64 16, !169, i64 24, !159, i64 32}
!199 = !{!"branch_weights", i32 1, i32 1552458}
!200 = !{!198, !169, i64 0}
!201 = !{!"branch_weights", i32 1552458, i32 8092487}
!202 = !{!"branch_weights", i32 -1841877135, i32 1088048669}
!203 = !{!"branch_weights", i32 3825946, i32 1780047}
!204 = !{!"branch_weights", i32 1780047, i32 1}
!205 = !{!"branch_weights", i32 2019046, i32 3586947}
!206 = !{!"branch_weights", i32 203, i32 8092285}
!207 = distinct !{!207, !167}
!208 = !{!"branch_weights", i32 1089268, i32 463191}
!209 = !{!"branch_weights", i32 345, i32 1552113}
!210 = distinct !{!210, !167}
!211 = !{!"dce.c:mark_artificial_uses"}
!212 = !{!192, !159, i64 80}
!213 = !{!"branch_weights", i32 1, i32 153687}
!214 = !{!"branch_weights", i32 1, i32 614596}
!215 = !{!216, !169, i64 0}
!216 = !{!"df_link", !169, i64 0, !169, i64 8}
!217 = !{!"branch_weights", i32 614559, i32 58}
!218 = !{!219, !169, i64 0}
!219 = !{!"df_insn_info", !169, i64 0, !169, i64 8, !169, i64 16, !169, i64 24, !169, i64 32, !159, i64 40}
!220 = !{!"branch_weights", i32 614596, i32 20}
!221 = distinct !{!221, !167}
!222 = !{!"branch_weights", i32 153687, i32 460910}
!223 = distinct !{!223, !167}
!224 = !{!"branch_weights", i32 155, i32 614597}
!225 = distinct !{!225, !167}
!226 = !{!"function_entry_count", i64 671256}
!227 = !{!"dce.c:VEC_rtx_base_length"}
!228 = !{!"branch_weights", i32 1, i32 671257}
!229 = !{!230, !159, i64 0}
!230 = !{!"VEC_rtx_base", !159, i64 0, !159, i64 4, !160, i64 8}
!231 = !{!"function_entry_count", i64 671218}
!232 = !{!"dce.c:VEC_rtx_base_pop"}
!233 = !{!"dce.c:mark_reg_dependencies"}
!234 = !{!"branch_weights", i32 1, i32 671219}
!235 = !{!236, !169, i64 248}
!236 = !{!"df", !160, i64 0, !160, i64 64, !169, i64 128, !237, i64 136, !237, i64 176, !169, i64 216, !169, i64 224, !169, i64 232, !159, i64 240, !159, i64 244, !169, i64 248, !159, i64 256, !159, i64 260, !169, i64 264, !169, i64 272, !169, i64 280, !169, i64 288, !169, i64 296, !169, i64 304, !169, i64 312, !169, i64 320, !169, i64 328, !169, i64 336, !159, i64 344, !159, i64 348, !169, i64 352, !159, i64 360, !159, i64 364, !160, i64 365, !160, i64 366}
!237 = !{!"df_ref_info", !169, i64 0, !169, i64 8, !169, i64 16, !159, i64 24, !159, i64 28, !159, i64 32, !159, i64 36}
!238 = !{!219, !169, i64 16}
!239 = !{!"branch_weights", i32 57677, i32 613542}
!240 = !{!"branch_weights", i32 613542, i32 1}
!241 = !{!"branch_weights", i32 1, i32 613541}
!242 = !{!"branch_weights", i32 150665, i32 520199}
!243 = !{!"branch_weights", i32 613541, i32 57322}
!244 = distinct !{!244, !167}
!245 = !{!"branch_weights", i32 613542, i32 0}
!246 = distinct !{!246, !167}
!247 = !{!"dce.c:VEC_rtx_heap_free"}
!248 = !{!"branch_weights", i32 1, i32 39}
!249 = !{!"dce.c:delete_unmarked_insns"}
!250 = !{!192, !169, i64 48}
!251 = !{!"branch_weights", i32 5605992, i32 1}
!252 = !{i32 0, i32 2}
!253 = !{!"branch_weights", i32 1917, i32 5604076}
!254 = !{!"branch_weights", i32 1, i32 1917}
!255 = !{!"branch_weights", i32 1917, i32 1}
!256 = distinct !{!256, !167}
!257 = distinct !{!257, !167}
!258 = !{!"branch_weights", i32 2141276995, i32 6206653}
!259 = !{!"dce.c:fini_dce"}
!260 = !{!261, !169, i64 0}
!261 = !{!"simple_bitmap_def", !169, i64 0, !159, i64 8, !159, i64 12, !160, i64 16}
!262 = !{!"function_entry_count", i64 5605991}
!263 = !{!"dce.c:deletable_insn_p"}
!264 = !{!"branch_weights", i32 3587321, i32 2018672}
!265 = !{!"branch_weights", i32 1, i32 3587321}
!266 = !{!"branch_weights", i32 3406256, i32 375, i32 1, i32 1, i32 180692}
!267 = !{!268, !159, i64 0}
!268 = !{!"rtvec_def", !159, i64 0, !160, i64 8}
!269 = !{!"branch_weights", i32 361706, i32 180692}
!270 = !{i8 0, i8 2}
!271 = !{!"branch_weights", i32 1, i32 361706}
!272 = distinct !{!272, !167}
!273 = !{!"function_entry_count", i64 3586946}
!274 = !{!"dce.c:mark_nonreg_stores"}
!275 = !{!"branch_weights", i32 455865, i32 3131083}
!276 = !{!"function_entry_count", i64 6285635}
!277 = !{!"dce.c:mark_insn"}
!278 = !{!"branch_weights", i32 5604076, i32 681561}
!279 = !{!"branch_weights", i32 671219, i32 4932858}
!280 = !{!"branch_weights", i32 5604076, i32 1}
!281 = !{!"branch_weights", i32 -1060813083, i32 1154}
!282 = !{!"dce.c:find_call_stack_args"}
!283 = !{!284, !169, i64 16}
!284 = !{!"mem_attrs", !169, i64 0, !169, i64 8, !169, i64 16, !159, i64 24, !159, i64 28, !160, i64 32}
!285 = distinct !{!285, !167}
!286 = distinct !{!286, !167}
!287 = distinct !{!287, !167}
!288 = !{}
!289 = distinct !{!289, !167}
!290 = distinct !{!290, !167}
!291 = distinct !{!291, !167}
!292 = distinct !{!292, !167}
!293 = distinct !{!293, !167}
!294 = !{!295, !169, i64 0}
!295 = !{!"bitmap_head_def", !169, i64 0, !169, i64 8, !159, i64 16, !169, i64 24}
!296 = distinct !{!296, !167}
!297 = !{!"dce.c:rhs_regno"}
!298 = !{!"function_entry_count", i64 3767960}
!299 = !{!"dce.c:deletable_insn_p_1"}
!300 = !{!"branch_weights", i32 3767961, i32 1, i32 1, i32 1}
!301 = !{!"function_entry_count", i64 3287352}
!302 = !{!"dce.c:mark_nonreg_stores_1"}
!303 = !{!"branch_weights", i32 155090, i32 3132264}
!304 = !{!"branch_weights", i32 2477796, i32 654469}
!305 = !{!"function_entry_count", i64 480608}
!306 = !{!"dce.c:mark_nonreg_stores_2"}
!307 = !{!"branch_weights", i32 24745, i32 455865}
!308 = !{!"branch_weights", i32 374157, i32 81709}
!309 = !{!"function_entry_count", i64 16824555}
!310 = !{!"dce.c:marked_insn_p"}
!311 = !{!"branch_weights", i32 1, i32 16824556}
!312 = !{!193, !193, i64 0}
!313 = !{!"dce.c:VEC_rtx_heap_safe_push"}
!314 = !{!"function_entry_count", i64 5604075}
!315 = !{!"dce.c:SET_BIT"}
!316 = !{!"dce.c:VEC_rtx_heap_reserve"}
!317 = !{!"branch_weights", i32 462, i32 670758}
!318 = !{!"dce.c:VEC_rtx_base_quick_push"}
!319 = !{!"dce.c:VEC_rtx_base_space"}
!320 = !{!"branch_weights", i32 39, i32 671181}
!321 = !{!230, !159, i64 4}
!322 = !{!"function_entry_count", i64 153687}
!323 = !{!"dce.c:df_get_artificial_uses"}
!324 = !{!325, !169, i64 8}
!325 = !{!"df_scan_bb_info", !169, i64 0, !169, i64 8}
!326 = !{!"dce.c:df_scan_get_bb_info"}
!327 = !{!328, !159, i64 16}
!328 = !{!"dataflow", !169, i64 0, !169, i64 8, !159, i64 16, !169, i64 24, !169, i64 32, !169, i64 40, !159, i64 48, !160, i64 52, !160, i64 53, !160, i64 54}
!329 = !{!"branch_weights", i32 153688, i32 1}
!330 = !{!328, !169, i64 8}
!331 = !{!"function_entry_count", i64 1916}
!332 = !{!"dce.c:delete_corresponding_reg_eq_notes"}
!333 = !{!219, !169, i64 8}
!334 = !{!"branch_weights", i32 1, i32 1916}
!335 = !{!236, !169, i64 232}
!336 = !{!337, !169, i64 0}
!337 = !{!"df_reg_info", !169, i64 0, !159, i64 8}
!338 = !{!"branch_weights", i32 1916, i32 1}
!339 = !{!"branch_weights", i32 1, i32 0}
!340 = distinct !{!340, !167}
!341 = distinct !{!341, !167}
!342 = !{!"dce.c:fast_dce"}
!343 = !{!236, !169, i64 272}
!344 = !{!236, !169, i64 280}
!345 = !{!"branch_weights", i32 307, i32 1}
!346 = !{!"branch_weights", i32 127, i32 1}
!347 = !{!"branch_weights", i32 307, i32 1399154}
!348 = distinct !{!348, !167}
!349 = !{!190, !169, i64 16}
!350 = !{!"branch_weights", i32 615, i32 1398847}
!351 = !{!"branch_weights", i32 1398847, i32 1}
!352 = !{i64 0, i64 4, !158, i64 8, i64 8, !168}
!353 = !{i64 0, i64 8, !168}
!354 = !{!355, !169, i64 0}
!355 = !{!"edge_def", !169, i64 0, !169, i64 8, !160, i64 16, !169, i64 24, !169, i64 32, !159, i64 40, !159, i64 44, !159, i64 48, !159, i64 52, !193, i64 56}
!356 = distinct !{!356, !167}
!357 = distinct !{!357, !167}
!358 = !{!"branch_weights", i32 2140511226, i32 6972422}
!359 = !{!"branch_weights", i32 39169, i32 127}
!360 = !{!"function_entry_count", i64 1399460}
!361 = !{!"dce.c:VEC_basic_block_base_index"}
!362 = !{!"dce.c:byte_dce_process_block"}
!363 = !{!328, !169, i64 0}
!364 = !{!365, !169, i64 64}
!365 = !{!"df_problem", !159, i64 0, !159, i64 4, !169, i64 8, !169, i64 16, !169, i64 24, !169, i64 32, !169, i64 40, !169, i64 48, !169, i64 56, !169, i64 64, !169, i64 72, !169, i64 80, !169, i64 88, !169, i64 96, !169, i64 104, !169, i64 112, !169, i64 120, !169, i64 128, !169, i64 136, !169, i64 144, !159, i64 152, !160, i64 156}
!366 = !{!367, !169, i64 24}
!367 = !{!"df_byte_lr_bb_info", !169, i64 0, !169, i64 8, !169, i64 16, !169, i64 24}
!368 = distinct !{!368, !167}
!369 = distinct !{!369, !167}
!370 = distinct !{!370, !167}
!371 = distinct !{!371, !167}
!372 = !{!367, !169, i64 16}
!373 = !{!"function_entry_count", i64 1398846}
!374 = !{!"dce.c:bb_has_eh_pred"}
!375 = !{!"branch_weights", i32 1, i32 1398846}
!376 = !{!355, !159, i64 48}
!377 = !{!"branch_weights", i32 2610940, i32 1}
!378 = !{!"branch_weights", i32 1398846, i32 1212094}
!379 = distinct !{!379, !167}
!380 = !{!"dce.c:dce_process_block"}
!381 = !{!382, !169, i64 24}
!382 = !{!"df_lr_bb_info", !169, i64 0, !169, i64 8, !169, i64 16, !169, i64 24}
!383 = distinct !{!383, !167}
!384 = !{!"branch_weights", i32 1, i32 164}
!385 = !{!"branch_weights", i32 1398847, i32 7213224}
!386 = !{!"branch_weights", i32 -1064931838, i32 1493113551}
!387 = !{!"branch_weights", i32 1, i32 1922770}
!388 = !{!"branch_weights", i32 1922770, i32 26053901}
!389 = distinct !{!389, !167}
!390 = !{!"branch_weights", i32 24966512, i32 3010160}
!391 = !{!"branch_weights", i32 24966512, i32 1}
!392 = !{!"branch_weights", i32 73, i32 4932858}
!393 = !{!"branch_weights", i32 164, i32 8611742}
!394 = distinct !{!394, !167}
!395 = !{!382, !169, i64 16}
!396 = !{!"branch_weights", i32 1, i32 1398847}
!397 = !{!"dce.c:ei_start_1"}
!398 = !{!"function_entry_count", i64 4009785}
!399 = !{!"dce.c:ei_cond"}
!400 = !{!"branch_weights", i32 2610940, i32 1398847}
!401 = !{!"function_entry_count", i64 2610939}
!402 = !{!"dce.c:ei_next"}
!403 = !{!"branch_weights", i32 1, i32 2610940}
!404 = !{!405, !159, i64 0}
!405 = !{!"", !159, i64 0, !169, i64 8}
!406 = !{!"dce.c:df_byte_lr_get_bb_info"}
!407 = !{!"function_entry_count", i64 2797692}
!408 = !{!"dce.c:df_lr_get_bb_info"}
!409 = !{!"branch_weights", i32 2797693, i32 1}
!410 = !{!"dce.c:ei_end_p"}
!411 = !{!"branch_weights", i32 1, i32 4009786}
!412 = !{!"dce.c:ei_edge"}
!413 = !{!"function_entry_count", i64 6620724}
!414 = !{!"dce.c:VEC_edge_base_length"}
!415 = !{!"branch_weights", i32 1, i32 6620725}
!416 = !{!417, !159, i64 0}
!417 = !{!"VEC_edge_base", !159, i64 0, !159, i64 4, !160, i64 8}
!418 = !{!"function_entry_count", i64 18463326}
!419 = !{!"dce.c:ei_container"}
!420 = !{!"branch_weights", i32 1, i32 18463327}
!421 = !{!"dce.c:VEC_edge_base_index"}
