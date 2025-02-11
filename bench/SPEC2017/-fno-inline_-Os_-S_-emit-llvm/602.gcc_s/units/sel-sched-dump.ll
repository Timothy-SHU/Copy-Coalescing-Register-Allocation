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
define dso_local void @sel_print_rtl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %3 = tail call i32 @print_rtl_single(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_rtx_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2048 x i8], align 16
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %1, i32 14
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = alloca [3 x i8], align 16
  store i16 40, ptr %10, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10) #19
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %15 = tail call i32 @fputc(i32 40, ptr %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = and i32 %6, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !10
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %24) #19
  %26 = shl nsw i32 %25, 1
  %27 = or disjoint i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  %30 = load i32, ptr %23, align 8, !tbaa !10
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %29, i64 noundef %28, ptr noundef nonnull @.str.2, i32 noundef %30) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %29) #19
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %33 = call i32 @fputs(ptr nonnull %29, ptr %32)
  br label %39

34:                                               ; preds = %19
  %35 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !10
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef %37) #19
  br label %39

39:                                               ; preds = %22, %34, %16
  %40 = and i32 %6, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #20
  call void @print_insn(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0) #18
  %43 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %52 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %53 = call i32 @fputs(ptr nonnull %50, ptr %52)
  br label %57

54:                                               ; preds = %42
  %55 = load ptr, ptr @sched_dump, align 8, !tbaa !6
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
  %63 = load ptr, ptr %62, align 8, !tbaa !10
  %64 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %61
  %67 = icmp eq ptr %63, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !11
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
  %80 = load i32, ptr %79, align 8, !tbaa !11
  br label %81

81:                                               ; preds = %71, %78
  %82 = phi i32 [ %80, %78 ], [ -1, %71 ]
  %83 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %77, i64 noundef %76, ptr noundef nonnull @.str.4, i32 noundef %82) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %77) #19
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %85 = call i32 @fputs(ptr nonnull %77, ptr %84)
  br label %95

86:                                               ; preds = %61
  %87 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %88 = icmp eq ptr %63, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !11
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi i32 [ %91, %89 ], [ -1, %86 ]
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.4, i32 noundef %93) #19
  br label %95

95:                                               ; preds = %81, %92, %58
  %96 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = alloca [3 x i8], align 16
  store i16 41, ptr %99, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %99) #19
  %100 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %101 = call i32 @fputs(ptr nonnull %99, ptr %100)
  br label %105

102:                                              ; preds = %95
  %103 = load ptr, ptr @sched_dump, align 8, !tbaa !6
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
define dso_local void @sel_prepare_string_for_dot_label(ptr noundef %0) local_unnamed_addr #4 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %6, %2 ]
  %4 = getelementptr inbounds [7 x [2 x i8]], ptr @sel_prepare_string_for_dot_label.specials_from, i64 0, i64 %3
  %5 = getelementptr inbounds [7 x [3 x i8]], ptr @sel_prepare_string_for_dot_label.specials_to, i64 0, i64 %3
  tail call fastcc void @replace_str_in_buf(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %6 = add nuw nsw i64 %3, 1
  %7 = icmp eq i64 %6, 7
  br i1 %7, label %8, label %2, !llvm.loop !15

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
define dso_local void @dump_insn_rtx(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef 4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_insn_rtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef 14) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switch_dump(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 77, ptr noundef nonnull @.str.8) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  store ptr %6, ptr @saved_sched_dump, align 8, !tbaa !6
  store ptr %0, ptr @sched_dump, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @restore_dump() unnamed_addr #5 {
  %1 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !6
  store ptr %1, ptr @sched_dump, align 8, !tbaa !6
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_vinsn_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 30
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = alloca [3 x i8], align 16
  store i16 40, ptr %9, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9) #19
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %14 = tail call i32 @fputc(i32 40, ptr %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = and i32 %5, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !17
  %20 = or disjoint i32 %3, 4
  call void @dump_insn_rtx_1(ptr noundef %19, i32 noundef %20) #19
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %32) #19
  %34 = shl nsw i32 %33, 1
  %35 = or disjoint i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  %38 = load i32, ptr %28, align 8, !tbaa !20
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %37, i64 noundef %36, ptr noundef nonnull @.str.9, ptr noundef %41) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %37) #19
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %44 = call i32 @fputs(ptr nonnull %37, ptr %43)
  br label %53

45:                                               ; preds = %24
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !20
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.9, ptr noundef %51) #19
  br label %53

53:                                               ; preds = %27, %45, %21
  %54 = and i32 %5, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !21
  %62 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %61) #19
  %63 = shl nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = alloca i8, i64 %65, align 16
  %67 = load i32, ptr %60, align 8, !tbaa !21
  %68 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %66, i64 noundef %65, ptr noundef nonnull @.str.10, i32 noundef %67) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %66) #19
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %70 = call i32 @fputs(ptr nonnull %66, ptr %69)
  br label %76

71:                                               ; preds = %56
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !21
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.10, i32 noundef %74) #19
  br label %76

76:                                               ; preds = %59, %71, %53
  %77 = and i32 %5, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !22
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %98, label %83

83:                                               ; preds = %79
  %84 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %93 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %94 = call i32 @fputs(ptr nonnull %91, ptr %93)
  br label %98

95:                                               ; preds = %83
  %96 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.11, i32 noundef %81) #19
  br label %98

98:                                               ; preds = %79, %95, %86, %76
  %99 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = alloca [3 x i8], align 16
  store i16 41, ptr %102, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %102) #19
  %103 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %104 = call i32 @fputs(ptr nonnull %102, ptr %103)
  br label %108

105:                                              ; preds = %98
  %106 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %107 = call i32 @fputc(i32 41, ptr %106)
  br label %108

108:                                              ; preds = %105, %101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_vinsn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @dump_vinsn_1(ptr noundef %0, i32 noundef 14) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_vinsn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_vinsn_1(ptr noundef %0, i32 noundef 30) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_expr_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 254
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = alloca [3 x i8], align 16
  store i16 91, ptr %9, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9) #19
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %14 = tail call i32 @fputc(i32 91, ptr %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = and i32 %5, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !23
  %20 = or disjoint i32 %3, 14
  call void @dump_vinsn_1(ptr noundef %19, i32 noundef %20) #19
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %38 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %39 = call i32 @fputs(ptr nonnull %36, ptr %38)
  br label %43

40:                                               ; preds = %28
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.13, i32 noundef %26) #19
  br label %43

43:                                               ; preds = %24, %40, %31, %21
  %44 = and i32 %5, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !26
  %49 = icmp eq i32 %48, 10000
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %60 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %61 = call i32 @fputs(ptr nonnull %58, ptr %60)
  br label %65

62:                                               ; preds = %50
  %63 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.14, i32 noundef %48) #19
  br label %65

65:                                               ; preds = %46, %62, %53, %43
  %66 = and i32 %5, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %65
  %69 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !27
  %74 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %73) #19
  %75 = shl nsw i32 %74, 1
  %76 = or disjoint i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = alloca i8, i64 %77, align 16
  %79 = load i32, ptr %72, align 8, !tbaa !27
  %80 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %78, i64 noundef %77, ptr noundef nonnull @.str.15, i32 noundef %79) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %78) #19
  %81 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %82 = call i32 @fputs(ptr nonnull %78, ptr %81)
  br label %88

83:                                               ; preds = %68
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !27
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.15, i32 noundef %86) #19
  br label %88

88:                                               ; preds = %71, %83, %65
  %89 = and i32 %5, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !28
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %91
  %96 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %105 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %106 = call i32 @fputs(ptr nonnull %103, ptr %105)
  br label %110

107:                                              ; preds = %95
  %108 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.16, i32 noundef %93) #19
  br label %110

110:                                              ; preds = %91, %107, %98, %88
  %111 = and i32 %5, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !29
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %113
  %118 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %127 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %128 = call i32 @fputs(ptr nonnull %125, ptr %127)
  br label %132

129:                                              ; preds = %117
  %130 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.17, i32 noundef %115) #19
  br label %132

132:                                              ; preds = %113, %129, %120, %110
  %133 = and i32 %5, 64
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  %137 = load i32, ptr %136, align 4, !tbaa !30
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %135
  %140 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %149 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %150 = call i32 @fputs(ptr nonnull %147, ptr %149)
  br label %154

151:                                              ; preds = %139
  %152 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.18, i32 noundef %137) #19
  br label %154

154:                                              ; preds = %135, %151, %142, %132
  %155 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %156 = load i8, ptr %155, align 8, !tbaa !31
  %157 = sext i8 %156 to i32
  %158 = icmp slt i8 %156, 1
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159
  %163 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %157) #19
  %164 = shl nsw i32 %163, 1
  %165 = or disjoint i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = alloca i8, i64 %166, align 16
  %168 = load i8, ptr %155, align 8, !tbaa !31
  %169 = sext i8 %168 to i32
  %170 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %167, i64 noundef %166, ptr noundef nonnull @.str.19, i32 noundef %169) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %167) #19
  %171 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %172 = call i32 @fputs(ptr nonnull %167, ptr %171)
  br label %176

173:                                              ; preds = %159
  %174 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.19, i32 noundef %157) #19
  br label %176

176:                                              ; preds = %154, %173, %162
  %177 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = alloca [3 x i8], align 16
  store i16 93, ptr %180, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %180) #19
  %181 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %182 = call i32 @fputs(ptr nonnull %180, ptr %181)
  br label %186

183:                                              ; preds = %176
  %184 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %185 = call i32 @fputc(i32 93, ptr %184)
  br label %186

186:                                              ; preds = %183, %179
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @dump_expr_1(ptr noundef %0, i32 noundef 254) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_expr_1(ptr noundef %0, i32 noundef 254) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 126
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !6
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
  %18 = load i32, ptr %17, align 8, !tbaa !10
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #19
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %19) #19
  %21 = or disjoint i32 %3, 254
  tail call void @dump_expr_1(ptr noundef nonnull %20, i32 noundef %21) #19
  %22 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = alloca [3 x i8], align 16
  store i16 59, ptr %25, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %25) #19
  %26 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %27 = call i32 @fputs(ptr nonnull %25, ptr %26)
  br label %68

28:                                               ; preds = %14
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %30 = tail call i32 @fputc(i32 59, ptr %29)
  br label %68

31:                                               ; preds = %11
  %32 = and i32 %5, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = or disjoint i32 %3, 4
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef %35) #19
  %36 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = alloca [3 x i8], align 16
  store i16 59, ptr %39, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %39) #19
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %41 = call i32 @fputs(ptr nonnull %39, ptr %40)
  br label %68

42:                                               ; preds = %34
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %44 = tail call i32 @fputc(i32 59, ptr %43)
  br label %68

45:                                               ; preds = %31
  %46 = and i32 %5, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !10
  %54 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %53) #19
  %55 = shl nsw i32 %54, 1
  %56 = or disjoint i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = alloca i8, i64 %57, align 16
  %59 = load i32, ptr %52, align 8, !tbaa !10
  %60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %58, i64 noundef %57, ptr noundef nonnull @.str.22, i32 noundef %59) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %58) #19
  %61 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %62 = call i32 @fputs(ptr nonnull %58, ptr %61)
  br label %68

63:                                               ; preds = %48
  %64 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !10
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.22, i32 noundef %66) #19
  br label %68

68:                                               ; preds = %42, %38, %51, %63, %45, %24, %28
  %69 = and i32 %5, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %109, label %71

71:                                               ; preds = %68
  %72 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @s_i_d, align 8
  %76 = load ptr, ptr @sched_luids, align 8
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !10
  %79 = call fastcc i32 @VEC_int_base_index(ptr noundef %76, i32 noundef %78) #19
  %80 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %75, i32 noundef %79) #19
  %81 = getelementptr inbounds %struct._sel_insn_data, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !32
  %83 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %82) #19
  %84 = shl nsw i32 %83, 1
  %85 = or disjoint i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = alloca i8, i64 %86, align 16
  %88 = load ptr, ptr @s_i_d, align 8
  %89 = load ptr, ptr @sched_luids, align 8
  %90 = load i32, ptr %77, align 8, !tbaa !10
  %91 = call fastcc i32 @VEC_int_base_index(ptr noundef %89, i32 noundef %90) #19
  %92 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %88, i32 noundef %91) #19
  %93 = getelementptr inbounds %struct._sel_insn_data, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !32
  %95 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %87, i64 noundef %86, ptr noundef nonnull @.str.23, i32 noundef %94) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %87) #19
  %96 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %97 = call i32 @fputs(ptr nonnull %87, ptr %96)
  br label %109

98:                                               ; preds = %71
  %99 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %100 = load ptr, ptr @s_i_d, align 8
  %101 = load ptr, ptr @sched_luids, align 8
  %102 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !10
  %104 = call fastcc i32 @VEC_int_base_index(ptr noundef %101, i32 noundef %103) #19
  %105 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %100, i32 noundef %104) #19
  %106 = getelementptr inbounds %struct._sel_insn_data, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !32
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
  %116 = load i32, ptr %115, align 8, !tbaa !10
  %117 = call fastcc i32 @VEC_int_base_index(ptr noundef %114, i32 noundef %116) #19
  %118 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %113, i32 noundef %117) #19
  %119 = getelementptr inbounds %struct._sel_insn_data, ptr %118, i64 0, i32 10
  %120 = load i32, ptr %119, align 8, !tbaa !36
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %112
  %123 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %132 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %133 = call i32 @fputs(ptr nonnull %130, ptr %132)
  br label %137

134:                                              ; preds = %122
  %135 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.24, i32 noundef %120) #19
  br label %137

137:                                              ; preds = %112, %134, %125, %109
  %138 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %142 = call i32 @fputc(i32 41, ptr %141)
  br label %143

143:                                              ; preds = %140, %137
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !37
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @dump_insn_1(ptr noundef %0, i32 noundef 10) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_insn_1(ptr noundef %0, i32 noundef 126) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_av_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %9 = tail call i32 @fputc(i32 123, ptr %8)
  br label %10

10:                                               ; preds = %7, %1
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %11 = load ptr, ptr %3, align 8, !tbaa !38
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %12, ptr noundef nonnull %4) #19, !range !40
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10, %26
  %16 = load ptr, ptr %4, align 8, !tbaa !6
  call void @dump_expr(ptr noundef %16) #19
  %17 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %21 = call i32 @fputc(i32 32, ptr %20)
  br label %26

22:                                               ; preds = %15
  %23 = alloca [3 x i8], align 16
  store i16 10, ptr %23, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %23) #19
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %25 = call i32 @fputs(ptr nonnull %23, ptr %24)
  br label %26

26:                                               ; preds = %19, %22
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #19
  %27 = load ptr, ptr %3, align 8, !tbaa !38
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %28, ptr noundef nonnull %4) #19, !range !40
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %15, !llvm.loop !41

31:                                               ; preds = %26, %10
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %36 = call i32 @fputc(i32 125, ptr %35)
  br label %37

37:                                               ; preds = %34, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_list_iter_start(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #8 {
  store ptr %1, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_expr(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_list_iter_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !43
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  store ptr %7, ptr %0, align 8, !tbaa !38
  br label %9

8:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !43
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_lv_set(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = alloca [3 x i8], align 16
  store i16 123, ptr %7, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %7) #19
  %8 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %9 = call i32 @fputs(ptr nonnull %7, ptr %8)
  br label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %12 = tail call i32 @fputc(i32 123, ptr %11)
  br label %13

13:                                               ; preds = %6, %10
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = alloca [7 x i8], align 16
  store i32 7104878, ptr %19, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %19) #19
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %21 = call i32 @fputs(ptr nonnull %19, ptr %20)
  br label %93

22:                                               ; preds = %15
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %24 = call i64 @fwrite(ptr nonnull @.str.28, i64 3, i64 1, ptr %23)
  br label %93

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !40
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  br label %30

30:                                               ; preds = %28, %87
  %31 = phi i8 [ %88, %87 ], [ %29, %28 ]
  %32 = phi i32 [ %89, %87 ], [ 0, %28 ]
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 4, !tbaa !37
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %35) #19
  %37 = shl nsw i32 %36, 1
  %38 = or disjoint i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  %41 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %40, i64 noundef %39, ptr noundef nonnull @.str.29, i32 noundef %35) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %40) #19
  %42 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %43 = call i32 @fputs(ptr nonnull %40, ptr %42)
  br label %48

44:                                               ; preds = %30
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %46 = load i32, ptr %2, align 4, !tbaa !37
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.29, i32 noundef %46) #19
  br label %48

48:                                               ; preds = %44, %34
  %49 = phi i32 [ %46, %44 ], [ %35, %34 ]
  %50 = icmp ult i32 %49, 53
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = zext nneg i32 %49 to i64
  %56 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %57) #19
  %59 = shl nsw i32 %58, 1
  %60 = or disjoint i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = alloca i8, i64 %61, align 16
  %63 = load ptr, ptr %56, align 8, !tbaa !6
  %64 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %62, i64 noundef %61, ptr noundef nonnull @.str.30, ptr noundef %63) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %62) #19
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %66 = call i32 @fputs(ptr nonnull %62, ptr %65)
  br label %73

67:                                               ; preds = %51
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %69 = zext nneg i32 %49 to i64
  %70 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.30, ptr noundef %71) #19
  br label %73

73:                                               ; preds = %67, %54
  %74 = add nsw i32 %32, 1
  br label %75

75:                                               ; preds = %73, %48
  %76 = phi i32 [ %74, %73 ], [ %32, %48 ]
  %77 = add nsw i32 %76, 1
  %78 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %79 = icmp ne i8 %78, 0
  %80 = icmp eq i32 %77, 12
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = alloca [3 x i8], align 16
  store i16 10, ptr %83, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %83) #19
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %85 = call i32 @fputs(ptr nonnull %83, ptr %84)
  %86 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  br label %87

87:                                               ; preds = %75, %82
  %88 = phi i8 [ %86, %82 ], [ %78, %75 ]
  %89 = phi i32 [ 0, %82 ], [ %77, %75 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %90 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !40
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %30, !llvm.loop !44

92:                                               ; preds = %87, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %93

93:                                               ; preds = %92, %18, %22
  %94 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %97, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %97) #19
  %98 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %99 = call i32 @fputs(ptr nonnull %97, ptr %98)
  br label %103

100:                                              ; preds = %93
  %101 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %102 = call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %101)
  br label %103

103:                                              ; preds = %96, %100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %4, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !48
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !53
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !37
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !37
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !54

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !37
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !37
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !51
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !51
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !52
  store i64 %35, ptr %3, align 8, !tbaa !53
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !37
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !37
  %40 = load i32, ptr %23, align 8, !tbaa !51
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !51
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !55

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !56
  store ptr %44, ptr %0, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !49
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !37
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !53
  store i32 %16, ptr %1, align 4, !tbaa !37
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !53
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !53
  %6 = load i32, ptr %1, align 4, !tbaa !37
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_blist(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1, %41
  %4 = phi ptr [ %42, %41 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !10
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %11) #19
  %13 = shl nsw i32 %12, 1
  %14 = or disjoint i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  %17 = load ptr, ptr %5, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !10
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %16, i64 noundef %15, ptr noundef nonnull @.str.32, i32 noundef %19) #19
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %16) #19
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %22 = call i32 @fputs(ptr nonnull %16, ptr %21)
  br label %29

23:                                               ; preds = %3
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %25 = load ptr, ptr %5, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !10
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.32, i32 noundef %27) #19
  br label %29

29:                                               ; preds = %23, %8
  %30 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  call fastcc void @dump_ilist(ptr noundef %31) #19
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %35, ptr noundef nonnull align 1 dereferenceable(3) @.str.33, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #19
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %37 = call i32 @fputs(ptr nonnull %35, ptr %36)
  br label %41

38:                                               ; preds = %29
  %39 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %40 = call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load ptr, ptr %4, align 8, !tbaa !60
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %3, !llvm.loop !62

44:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_ilist(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  tail call void @dump_insn(ptr noundef %6) #19
  %7 = load ptr, ptr %4, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !llvm.loop !63

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_flist(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %16
  %4 = phi ptr [ %17, %16 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  call void @dump_insn_1(ptr noundef %6, i32 noundef 84) #19
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = alloca [3 x i8], align 16
  store i16 32, ptr %10, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10) #19
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %15 = call i32 @fputc(i32 32, ptr %14)
  br label %16

16:                                               ; preds = %9, %13
  %17 = load ptr, ptr %4, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !64

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_vector(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #19, !range !65
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  call void @dump_insn(ptr noundef nonnull %7) #19
  br label %20

10:                                               ; preds = %5
  %11 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = alloca [11 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %14, ptr noundef nonnull align 1 dereferenceable(6) @.str.34, i64 6, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %14) #19
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %16 = call i32 @fputs(ptr nonnull %14, ptr %15)
  br label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %19 = call i64 @fwrite(ptr nonnull @.str.34, i64 5, i64 1, ptr %18)
  br label %20

20:                                               ; preds = %9, %17, %13
  %21 = add nuw nsw i32 %6, 1
  %22 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %2) #19, !range !65
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %5, !llvm.loop !66

24:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !67
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_hard_reg_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  tail call fastcc void @print_hard_reg_set(ptr noundef %3, ptr noundef %0, i64 noundef %1) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_hard_reg_set(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 {
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
  br i1 %15, label %16, label %5, !llvm.loop !69

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef nonnull ptr @sel_print_insn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @sched_luids, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !10
  %9 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %6, i32 noundef %8) #19
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 16711680
  %14 = icmp eq i32 %13, 1179648
  %15 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef nonnull %3, i32 noundef %9) #19
  %16 = getelementptr inbounds %struct._expr, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !70
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
  %30 = load i32, ptr %29, align 8, !tbaa !10
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
define internal fastcc void @replace_str_in_buf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
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
  %55 = load i8, ptr %54, align 1, !tbaa !10
  %56 = getelementptr i8, ptr %51, i64 %53
  store i8 %55, ptr %56, align 1, !tbaa !10
  %57 = add nsw i64 %53, -1
  %58 = trunc i64 %53 to i32
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %52, label %67, !llvm.loop !71

60:                                               ; preds = %41, %60
  %61 = phi i64 [ 0, %41 ], [ %65, %60 ]
  %62 = getelementptr inbounds i8, ptr %33, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !10
  %64 = getelementptr i8, ptr %43, i64 %61
  store i8 %63, ptr %64, align 1, !tbaa !10
  %65 = add nuw nsw i64 %61, 1
  %66 = icmp ult i64 %61, %42
  br i1 %66, label %60, label %67, !llvm.loop !72

67:                                               ; preds = %60, %52, %39, %44
  br i1 %18, label %68, label %75

68:                                               ; preds = %67, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %67 ]
  %70 = getelementptr inbounds i8, ptr %2, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !10
  %72 = getelementptr inbounds i8, ptr %31, i64 %69
  store i8 %71, ptr %72, align 1, !tbaa !10
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %27
  br i1 %74, label %75, label %68, !llvm.loop !73

75:                                               ; preds = %68, %67
  %76 = getelementptr inbounds i8, ptr %31, i64 %20
  %77 = add i64 %29, %21
  %78 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %1) #19
  %79 = icmp eq ptr %78, null
  %80 = add i32 %30, %8
  br i1 %79, label %81, label %28, !llvm.loop !74

81:                                               ; preds = %75, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @setup_dump_cfg_params() local_unnamed_addr #14 {
  store i1 false, ptr @sel_dump_cfg_p, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_debug_cfg_1(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @sel_dump_cfg_p, align 1
  %3 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !37
  store i1 true, ptr @sel_dump_cfg_p, align 1
  %4 = load i32, ptr @sel_debug_cfg_fileno, align 4, !tbaa !37
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @sel_debug_cfg_fileno, align 4, !tbaa !37
  store i32 %5, ptr @sel_dump_cfg_fileno, align 4, !tbaa !37
  tail call fastcc void @sel_dump_cfg_1(i32 noundef %0) #19
  store i32 %3, ptr @sel_dump_cfg_fileno, align 4, !tbaa !37
  store i1 %2, ptr @sel_dump_cfg_p, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_dump_cfg_1(i32 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !37
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @sel_dump_cfg_fileno, align 4, !tbaa !37
  %4 = load i1, ptr @sel_dump_cfg_p, align 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull @.str.45) #19
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = tail call ptr @xmalloc(i64 noundef %8) #18
  %10 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !37
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %9, i64 noundef %8, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44, i32 noundef %10, ptr noundef nonnull @.str.45) #19
  %12 = tail call ptr @fopen_unlocked(ptr noundef %9, ptr noundef nonnull @.str.48) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !tbaa !6
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
define internal fastcc void @sel_dump_cfg_2(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  store i8 1, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
  %12 = load ptr, ptr @cfun, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !80
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
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  br i1 %23, label %95, label %46

46:                                               ; preds = %37
  %47 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %38) #18
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc zeroext i8 @has_preds_in_current_region_p(ptr noundef nonnull %38) #19, !range !40
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %195, label %52

52:                                               ; preds = %46, %49
  %53 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %38) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @block_to_bb, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !11
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %56, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !37
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
  %71 = load ptr, ptr %39, align 8, !tbaa !10
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !83
  %74 = tail call ptr @bb_note(ptr noundef nonnull %38) #18
  br label %75

75:                                               ; preds = %90, %70
  %76 = phi ptr [ @.str.53, %70 ], [ @.str.54, %90 ]
  %77 = phi ptr [ %74, %70 ], [ %80, %90 ]
  %78 = phi ptr [ %65, %70 ], [ %91, %90 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !10
  %81 = load ptr, ptr @fences, align 8, !tbaa !6
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
  br i1 %92, label %95, label %75, !llvm.loop !84

93:                                               ; preds = %64
  %94 = select i1 %48, ptr @.str.44, ptr @.str.56
  br label %95

95:                                               ; preds = %90, %93, %37, %67
  %96 = phi i1 [ true, %67 ], [ true, %37 ], [ %48, %93 ], [ true, %90 ]
  %97 = phi ptr [ @.str.44, %67 ], [ @.str.44, %37 ], [ %94, %93 ], [ @.str.44, %90 ]
  %98 = phi ptr [ %65, %67 ], [ @.str.44, %37 ], [ %65, %93 ], [ %91, %90 ]
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %100 = load i32, ptr %99, align 8, !tbaa !11
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %100, ptr noundef nonnull %97, ptr noundef %98, i32 noundef %100) #19
  br i1 %27, label %109, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !85
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %104, align 8, !tbaa !86
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %107) #19
  br label %109

109:                                              ; preds = %106, %102, %95
  %110 = and i1 %29, %96
  br i1 %110, label %111, label %125

111:                                              ; preds = %109
  %112 = load ptr, ptr @sel_region_bb_info, align 8
  %113 = load i32, ptr %99, align 8, !tbaa !11
  %114 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %112, i32 noundef %113) #19
  %115 = load ptr, ptr %114, align 8, !tbaa !90
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
  %123 = load ptr, ptr %122, align 8, !tbaa !10
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %119, !llvm.loop !92

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
  %136 = load i32, ptr %99, align 8, !tbaa !11
  %137 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %135, i32 noundef %136) #19
  %138 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !93
  %140 = load i32, ptr @global_level, align 4, !tbaa !37
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %137, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !94
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
  %156 = load i32, ptr %99, align 8, !tbaa !11
  %157 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %155, i32 noundef %156) #19
  %158 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %157, i64 0, i32 1
  %159 = load i8, ptr %158, align 8, !tbaa !95
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = load ptr, ptr %157, align 8, !tbaa !97
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
  %174 = load ptr, ptr %173, align 8, !tbaa !10
  %175 = icmp eq ptr %174, %45
  br i1 %175, label %176, label %170, !llvm.loop !98

176:                                              ; preds = %170, %167, %165
  %177 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 5, i64 1, ptr %0)
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %179 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %178) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !99
  store ptr %179, ptr %36, align 8, !tbaa.struct !100
  %180 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %179, ptr noundef nonnull %3) #19, !range !40
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %176, %190
  %183 = load ptr, ptr %3, align 8, !tbaa !6
  br i1 %96, label %189, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !101
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
  %193 = call fastcc zeroext i8 @ei_cond(i32 %191, ptr %192, ptr noundef nonnull %3) #19, !range !40
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %182, !llvm.loop !103

195:                                              ; preds = %190, %176, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !79
  %198 = load ptr, ptr @cfun, align 8, !tbaa !6
  %199 = getelementptr inbounds %struct.function, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !75
  %201 = getelementptr inbounds %struct.control_flow_graph, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !80
  %203 = icmp eq ptr %197, %202
  br i1 %203, label %204, label %37, !llvm.loop !104

204:                                              ; preds = %195, %11
  %205 = tail call i32 @fputc(i32 125, ptr %0)
  tail call fastcc void @restore_dump() #19
  store i8 0, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
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
define internal fastcc noundef zeroext i8 @has_preds_in_current_region_p(ptr noundef %0) unnamed_addr #0 {
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
  store i32 0, ptr %3, align 8, !tbaa.struct !99
  %9 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !100
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %2) #19, !range !40
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7, %17
  %13 = load ptr, ptr %2, align 8, !tbaa !6
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = tail call zeroext i8 @in_current_region_p(ptr noundef %14) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %18 = load i32, ptr %3, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = call fastcc zeroext i8 @ei_cond(i32 %18, ptr %19, ptr noundef nonnull %2) #19, !range !40
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %12, !llvm.loop !106

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
define internal fastcc nonnull ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_dump_cfg_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !10
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
define internal fastcc nonnull ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !40
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @sel_dump_cfg_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !107
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %1, align 8, !tbaa !105
  br i1 %6, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  br label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = icmp eq ptr %13, %15
  %17 = select i1 %16, i32 3, i32 1
  %18 = select i1 %16, ptr @.str.66, ptr @.str.44
  br label %19

19:                                               ; preds = %8, %11
  %20 = phi ptr [ %10, %8 ], [ %15, %11 ]
  %21 = phi i32 [ 10, %8 ], [ %17, %11 ]
  %22 = phi ptr [ @.str.65, %8 ], [ %18, %11 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !11
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %24, i32 noundef %26, i32 noundef %21, ptr noundef nonnull %22) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
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
  %16 = load i32, ptr %0, align 8, !tbaa !108
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 687, ptr noundef nonnull @.str.8) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_av_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_av_set(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_lv_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_lv_set(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_ilist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call fastcc void @dump_ilist(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_blist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_blist(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_insn_vector(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_insn_vector(ptr noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_hard_reg_set(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @switch_dump(ptr noundef %2) #19
  tail call void @dump_hard_reg_set(ptr noundef nonnull @.str.44, i64 noundef %0) #19
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = alloca [3 x i8], align 16
  store i16 10, ptr %6, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %6) #19
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %8 = call i32 @fputs(ptr nonnull %6, ptr %7)
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !6
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  br label %12

12:                                               ; preds = %5, %9
  call fastcc void @restore_dump() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_debug_cfg() local_unnamed_addr #0 {
  tail call void @sel_debug_cfg_1(i32 noundef 766) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @debug_mem_addr_value(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 937, ptr noundef nonnull @.str.8) #18
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !124
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i8 [ %13, %11 ], [ 0, %6 ]
  %16 = tail call i32 %7(i8 noundef zeroext %15) #18
  %17 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #18
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = tail call ptr @cselib_lookup(ptr noundef %19, i32 noundef %16, i32 noundef 0) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %18, align 8, !tbaa !10
  %24 = tail call ptr @cselib_subst_to_values(ptr noundef %23) #18
  store ptr %24, ptr %18, align 8, !tbaa !10
  br label %25

25:                                               ; preds = %22, %14
  %26 = tail call ptr @canon_rtx(ptr noundef nonnull %17) #18
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !10
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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !14, i64 80}
!12 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !13, i64 72, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96}
!13 = !{!"long", !8, i64 0}
!14 = !{!"int", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !7, i64 0}
!18 = !{!"vinsn_def", !7, i64 0, !19, i64 8, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !8, i64 72}
!19 = !{!"idata_def", !14, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!20 = !{!18, !14, i64 8}
!21 = !{!18, !14, i64 64}
!22 = !{!18, !14, i64 68}
!23 = !{!24, !7, i64 0}
!24 = !{!"_expr", !7, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !7, i64 48, !8, i64 56, !14, i64 57, !14, i64 57, !14, i64 57, !14, i64 57}
!25 = !{!24, !14, i64 8}
!26 = !{!24, !14, i64 12}
!27 = !{!24, !14, i64 16}
!28 = !{!24, !14, i64 24}
!29 = !{!24, !14, i64 32}
!30 = !{!24, !14, i64 28}
!31 = !{!24, !8, i64 56}
!32 = !{!33, !14, i64 68}
!33 = !{!"_sel_insn_data", !24, i64 0, !14, i64 64, !14, i64 68, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !34, i64 112, !7, i64 296, !14, i64 304, !14, i64 308, !14, i64 312, !14, i64 316, !14, i64 316, !14, i64 316}
!34 = !{!"deps", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !14, i64 32, !14, i64 36, !14, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !14, i64 80, !7, i64 88, !14, i64 96, !7, i64 104, !35, i64 112, !35, i64 144, !14, i64 176, !14, i64 180}
!35 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !14, i64 16, !7, i64 24}
!36 = !{!33, !14, i64 304}
!37 = !{!14, !14, i64 0}
!38 = !{!39, !7, i64 0}
!39 = !{!"", !7, i64 0, !8, i64 8, !8, i64 9}
!40 = !{i8 0, i8 2}
!41 = distinct !{!41, !16}
!42 = !{!39, !8, i64 8}
!43 = !{!39, !8, i64 9}
!44 = distinct !{!44, !16}
!45 = !{!35, !7, i64 0}
!46 = !{!47, !7, i64 0}
!47 = !{!"", !7, i64 0, !7, i64 8, !14, i64 16, !13, i64 24}
!48 = !{!47, !7, i64 8}
!49 = !{!50, !14, i64 16}
!50 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !14, i64 16, !8, i64 24}
!51 = !{!47, !14, i64 16}
!52 = !{!13, !13, i64 0}
!53 = !{!47, !13, i64 24}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = !{!50, !7, i64 0}
!57 = !{!58, !7, i64 0}
!58 = !{!"_bnd", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!59 = !{!58, !7, i64 8}
!60 = !{!61, !7, i64 0}
!61 = !{!"_list_node", !7, i64 0, !8, i64 8}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = !{i32 0, i32 2}
!66 = distinct !{!66, !16}
!67 = !{!68, !14, i64 0}
!68 = !{!"VEC_rtx_base", !14, i64 0, !14, i64 4, !8, i64 8}
!69 = distinct !{!69, !16}
!70 = !{!33, !14, i64 24}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = !{!76, !7, i64 8}
!76 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !7, i64 128, !14, i64 136, !14, i64 137, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139}
!77 = !{!78, !7, i64 0}
!78 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !7, i64 40, !14, i64 48, !8, i64 52, !8, i64 60, !14, i64 68, !14, i64 72}
!79 = !{!12, !7, i64 56}
!80 = !{!78, !7, i64 8}
!81 = !{!82, !7, i64 0}
!82 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !14, i64 32}
!83 = !{!82, !7, i64 8}
!84 = distinct !{!84, !16}
!85 = !{!12, !7, i64 24}
!86 = !{!87, !14, i64 0}
!87 = !{!"loop", !14, i64 0, !14, i64 4, !7, i64 8, !7, i64 16, !88, i64 24, !14, i64 32, !14, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !89, i64 80, !89, i64 96, !8, i64 112, !8, i64 113, !14, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!88 = !{!"lpt_decision", !14, i64 0, !14, i64 4}
!89 = !{!"", !13, i64 0, !13, i64 8}
!90 = !{!91, !7, i64 0}
!91 = !{!"", !7, i64 0, !7, i64 8, !14, i64 16}
!92 = distinct !{!92, !16}
!93 = !{!91, !14, i64 16}
!94 = !{!91, !7, i64 8}
!95 = !{!96, !8, i64 8}
!96 = !{!"", !7, i64 0, !8, i64 8}
!97 = !{!96, !7, i64 0}
!98 = distinct !{!98, !16}
!99 = !{i64 0, i64 4, !37, i64 8, i64 8, !6}
!100 = !{i64 0, i64 8, !6}
!101 = !{!102, !7, i64 8}
!102 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !13, i64 56}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = !{!102, !7, i64 0}
!106 = distinct !{!106, !16}
!107 = !{!102, !14, i64 48}
!108 = !{!109, !14, i64 0}
!109 = !{!"", !14, i64 0, !7, i64 8}
!110 = !{!111, !14, i64 0}
!111 = !{!"VEC_edge_base", !14, i64 0, !14, i64 4, !8, i64 8}
!112 = !{!113, !7, i64 1184}
!113 = !{!"gcc_target", !114, i64 0, !116, i64 368, !117, i64 664, !14, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !13, i64 1064, !13, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !118, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !13, i64 1464, !119, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !120, i64 1784, !121, i64 1792, !122, i64 1896, !123, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!114 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !115, i64 24, !115, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!115 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!116 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!117 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!118 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!119 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!120 = !{!"c", !7, i64 0}
!121 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!122 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!123 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!124 = !{!125, !8, i64 32}
!125 = !{!"mem_attrs", !7, i64 0, !7, i64 8, !7, i64 16, !14, i64 24, !14, i64 28, !8, i64 32}
