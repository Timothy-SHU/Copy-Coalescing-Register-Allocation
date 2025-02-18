; ModuleID = 'sel-sched-dump.c'
source_filename = "sel-sched-dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.vinsn_def = type { ptr, %struct.idata_def, i32, i32, i32, i32, i8 }
%struct.idata_def = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct._expr = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_sel_insn_data_def_base = type { i32, i32, [1 x %struct._sel_insn_data] }
%struct._sel_insn_data = type { %struct._expr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.deps, ptr, i32, i32, i32, i8 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct._list_node = type { ptr, %union.anon }
%union.anon = type { %struct._fence }
%struct._fence = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i8 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_sel_region_bb_info_def_base = type { i32, i32, [1 x %struct.sel_region_bb_info_def] }
%struct.sel_region_bb_info_def = type { ptr, ptr, i32 }
%struct.VEC_sel_global_bb_info_def_base = type { i32, i32, [1 x %struct.sel_global_bb_info_def] }
%struct.sel_global_bb_info_def = type { ptr, i8 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@sched_dump_to_dot_p = dso_local local_unnamed_addr global i8 0, align 1
@sched_dump = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bb:%d;\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"type:%s;\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"count:%d;\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cost:%d;\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"spec:%d;\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"use:%d;\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"prio:%d;\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"times:%d;\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ds:%d;\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"orig_bb:%d;\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"target:%d;\00", align 1
@s_i_d = external local_unnamed_addr global ptr, align 8
@sched_luids = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"uid:%d;\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"seqno:%d;\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"cycle:%d;\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.29 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"[to: %d; ptr: \00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"NULL \00", align 1
@sel_print_insn.buf = internal global [80 x i8] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"%s %4d\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"+ %4d\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"  %4d\00", align 1
@sel_prepare_string_for_dot_label.specials_from = internal global [7 x [2 x i8]] [[2 x i8] c"<\00", [2 x i8] c">\00", [2 x i8] c"{\00", [2 x i8] c"|\00", [2 x i8] c"}\00", [2 x i8] c"\22\00", [2 x i8] c"\0A\00"], align 1
@sel_prepare_string_for_dot_label.specials_to = internal global [7 x [3 x i8]] [[3 x i8] c"\\<\00", [3 x i8] c"\\>\00", [3 x i8] c"\\{\00", [3 x i8] c"\\|\00", [3 x i8] c"\\}\00", [3 x i8] c"\\\22\00", [3 x i8] c"\\l\00"], align 16
@sel_dump_cfg_p = internal unnamed_addr global i1 false, align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sel_dump_cfg_fileno = internal unnamed_addr global i32 -1, align 4
@sel_debug_cfg_fileno = internal unnamed_addr global i32 -1, align 4
@.str.41 = private unnamed_addr constant [14 x i8] c"sel-debug-cfg\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"sel-sched-dump.c\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@saved_sched_dump = internal unnamed_addr global ptr null, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.44 = private unnamed_addr constant [5 x i8] c"%s{ \00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @sel_print_rtl(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %3 = tail call i32 @print_rtl_single(ptr noundef %2, ptr noundef %0) #17
  ret void
}

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_insn_rtx_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca [2048 x i8], align 16
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %1, i32 14
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = alloca [3 x i8], align 16
  store i16 40, ptr %10, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10)
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %15 = tail call i32 @fputc(i32 40, ptr %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = and i32 %6, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %24)
  %26 = shl nsw i32 %25, 1
  %27 = or disjoint i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  %30 = load i32, ptr %23, align 8, !tbaa !46
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %29, i64 noundef %28, ptr noundef nonnull @.str.2, i32 noundef %30)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %29)
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %33 = call i32 @fputs(ptr nonnull %29, ptr %32)
  br label %39

34:                                               ; preds = %19
  %35 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !46
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef %37)
  br label %39

39:                                               ; preds = %22, %34, %16
  %40 = and i32 %6, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #17
  call void @print_insn(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 0) #17
  %43 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3)
  %47 = shl nsw i32 %46, 1
  %48 = or disjoint i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = alloca i8, i64 %49, align 16
  %51 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %50, i64 noundef %49, ptr noundef nonnull @.str.3, ptr noundef nonnull %3)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %50)
  %52 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %53 = call i32 @fputs(ptr nonnull %50, ptr %52)
  br label %57

54:                                               ; preds = %42
  %55 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.3, ptr noundef nonnull %3)
  br label %57

57:                                               ; preds = %54, %45
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #17
  br label %58

58:                                               ; preds = %57, %39
  %59 = and i32 %6, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %61
  %67 = icmp eq ptr %63, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !54
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ -1, %66 ]
  %73 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %72)
  %74 = shl nsw i32 %73, 1
  %75 = or disjoint i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = alloca i8, i64 %76, align 16
  br i1 %67, label %81, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !54
  br label %81

81:                                               ; preds = %71, %78
  %82 = phi i32 [ %80, %78 ], [ -1, %71 ]
  %83 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %77, i64 noundef %76, ptr noundef nonnull @.str.4, i32 noundef %82)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %77)
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %85 = call i32 @fputs(ptr nonnull %77, ptr %84)
  br label %95

86:                                               ; preds = %61
  %87 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %88 = icmp eq ptr %63, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !54
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi i32 [ %91, %89 ], [ -1, %86 ]
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.4, i32 noundef %93)
  br label %95

95:                                               ; preds = %81, %92, %58
  %96 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = alloca [3 x i8], align 16
  store i16 41, ptr %99, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %99)
  %100 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %101 = call i32 @fputs(ptr nonnull %99, ptr %100)
  br label %105

102:                                              ; preds = %95
  %103 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %104 = call i32 @fputc(i32 41, ptr %103)
  br label %105

105:                                              ; preds = %102, %98
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sel_prepare_string_for_dot_label(ptr noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = ptrtoint ptr %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = add i32 %3, 1
  br label %5

5:                                                ; preds = %1, %83
  %6 = phi i64 [ 0, %1 ], [ %84, %83 ]
  %7 = getelementptr inbounds [7 x [2 x i8]], ptr @sel_prepare_string_for_dot_label.specials_from, i64 0, i64 %6
  %8 = getelementptr inbounds [7 x [3 x i8]], ptr @sel_prepare_string_for_dot_label.specials_to, i64 0, i64 %6
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %10 = trunc i64 %9 to i32
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7)
  %12 = trunc i64 %11 to i32
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %14 = trunc i64 %13 to i32
  %15 = sub nsw i32 %14, %12
  %16 = shl i64 %11, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp sgt i32 %15, 0
  %19 = icmp sgt i32 %14, 0
  %20 = shl i64 %13, 32
  %21 = ashr exact i64 %20, 32
  %22 = sext i32 %15 to i64
  %23 = zext i32 %15 to i64
  %24 = and i64 %13, 4294967295
  br label %25

25:                                               ; preds = %79, %5
  %26 = phi ptr [ %0, %5 ], [ %80, %79 ]
  %27 = phi i32 [ %10, %5 ], [ %81, %79 ]
  %28 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %7)
  %29 = ptrtoint ptr %28 to i64
  %30 = icmp eq ptr %28, null
  br i1 %30, label %79, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %28, i64 %17
  %33 = sext i32 %27 to i64
  %34 = getelementptr i8, ptr %0, i64 %33
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %32 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  br i1 %18, label %48, label %39

39:                                               ; preds = %31
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %39
  %42 = add i32 %4, %27
  %43 = trunc i64 %29 to i32
  %44 = add i32 %12, %43
  %45 = sub i32 %42, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr i8, ptr %32, i64 %22
  br label %61

48:                                               ; preds = %31
  %49 = icmp sgt i32 %38, -1
  br i1 %49, label %50, label %68

50:                                               ; preds = %48
  %51 = and i64 %37, 4294967295
  %52 = getelementptr i8, ptr %32, i64 %23
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %51, %50 ], [ %58, %53 ]
  %55 = getelementptr inbounds i8, ptr %32, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !46
  %57 = getelementptr i8, ptr %52, i64 %54
  store i8 %56, ptr %57, align 1, !tbaa !46
  %58 = add nsw i64 %54, -1
  %59 = trunc i64 %54 to i32
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %53, label %68, !llvm.loop !56

61:                                               ; preds = %41, %61
  %62 = phi i64 [ 0, %41 ], [ %66, %61 ]
  %63 = getelementptr inbounds i8, ptr %32, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !46
  %65 = getelementptr i8, ptr %47, i64 %62
  store i8 %64, ptr %65, align 1, !tbaa !46
  %66 = add nuw nsw i64 %62, 1
  %67 = icmp eq i64 %66, %46
  br i1 %67, label %68, label %61, !llvm.loop !57

68:                                               ; preds = %61, %53, %39, %48
  br i1 %19, label %69, label %76

69:                                               ; preds = %68, %69
  %70 = phi i64 [ %74, %69 ], [ 0, %68 ]
  %71 = getelementptr inbounds i8, ptr %8, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !46
  %73 = getelementptr inbounds i8, ptr %28, i64 %70
  store i8 %72, ptr %73, align 1, !tbaa !46
  %74 = add nuw nsw i64 %70, 1
  %75 = icmp eq i64 %74, %24
  br i1 %75, label %76, label %69, !llvm.loop !58

76:                                               ; preds = %69, %68
  %77 = getelementptr inbounds i8, ptr %28, i64 %21
  %78 = add nsw i32 %27, %15
  br label %79

79:                                               ; preds = %25, %76
  %80 = phi ptr [ %77, %76 ], [ null, %25 ]
  %81 = phi i32 [ %78, %76 ], [ %27, %25 ]
  %82 = icmp eq ptr %80, null
  br i1 %82, label %83, label %25, !llvm.loop !59

83:                                               ; preds = %79
  %84 = add nuw nsw i64 %6, 1
  %85 = icmp eq i64 %84, 7
  br i1 %85, label %86, label %5, !llvm.loop !60

86:                                               ; preds = %83
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_insn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_insn_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef 4)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_insn_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef 14)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_vinsn_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 30
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = alloca [3 x i8], align 16
  store i16 40, ptr %9, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9)
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %14 = tail call i32 @fputc(i32 40, ptr %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = and i32 %5, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !61
  %20 = or disjoint i32 %3, 4
  call void @dump_insn_rtx_1(ptr noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !64
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %32)
  %34 = shl nsw i32 %33, 1
  %35 = or disjoint i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  %38 = load i32, ptr %28, align 8, !tbaa !64
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %37, i64 noundef %36, ptr noundef nonnull @.str.7, ptr noundef %41)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %37)
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %44 = call i32 @fputs(ptr nonnull %37, ptr %43)
  br label %53

45:                                               ; preds = %24
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !64
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.7, ptr noundef %51)
  br label %53

53:                                               ; preds = %27, %45, %21
  %54 = and i32 %5, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !65
  %62 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %61)
  %63 = shl nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = alloca i8, i64 %65, align 16
  %67 = load i32, ptr %60, align 8, !tbaa !65
  %68 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %66, i64 noundef %65, ptr noundef nonnull @.str.8, i32 noundef %67)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %66)
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %70 = call i32 @fputs(ptr nonnull %66, ptr %69)
  br label %76

71:                                               ; preds = %56
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %73 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !65
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.8, i32 noundef %74)
  br label %76

76:                                               ; preds = %59, %71, %53
  %77 = and i32 %5, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !66
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %98, label %83

83:                                               ; preds = %79
  %84 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %81)
  %88 = shl nsw i32 %87, 1
  %89 = or disjoint i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = alloca i8, i64 %90, align 16
  %92 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %91, i64 noundef %90, ptr noundef nonnull @.str.9, i32 noundef %81)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %91)
  %93 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %94 = call i32 @fputs(ptr nonnull %91, ptr %93)
  br label %98

95:                                               ; preds = %83
  %96 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.9, i32 noundef %81)
  br label %98

98:                                               ; preds = %79, %95, %86, %76
  %99 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = alloca [3 x i8], align 16
  store i16 41, ptr %102, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %102)
  %103 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %104 = call i32 @fputs(ptr nonnull %102, ptr %103)
  br label %108

105:                                              ; preds = %98
  %106 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %107 = call i32 @fputc(i32 41, ptr %106)
  br label %108

108:                                              ; preds = %105, %101
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_vinsn(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  tail call void @dump_vinsn_1(ptr noundef %0, i32 noundef 14)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_vinsn(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_vinsn_1(ptr noundef %0, i32 noundef 30)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_expr_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 254
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = alloca [3 x i8], align 16
  store i16 91, ptr %9, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9)
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %14 = tail call i32 @fputc(i32 91, ptr %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = and i32 %5, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !67
  %20 = or disjoint i32 %3, 14
  call void @dump_vinsn_1(ptr noundef %19, i32 noundef %20)
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !69
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %26)
  %33 = shl nsw i32 %32, 1
  %34 = or disjoint i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  %37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %36, i64 noundef %35, ptr noundef nonnull @.str.11, i32 noundef %26)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %36)
  %38 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %39 = call i32 @fputs(ptr nonnull %36, ptr %38)
  br label %43

40:                                               ; preds = %28
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.11, i32 noundef %26)
  br label %43

43:                                               ; preds = %24, %40, %31, %21
  %44 = and i32 %5, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !70
  %49 = icmp eq i32 %48, 10000
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %48)
  %55 = shl nsw i32 %54, 1
  %56 = or disjoint i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = alloca i8, i64 %57, align 16
  %59 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %58, i64 noundef %57, ptr noundef nonnull @.str.12, i32 noundef %48)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %58)
  %60 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %61 = call i32 @fputs(ptr nonnull %58, ptr %60)
  br label %65

62:                                               ; preds = %50
  %63 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.12, i32 noundef %48)
  br label %65

65:                                               ; preds = %46, %62, %53, %43
  %66 = and i32 %5, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %65
  %69 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !71
  %74 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %73)
  %75 = shl nsw i32 %74, 1
  %76 = or disjoint i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = alloca i8, i64 %77, align 16
  %79 = load i32, ptr %72, align 8, !tbaa !71
  %80 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %78, i64 noundef %77, ptr noundef nonnull @.str.13, i32 noundef %79)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %78)
  %81 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %82 = call i32 @fputs(ptr nonnull %78, ptr %81)
  br label %88

83:                                               ; preds = %68
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !71
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.13, i32 noundef %86)
  br label %88

88:                                               ; preds = %71, %83, %65
  %89 = and i32 %5, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !72
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %91
  %96 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %93)
  %100 = shl nsw i32 %99, 1
  %101 = or disjoint i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = alloca i8, i64 %102, align 16
  %104 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %103, i64 noundef %102, ptr noundef nonnull @.str.14, i32 noundef %93)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %103)
  %105 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %106 = call i32 @fputs(ptr nonnull %103, ptr %105)
  br label %110

107:                                              ; preds = %95
  %108 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.14, i32 noundef %93)
  br label %110

110:                                              ; preds = %91, %107, %98, %88
  %111 = and i32 %5, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !73
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %113
  %118 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %115)
  %122 = shl nsw i32 %121, 1
  %123 = or disjoint i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = alloca i8, i64 %124, align 16
  %126 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %125, i64 noundef %124, ptr noundef nonnull @.str.15, i32 noundef %115)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %125)
  %127 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %128 = call i32 @fputs(ptr nonnull %125, ptr %127)
  br label %132

129:                                              ; preds = %117
  %130 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.15, i32 noundef %115)
  br label %132

132:                                              ; preds = %113, %129, %120, %110
  %133 = and i32 %5, 64
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 6
  %137 = load i32, ptr %136, align 4, !tbaa !74
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %135
  %140 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  %143 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.16, i32 noundef %137)
  %144 = shl nsw i32 %143, 1
  %145 = or disjoint i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = alloca i8, i64 %146, align 16
  %148 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %147, i64 noundef %146, ptr noundef nonnull @.str.16, i32 noundef %137)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %147)
  %149 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %150 = call i32 @fputs(ptr nonnull %147, ptr %149)
  br label %154

151:                                              ; preds = %139
  %152 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.16, i32 noundef %137)
  br label %154

154:                                              ; preds = %135, %151, %142, %132
  %155 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %156 = load i8, ptr %155, align 8, !tbaa !75
  %157 = sext i8 %156 to i32
  %158 = icmp slt i8 %156, 1
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159
  %163 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %157)
  %164 = shl nsw i32 %163, 1
  %165 = or disjoint i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = alloca i8, i64 %166, align 16
  %168 = load i8, ptr %155, align 8, !tbaa !75
  %169 = sext i8 %168 to i32
  %170 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %167, i64 noundef %166, ptr noundef nonnull @.str.17, i32 noundef %169)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %167)
  %171 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %172 = call i32 @fputs(ptr nonnull %167, ptr %171)
  br label %176

173:                                              ; preds = %159
  %174 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.17, i32 noundef %157)
  br label %176

176:                                              ; preds = %154, %173, %162
  %177 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = alloca [3 x i8], align 16
  store i16 93, ptr %180, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %180)
  %181 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %182 = call i32 @fputs(ptr nonnull %180, ptr %181)
  br label %186

183:                                              ; preds = %176
  %184 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %185 = call i32 @fputc(i32 93, ptr %184)
  br label %186

186:                                              ; preds = %183, %179
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  tail call void @dump_expr_1(ptr noundef %0, i32 noundef 254)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_expr_1(ptr noundef %0, i32 noundef 254)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_insn_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 126
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %10 = tail call i32 @fputc(i32 40, ptr %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = and i32 %5, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_int_base, ptr %16, i64 0, i32 2, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %15, i64 0, i32 2, i64 %22
  %24 = or disjoint i32 %3, 254
  tail call void @dump_expr_1(ptr noundef nonnull %23, i32 noundef %24)
  %25 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %14
  %28 = alloca [3 x i8], align 16
  store i16 59, ptr %28, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %28)
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %30 = call i32 @fputs(ptr nonnull %28, ptr %29)
  br label %71

31:                                               ; preds = %14
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %33 = tail call i32 @fputc(i32 59, ptr %32)
  br label %71

34:                                               ; preds = %11
  %35 = and i32 %5, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = or disjoint i32 %3, 4
  tail call void @dump_insn_rtx_1(ptr noundef %0, i32 noundef %38)
  %39 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = alloca [3 x i8], align 16
  store i16 59, ptr %42, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %42)
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %44 = call i32 @fputs(ptr nonnull %42, ptr %43)
  br label %71

45:                                               ; preds = %37
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %47 = tail call i32 @fputc(i32 59, ptr %46)
  br label %71

48:                                               ; preds = %34
  %49 = and i32 %5, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !46
  %57 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %56)
  %58 = shl nsw i32 %57, 1
  %59 = or disjoint i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = alloca i8, i64 %60, align 16
  %62 = load i32, ptr %55, align 8, !tbaa !46
  %63 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %61, i64 noundef %60, ptr noundef nonnull @.str.20, i32 noundef %62)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %61)
  %64 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %65 = call i32 @fputs(ptr nonnull %61, ptr %64)
  br label %71

66:                                               ; preds = %51
  %67 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !46
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.20, i32 noundef %69)
  br label %71

71:                                               ; preds = %45, %41, %54, %66, %48, %27, %31
  %72 = and i32 %5, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %118, label %74

74:                                               ; preds = %71
  %75 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr @s_i_d, align 8
  %79 = load ptr, ptr @sched_luids, align 8
  %80 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !46
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.VEC_int_base, ptr %79, i64 0, i32 2, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %78, i64 0, i32 2, i64 %85, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !76
  %88 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %87)
  %89 = shl nsw i32 %88, 1
  %90 = or disjoint i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = alloca i8, i64 %91, align 16
  %93 = load ptr, ptr @s_i_d, align 8
  %94 = load ptr, ptr @sched_luids, align 8
  %95 = load i32, ptr %80, align 8, !tbaa !46
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.VEC_int_base, ptr %94, i64 0, i32 2, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !50
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %93, i64 0, i32 2, i64 %99, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !76
  %102 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %92, i64 noundef %91, ptr noundef nonnull @.str.21, i32 noundef %101)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %92)
  %103 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %104 = call i32 @fputs(ptr nonnull %92, ptr %103)
  br label %118

105:                                              ; preds = %74
  %106 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %107 = load ptr, ptr @s_i_d, align 8
  %108 = load ptr, ptr @sched_luids, align 8
  %109 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !46
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.VEC_int_base, ptr %108, i64 0, i32 2, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !50
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %107, i64 0, i32 2, i64 %114, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !76
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.21, i32 noundef %116)
  br label %118

118:                                              ; preds = %77, %105, %71
  %119 = and i32 %5, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr @s_i_d, align 8
  %123 = load ptr, ptr @sched_luids, align 8
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !46
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.VEC_int_base, ptr %123, i64 0, i32 2, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !50
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %122, i64 0, i32 2, i64 %129, i32 10
  %131 = load i32, ptr %130, align 8, !tbaa !80
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %121
  %134 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %131)
  %138 = shl nsw i32 %137, 1
  %139 = or disjoint i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = alloca i8, i64 %140, align 16
  %142 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %141, i64 noundef %140, ptr noundef nonnull @.str.22, i32 noundef %131)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %141)
  %143 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %144 = call i32 @fputs(ptr nonnull %141, ptr %143)
  br label %148

145:                                              ; preds = %133
  %146 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.22, i32 noundef %131)
  br label %148

148:                                              ; preds = %121, %145, %136, %118
  %149 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %153 = call i32 @fputc(i32 41, ptr %152)
  br label %154

154:                                              ; preds = %151, %148
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_insn(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  tail call void @dump_insn_1(ptr noundef %0, i32 noundef 10)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_insn(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_insn_1(ptr noundef %0, i32 noundef 126)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_av_set(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !35
  %3 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %7 = tail call i32 @fputc(i32 123, ptr %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._list_node, ptr %9, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %25
  %14 = phi ptr [ %30, %25 ], [ %12, %11 ]
  %15 = phi ptr [ %26, %25 ], [ %2, %11 ]
  call void @dump_expr_1(ptr noundef %14, i32 noundef 254)
  %16 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %20 = call i32 @fputc(i32 32, ptr %19)
  br label %25

21:                                               ; preds = %13
  %22 = alloca [3 x i8], align 16
  store i16 10, ptr %22, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %22)
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %24 = call i32 @fputs(ptr nonnull %22, ptr %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load ptr, ptr %15, align 8, !tbaa !35
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct._list_node, ptr %27, i64 0, i32 1
  %30 = select i1 %28, ptr %14, ptr %29
  br i1 %28, label %31, label %13, !llvm.loop !81

31:                                               ; preds = %25, %8
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %36 = call i32 @fputc(i32 125, ptr %35)
  br label %37

37:                                               ; preds = %34, %31
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_lv_set(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  %2 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = alloca [3 x i8], align 16
  store i16 123, ptr %5, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %5)
  %6 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %7 = call i32 @fputs(ptr nonnull %5, ptr %6)
  br label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %10 = tail call i32 @fputc(i32 123, ptr %9)
  br label %11

11:                                               ; preds = %4, %8
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = alloca [7 x i8], align 16
  store i32 7104878, ptr %17, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %17)
  %18 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %19 = call i32 @fputs(ptr nonnull %17, ptr %18)
  br label %153

20:                                               ; preds = %13
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %22 = call i64 @fwrite(ptr nonnull @.str.26, i64 3, i64 1, ptr %21)
  br label %153

23:                                               ; preds = %11
  %24 = load ptr, ptr %0, align 8, !tbaa !82
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr @bitmap_zero_bits, ptr %24
  %27 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !83
  %29 = shl i32 %28, 7
  %30 = getelementptr inbounds %struct.bitmap_element_def, ptr %26, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !85
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = or disjoint i32 %29, %33
  br label %35

35:                                               ; preds = %149, %23
  %36 = phi i64 [ %31, %23 ], [ %151, %149 ]
  %37 = phi i32 [ 0, %23 ], [ %93, %149 ]
  %38 = phi i32 [ %34, %23 ], [ %152, %149 ]
  %39 = phi ptr [ %26, %23 ], [ %95, %149 ]
  %40 = phi i32 [ 0, %23 ], [ %150, %149 ]
  %41 = icmp eq i64 %36, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %70, %35
  %43 = phi i64 [ %36, %35 ], [ %75, %70 ]
  %44 = phi i32 [ %37, %35 ], [ %71, %70 ]
  %45 = phi i32 [ %38, %35 ], [ %72, %70 ]
  %46 = phi ptr [ %39, %35 ], [ %63, %70 ]
  %47 = and i64 %43, 1
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %91

49:                                               ; preds = %42, %49
  %50 = phi i32 [ %53, %49 ], [ %45, %42 ]
  %51 = phi i64 [ %52, %49 ], [ %43, %42 ]
  %52 = lshr exact i64 %51, 1
  %53 = add i32 %50, 1
  %54 = and i64 %51, 2
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %49, label %91, !llvm.loop !86

56:                                               ; preds = %35
  %57 = add i32 %38, 63
  %58 = and i32 %57, -64
  %59 = add i32 %37, 1
  br label %60

60:                                               ; preds = %87, %56
  %61 = phi i64 [ %36, %56 ], [ %82, %87 ]
  %62 = phi i32 [ %58, %56 ], [ %90, %87 ]
  %63 = phi ptr [ %39, %56 ], [ %85, %87 ]
  %64 = phi i32 [ %59, %56 ], [ 0, %87 ]
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %81, label %66

66:                                               ; preds = %60
  %67 = add i32 %62, 128
  %68 = shl i32 %64, 6
  %69 = sub i32 %67, %68
  br label %70

70:                                               ; preds = %66, %77
  %71 = phi i32 [ %79, %77 ], [ %64, %66 ]
  %72 = phi i32 [ %78, %77 ], [ %62, %66 ]
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %63, i64 0, i32 3, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !85
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %42

77:                                               ; preds = %70
  %78 = add i32 %72, 64
  %79 = add i32 %71, 1
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %70, !llvm.loop !87

81:                                               ; preds = %77, %60
  %82 = phi i64 [ %61, %60 ], [ %75, %77 ]
  %83 = phi i32 [ %62, %60 ], [ %69, %77 ]
  %84 = phi i32 [ %64, %60 ], [ 2, %77 ]
  %85 = load ptr, ptr %63, align 8, !tbaa !88
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.bitmap_element_def, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !83
  %90 = shl i32 %89, 7
  br label %60, !llvm.loop !89

91:                                               ; preds = %81, %49, %42
  %92 = phi i64 [ %43, %42 ], [ %52, %49 ], [ %82, %81 ]
  %93 = phi i32 [ %44, %42 ], [ %44, %49 ], [ %84, %81 ]
  %94 = phi i32 [ %45, %42 ], [ %53, %49 ], [ %83, %81 ]
  %95 = phi ptr [ %46, %42 ], [ %46, %49 ], [ %85, %81 ]
  %96 = phi i1 [ false, %42 ], [ false, %49 ], [ true, %81 ]
  br i1 %96, label %153, label %97

97:                                               ; preds = %91
  %98 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %94)
  %102 = shl nsw i32 %101, 1
  %103 = or disjoint i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = alloca i8, i64 %104, align 16
  %106 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %105, i64 noundef %104, ptr noundef nonnull @.str.27, i32 noundef %94)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %105)
  %107 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %108 = call i32 @fputs(ptr nonnull %105, ptr %107)
  br label %112

109:                                              ; preds = %97
  %110 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.27, i32 noundef %94)
  br label %112

112:                                              ; preds = %109, %100
  %113 = icmp ult i32 %94, 53
  br i1 %113, label %114, label %138

114:                                              ; preds = %112
  %115 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %114
  %118 = zext nneg i32 %94 to i64
  %119 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !35
  %121 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.28, ptr noundef %120)
  %122 = shl nsw i32 %121, 1
  %123 = or disjoint i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = alloca i8, i64 %124, align 16
  %126 = load ptr, ptr %119, align 8, !tbaa !35
  %127 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %125, i64 noundef %124, ptr noundef nonnull @.str.28, ptr noundef %126)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %125)
  %128 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %129 = call i32 @fputs(ptr nonnull %125, ptr %128)
  br label %136

130:                                              ; preds = %114
  %131 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %132 = zext nneg i32 %94 to i64
  %133 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !35
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.28, ptr noundef %134)
  br label %136

136:                                              ; preds = %130, %117
  %137 = add nsw i32 %40, 1
  br label %138

138:                                              ; preds = %136, %112
  %139 = phi i32 [ %137, %136 ], [ %40, %112 ]
  %140 = add nsw i32 %139, 1
  %141 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %142 = icmp ne i8 %141, 0
  %143 = icmp eq i32 %140, 12
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = alloca [3 x i8], align 16
  store i16 10, ptr %146, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %146)
  %147 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %148 = call i32 @fputs(ptr nonnull %146, ptr %147)
  br label %149

149:                                              ; preds = %138, %145
  %150 = phi i32 [ 0, %145 ], [ %140, %138 ]
  %151 = lshr i64 %92, 1
  %152 = add i32 %94, 1
  br label %35, !llvm.loop !90

153:                                              ; preds = %91, %16, %20
  %154 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %157, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %157)
  %158 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %159 = call i32 @fputs(ptr nonnull %157, ptr %158)
  br label %163

160:                                              ; preds = %153
  %161 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %162 = call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %161)
  br label %163

163:                                              ; preds = %156, %160
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_blist(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1, %49
  %4 = phi ptr [ %50, %49 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %11)
  %13 = shl nsw i32 %12, 1
  %14 = or disjoint i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  %17 = load ptr, ptr %5, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %16, i64 noundef %15, ptr noundef nonnull @.str.30, i32 noundef %19)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %16)
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %22 = call i32 @fputs(ptr nonnull %16, ptr %21)
  br label %29

23:                                               ; preds = %3
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %25 = load ptr, ptr %5, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.30, i32 noundef %27)
  br label %29

29:                                               ; preds = %23, %8
  %30 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %37, %33 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct._list_node, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  call void @dump_insn_1(ptr noundef %36, i32 noundef 10)
  %37 = load ptr, ptr %34, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33, !llvm.loop !93

39:                                               ; preds = %33, %29
  %40 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %43, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %43)
  %44 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %45 = call i32 @fputs(ptr nonnull %43, ptr %44)
  br label %49

46:                                               ; preds = %39
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %48 = call i64 @fwrite(ptr nonnull @.str.31, i64 2, i64 1, ptr %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load ptr, ptr %4, align 8, !tbaa !94
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %3, !llvm.loop !96

52:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_flist(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %16
  %4 = phi ptr [ %17, %16 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._list_node, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  call void @dump_insn_1(ptr noundef %6, i32 noundef 84)
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = alloca [3 x i8], align 16
  store i16 32, ptr %10, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10)
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %3
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %15 = call i32 @fputc(i32 32, ptr %14)
  br label %16

16:                                               ; preds = %9, %13
  %17 = load ptr, ptr %4, align 8, !tbaa !94
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !97

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_insn_vector(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %28, %1
  %4 = phi i64 [ %29, %28 ], [ 0, %1 ]
  br i1 %2, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !98
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %4, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  br label %12

12:                                               ; preds = %3, %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i1 [ false, %9 ], [ true, %5 ], [ true, %3 ]
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %13, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  call void @dump_insn_1(ptr noundef nonnull %13, i32 noundef 10)
  br label %28

18:                                               ; preds = %15
  %19 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = alloca [11 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %22, ptr noundef nonnull align 1 dereferenceable(6) @.str.32, i64 6, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %22)
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %24 = call i32 @fputs(ptr nonnull %22, ptr %23)
  br label %28

25:                                               ; preds = %18
  %26 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %27 = call i64 @fwrite(ptr nonnull @.str.32, i64 5, i64 1, ptr %26)
  br label %28

28:                                               ; preds = %17, %25, %21
  %29 = add nuw i64 %4, 1
  br label %3, !llvm.loop !100

30:                                               ; preds = %12
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_hard_reg_set(ptr noundef %0, i64 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.44, ptr noundef %0)
  br label %5

5:                                                ; preds = %2, %13
  %6 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %7 = shl nuw i64 1, %6
  %8 = and i64 %7, %1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = trunc i64 %6 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %11)
  br label %13

13:                                               ; preds = %10, %5
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, 53
  br i1 %15, label %16, label %5, !llvm.loop !101

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 2, i64 1, ptr %3)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local noundef nonnull ptr @sel_print_insn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @sched_luids, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %6, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 16711680
  %16 = icmp eq i32 %15, 1179648
  %17 = zext nneg i32 %11 to i64
  %18 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %3, i64 0, i32 2, i64 %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !102
  %20 = icmp sgt i32 %19, 0
  br i1 %16, label %21, label %24

21:                                               ; preds = %13
  %22 = select i1 %20, ptr @.str.34, ptr @.str.35
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %22, i32 noundef %8)
  br label %37

24:                                               ; preds = %13
  %25 = select i1 %20, ptr @.str.36, ptr @.str.37
  %26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %25, i32 noundef %8)
  br label %37

27:                                               ; preds = %5, %2
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 16711680
  %30 = icmp eq i32 %29, 1179648
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !46
  br i1 %30, label %33, label %35

33:                                               ; preds = %27
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %32)
  br label %37

35:                                               ; preds = %27
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sel_print_insn.buf, ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %32)
  br label %37

37:                                               ; preds = %33, %35, %21, %24
  ret ptr @sel_print_insn.buf
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @setup_dump_cfg_params() local_unnamed_addr #12 !prof !34 {
  store i1 false, ptr @sel_dump_cfg_p, align 1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sel_debug_cfg_1(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i1, ptr @sel_dump_cfg_p, align 1
  %3 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !50
  store i1 true, ptr @sel_dump_cfg_p, align 1
  %4 = load i32, ptr @sel_debug_cfg_fileno, align 4, !tbaa !50
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @sel_debug_cfg_fileno, align 4, !tbaa !50
  %6 = add nsw i32 %4, 2
  store i32 %6, ptr @sel_dump_cfg_fileno, align 4, !tbaa !50
  %7 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef %6, ptr noundef nonnull @.str.41)
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xmalloc(i64 noundef %9) #17
  %11 = load i32, ptr @sel_dump_cfg_fileno, align 4, !tbaa !50
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %10, i64 noundef %9, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, i32 noundef %11, ptr noundef nonnull @.str.41)
  %13 = tail call ptr @fopen_unlocked(ptr noundef %10, ptr noundef nonnull @.str.48) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load ptr, ptr @stderr, align 8, !tbaa !35
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.49, ptr noundef %10) #18
  br label %337

18:                                               ; preds = %1
  store i8 1, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %19 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %23, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %13, ptr @sched_dump, align 8, !tbaa !35
  %24 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 65, i64 1, ptr nonnull %13)
  %25 = and i32 %0, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @current_function_name() #17
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.51, ptr noundef %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load ptr, ptr @cfun, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !107
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %333, label %40

40:                                               ; preds = %30
  %41 = and i32 %0, 2
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %0, 64
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %0, 512
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %0, 4
  %48 = icmp ne i32 %47, 0
  %49 = and i32 %0, 128
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %0, 8
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %0, 16
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %0, 32
  %56 = icmp ne i32 %55, 0
  %57 = and i32 %0, 128
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %40, %324
  %60 = phi ptr [ %36, %40 ], [ %326, %324 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = load ptr, ptr %62, align 8, !tbaa !109
  %64 = getelementptr inbounds %struct.rtl_bb_info, ptr %62, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !111
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  br i1 %42, label %71, label %68

68:                                               ; preds = %59
  %69 = tail call zeroext i8 @in_current_region_p(ptr noundef %60) #17
  %70 = icmp ne i8 %69, 0
  br label %71

71:                                               ; preds = %68, %59
  %72 = phi i1 [ true, %59 ], [ %70, %68 ]
  %73 = phi i1 [ false, %59 ], [ %70, %68 ]
  br i1 %72, label %112, label %74

74:                                               ; preds = %71
  %75 = tail call zeroext i8 @in_current_region_p(ptr noundef %60) #17
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 634, ptr noundef nonnull @.str.43) #17
  br label %78

78:                                               ; preds = %77, %74
  %79 = icmp eq ptr %60, null
  br label %80

80:                                               ; preds = %110, %78
  %81 = phi i32 [ 0, %78 ], [ %111, %110 ]
  br i1 %79, label %82, label %83

82:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 687, ptr noundef nonnull @.str.43) #17
  br label %83

83:                                               ; preds = %82, %80
  %84 = load ptr, ptr %60, align 8, !tbaa !35
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %84, align 8, !tbaa !112
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i32 [ %87, %86 ], [ 0, %83 ]
  %90 = icmp eq i32 %89, %81
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = zext i32 %81 to i64
  %93 = getelementptr inbounds %struct.VEC_edge_base, ptr %84, i64 0, i32 2, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi ptr [ %94, %91 ], [ null, %88 ]
  br i1 %90, label %324, label %97

97:                                               ; preds = %95
  %98 = load ptr, ptr %96, align 8, !tbaa !114
  %99 = tail call zeroext i8 @in_current_region_p(ptr noundef %98) #17
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load ptr, ptr %60, align 8, !tbaa !35
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %102, align 8, !tbaa !112
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %105, %104 ], [ 0, %101 ]
  %108 = icmp ult i32 %81, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 738, ptr noundef nonnull @.str.43) #17
  br label %110

110:                                              ; preds = %109, %106
  %111 = add i32 %81, 1
  br label %80, !llvm.loop !116

112:                                              ; preds = %97, %71
  br i1 %42, label %124, label %113

113:                                              ; preds = %112
  %114 = tail call zeroext i8 @in_current_region_p(ptr noundef %60) #17
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr @block_to_bb, align 8, !tbaa !35
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !54
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %117, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !50
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116, %113, %112
  br label %125

125:                                              ; preds = %124, %116
  %126 = phi ptr [ @.str.40, %124 ], [ @.str.52, %116 ]
  %127 = select i1 %44, i1 %73, i1 false
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %60) #17
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = load ptr, ptr %61, align 8, !tbaa !46
  %133 = getelementptr inbounds %struct.rtl_bb_info, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !111
  %135 = tail call ptr @bb_note(ptr noundef %60) #17
  br label %136

136:                                              ; preds = %151, %131
  %137 = phi ptr [ @.str.53, %131 ], [ @.str.54, %151 ]
  %138 = phi ptr [ %135, %131 ], [ %141, %151 ]
  %139 = phi ptr [ %126, %131 ], [ %152, %151 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 2
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = load ptr, ptr @fences, align 8, !tbaa !35
  %143 = tail call ptr @flist_lookup(ptr noundef %142, ptr noundef %141) #17
  %144 = icmp eq ptr %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct._fence, ptr %143, i64 0, i32 13
  %147 = load i8, ptr %146, align 8
  %148 = and i8 %147, 2
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, ptr %137, ptr @.str.55
  br label %151

151:                                              ; preds = %136, %145
  %152 = phi ptr [ %150, %145 ], [ %139, %136 ]
  %153 = icmp eq ptr %141, %134
  br i1 %153, label %156, label %136, !llvm.loop !117

154:                                              ; preds = %125
  %155 = select i1 %72, ptr @.str.40, ptr @.str.56
  br label %156

156:                                              ; preds = %151, %154, %128
  %157 = phi ptr [ @.str.40, %128 ], [ %155, %154 ], [ @.str.40, %151 ]
  %158 = phi ptr [ %126, %128 ], [ %126, %154 ], [ %152, %151 ]
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %160 = load i32, ptr %159, align 8, !tbaa !54
  %161 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.57, i32 noundef %160, ptr noundef nonnull %157, ptr noundef %158, i32 noundef %160)
  br i1 %46, label %169, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !118
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %164, align 8, !tbaa !119
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.58, i32 noundef %167)
  br label %169

169:                                              ; preds = %166, %162, %156
  %170 = and i1 %48, %72
  br i1 %170, label %171, label %199

171:                                              ; preds = %169
  %172 = load ptr, ptr @sel_region_bb_info, align 8
  %173 = load i32, ptr %159, align 8, !tbaa !54
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %172, i64 0, i32 2, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !123
  %177 = icmp eq ptr %176, null
  br i1 %177, label %199, label %178

178:                                              ; preds = %171
  %179 = tail call i32 @fputc(i32 124, ptr nonnull %13)
  br label %180

180:                                              ; preds = %178, %193
  %181 = phi ptr [ %176, %178 ], [ %197, %193 ]
  %182 = load ptr, ptr @sched_luids, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %193, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !46
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.VEC_int_base, ptr %182, i64 0, i32 2, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = icmp slt i32 %189, 1
  %191 = or i1 %50, %190
  %192 = select i1 %191, i32 48, i32 62
  br label %193

193:                                              ; preds = %184, %180
  %194 = phi i32 [ 48, %180 ], [ %192, %184 ]
  tail call void @dump_insn_1(ptr noundef nonnull %181, i32 noundef %194)
  %195 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 2, i64 1, ptr nonnull %13)
  %196 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !46
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %180, !llvm.loop !125

199:                                              ; preds = %193, %171, %169
  %200 = and i1 %52, %72
  br i1 %200, label %201, label %223

201:                                              ; preds = %199
  %202 = tail call zeroext i8 @in_current_region_p(ptr noundef %60) #17
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %223, label %204

204:                                              ; preds = %201
  %205 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %60) #17
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %204
  %208 = tail call i32 @fputc(i32 124, ptr nonnull %13)
  %209 = load ptr, ptr @sel_region_bb_info, align 8
  %210 = load i32, ptr %159, align 8, !tbaa !54
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %209, i64 0, i32 2, i64 %211, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !126
  %214 = load i32, ptr @global_level, align 4, !tbaa !50
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %209, i64 0, i32 2, i64 %211, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !127
  tail call void @dump_av_set(ptr noundef %218)
  br label %223

219:                                              ; preds = %207
  %220 = icmp eq i32 %213, -1
  br i1 %220, label %221, label %223

221:                                              ; preds = %219
  %222 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 19, i64 1, ptr nonnull %13)
  br label %223

223:                                              ; preds = %221, %219, %216, %204, %201, %199
  br i1 %54, label %240, label %224

224:                                              ; preds = %223
  %225 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %60) #17
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %224
  %228 = tail call i32 @fputc(i32 124, ptr nonnull %13)
  %229 = load ptr, ptr @sel_global_bb_info, align 8
  %230 = load i32, ptr %159, align 8, !tbaa !54
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %229, i64 0, i32 2, i64 %231, i32 1
  %233 = load i8, ptr %232, align 8, !tbaa !128
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %229, i64 0, i32 2, i64 %231
  %237 = load ptr, ptr %236, align 8, !tbaa !130
  tail call void @dump_lv_set(ptr noundef %237)
  br label %240

238:                                              ; preds = %227
  %239 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 19, i64 1, ptr nonnull %13)
  br label %240

240:                                              ; preds = %238, %235, %224, %223
  %241 = and i1 %56, %72
  br i1 %241, label %242, label %264

242:                                              ; preds = %240
  %243 = tail call i32 @fputc(i32 124, ptr nonnull %13)
  %244 = icmp eq ptr %63, %67
  br i1 %244, label %264, label %245

245:                                              ; preds = %242, %258
  %246 = phi ptr [ %262, %258 ], [ %63, %242 ]
  %247 = load ptr, ptr @sched_luids, align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %258, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.rtx_def, ptr %246, i64 0, i32 1
  %251 = load i32, ptr %250, align 8, !tbaa !46
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.VEC_int_base, ptr %247, i64 0, i32 2, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !50
  %255 = icmp slt i32 %254, 1
  %256 = or i1 %58, %255
  %257 = select i1 %256, i32 48, i32 62
  br label %258

258:                                              ; preds = %249, %245
  %259 = phi i32 [ 48, %245 ], [ %257, %249 ]
  tail call void @dump_insn_1(ptr noundef %246, i32 noundef %259)
  %260 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 2, i64 1, ptr nonnull %13)
  %261 = getelementptr inbounds %struct.rtx_def, ptr %246, i64 0, i32 1, i32 0, i32 0, i64 2
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = icmp eq ptr %262, %67
  br i1 %263, label %264, label %245, !llvm.loop !131

264:                                              ; preds = %258, %242, %240
  %265 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 5, i64 1, ptr nonnull %13)
  %266 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 1
  br label %267

267:                                              ; preds = %322, %264
  %268 = phi i32 [ 0, %264 ], [ %323, %322 ]
  %269 = load ptr, ptr %266, align 8, !tbaa !35
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %267
  %272 = load i32, ptr %269, align 8, !tbaa !112
  br label %273

273:                                              ; preds = %271, %267
  %274 = phi i32 [ %272, %271 ], [ 0, %267 ]
  %275 = icmp eq i32 %274, %268
  br i1 %275, label %280, label %276

276:                                              ; preds = %273
  %277 = zext i32 %268 to i64
  %278 = getelementptr inbounds %struct.VEC_edge_base, ptr %269, i64 0, i32 2, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !35
  br label %280

280:                                              ; preds = %276, %273
  %281 = phi ptr [ %279, %276 ], [ null, %273 ]
  br i1 %275, label %324, label %282

282:                                              ; preds = %280
  br i1 %72, label %288, label %283

283:                                              ; preds = %282
  %284 = getelementptr inbounds %struct.edge_def, ptr %281, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !132
  %286 = tail call zeroext i8 @in_current_region_p(ptr noundef %285) #17
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %313, label %288

288:                                              ; preds = %283, %282
  %289 = getelementptr inbounds %struct.edge_def, ptr %281, i64 0, i32 7
  %290 = load i32, ptr %289, align 8, !tbaa !133
  %291 = and i32 %290, 1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %288
  %294 = load ptr, ptr %281, align 8, !tbaa !114
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %294, i64 0, i32 6
  %296 = load ptr, ptr %295, align 8, !tbaa !107
  %297 = getelementptr inbounds %struct.edge_def, ptr %281, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !132
  %299 = icmp eq ptr %296, %298
  %300 = select i1 %299, i32 3, i32 1
  %301 = select i1 %299, ptr @.str.66, ptr @.str.40
  br label %302

302:                                              ; preds = %293, %288
  %303 = phi i32 [ 10, %288 ], [ %300, %293 ]
  %304 = phi ptr [ @.str.65, %288 ], [ %301, %293 ]
  %305 = load ptr, ptr %281, align 8, !tbaa !114
  %306 = getelementptr inbounds %struct.basic_block_def, ptr %305, i64 0, i32 9
  %307 = load i32, ptr %306, align 8, !tbaa !54
  %308 = getelementptr inbounds %struct.edge_def, ptr %281, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !132
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %309, i64 0, i32 9
  %311 = load i32, ptr %310, align 8, !tbaa !54
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.67, i32 noundef %307, i32 noundef %311, i32 noundef %303, ptr noundef nonnull %304)
  br label %313

313:                                              ; preds = %302, %283
  %314 = load ptr, ptr %266, align 8, !tbaa !35
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %313
  %317 = load i32, ptr %314, align 8, !tbaa !112
  br label %318

318:                                              ; preds = %316, %313
  %319 = phi i32 [ %317, %316 ], [ 0, %313 ]
  %320 = icmp ult i32 %268, %319
  br i1 %320, label %322, label %321

321:                                              ; preds = %318
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 738, ptr noundef nonnull @.str.43) #17
  br label %322

322:                                              ; preds = %321, %318
  %323 = add i32 %268, 1
  br label %267, !llvm.loop !134

324:                                              ; preds = %95, %280
  %325 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 6
  %326 = load ptr, ptr %325, align 8, !tbaa !107
  %327 = load ptr, ptr @cfun, align 8, !tbaa !35
  %328 = getelementptr inbounds %struct.function, ptr %327, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !103
  %330 = getelementptr inbounds %struct.control_flow_graph, ptr %329, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !108
  %332 = icmp eq ptr %326, %331
  br i1 %332, label %333, label %59, !llvm.loop !135

333:                                              ; preds = %324, %30
  %334 = tail call i32 @fputc(i32 125, ptr nonnull %13)
  %335 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %335, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  store i8 0, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %336 = tail call i32 @fclose(ptr noundef nonnull %13)
  br label %337

337:                                              ; preds = %333, %15
  tail call void @free(ptr noundef %10)
  store i32 %3, ptr @sel_dump_cfg_fileno, align 4, !tbaa !50
  store i1 %2, ptr @sel_dump_cfg_p, align 1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_av_set(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_av_set(ptr noundef %0)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_lv_set(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_lv_set(ptr noundef %0)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_ilist(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  %8 = icmp eq ptr %0, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %13, %9 ], [ %0, %6 ]
  %11 = getelementptr inbounds %struct._list_node, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void @dump_insn_1(ptr noundef %12, i32 noundef 10)
  %13 = load ptr, ptr %10, align 8, !tbaa !94
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !93

15:                                               ; preds = %9, %6
  %16 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = alloca [3 x i8], align 16
  store i16 10, ptr %19, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %19)
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %21 = call i32 @fputs(ptr nonnull %19, ptr %20)
  br label %25

22:                                               ; preds = %15
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  br label %25

25:                                               ; preds = %18, %22
  %26 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %26, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_blist(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_blist(ptr noundef %0)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_insn_vector(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_insn_vector(ptr noundef %0)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_hard_reg_set(i64 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 77, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  store ptr %7, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %2, ptr @sched_dump, align 8, !tbaa !35
  tail call void @dump_hard_reg_set(ptr noundef nonnull @.str.40, i64 noundef %0)
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = alloca [3 x i8], align 16
  store i16 10, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11)
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr @saved_sched_dump, align 8, !tbaa !35
  store ptr %18, ptr @sched_dump, align 8, !tbaa !35
  store ptr null, ptr @saved_sched_dump, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sel_debug_cfg() local_unnamed_addr #9 !prof !34 {
  tail call void @sel_debug_cfg_1(i32 noundef 766)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @debug_mem_addr_value(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 937, ptr noundef nonnull @.str.43) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !148
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi i8 [ %13, %11 ], [ 0, %6 ]
  %16 = tail call i32 %7(i8 noundef zeroext %15) #17
  %17 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #17
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call ptr @cselib_lookup(ptr noundef %19, i32 noundef %16, i32 noundef 0) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %18, align 8, !tbaa !46
  %24 = tail call ptr @cselib_subst_to_values(ptr noundef %23) #17
  store ptr %24, ptr %18, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %22, %14
  %26 = tail call ptr @canon_rtx(ptr noundef %17) #17
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = tail call ptr @get_addr(ptr noundef %28) #17
  tail call void @debug_rtx(ptr noundef %26) #17
  tail call void @debug_rtx(ptr noundef %29) #17
  ret ptr %26
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cselib_subst_to_values(ptr noundef) local_unnamed_addr #3

declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

declare void @debug_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare ptr @current_function_name() local_unnamed_addr #3

declare zeroext i8 @in_current_region_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @sel_bb_empty_p(ptr noundef) local_unnamed_addr #3

declare ptr @bb_note(ptr noundef) local_unnamed_addr #3

declare ptr @flist_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 80}
!55 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!56 = distinct !{!56, !52, !53}
!57 = distinct !{!57, !52, !53}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52, !53}
!60 = distinct !{!60, !52, !53}
!61 = !{!62, !36, i64 0}
!62 = !{!"vinsn_def", !36, i64 0, !63, i64 8, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !37, i64 72}
!63 = !{!"idata_def", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!64 = !{!62, !41, i64 8}
!65 = !{!62, !41, i64 64}
!66 = !{!62, !41, i64 68}
!67 = !{!68, !36, i64 0}
!68 = !{!"_expr", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48, !37, i64 56, !41, i64 57, !41, i64 57, !41, i64 57, !41, i64 57}
!69 = !{!68, !41, i64 8}
!70 = !{!68, !41, i64 12}
!71 = !{!68, !41, i64 16}
!72 = !{!68, !41, i64 24}
!73 = !{!68, !41, i64 32}
!74 = !{!68, !41, i64 28}
!75 = !{!68, !37, i64 56}
!76 = !{!77, !41, i64 68}
!77 = !{!"_sel_insn_data", !68, i64 0, !41, i64 64, !41, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !78, i64 112, !36, i64 296, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 316, !41, i64 316}
!78 = !{!"deps", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !41, i64 96, !36, i64 104, !79, i64 112, !79, i64 144, !41, i64 176, !41, i64 180}
!79 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!80 = !{!77, !41, i64 304}
!81 = distinct !{!81, !52, !53}
!82 = !{!79, !36, i64 0}
!83 = !{!84, !41, i64 16}
!84 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!85 = !{!42, !42, i64 0}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = !{!84, !36, i64 0}
!89 = distinct !{!89, !53}
!90 = distinct !{!90, !52, !53}
!91 = !{!92, !36, i64 0}
!92 = !{!"_bnd", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!93 = distinct !{!93, !52, !53}
!94 = !{!95, !36, i64 0}
!95 = !{!"_list_node", !36, i64 0, !37, i64 8}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = !{!99, !41, i64 0}
!99 = !{!"VEC_rtx_base", !41, i64 0, !41, i64 4, !37, i64 8}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = !{!77, !41, i64 24}
!103 = !{!104, !36, i64 8}
!104 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!105 = !{!106, !36, i64 0}
!106 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!107 = !{!55, !36, i64 56}
!108 = !{!106, !36, i64 8}
!109 = !{!110, !36, i64 0}
!110 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!111 = !{!110, !36, i64 8}
!112 = !{!113, !41, i64 0}
!113 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!114 = !{!115, !36, i64 0}
!115 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = !{!55, !36, i64 24}
!119 = !{!120, !41, i64 0}
!120 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !121, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !122, i64 80, !122, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!121 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!122 = !{!"", !42, i64 0, !42, i64 8}
!123 = !{!124, !36, i64 0}
!124 = !{!"", !36, i64 0, !36, i64 8, !41, i64 16}
!125 = distinct !{!125, !52, !53}
!126 = !{!124, !41, i64 16}
!127 = !{!124, !36, i64 8}
!128 = !{!129, !37, i64 8}
!129 = !{!"", !36, i64 0, !37, i64 8}
!130 = !{!129, !36, i64 0}
!131 = distinct !{!131, !52, !53}
!132 = !{!115, !36, i64 8}
!133 = !{!115, !41, i64 48}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = !{!137, !36, i64 1184}
!137 = !{!"gcc_target", !138, i64 0, !140, i64 368, !141, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !142, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !143, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !144, i64 1784, !145, i64 1792, !146, i64 1896, !147, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!138 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !139, i64 24, !139, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!139 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!140 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!141 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!142 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!143 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!144 = !{!"c", !36, i64 0}
!145 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!146 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!147 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!148 = !{!149, !37, i64 32}
!149 = !{!"mem_attrs", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32}
