; ModuleID = 'sel-sched-dump.c'
source_filename = "sel-sched-dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.vinsn_def = type { ptr, %struct.idata_def, i32, i32, i32, i32, i8 }
%struct.idata_def = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct._expr = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8 }
%struct._sel_insn_data = type { %struct._expr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.deps, ptr, i32, i32, i32, i8 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.VEC_sel_insn_data_def_base = type { i32, i32, [1 x %struct._sel_insn_data] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct._list_iterator = type { ptr, i8, i8 }
%struct._list_node = type { ptr, %union.anon }
%union.anon = type { %struct._fence }
%struct._fence = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i8 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.sel_region_bb_info_def = type { ptr, ptr, i32 }
%struct.sel_global_bb_info_def = type { ptr, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_sel_region_bb_info_def_base = type { i32, i32, [1 x %struct.sel_region_bb_info_def] }
%struct.VEC_sel_global_bb_info_def_base = type { i32, i32, [1 x %struct.sel_global_bb_info_def] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@sched_dump_to_dot_p = dso_local local_unnamed_addr global i8 0, align 1
@sched_dump = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bb:%d;\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@saved_sched_dump = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"sel-sched-dump.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"type:%s;\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"count:%d;\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"cost:%d;\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"spec:%d;\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"use:%d;\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"prio:%d;\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"times:%d;\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ds:%d;\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"orig_bb:%d;\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"target:%d;\00", align 1
@s_i_d = external local_unnamed_addr global ptr, align 8
@sched_luids = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c"uid:%d;\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"seqno:%d;\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"cycle:%d;\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.31 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.32 = private unnamed_addr constant [15 x i8] c"[to: %d; ptr: \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"NULL \00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%s{ \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@sel_print_insn.buf = internal global [80 x i8] zeroinitializer, align 16
@.str.37 = private unnamed_addr constant [7 x i8] c"%s %4d\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"+ %4d\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"  %4d\00", align 1
@sel_prepare_string_for_dot_label.specials_from = internal global [7 x [2 x i8]] [[2 x i8] c"<\00", [2 x i8] c">\00", [2 x i8] c"{\00", [2 x i8] c"|\00", [2 x i8] c"}\00", [2 x i8] c"\22\00", [2 x i8] c"\0A\00"], align 1
@sel_prepare_string_for_dot_label.specials_to = internal global [7 x [3 x i8]] [[3 x i8] c"\\<\00", [3 x i8] c"\\>\00", [3 x i8] c"\\{\00", [3 x i8] c"\\|\00", [3 x i8] c"\\}\00", [3 x i8] c"\\\22\00", [3 x i8] c"\\l\00"], align 16
@sel_dump_cfg_p = internal unnamed_addr global i1 false, align 1
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sel_dump_cfg_fileno = internal unnamed_addr global i32 -1, align 4
@sel_debug_cfg_fileno = internal unnamed_addr global i32 -1, align 4
@.str.45 = private unnamed_addr constant [14 x i8] c"sel-debug-cfg\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"%s/%s%05d-%s.dot\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Can't create file: %s.\0A\00", align 1
@.str.50 = private unnamed_addr constant [66 x i8] c"digraph G {\0A\09ratio = 2.25;\0A\09node [shape = record, fontsize = 9];\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"function [label = \22%s\22];\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@block_to_bb = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [16 x i8] c"color = green, \00", align 1
@fences = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [14 x i8] c"color = red, \00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"color = yellow, \00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"color = blue, \00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"style = dashed, \00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"\09bb%d [%s%slabel = \22{Basic block %d\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c", loop %d\00", align 1
@sel_region_bb_info = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [3 x i8] c"\\l\00", align 1
@global_level = external local_unnamed_addr global i32, align 4
@.str.61 = private unnamed_addr constant [20 x i8] c"AV_SET needs update\00", align 1
@sel_global_bb_info = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [20 x i8] c"LV_SET needs update\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"}\22];\0A\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c", color = red\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c", color = blue\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"\09bb%d -> bb%d [weight = %d%s];\0A\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_print_rtl(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %3 = tail call i32 @print_rtl_single(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_rtx_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca [2048 x i8], align 16
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %1, i32 14
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = alloca [3 x i8], align 16
  store i16 40, ptr %10, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10) #19
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %15 = tail call i32 @fputc(i32 40, ptr %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = and i32 %6, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %24) #19
  %26 = shl nsw i32 %25, 1
  %27 = or disjoint i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  %30 = load i32, ptr %23, align 8, !tbaa !40
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %29, i64 noundef %28, ptr noundef nonnull @.str.2, i32 noundef %30) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %29) #19
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %33 = call i32 @fputs(ptr nonnull %29, ptr %32)
  br label %39

34:                                               ; preds = %19
  %35 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !40
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef %37) #19
  br label %39

39:                                               ; preds = %22, %34, %16
  %40 = and i32 %6, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #20
  call void @print_insn(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0) #18
  %43 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #19
  %47 = shl nsw i32 %46, 1
  %48 = or disjoint i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = alloca i8, i64 %49, align 16
  %51 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %50, i64 noundef %49, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %50) #19
  %52 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %53 = call i32 @fputs(ptr nonnull %50, ptr %52)
  br label %57

54:                                               ; preds = %42
  %55 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #19
  br label %57

57:                                               ; preds = %54, %45
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #20
  br label %58

58:                                               ; preds = %57, %39
  %59 = and i32 %6, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !40
  %64 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %61
  %67 = icmp eq ptr %63, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !41
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ -1, %66 ]
  %73 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %72) #19
  %74 = shl nsw i32 %73, 1
  %75 = or disjoint i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = alloca i8, i64 %76, align 16
  br i1 %67, label %81, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !41
  br label %81

81:                                               ; preds = %71, %78
  %82 = phi i32 [ %80, %78 ], [ -1, %71 ]
  %83 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %77, i64 noundef %76, ptr noundef nonnull @.str.4, i32 noundef %82) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %77) #19
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %85 = call i32 @fputs(ptr nonnull %77, ptr %84)
  br label %95

86:                                               ; preds = %61
  %87 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %88 = icmp eq ptr %63, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !41
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi i32 [ %91, %89 ], [ -1, %86 ]
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.4, i32 noundef %93) #19
  br label %95

95:                                               ; preds = %81, %92, %58
  %96 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = alloca [3 x i8], align 16
  store i16 41, ptr %99, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %99) #19
  %100 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %101 = call i32 @fputs(ptr nonnull %99, ptr %100)
  br label %105

102:                                              ; preds = %95
  %103 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %104 = call i32 @fputc(i32 41, ptr %103)
  br label %105

105:                                              ; preds = %102, %98
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sel_prepare_string_for_dot_label(ptr noundef %0) local_unnamed_addr #4 !prof !35 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %6, %2 ]
  %4 = getelementptr inbounds [7 x [2 x i8]], ptr @sel_prepare_string_for_dot_label.specials_from, i64 0, i64 %3
  %5 = getelementptr inbounds [7 x [3 x i8]], ptr @sel_prepare_string_for_dot_label.specials_to, i64 0, i64 %3
  tail call fastcc void @replace_str_in_buf(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %6 = add nuw nsw i64 %3, 1
  %7 = icmp eq i64 %6, 7
  br i1 %7, label %8, label %2, !llvm.loop !45

8:                                                ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @print_insn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef 4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_insn_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef 14) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switch_dump(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !47 {
  %2 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 77, ptr noundef nonnull @.str.8) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  store ptr %6, ptr @saved_sched_dump, align 8, !tbaa !36
  store ptr %0, ptr @sched_dump, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @restore_dump() unnamed_addr #5 !prof !35 !PGOFuncName !48 {
  %1 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !36
  store ptr %1, ptr @sched_dump, align 8, !tbaa !36
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_vinsn_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 30
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = alloca [3 x i8], align 16
  store i16 40, ptr %9, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9) #19
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %14 = tail call i32 @fputc(i32 40, ptr %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = and i32 %5, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !49
  %20 = or disjoint i32 %3, 4
  call void @dump_insn_rtx_1(ptr noundef %19, i32 noundef %20) #19
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !36
  %33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %32) #19
  %34 = shl nsw i32 %33, 1
  %35 = or disjoint i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  %38 = load i32, ptr %28, align 8, !tbaa !52
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %37, i64 noundef %36, ptr noundef nonnull @.str.9, ptr noundef %41) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %37) #19
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %44 = call i32 @fputs(ptr nonnull %37, ptr %43)
  br label %53

45:                                               ; preds = %24
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %47 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !52
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !36
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.9, ptr noundef %51) #19
  br label %53

53:                                               ; preds = %27, %45, %21
  %54 = and i32 %5, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !53
  %62 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %61) #19
  %63 = shl nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = alloca i8, i64 %65, align 16
  %67 = load i32, ptr %60, align 8, !tbaa !53
  %68 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %66, i64 noundef %65, ptr noundef nonnull @.str.10, i32 noundef %67) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %66) #19
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %70 = call i32 @fputs(ptr nonnull %66, ptr %69)
  br label %76

71:                                               ; preds = %56
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %73 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !53
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.10, i32 noundef %74) #19
  br label %76

76:                                               ; preds = %59, %71, %53
  %77 = and i32 %5, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !54
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %98, label %83

83:                                               ; preds = %79
  %84 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %81) #19
  %88 = shl nsw i32 %87, 1
  %89 = or disjoint i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = alloca i8, i64 %90, align 16
  %92 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %91, i64 noundef %90, ptr noundef nonnull @.str.11, i32 noundef %81) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %91) #19
  %93 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %94 = call i32 @fputs(ptr nonnull %91, ptr %93)
  br label %98

95:                                               ; preds = %83
  %96 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.11, i32 noundef %81) #19
  br label %98

98:                                               ; preds = %79, %95, %86, %76
  %99 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = alloca [3 x i8], align 16
  store i16 41, ptr %102, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %102) #19
  %103 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %104 = call i32 @fputs(ptr nonnull %102, ptr %103)
  br label %108

105:                                              ; preds = %98
  %106 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %107 = call i32 @fputc(i32 41, ptr %106)
  br label %108

108:                                              ; preds = %105, %101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_vinsn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  tail call void @dump_vinsn_1(ptr noundef %0, i32 noundef 14) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_vinsn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_vinsn_1(ptr noundef %0, i32 noundef 30) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_expr_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 254
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = alloca [3 x i8], align 16
  store i16 91, ptr %9, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9) #19
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %14 = tail call i32 @fputc(i32 91, ptr %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = and i32 %5, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !55
  %20 = or disjoint i32 %3, 14
  call void @dump_vinsn_1(ptr noundef %19, i32 noundef %20) #19
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %26) #19
  %33 = shl nsw i32 %32, 1
  %34 = or disjoint i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  %37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %36, i64 noundef %35, ptr noundef nonnull @.str.13, i32 noundef %26) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %36) #19
  %38 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %39 = call i32 @fputs(ptr nonnull %36, ptr %38)
  br label %43

40:                                               ; preds = %28
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.13, i32 noundef %26) #19
  br label %43

43:                                               ; preds = %24, %40, %31, %21
  %44 = and i32 %5, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !58
  %49 = icmp eq i32 %48, 10000
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %48) #19
  %55 = shl nsw i32 %54, 1
  %56 = or disjoint i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = alloca i8, i64 %57, align 16
  %59 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %58, i64 noundef %57, ptr noundef nonnull @.str.14, i32 noundef %48) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %58) #19
  %60 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %61 = call i32 @fputs(ptr nonnull %58, ptr %60)
  br label %65

62:                                               ; preds = %50
  %63 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.14, i32 noundef %48) #19
  br label %65

65:                                               ; preds = %46, %62, %53, %43
  %66 = and i32 %5, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %65
  %69 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !59
  %74 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %73) #19
  %75 = shl nsw i32 %74, 1
  %76 = or disjoint i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = alloca i8, i64 %77, align 16
  %79 = load i32, ptr %72, align 8, !tbaa !59
  %80 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %78, i64 noundef %77, ptr noundef nonnull @.str.15, i32 noundef %79) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %78) #19
  %81 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %82 = call i32 @fputs(ptr nonnull %78, ptr %81)
  br label %88

83:                                               ; preds = %68
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %85 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !59
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.15, i32 noundef %86) #19
  br label %88

88:                                               ; preds = %71, %83, %65
  %89 = and i32 %5, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !60
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %91
  %96 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.16, i32 noundef %93) #19
  %100 = shl nsw i32 %99, 1
  %101 = or disjoint i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = alloca i8, i64 %102, align 16
  %104 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %103, i64 noundef %102, ptr noundef nonnull @.str.16, i32 noundef %93) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %103) #19
  %105 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %106 = call i32 @fputs(ptr nonnull %103, ptr %105)
  br label %110

107:                                              ; preds = %95
  %108 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.16, i32 noundef %93) #19
  br label %110

110:                                              ; preds = %91, %107, %98, %88
  %111 = and i32 %5, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !61
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %113
  %118 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %115) #19
  %122 = shl nsw i32 %121, 1
  %123 = or disjoint i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = alloca i8, i64 %124, align 16
  %126 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %125, i64 noundef %124, ptr noundef nonnull @.str.17, i32 noundef %115) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %125) #19
  %127 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %128 = call i32 @fputs(ptr nonnull %125, ptr %127)
  br label %132

129:                                              ; preds = %117
  %130 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.17, i32 noundef %115) #19
  br label %132

132:                                              ; preds = %113, %129, %120, %110
  %133 = and i32 %5, 64
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  %137 = load i32, ptr %136, align 4, !tbaa !62
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %135
  %140 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %137) #19
  %144 = shl nsw i32 %143, 1
  %145 = or disjoint i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = alloca i8, i64 %146, align 16
  %148 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %147, i64 noundef %146, ptr noundef nonnull @.str.18, i32 noundef %137) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %147) #19
  %149 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %150 = call i32 @fputs(ptr nonnull %147, ptr %149)
  br label %154

151:                                              ; preds = %139
  %152 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.18, i32 noundef %137) #19
  br label %154

154:                                              ; preds = %135, %151, %142, %132
  %155 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %156 = load i8, ptr %155, align 8, !tbaa !63
  %157 = sext i8 %156 to i32
  %158 = icmp slt i8 %156, 1
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159
  %163 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %157) #19
  %164 = shl nsw i32 %163, 1
  %165 = or disjoint i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = alloca i8, i64 %166, align 16
  %168 = load i8, ptr %155, align 8, !tbaa !63
  %169 = sext i8 %168 to i32
  %170 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %167, i64 noundef %166, ptr noundef nonnull @.str.19, i32 noundef %169) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %167) #19
  %171 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %172 = call i32 @fputs(ptr nonnull %167, ptr %171)
  br label %176

173:                                              ; preds = %159
  %174 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.19, i32 noundef %157) #19
  br label %176

176:                                              ; preds = %154, %173, %162
  %177 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = alloca [3 x i8], align 16
  store i16 93, ptr %180, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %180) #19
  %181 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %182 = call i32 @fputs(ptr nonnull %180, ptr %181)
  br label %186

183:                                              ; preds = %176
  %184 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %185 = call i32 @fputc(i32 93, ptr %184)
  br label %186

186:                                              ; preds = %183, %179
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  tail call void @dump_expr_1(ptr noundef %0, i32 noundef 254) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_expr_1(ptr noundef %0, i32 noundef 254) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 126
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %10 = tail call i32 @fputc(i32 40, ptr %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = and i32 %5, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !40
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #19
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %19) #19
  %21 = or disjoint i32 %3, 254
  tail call void @dump_expr_1(ptr noundef nonnull %20, i32 noundef %21) #19
  %22 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = alloca [3 x i8], align 16
  store i16 59, ptr %25, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %25) #19
  %26 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %27 = call i32 @fputs(ptr nonnull %25, ptr %26)
  br label %68

28:                                               ; preds = %14
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %30 = tail call i32 @fputc(i32 59, ptr %29)
  br label %68

31:                                               ; preds = %11
  %32 = and i32 %5, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = or disjoint i32 %3, 4
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef %35) #19
  %36 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = alloca [3 x i8], align 16
  store i16 59, ptr %39, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %39) #19
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %41 = call i32 @fputs(ptr nonnull %39, ptr %40)
  br label %68

42:                                               ; preds = %34
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %44 = tail call i32 @fputc(i32 59, ptr %43)
  br label %68

45:                                               ; preds = %31
  %46 = and i32 %5, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !40
  %54 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %53) #19
  %55 = shl nsw i32 %54, 1
  %56 = or disjoint i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = alloca i8, i64 %57, align 16
  %59 = load i32, ptr %52, align 8, !tbaa !40
  %60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %58, i64 noundef %57, ptr noundef nonnull @.str.22, i32 noundef %59) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %58) #19
  %61 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %62 = call i32 @fputs(ptr nonnull %58, ptr %61)
  br label %68

63:                                               ; preds = %48
  %64 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !40
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.22, i32 noundef %66) #19
  br label %68

68:                                               ; preds = %42, %38, %51, %63, %45, %24, %28
  %69 = and i32 %5, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %109, label %71

71:                                               ; preds = %68
  %72 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @s_i_d, align 8
  %76 = load ptr, ptr @sched_luids, align 8
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !40
  %79 = call fastcc i32 @VEC_int_base_index(ptr noundef %76, i32 noundef %78) #19
  %80 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %75, i32 noundef %79) #19
  %81 = getelementptr inbounds %struct._sel_insn_data, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !64
  %83 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %82) #19
  %84 = shl nsw i32 %83, 1
  %85 = or disjoint i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = alloca i8, i64 %86, align 16
  %88 = load ptr, ptr @s_i_d, align 8
  %89 = load ptr, ptr @sched_luids, align 8
  %90 = load i32, ptr %77, align 8, !tbaa !40
  %91 = call fastcc i32 @VEC_int_base_index(ptr noundef %89, i32 noundef %90) #19
  %92 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %88, i32 noundef %91) #19
  %93 = getelementptr inbounds %struct._sel_insn_data, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !64
  %95 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %87, i64 noundef %86, ptr noundef nonnull @.str.23, i32 noundef %94) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %87) #19
  %96 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %97 = call i32 @fputs(ptr nonnull %87, ptr %96)
  br label %109

98:                                               ; preds = %71
  %99 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %100 = load ptr, ptr @s_i_d, align 8
  %101 = load ptr, ptr @sched_luids, align 8
  %102 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !40
  %104 = call fastcc i32 @VEC_int_base_index(ptr noundef %101, i32 noundef %103) #19
  %105 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %100, i32 noundef %104) #19
  %106 = getelementptr inbounds %struct._sel_insn_data, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !64
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.23, i32 noundef %107) #19
  br label %109

109:                                              ; preds = %74, %98, %68
  %110 = and i32 %5, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %137, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr @s_i_d, align 8
  %114 = load ptr, ptr @sched_luids, align 8
  %115 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !40
  %117 = call fastcc i32 @VEC_int_base_index(ptr noundef %114, i32 noundef %116) #19
  %118 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %113, i32 noundef %117) #19
  %119 = getelementptr inbounds %struct._sel_insn_data, ptr %118, i64 0, i32 10
  %120 = load i32, ptr %119, align 8, !tbaa !68
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %112
  %123 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %120) #19
  %127 = shl nsw i32 %126, 1
  %128 = or disjoint i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = alloca i8, i64 %129, align 16
  %131 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %130, i64 noundef %129, ptr noundef nonnull @.str.24, i32 noundef %120) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %130) #19
  %132 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %133 = call i32 @fputs(ptr nonnull %130, ptr %132)
  br label %137

134:                                              ; preds = %122
  %135 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.24, i32 noundef %120) #19
  br label %137

137:                                              ; preds = %112, %134, %125, %109
  %138 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %142 = call i32 @fputc(i32 41, ptr %141)
  br label %143

143:                                              ; preds = %140, %137
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !35 !PGOFuncName !69 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !70 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !71
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  tail call void @dump_insn_1(ptr noundef %0, i32 noundef 10) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_insn(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_insn_1(ptr noundef %0, i32 noundef 126) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_av_set(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %9 = tail call i32 @fputc(i32 123, ptr %8)
  br label %10

10:                                               ; preds = %7, %1
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %11 = load ptr, ptr %3, align 8, !tbaa !72
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %12, ptr noundef nonnull %4) #19, !range !74
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10, %26
  %16 = load ptr, ptr %4, align 8, !tbaa !36
  call void @dump_expr(ptr noundef %16) #19
  %17 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %21 = call i32 @fputc(i32 32, ptr %20)
  br label %26

22:                                               ; preds = %15
  %23 = alloca [3 x i8], align 16
  store i16 10, ptr %23, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %23) #19
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %25 = call i32 @fputs(ptr nonnull %23, ptr %24)
  br label %26

26:                                               ; preds = %19, %22
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #19
  %27 = load ptr, ptr %3, align 8, !tbaa !72
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %28, ptr noundef nonnull %4) #19, !range !74
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %15, !llvm.loop !75

31:                                               ; preds = %26, %10
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %36 = call i32 @fputc(i32 125, ptr %35)
  br label %37

37:                                               ; preds = %34, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_list_iter_start(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !76 {
  store ptr %1, ptr %0, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 1, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_expr(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 !prof !35 !PGOFuncName !79 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !36
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_list_iter_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !35 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !78
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !72
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  store ptr %7, ptr %0, align 8, !tbaa !72
  br label %9

8:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !78
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_lv_set(ptr noundef readonly %0) local_unnamed_addr #10 !prof !35 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = alloca [3 x i8], align 16
  store i16 123, ptr %7, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %7) #19
  %8 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %9 = call i32 @fputs(ptr nonnull %7, ptr %8)
  br label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %12 = tail call i32 @fputc(i32 123, ptr %11)
  br label %13

13:                                               ; preds = %6, %10
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = alloca [7 x i8], align 16
  store i32 7104878, ptr %19, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %19) #19
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %21 = call i32 @fputs(ptr nonnull %19, ptr %20)
  br label %93

22:                                               ; preds = %15
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %24 = call i64 @fwrite(ptr nonnull @.str.28, i64 3, i64 1, ptr %23)
  br label %93

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !74
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  br label %30

30:                                               ; preds = %28, %87
  %31 = phi i8 [ %88, %87 ], [ %29, %28 ]
  %32 = phi i32 [ %89, %87 ], [ 0, %28 ]
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 4, !tbaa !71
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %35) #19
  %37 = shl nsw i32 %36, 1
  %38 = or disjoint i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  %41 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %40, i64 noundef %39, ptr noundef nonnull @.str.29, i32 noundef %35) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %40) #19
  %42 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %43 = call i32 @fputs(ptr nonnull %40, ptr %42)
  br label %48

44:                                               ; preds = %30
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %46 = load i32, ptr %2, align 4, !tbaa !71
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.29, i32 noundef %46) #19
  br label %48

48:                                               ; preds = %44, %34
  %49 = phi i32 [ %46, %44 ], [ %35, %34 ]
  %50 = icmp ult i32 %49, 53
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = zext nneg i32 %49 to i64
  %56 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !36
  %58 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %57) #19
  %59 = shl nsw i32 %58, 1
  %60 = or disjoint i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = alloca i8, i64 %61, align 16
  %63 = load ptr, ptr %56, align 8, !tbaa !36
  %64 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %62, i64 noundef %61, ptr noundef nonnull @.str.30, ptr noundef %63) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %62) #19
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %66 = call i32 @fputs(ptr nonnull %62, ptr %65)
  br label %73

67:                                               ; preds = %51
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %69 = zext nneg i32 %49 to i64
  %70 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !36
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.30, ptr noundef %71) #19
  br label %73

73:                                               ; preds = %67, %54
  %74 = add nsw i32 %32, 1
  br label %75

75:                                               ; preds = %73, %48
  %76 = phi i32 [ %74, %73 ], [ %32, %48 ]
  %77 = add nsw i32 %76, 1
  %78 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %79 = icmp ne i8 %78, 0
  %80 = icmp eq i32 %77, 12
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = alloca [3 x i8], align 16
  store i16 10, ptr %83, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %83) #19
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %85 = call i32 @fputs(ptr nonnull %83, ptr %84)
  %86 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  br label %87

87:                                               ; preds = %75, %82
  %88 = phi i8 [ %86, %82 ], [ %78, %75 ]
  %89 = phi i32 [ 0, %82 ], [ %77, %75 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %90 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !74
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %30, !llvm.loop !81

92:                                               ; preds = %87, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %93

93:                                               ; preds = %92, %18, %22
  %94 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %97, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %97) #19
  %98 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %99 = call i32 @fputs(ptr nonnull %97, ptr %98)
  br label %103

100:                                              ; preds = %93
  %101 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %102 = call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %101)
  br label %103

103:                                              ; preds = %96, %100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !35 !PGOFuncName !82 {
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  store ptr %4, ptr %0, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !86
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !84
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !91
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !71
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !71
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !93

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !71
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !71
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !89
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !84
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !89
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !90
  store i64 %35, ptr %3, align 8, !tbaa !91
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !71
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !71
  %40 = load i32, ptr %23, align 8, !tbaa !89
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !89
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !94

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !95
  store ptr %44, ptr %0, align 8, !tbaa !84
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !87
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !71
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !91
  store i32 %16, ptr %1, align 4, !tbaa !71
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !35 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !91
  %6 = load i32, ptr %1, align 4, !tbaa !71
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_blist(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1, %41
  %4 = phi ptr [ %42, %41 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %11) #19
  %13 = shl nsw i32 %12, 1
  %14 = or disjoint i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  %17 = load ptr, ptr %5, align 8, !tbaa !97
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !40
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %16, i64 noundef %15, ptr noundef nonnull @.str.32, i32 noundef %19) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %16) #19
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %22 = call i32 @fputs(ptr nonnull %16, ptr %21)
  br label %29

23:                                               ; preds = %3
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %25 = load ptr, ptr %5, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !40
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.32, i32 noundef %27) #19
  br label %29

29:                                               ; preds = %23, %8
  %30 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !99
  call fastcc void @dump_ilist(ptr noundef %31) #19
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %35, ptr noundef nonnull align 1 dereferenceable(3) @.str.33, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #19
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %37 = call i32 @fputs(ptr nonnull %35, ptr %36)
  br label %41

38:                                               ; preds = %29
  %39 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %40 = call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load ptr, ptr %4, align 8, !tbaa !100
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %3, !llvm.loop !102

44:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_ilist(ptr noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !103 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @dump_insn(ptr noundef %6) #19
  %7 = load ptr, ptr %4, align 8, !tbaa !100
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !llvm.loop !104

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_flist(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %16
  %4 = phi ptr [ %17, %16 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  call void @dump_insn_1(ptr noundef %6, i32 noundef 84) #19
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = alloca [3 x i8], align 16
  store i16 32, ptr %10, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10) #19
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %15 = call i32 @fputc(i32 32, ptr %14)
  br label %16

16:                                               ; preds = %9, %13
  %17 = load ptr, ptr %4, align 8, !tbaa !100
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !105

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_vector(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #19, !range !106
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  call void @dump_insn(ptr noundef nonnull %7) #19
  br label %20

10:                                               ; preds = %5
  %11 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = alloca [11 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %14, ptr noundef nonnull align 1 dereferenceable(6) @.str.34, i64 6, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %14) #19
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %16 = call i32 @fputs(ptr nonnull %14, ptr %15)
  br label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %19 = call i64 @fwrite(ptr nonnull @.str.34, i64 5, i64 1, ptr %18)
  br label %20

20:                                               ; preds = %9, %17, %13
  %21 = add nuw nsw i32 %6, 1
  %22 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %2) #19, !range !106
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %5, !llvm.loop !107

24:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !35 !PGOFuncName !108 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !109
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !36
  ret i32 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_hard_reg_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !35 {
  %3 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  tail call fastcc void @print_hard_reg_set(ptr noundef %3, ptr noundef %0, i64 noundef %1) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_hard_reg_set(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 !prof !35 !PGOFuncName !111 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %1) #19
  br label %5

5:                                                ; preds = %3, %13
  %6 = phi i64 [ 0, %3 ], [ %14, %13 ]
  %7 = shl nuw nsw i64 1, %6
  %8 = and i64 %7, %2
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = trunc i64 %6 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %11) #19
  br label %13

13:                                               ; preds = %5, %10
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, 53
  br i1 %15, label %16, label %5, !llvm.loop !112

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @sel_print_insn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !35 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @sched_luids, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %6, i32 noundef %8) #19
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 16711680
  %14 = icmp eq i32 %13, 1179648
  %15 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef nonnull %3, i32 noundef %9) #19
  %16 = getelementptr inbounds %struct._expr, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !113
  %18 = icmp sgt i32 %17, 0
  br i1 %14, label %19, label %22

19:                                               ; preds = %11
  %20 = select i1 %18, ptr @.str.38, ptr @.str.39
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef nonnull %20, i32 noundef %8) #19
  br label %35

22:                                               ; preds = %11
  %23 = select i1 %18, ptr @.str.40, ptr @.str.41
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef nonnull %23, i32 noundef %8) #19
  br label %35

25:                                               ; preds = %5, %2
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 16711680
  %28 = icmp eq i32 %27, 1179648
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !40
  br i1 %28, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %30) #19
  br label %35

33:                                               ; preds = %25
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %30) #19
  br label %35

35:                                               ; preds = %31, %33, %19, %22
  ret ptr @sel_print_insn.buf
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @replace_str_in_buf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !prof !35 !PGOFuncName !114 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = trunc i64 %4 to i32
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %7 = trunc i64 %6 to i32
  %8 = sub i32 %7, %5
  %9 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %81, label %11

11:                                               ; preds = %3
  %12 = ptrtoint ptr %0 to i64
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %14 = trunc i64 %13 to i32
  %15 = shl i64 %4, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp sgt i32 %8, 0
  %18 = icmp sgt i32 %7, 0
  %19 = shl i64 %6, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %8 to i64
  %22 = trunc i64 %12 to i32
  %23 = add i32 %14, %22
  %24 = zext i32 %8 to i64
  %25 = shl i64 %13, 32
  %26 = ashr exact i64 %25, 32
  %27 = and i64 %6, 4294967295
  br label %28

28:                                               ; preds = %11, %75
  %29 = phi i64 [ %26, %11 ], [ %77, %75 ]
  %30 = phi i32 [ %23, %11 ], [ %80, %75 ]
  %31 = phi ptr [ %9, %11 ], [ %78, %75 ]
  %32 = ptrtoint ptr %31 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %16
  %34 = getelementptr inbounds i8, ptr %0, i64 %29
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %33 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  br i1 %17, label %44, label %39

39:                                               ; preds = %28
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %67, label %41

41:                                               ; preds = %39
  %42 = and i64 %37, 4294967295
  %43 = getelementptr i8, ptr %33, i64 %21
  br label %60

44:                                               ; preds = %28
  %45 = icmp sgt i32 %38, -1
  br i1 %45, label %46, label %67

46:                                               ; preds = %44
  %47 = trunc i64 %32 to i32
  %48 = add i32 %5, %47
  %49 = sub i32 %30, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr i8, ptr %33, i64 %24
  br label %52

52:                                               ; preds = %46, %52
  %53 = phi i64 [ %50, %46 ], [ %57, %52 ]
  %54 = getelementptr inbounds i8, ptr %33, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !40
  %56 = getelementptr i8, ptr %51, i64 %53
  store i8 %55, ptr %56, align 1, !tbaa !40
  %57 = add nsw i64 %53, -1
  %58 = trunc i64 %53 to i32
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %52, label %67, !llvm.loop !115

60:                                               ; preds = %41, %60
  %61 = phi i64 [ 0, %41 ], [ %65, %60 ]
  %62 = getelementptr inbounds i8, ptr %33, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !40
  %64 = getelementptr i8, ptr %43, i64 %61
  store i8 %63, ptr %64, align 1, !tbaa !40
  %65 = add nuw nsw i64 %61, 1
  %66 = icmp ult i64 %61, %42
  br i1 %66, label %60, label %67, !llvm.loop !116

67:                                               ; preds = %60, %52, %39, %44
  br i1 %18, label %68, label %75

68:                                               ; preds = %67, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %67 ]
  %70 = getelementptr inbounds i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !40
  %72 = getelementptr inbounds i8, ptr %31, i64 %69
  store i8 %71, ptr %72, align 1, !tbaa !40
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %27
  br i1 %74, label %75, label %68, !llvm.loop !117

75:                                               ; preds = %68, %67
  %76 = getelementptr inbounds i8, ptr %31, i64 %20
  %77 = add i64 %29, %21
  %78 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %1) #19
  %79 = icmp eq ptr %78, null
  %80 = add i32 %30, %8
  br i1 %79, label %81, label %28, !llvm.loop !118

81:                                               ; preds = %75, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @setup_dump_cfg_params() local_unnamed_addr #14 !prof !35 {
  store i1 false, ptr @sel_dump_cfg_p, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_debug_cfg_1(i32 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i1, ptr @sel_dump_cfg_p, align 1
  %3 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !71
  store i1 true, ptr @sel_dump_cfg_p, align 1
  %4 = load i32, ptr @sel_debug_cfg_fileno, align 4, !tbaa !71
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @sel_debug_cfg_fileno, align 4, !tbaa !71
  store i32 %5, ptr @sel_dump_cfg_fileno, align 4, !tbaa !71
  tail call fastcc void @sel_dump_cfg_1(i32 noundef %0) #19
  store i32 %3, ptr @sel_dump_cfg_fileno, align 4, !tbaa !71
  store i1 %2, ptr @sel_dump_cfg_p, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_dump_cfg_1(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !119 {
  %2 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !71
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @sel_dump_cfg_fileno, align 4, !tbaa !71
  %4 = load i1, ptr @sel_dump_cfg_p, align 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull @.str.45) #19
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = tail call ptr @xmalloc(i64 noundef %8) #18
  %10 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !71
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %9, i64 noundef %8, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44, i32 noundef %10, ptr noundef nonnull @.str.45) #19
  %12 = tail call ptr @fopen_unlocked(ptr noundef %9, ptr noundef nonnull @.str.48) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !tbaa !36
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.49, ptr noundef %9) #21
  br label %19

17:                                               ; preds = %5
  tail call fastcc void @sel_dump_cfg_2(ptr noundef nonnull %12, i32 noundef %0) #19
  %18 = tail call i32 @fclose(ptr noundef nonnull %12) #19
  br label %19

19:                                               ; preds = %17, %14
  tail call void @free(ptr noundef %9) #19
  br label %20

20:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_dump_cfg_2(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !120 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  store i8 1, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  tail call fastcc void @switch_dump(ptr noundef %0) #19
  %5 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 65, i64 1, ptr %0)
  %6 = and i32 %1, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @current_function_name() #18
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %9) #19
  br label %11

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr @cfun, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !125
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %204, label %21

21:                                               ; preds = %11
  %22 = and i32 %1, 2
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %1, 64
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %1, 512
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, 4
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %1, 8
  %31 = icmp ne i32 %30, 0
  %32 = and i32 %1, 16
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %1, 32
  %35 = icmp ne i32 %34, 0
  %36 = getelementptr inbounds i8, ptr %4, i64 8
  br label %37

37:                                               ; preds = %21, %195
  %38 = phi ptr [ %17, %21 ], [ %197, %195 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = load ptr, ptr %40, align 8, !tbaa !127
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !129
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  br i1 %23, label %95, label %46

46:                                               ; preds = %37
  %47 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %38) #18
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc zeroext i8 @has_preds_in_current_region_p(ptr noundef nonnull %38) #19, !range !74
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %195, label %52

52:                                               ; preds = %46, %49
  %53 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %38) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @block_to_bb, align 8, !tbaa !36
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !41
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %56, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !71
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, ptr @.str.52, ptr @.str.44
  br label %64

64:                                               ; preds = %55, %52
  %65 = phi ptr [ @.str.44, %52 ], [ %63, %55 ]
  %66 = and i1 %25, %48
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef nonnull %38) #18
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %67
  %71 = load ptr, ptr %39, align 8, !tbaa !40
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !129
  %74 = tail call ptr @bb_note(ptr noundef nonnull %38) #18
  br label %75

75:                                               ; preds = %90, %70
  %76 = phi ptr [ @.str.53, %70 ], [ @.str.54, %90 ]
  %77 = phi ptr [ %74, %70 ], [ %80, %90 ]
  %78 = phi ptr [ %65, %70 ], [ %91, %90 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !40
  %81 = load ptr, ptr @fences, align 8, !tbaa !36
  %82 = tail call ptr @flist_lookup(ptr noundef %81, ptr noundef %80) #18
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct._fence, ptr %82, i64 0, i32 13
  %86 = load i8, ptr %85, align 8
  %87 = and i8 %86, 2
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr %76, ptr @.str.55
  br label %90

90:                                               ; preds = %84, %75
  %91 = phi ptr [ %78, %75 ], [ %89, %84 ]
  %92 = icmp eq ptr %80, %73
  br i1 %92, label %95, label %75, !llvm.loop !130

93:                                               ; preds = %64
  %94 = select i1 %48, ptr @.str.44, ptr @.str.56
  br label %95

95:                                               ; preds = %90, %93, %37, %67
  %96 = phi i1 [ true, %67 ], [ true, %37 ], [ %48, %93 ], [ true, %90 ]
  %97 = phi ptr [ @.str.44, %67 ], [ @.str.44, %37 ], [ %94, %93 ], [ @.str.44, %90 ]
  %98 = phi ptr [ %65, %67 ], [ @.str.44, %37 ], [ %65, %93 ], [ %91, %90 ]
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %100 = load i32, ptr %99, align 8, !tbaa !41
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %100, ptr noundef nonnull %97, ptr noundef %98, i32 noundef %100) #19
  br i1 %27, label %109, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !131
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %104, align 8, !tbaa !132
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %107) #19
  br label %109

109:                                              ; preds = %106, %102, %95
  %110 = and i1 %29, %96
  br i1 %110, label %111, label %125

111:                                              ; preds = %109
  %112 = load ptr, ptr @sel_region_bb_info, align 8
  %113 = load i32, ptr %99, align 8, !tbaa !41
  %114 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %112, i32 noundef %113) #19
  %115 = load ptr, ptr %114, align 8, !tbaa !136
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %111
  %118 = tail call i32 @fputc(i32 124, ptr %0)
  br label %119

119:                                              ; preds = %117, %119
  %120 = phi ptr [ %115, %117 ], [ %123, %119 ]
  tail call fastcc void @sel_dump_cfg_insn(ptr noundef nonnull %120, i32 noundef %1) #19
  %121 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 2, i64 1, ptr %0)
  %122 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !40
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %119, !llvm.loop !138

125:                                              ; preds = %119, %111, %109
  %126 = and i1 %31, %96
  br i1 %126, label %127, label %149

127:                                              ; preds = %125
  %128 = tail call zeroext i8 @in_current_region_p(ptr noundef %38) #18
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %127
  %131 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %38) #18
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = tail call i32 @fputc(i32 124, ptr %0)
  %135 = load ptr, ptr @sel_region_bb_info, align 8
  %136 = load i32, ptr %99, align 8, !tbaa !41
  %137 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %135, i32 noundef %136) #19
  %138 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !139
  %140 = load i32, ptr @global_level, align 4, !tbaa !71
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %137, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !140
  tail call void @dump_av_set(ptr noundef %144) #19
  br label %149

145:                                              ; preds = %133
  %146 = icmp eq i32 %139, -1
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 19, i64 1, ptr %0)
  br label %149

149:                                              ; preds = %142, %147, %145, %130, %127, %125
  br i1 %33, label %165, label %150

150:                                              ; preds = %149
  %151 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %38) #18
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  %154 = tail call i32 @fputc(i32 124, ptr %0)
  %155 = load ptr, ptr @sel_global_bb_info, align 8
  %156 = load i32, ptr %99, align 8, !tbaa !41
  %157 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %155, i32 noundef %156) #19
  %158 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %157, i64 0, i32 1
  %159 = load i8, ptr %158, align 8, !tbaa !141
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = load ptr, ptr %157, align 8, !tbaa !143
  tail call void @dump_lv_set(ptr noundef %162) #19
  br label %165

163:                                              ; preds = %153
  %164 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 19, i64 1, ptr %0)
  br label %165

165:                                              ; preds = %161, %163, %150, %149
  %166 = and i1 %35, %96
  br i1 %166, label %167, label %176

167:                                              ; preds = %165
  %168 = tail call i32 @fputc(i32 124, ptr %0)
  %169 = icmp eq ptr %41, %45
  br i1 %169, label %176, label %170

170:                                              ; preds = %167, %170
  %171 = phi ptr [ %174, %170 ], [ %41, %167 ]
  tail call fastcc void @sel_dump_cfg_insn(ptr noundef %171, i32 noundef %1) #19
  %172 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 2, i64 1, ptr %0)
  %173 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !40
  %175 = icmp eq ptr %174, %45
  br i1 %175, label %176, label %170, !llvm.loop !144

176:                                              ; preds = %170, %167, %165
  %177 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 5, i64 1, ptr %0)
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %179 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %178) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !145
  store ptr %179, ptr %36, align 8, !tbaa.struct !146
  %180 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %179, ptr noundef nonnull %3) #19, !range !74
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %176, %190
  %183 = load ptr, ptr %3, align 8, !tbaa !36
  br i1 %96, label %189, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !147
  %187 = tail call zeroext i8 @in_current_region_p(ptr noundef %186) #18
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184, %182
  tail call fastcc void @sel_dump_cfg_edge(ptr noundef %0, ptr noundef %183) #19
  br label %190

190:                                              ; preds = %184, %189
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %191 = load i32, ptr %4, align 8
  %192 = load ptr, ptr %36, align 8
  %193 = call fastcc zeroext i8 @ei_cond(i32 %191, ptr %192, ptr noundef nonnull %3) #19, !range !74
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %182, !llvm.loop !149

195:                                              ; preds = %190, %176, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !125
  %198 = load ptr, ptr @cfun, align 8, !tbaa !36
  %199 = getelementptr inbounds %struct.function, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !121
  %201 = getelementptr inbounds %struct.control_flow_graph, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !126
  %203 = icmp eq ptr %197, %202
  br i1 %203, label %204, label %37, !llvm.loop !150

204:                                              ; preds = %195, %11
  %205 = tail call i32 @fputc(i32 125, ptr %0)
  tail call fastcc void @restore_dump() #19
  store i8 0, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @in_current_region_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_preds_in_current_region_p(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !151 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = tail call zeroext i8 @in_current_region_p(ptr noundef %0) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 634, ptr noundef nonnull @.str.8) #18
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !145
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !146
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #19, !range !74
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7, %17
  %13 = load ptr, ptr %2, align 8, !tbaa !36
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  %15 = tail call zeroext i8 @in_current_region_p(ptr noundef %14) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %18 = load i32, ptr %3, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %2) #19, !range !74
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %12, !llvm.loop !153

22:                                               ; preds = %12, %17, %7
  %23 = phi i8 [ 0, %7 ], [ 0, %17 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @sel_bb_empty_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bb_note(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @flist_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !35 !PGOFuncName !154 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_dump_cfg_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !155 {
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = tail call fastcc i32 @VEC_int_base_index(ptr noundef nonnull %3, i32 noundef %7) #19
  %9 = icmp slt i32 %8, 1
  %10 = and i32 %1, 128
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %11, %9
  %13 = select i1 %12, i32 48, i32 62
  br label %14

14:                                               ; preds = %5, %2
  %15 = phi i32 [ 48, %2 ], [ %13, %5 ]
  tail call void @dump_insn_1(ptr noundef %0, i32 noundef %15) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !35 !PGOFuncName !156 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 !prof !35 !PGOFuncName !157 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !35 !PGOFuncName !158 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !74
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !36
  ret i8 %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @sel_dump_cfg_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !35 !PGOFuncName !159 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !160
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %1, align 8, !tbaa !152
  br i1 %6, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  br label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = icmp eq ptr %13, %15
  %17 = select i1 %16, i32 3, i32 1
  %18 = select i1 %16, ptr @.str.66, ptr @.str.44
  br label %19

19:                                               ; preds = %8, %11
  %20 = phi ptr [ %10, %8 ], [ %15, %11 ]
  %21 = phi i32 [ 10, %8 ], [ %17, %11 ]
  %22 = phi ptr [ @.str.65, %8 ], [ %18, %11 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !41
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %24, i32 noundef %26, i32 noundef %21, ptr noundef nonnull %22) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !161 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 738, ptr noundef nonnull @.str.8) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !162
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !164 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !165 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !35 !PGOFuncName !166 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !167
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !169 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 687, ptr noundef nonnull @.str.8) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !35 !PGOFuncName !170 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_av_set(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_av_set(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_lv_set(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_lv_set(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_ilist(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call fastcc void @dump_ilist(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_blist(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_blist(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_insn_vector(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_insn_vector(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_hard_reg_set(i64 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_hard_reg_set(ptr noundef nonnull @.str.44, i64 noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !36
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_debug_cfg() local_unnamed_addr #0 !prof !35 {
  tail call void @sel_debug_cfg_1(i32 noundef 766) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @debug_mem_addr_value(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 937, ptr noundef nonnull @.str.8) #18
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !171
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !183
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i8 [ %13, %11 ], [ 0, %6 ]
  %16 = tail call i32 %7(i8 noundef zeroext %15) #18
  %17 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #18
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = tail call ptr @cselib_lookup(ptr noundef %19, i32 noundef %16, i32 noundef 0) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %18, align 8, !tbaa !40
  %24 = tail call ptr @cselib_subst_to_values(ptr noundef %23) #18
  store ptr %24, ptr %18, align 8, !tbaa !40
  br label %25

25:                                               ; preds = %22, %14
  %26 = tail call ptr @canon_rtx(ptr noundef nonnull %17) #18
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = tail call ptr @get_addr(ptr noundef %28) #18
  tail call void @debug_rtx(ptr noundef %26) #18
  tail call void @debug_rtx(ptr noundef %29) #18
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cselib_subst_to_values(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @debug_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = !{!42, !44, i64 80}
!42 = !{!"basic_block_def", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !37, i64 48, !37, i64 56, !38, i64 64, !43, i64 72, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96}
!43 = !{!"long", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"sel-sched-dump.c:switch_dump"}
!48 = !{!"sel-sched-dump.c:restore_dump"}
!49 = !{!50, !37, i64 0}
!50 = !{!"vinsn_def", !37, i64 0, !51, i64 8, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !38, i64 72}
!51 = !{!"idata_def", !44, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!52 = !{!50, !44, i64 8}
!53 = !{!50, !44, i64 64}
!54 = !{!50, !44, i64 68}
!55 = !{!56, !37, i64 0}
!56 = !{!"_expr", !37, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !37, i64 48, !38, i64 56, !44, i64 57, !44, i64 57, !44, i64 57, !44, i64 57}
!57 = !{!56, !44, i64 8}
!58 = !{!56, !44, i64 12}
!59 = !{!56, !44, i64 16}
!60 = !{!56, !44, i64 24}
!61 = !{!56, !44, i64 32}
!62 = !{!56, !44, i64 28}
!63 = !{!56, !38, i64 56}
!64 = !{!65, !44, i64 68}
!65 = !{!"_sel_insn_data", !56, i64 0, !44, i64 64, !44, i64 68, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !66, i64 112, !37, i64 296, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 316, !44, i64 316}
!66 = !{!"deps", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !44, i64 80, !37, i64 88, !44, i64 96, !37, i64 104, !67, i64 112, !67, i64 144, !44, i64 176, !44, i64 180}
!67 = !{!"bitmap_head_def", !37, i64 0, !37, i64 8, !44, i64 16, !37, i64 24}
!68 = !{!65, !44, i64 304}
!69 = !{!"sel-sched-dump.c:VEC_sel_insn_data_def_base_index"}
!70 = !{!"sel-sched-dump.c:VEC_int_base_index"}
!71 = !{!44, !44, i64 0}
!72 = !{!73, !37, i64 0}
!73 = !{!"", !37, i64 0, !38, i64 8, !38, i64 9}
!74 = !{i8 0, i8 2}
!75 = distinct !{!75, !46}
!76 = !{!"sel-sched-dump.c:_list_iter_start"}
!77 = !{!73, !38, i64 8}
!78 = !{!73, !38, i64 9}
!79 = !{!"sel-sched-dump.c:_list_iter_cond_expr"}
!80 = !{!"sel-sched-dump.c:_list_iter_next"}
!81 = distinct !{!81, !46}
!82 = !{!"sel-sched-dump.c:bmp_iter_set_init"}
!83 = !{!67, !37, i64 0}
!84 = !{!85, !37, i64 0}
!85 = !{!"", !37, i64 0, !37, i64 8, !44, i64 16, !43, i64 24}
!86 = !{!85, !37, i64 8}
!87 = !{!88, !44, i64 16}
!88 = !{!"bitmap_element_def", !37, i64 0, !37, i64 8, !44, i64 16, !38, i64 24}
!89 = !{!85, !44, i64 16}
!90 = !{!43, !43, i64 0}
!91 = !{!85, !43, i64 24}
!92 = !{!"sel-sched-dump.c:bmp_iter_set"}
!93 = distinct !{!93, !46}
!94 = distinct !{!94, !46}
!95 = !{!88, !37, i64 0}
!96 = !{!"sel-sched-dump.c:bmp_iter_next"}
!97 = !{!98, !37, i64 0}
!98 = !{!"_bnd", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!99 = !{!98, !37, i64 8}
!100 = !{!101, !37, i64 0}
!101 = !{!"_list_node", !37, i64 0, !38, i64 8}
!102 = distinct !{!102, !46}
!103 = !{!"sel-sched-dump.c:dump_ilist"}
!104 = distinct !{!104, !46}
!105 = distinct !{!105, !46}
!106 = !{i32 0, i32 2}
!107 = distinct !{!107, !46}
!108 = !{!"sel-sched-dump.c:VEC_rtx_base_iterate"}
!109 = !{!110, !44, i64 0}
!110 = !{!"VEC_rtx_base", !44, i64 0, !44, i64 4, !38, i64 8}
!111 = !{!"sel-sched-dump.c:print_hard_reg_set"}
!112 = distinct !{!112, !46}
!113 = !{!65, !44, i64 24}
!114 = !{!"sel-sched-dump.c:replace_str_in_buf"}
!115 = distinct !{!115, !46}
!116 = distinct !{!116, !46}
!117 = distinct !{!117, !46}
!118 = distinct !{!118, !46}
!119 = !{!"sel-sched-dump.c:sel_dump_cfg_1"}
!120 = !{!"sel-sched-dump.c:sel_dump_cfg_2"}
!121 = !{!122, !37, i64 8}
!122 = !{!"function", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !37, i64 128, !44, i64 136, !44, i64 137, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139}
!123 = !{!124, !37, i64 0}
!124 = !{!"control_flow_graph", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !37, i64 40, !44, i64 48, !38, i64 52, !38, i64 60, !44, i64 68, !44, i64 72}
!125 = !{!42, !37, i64 56}
!126 = !{!124, !37, i64 8}
!127 = !{!128, !37, i64 0}
!128 = !{!"rtl_bb_info", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32}
!129 = !{!128, !37, i64 8}
!130 = distinct !{!130, !46}
!131 = !{!42, !37, i64 24}
!132 = !{!133, !44, i64 0}
!133 = !{!"loop", !44, i64 0, !44, i64 4, !37, i64 8, !37, i64 16, !134, i64 24, !44, i64 32, !44, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !135, i64 80, !135, i64 96, !38, i64 112, !38, i64 113, !44, i64 116, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 144}
!134 = !{!"lpt_decision", !44, i64 0, !44, i64 4}
!135 = !{!"", !43, i64 0, !43, i64 8}
!136 = !{!137, !37, i64 0}
!137 = !{!"", !37, i64 0, !37, i64 8, !44, i64 16}
!138 = distinct !{!138, !46}
!139 = !{!137, !44, i64 16}
!140 = !{!137, !37, i64 8}
!141 = !{!142, !38, i64 8}
!142 = !{!"", !37, i64 0, !38, i64 8}
!143 = !{!142, !37, i64 0}
!144 = distinct !{!144, !46}
!145 = !{i64 0, i64 4, !71, i64 8, i64 8, !36}
!146 = !{i64 0, i64 8, !36}
!147 = !{!148, !37, i64 8}
!148 = !{!"edge_def", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24, !37, i64 32, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !43, i64 56}
!149 = distinct !{!149, !46}
!150 = distinct !{!150, !46}
!151 = !{!"sel-sched-dump.c:has_preds_in_current_region_p"}
!152 = !{!148, !37, i64 0}
!153 = distinct !{!153, !46}
!154 = !{!"sel-sched-dump.c:VEC_sel_region_bb_info_def_base_index"}
!155 = !{!"sel-sched-dump.c:sel_dump_cfg_insn"}
!156 = !{!"sel-sched-dump.c:VEC_sel_global_bb_info_def_base_index"}
!157 = !{!"sel-sched-dump.c:ei_start_1"}
!158 = !{!"sel-sched-dump.c:ei_cond"}
!159 = !{!"sel-sched-dump.c:sel_dump_cfg_edge"}
!160 = !{!148, !44, i64 48}
!161 = !{!"sel-sched-dump.c:ei_next"}
!162 = !{!163, !44, i64 0}
!163 = !{!"", !44, i64 0, !37, i64 8}
!164 = !{!"sel-sched-dump.c:ei_end_p"}
!165 = !{!"sel-sched-dump.c:ei_edge"}
!166 = !{!"sel-sched-dump.c:VEC_edge_base_length"}
!167 = !{!168, !44, i64 0}
!168 = !{!"VEC_edge_base", !44, i64 0, !44, i64 4, !38, i64 8}
!169 = !{!"sel-sched-dump.c:ei_container"}
!170 = !{!"sel-sched-dump.c:VEC_edge_base_index"}
!171 = !{!172, !37, i64 1184}
!172 = !{!"gcc_target", !173, i64 0, !175, i64 368, !176, i64 664, !44, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !37, i64 816, !37, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !37, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !37, i64 912, !37, i64 920, !37, i64 928, !37, i64 936, !37, i64 944, !37, i64 952, !37, i64 960, !37, i64 968, !37, i64 976, !37, i64 984, !37, i64 992, !37, i64 1000, !37, i64 1008, !37, i64 1016, !37, i64 1024, !37, i64 1032, !37, i64 1040, !37, i64 1048, !37, i64 1056, !43, i64 1064, !43, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !177, i64 1176, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !43, i64 1464, !178, i64 1472, !37, i64 1664, !37, i64 1672, !37, i64 1680, !37, i64 1688, !37, i64 1696, !37, i64 1704, !37, i64 1712, !37, i64 1720, !37, i64 1728, !37, i64 1736, !37, i64 1744, !37, i64 1752, !37, i64 1760, !37, i64 1768, !37, i64 1776, !179, i64 1784, !180, i64 1792, !181, i64 1896, !182, i64 1968, !37, i64 2016, !38, i64 2024, !38, i64 2025, !38, i64 2026, !38, i64 2027, !38, i64 2028, !38, i64 2029, !38, i64 2030, !38, i64 2031, !38, i64 2032, !38, i64 2033, !38, i64 2034, !38, i64 2035}
!173 = !{!"asm_out", !37, i64 0, !37, i64 8, !37, i64 16, !174, i64 24, !174, i64 56, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360}
!174 = !{!"asm_int_op", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!175 = !{!"sched", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288}
!176 = !{!"vectorize", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!177 = !{!"addr_space", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!178 = !{!"calls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184}
!179 = !{!"c", !37, i64 0}
!180 = !{!"cxx", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96}
!181 = !{!"emutls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !38, i64 64, !38, i64 65}
!182 = !{!"target_option_hooks", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!183 = !{!184, !38, i64 32}
!184 = !{!"mem_attrs", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !38, i64 32}
