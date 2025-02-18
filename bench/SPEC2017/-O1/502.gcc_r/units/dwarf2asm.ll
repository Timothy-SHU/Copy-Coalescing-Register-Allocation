; ModuleID = 'dwarf2asm.c'
source_filename = "dwarf2asm.c"
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%x,\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s0x%lx\00", align 1
@flag_debug_asm = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%s \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09.ascii \22\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"\\%o\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\\0\22\09%s \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\09.string\09\00", align 1
@.str.12 = private unnamed_addr constant [257 x i8] c"\01\01\01\01\01\01\01\01btn\01fr\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\\\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\09.ascii\09\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"dwarf2asm.c\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@eh_data_format_name.format_names = internal unnamed_addr constant [256 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null, ptr null, ptr null, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null, ptr null, ptr null, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null, ptr null, ptr null, ptr null, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr null, ptr null, ptr null, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr null, ptr null, ptr null, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr null, ptr null, ptr null, ptr @.str.62, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null, ptr null, ptr null, ptr null, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr null, ptr null, ptr null, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr null, ptr null, ptr null, ptr null, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr null, ptr null, ptr null, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr null, ptr null, ptr null, ptr null, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr null, ptr null, ptr null, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr null, ptr null, ptr null, ptr null, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.100], align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"uleb128\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"udata2\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"udata4\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"udata8\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sleb128\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"sdata2\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"sdata4\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"sdata8\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"pcrel\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"pcrel uleb128\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"pcrel udata2\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"pcrel udata4\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"pcrel udata8\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"pcrel sleb128\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"pcrel sdata2\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"pcrel sdata4\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"pcrel sdata8\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"textrel\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"textrel uleb128\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"textrel udata2\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"textrel udata4\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"textrel udata8\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"textrel sleb128\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"textrel sdata2\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"textrel sdata4\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"textrel sdata8\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"datarel\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"datarel uleb128\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"datarel udata2\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"datarel udata4\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"datarel udata8\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"datarel sleb128\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"datarel sdata2\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"datarel sdata4\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"datarel sdata8\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"funcrel\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"funcrel uleb128\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"funcrel udata2\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"funcrel udata4\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"funcrel udata8\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"funcrel sleb128\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"funcrel sdata2\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"funcrel sdata4\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"funcrel sdata8\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"aligned absolute\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"indirect absolute\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"indirect pcrel\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"indirect pcrel uleb128\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata2\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata4\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata8\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"indirect pcrel sleb128\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata2\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata4\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata8\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"indirect textrel\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"indirect textrel uleb128\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"indirect textrel udata2\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"indirect textrel udata4\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"indirect textrel udata8\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"indirect textrel sleb128\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata2\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata4\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata8\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"indirect datarel\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"indirect datarel uleb128\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"indirect datarel udata2\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"indirect datarel udata4\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"indirect datarel udata8\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"indirect datarel sleb128\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata2\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata4\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata8\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"indirect funcrel\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"indirect funcrel uleb128\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata2\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata4\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata8\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"indirect funcrel sleb128\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata2\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata4\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata8\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"omit\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"\09.uleb128 0x%lx\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"\09.sleb128 %ld\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"\09.uleb128 \00", align 1
@indirect_pool = internal global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.104 = private unnamed_addr constant [10 x i8] c"DW.ref.%s\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"LDFCM\00", align 1
@dw2_const_labelno = internal global i32 0, align 4
@.str.107 = private unnamed_addr constant [8 x i8] c"\09.long\09\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"@GOT\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"@GOTOFF\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@gt_ggc_r_gt_dwarf2asm_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @indirect_pool, i64 1, i64 8, ptr @gt_ggc_m_SP9tree_node12splay_tree_s, ptr @gt_pch_n_SP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_dwarf2asm_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @dw2_const_labelno, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.110 = private unnamed_addr constant [22 x i8] c"\09.hidden %sDW.ref.%s\0A\00", align 1
@user_label_prefix = external local_unnamed_addr global ptr, align 8
@switch.table.size_of_encoded_value = private unnamed_addr constant [5 x i32] [i32 4, i32 4, i32 2, i32 4, i32 8], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
define dso_local void @dw2_assemble_integer(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call ptr @integer_asm_op(i32 noundef %0, i32 noundef 0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %7 = tail call i32 @fputs(ptr noundef nonnull %3, ptr noundef %6)
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 30
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  br i1 %10, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !46
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str, i64 noundef %14)
  br label %19

16:                                               ; preds = %5
  tail call void @output_addr_const(ptr noundef %11, ptr noundef nonnull %1) #15
  br label %19

17:                                               ; preds = %2
  %18 = tail call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %0, i32 noundef 8, i32 noundef 1) #15
  br label %19

19:                                               ; preds = %12, %16, %17
  ret void
}

declare ptr @integer_asm_op(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @output_addr_const(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @assemble_integer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dw2_asm_output_data_raw(i32 noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  br label %9

4:                                                ; preds = %9
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = add nsw i32 %0, -1
  %8 = zext i32 %7 to i64
  br label %17

9:                                                ; preds = %2, %9
  %10 = phi i64 [ 0, %2 ], [ %15, %9 ]
  %11 = phi i64 [ %1, %2 ], [ %14, %9 ]
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 %10
  store i8 %12, ptr %13, align 1, !tbaa !46
  %14 = lshr i64 %11, 8
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %4, label %9, !llvm.loop !54

17:                                               ; preds = %6, %17
  %18 = phi i64 [ 0, %6 ], [ %24, %17 ]
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %20 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !46
  %22 = zext i8 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef %22)
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %26, label %17, !llvm.loop !55

26:                                               ; preds = %17
  %27 = and i64 %24, 4294967295
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi i64 [ 0, %4 ], [ %27, %26 ]
  %30 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %31 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 %29
  %32 = load i8, ptr %31, align 1, !tbaa !46
  %33 = zext i8 %32 to i32
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.2, i32 noundef %33)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_data(i32 noundef %0, i64 noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %5 = tail call ptr @integer_asm_op(i32 noundef %0, i32 noundef 0) #15
  call void @llvm.va_start(ptr nonnull %4)
  %6 = icmp slt i32 %0, 8
  %7 = shl nsw i32 %0, 3
  %8 = zext nneg i32 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = select i1 %6, i64 %10, i64 -1
  %12 = and i64 %11, %1
  %13 = icmp eq ptr %5, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %5, i64 noundef %12)
  br label %20

17:                                               ; preds = %3
  %18 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #15
  %19 = call zeroext i8 @assemble_integer(ptr noundef %18, i32 noundef %0, i32 noundef 8, i32 noundef 1) #15
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %22 = icmp ne i32 %21, 0
  %23 = icmp ne ptr %2, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %28 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %32 = call i32 @fputc(i32 noundef 10, ptr noundef %31)
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_delta(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ...) local_unnamed_addr #9 !prof !34 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %1) #15
  %7 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %2) #15
  %8 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef %6, ptr noundef %7) #15
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %8)
  %9 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne ptr %3, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %17 = call i32 @vfprintf(ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %5)
  br label %18

18:                                               ; preds = %13, %4
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %20 = call i32 @fputc(i32 noundef 10, ptr noundef %19)
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_offset(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef readonly %3, ...) local_unnamed_addr #9 !prof !34 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %1) #15
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %6)
  %7 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne ptr %3, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %15 = call i32 @vfprintf(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %5)
  br label %16

16:                                               ; preds = %11, %4
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %18 = call i32 @fputc(i32 noundef 10, ptr noundef %17)
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_addr(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %1) #15
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %5)
  %6 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %2, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %14 = call i32 @vfprintf(ptr noundef %13, ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %17 = call i32 @fputc(i32 noundef 10, ptr noundef %16)
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_addr_rtx(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.va_start(ptr nonnull %4)
  call void @dw2_assemble_integer(i32 noundef %0, ptr noundef %1)
  %5 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %6 = icmp ne i32 %5, 0
  %7 = icmp ne ptr %2, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %13 = call i32 @vfprintf(ptr noundef %12, ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %14

14:                                               ; preds = %9, %3
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %16 = call i32 @fputc(i32 noundef 10, ptr noundef %15)
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_nstring(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.va_start(ptr nonnull %4)
  %5 = icmp eq i64 %1, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i64 [ %7, %6 ], [ %1, %3 ]
  %10 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %16 = call i64 @fwrite(ptr nonnull @.str.6, i64 9, i64 1, ptr %15)
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14, %38
  %19 = phi i64 [ %39, %38 ], [ 0, %14 ]
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !46
  %22 = sext i8 %21 to i32
  switch i8 %21, label %26 [
    i8 92, label %23
    i8 34, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %25 = call i32 @fputc(i32 noundef 92, ptr noundef %24)
  br label %26

26:                                               ; preds = %18, %23
  %27 = and i32 %22, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !56
  %31 = and i16 %30, 16
  %32 = icmp eq i16 %31, 0
  %33 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  br i1 %32, label %36, label %34

34:                                               ; preds = %26
  %35 = call i32 @fputc(i32 noundef %22, ptr noundef %33)
  br label %38

36:                                               ; preds = %26
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %22)
  br label %38

38:                                               ; preds = %36, %34
  %39 = add nuw i64 %19, 1
  %40 = icmp eq i64 %39, %9
  br i1 %40, label %41, label %18, !llvm.loop !57

41:                                               ; preds = %38, %14
  %42 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5)
  %44 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %45 = call i32 @vfprintf(ptr noundef %44, ptr noundef nonnull %2, ptr noundef nonnull %4)
  %46 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %47 = call i32 @fputc(i32 noundef 10, ptr noundef %46)
  br label %156

48:                                               ; preds = %8
  %49 = zext i1 %5 to i64
  %50 = getelementptr i8, ptr %0, i64 %9
  %51 = getelementptr i8, ptr %50, i64 %49
  %52 = icmp ugt ptr %51, %0
  br i1 %52, label %53, label %152

53:                                               ; preds = %48, %142
  %54 = phi ptr [ %145, %142 ], [ %0, %48 ]
  %55 = phi ptr [ %74, %142 ], [ null, %48 ]
  %56 = phi i32 [ %143, %142 ], [ 0, %48 ]
  %57 = icmp ugt i32 %56, 59
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %60 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ 0, %58 ], [ %56, %53 ]
  %63 = icmp ugt ptr %54, %55
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = icmp ult ptr %54, %51
  br i1 %65, label %66, label %73

66:                                               ; preds = %64, %70
  %67 = phi ptr [ %71, %70 ], [ %54, %64 ]
  %68 = load i8, ptr %67, align 1, !tbaa !46
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %67, i64 1
  %72 = icmp ult ptr %71, %51
  br i1 %72, label %66, label %73, !llvm.loop !58

73:                                               ; preds = %66, %70, %64, %61
  %74 = phi ptr [ %55, %61 ], [ %54, %64 ], [ %71, %70 ], [ %67, %66 ]
  %75 = icmp ult ptr %74, %51
  %76 = ptrtoint ptr %74 to i64
  %77 = ptrtoint ptr %54 to i64
  %78 = sub i64 %76, %77
  %79 = icmp slt i64 %78, 257
  %80 = and i1 %75, %79
  %81 = icmp eq i32 %62, 0
  br i1 %80, label %82, label %117

82:                                               ; preds = %73
  br i1 %81, label %86, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %85 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %84)
  br label %86

86:                                               ; preds = %82, %83
  %87 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
  %89 = load i8, ptr %54, align 1, !tbaa !46
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %86, %110
  %92 = phi i8 [ %112, %110 ], [ %89, %86 ]
  %93 = phi ptr [ %111, %110 ], [ %54, %86 ]
  %94 = zext i8 %92 to i32
  %95 = zext i8 %92 to i64
  %96 = getelementptr inbounds [257 x i8], ptr @.str.12, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !46
  switch i8 %97, label %104 [
    i8 0, label %98
    i8 1, label %101
  ]

98:                                               ; preds = %91
  %99 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %100 = call i32 @putc(i32 noundef %94, ptr noundef %99)
  br label %110

101:                                              ; preds = %91
  %102 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.13, i32 noundef %94)
  br label %110

104:                                              ; preds = %91
  %105 = sext i8 %97 to i32
  %106 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %107 = call i32 @putc(i32 noundef 92, ptr noundef %106)
  %108 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %109 = call i32 @putc(i32 noundef %105, ptr noundef %108)
  br label %110

110:                                              ; preds = %104, %101, %98
  %111 = getelementptr inbounds i8, ptr %93, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !46
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %91, !llvm.loop !59

114:                                              ; preds = %110, %86
  %115 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %116 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %115)
  br label %142

117:                                              ; preds = %73
  br i1 %81, label %118, label %121

118:                                              ; preds = %117
  %119 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14)
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i8, ptr %54, align 1, !tbaa !46
  %123 = zext i8 %122 to i32
  %124 = zext i8 %122 to i64
  %125 = getelementptr inbounds [257 x i8], ptr @.str.12, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !46
  switch i8 %126, label %135 [
    i8 0, label %127
    i8 1, label %131
  ]

127:                                              ; preds = %121
  %128 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %129 = call i32 @putc(i32 noundef %123, ptr noundef %128)
  %130 = add nuw nsw i32 %62, 1
  br label %142

131:                                              ; preds = %121
  %132 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.13, i32 noundef %123)
  %134 = add nuw nsw i32 %62, 4
  br label %142

135:                                              ; preds = %121
  %136 = sext i8 %126 to i32
  %137 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %138 = call i32 @putc(i32 noundef 92, ptr noundef %137)
  %139 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %140 = call i32 @putc(i32 noundef %136, ptr noundef %139)
  %141 = add nuw nsw i32 %62, 2
  br label %142

142:                                              ; preds = %127, %131, %135, %114
  %143 = phi i32 [ 0, %114 ], [ %141, %135 ], [ %134, %131 ], [ %130, %127 ]
  %144 = phi ptr [ %74, %114 ], [ %54, %135 ], [ %54, %131 ], [ %54, %127 ]
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  %146 = icmp ult ptr %145, %51
  br i1 %146, label %53, label %147, !llvm.loop !60

147:                                              ; preds = %142
  %148 = icmp eq i32 %143, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %147
  %150 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %151 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %150)
  br label %152

152:                                              ; preds = %48, %149, %147
  br i1 %5, label %156, label %153

153:                                              ; preds = %152
  %154 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %155 = call zeroext i8 @assemble_integer(ptr noundef %154, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15
  br label %156

156:                                              ; preds = %152, %153, %41
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @size_of_uleb128(i64 noundef %0) local_unnamed_addr #13 !prof !34 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %0, %1 ], [ %5, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %5 = lshr i64 %3, 7
  %6 = add nuw nsw i32 %4, 1
  %7 = icmp ult i64 %3, 128
  br i1 %7, label %8, label %2, !llvm.loop !61

8:                                                ; preds = %2
  ret i32 %6
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @size_of_sleb128(i64 noundef %0) local_unnamed_addr #13 !prof !34 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i32 [ 0, %1 ], [ %5, %7 ]
  %4 = phi i64 [ %0, %1 ], [ %8, %7 ]
  %5 = add nuw nsw i32 %3, 1
  %6 = icmp ult i64 %4, 64
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = ashr i64 %4, 7
  %9 = icmp eq i64 %8, -1
  %10 = and i64 %4, 64
  %11 = icmp ne i64 %10, 0
  %12 = and i1 %9, %11
  br i1 %12, label %13, label %2, !llvm.loop !62

13:                                               ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @size_of_encoded_value(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq i32 %0, 255
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 7
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 375, ptr noundef nonnull @.str.16) #15
  br label %16

7:                                                ; preds = %3
  %8 = trunc i32 %4 to i8
  %9 = lshr i8 29, %8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %6, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %4 to i64
  %14 = getelementptr inbounds [5 x i32], ptr @switch.table.size_of_encoded_value, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %1, %6
  %17 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %15, %12 ]
  ret i32 %17
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @eh_data_format_name(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult i32 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [256 x ptr], ptr @eh_data_format_name.format_names, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 533, ptr noundef nonnull @.str.16) #15
  br label %9

9:                                                ; preds = %3, %8
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [256 x ptr], ptr @eh_data_format_name.format_names, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  ret ptr %12
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dw2_asm_output_data_uleb128_raw(i64 noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = trunc i64 %0 to i32
  %3 = and i32 %2, 127
  %4 = icmp ugt i64 %0, 127
  %5 = or disjoint i32 %3, 128
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %6)
  br i1 %4, label %9, label %21

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %11, %9 ], [ %0, %1 ]
  %11 = lshr i64 %10, 7
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %13 = tail call i32 @fputc(i32 noundef 44, ptr noundef %12)
  %14 = trunc i64 %11 to i32
  %15 = and i32 %14, 127
  %16 = icmp ugt i64 %10, 16383
  %17 = or disjoint i32 %15, 128
  %18 = select i1 %16, i32 %17, i32 %15
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef %18)
  br i1 %16, label %9, label %21

21:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dw2_asm_output_data_uleb128(i64 noundef %0, ptr noundef readonly %1, ...) local_unnamed_addr #10 !prof !34 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.101, i64 noundef %0)
  %6 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %14 = call i32 @vfprintf(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %3)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %17 = call i32 @fputc(i32 noundef 10, ptr noundef %16)
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dw2_asm_output_data_sleb128_raw(i64 noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = trunc i64 %0 to i32
  %3 = and i32 %2, 127
  %4 = icmp ult i64 %0, 64
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %18
  %6 = phi i64 [ %9, %18 ], [ %0, %1 ]
  %7 = phi i32 [ %22, %18 ], [ %3, %1 ]
  %8 = phi i32 [ %21, %18 ], [ %2, %1 ]
  %9 = ashr i64 %6, 7
  %10 = icmp eq i64 %9, -1
  %11 = and i32 %8, 64
  %12 = icmp ne i32 %11, 0
  %13 = and i1 %10, %12
  %14 = or disjoint i32 %7, 128
  %15 = select i1 %13, i32 %7, i32 %14
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %15)
  br i1 %13, label %28, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %20 = tail call i32 @fputc(i32 noundef 44, ptr noundef %19)
  %21 = trunc i64 %9 to i32
  %22 = and i32 %21, 127
  %23 = icmp ult i64 %9, 64
  br i1 %23, label %24, label %5, !llvm.loop !63

24:                                               ; preds = %18, %1
  %25 = phi i32 [ %3, %1 ], [ %22, %18 ]
  %26 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef %25)
  br label %28

28:                                               ; preds = %5, %24
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dw2_asm_output_data_sleb128(i64 noundef %0, ptr noundef readonly %1, ...) local_unnamed_addr #10 !prof !34 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.102, i64 noundef %0)
  %6 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %14 = call i32 @vfprintf(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %3)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %17 = call i32 @fputc(i32 noundef 10, ptr noundef %16)
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_delta_uleb128(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ...) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %6 = call i64 @fwrite(ptr nonnull @.str.103, i64 10, i64 1, ptr %5)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  call void @assemble_name(ptr noundef %7, ptr noundef %0) #15
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %9 = call i32 @fputc(i32 noundef 45, ptr noundef %8)
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  call void @assemble_name(ptr noundef %10, ptr noundef %1) #15
  %11 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne ptr %2, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %19 = call i32 @vfprintf(ptr noundef %18, ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %22 = call i32 @fputc(i32 noundef 10, ptr noundef %21)
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @dw2_force_const_mem(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca [32 x i8], align 16
  %4 = load ptr, ptr @indirect_pool, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_strings, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #15
  store ptr %7, ptr @indirect_pool, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 45
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 824, ptr noundef nonnull @.str.16) #15
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load ptr, ptr @indirect_pool, align 8, !tbaa !35
  %17 = ptrtoint ptr %15 to i64
  %18 = tail call ptr @splay_tree_lookup(ptr noundef %16, i64 noundef %17) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !64
  %23 = inttoptr i64 %22 to ptr
  br label %61

24:                                               ; preds = %13
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !66
  %26 = tail call ptr %25(ptr noundef %15) #15
  %27 = icmp eq i8 %1, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26)
  %30 = add i64 %29, 8
  %31 = alloca i8, i64 %30, align 16
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) @.str.104, ptr noundef %26)
  %33 = call ptr @maybe_get_identifier(ptr noundef nonnull %31) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 840, ptr noundef nonnull @.str.16) #15
  br label %36

36:                                               ; preds = %28, %35
  %37 = call ptr @get_identifier(ptr noundef nonnull %31) #15
  %38 = load i64, ptr %37, align 8
  %39 = or i64 %38, 134217728
  store i64 %39, ptr %37, align 8
  br label %50

40:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %41 = load i32, ptr @dw2_const_labelno, align 4, !tbaa !50
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef nonnull @.str.106, i32 noundef %41)
  %43 = load i32, ptr @dw2_const_labelno, align 4, !tbaa !50
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr @dw2_const_labelno, align 4, !tbaa !50
  %45 = call ptr @maybe_get_identifier(ptr noundef nonnull %3) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 850, ptr noundef nonnull @.str.16) #15
  br label %48

48:                                               ; preds = %40, %47
  %49 = call ptr @get_identifier(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %50

50:                                               ; preds = %48, %36
  %51 = phi ptr [ %37, %36 ], [ %49, %48 ]
  %52 = call ptr @maybe_get_identifier(ptr noundef %26) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i64, ptr %52, align 8
  %56 = or i64 %55, 67108864
  store i64 %56, ptr %52, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load ptr, ptr @indirect_pool, align 8, !tbaa !35
  %59 = ptrtoint ptr %51 to i64
  %60 = call ptr @splay_tree_insert(ptr noundef %58, i64 noundef %17, i64 noundef %59) #15
  br label %61

61:                                               ; preds = %57, %20
  %62 = phi ptr [ %23, %20 ], [ %51, %57 ]
  %63 = getelementptr inbounds %struct.tree_identifier, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %64) #15
  ret ptr %65
}

declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @splay_tree_compare_strings(i64 noundef %0, i64 noundef %1) #9 !prof !34 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 801, ptr noundef nonnull @.str.16) #15
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = phi i32 [ 0, %2 ], [ %7, %6 ], [ %7, %9 ]
  ret i32 %11
}

declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #3

declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #3

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @maybe_get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_output_indirect_constants() local_unnamed_addr #9 !prof !78 {
  %1 = load ptr, ptr @indirect_pool, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !79

3:                                                ; preds = %0
  %4 = tail call i32 @splay_tree_foreach(ptr noundef nonnull %1, ptr noundef nonnull @dw2_output_indirect_constant_1, ptr noundef null) #15
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dw2_output_indirect_constant_1(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !34 {
  %3 = load i64, ptr %0, align 8, !tbaa !80
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !64
  %7 = inttoptr i64 %6 to ptr
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %9 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %7, ptr noundef %8) #15
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 5120
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  store ptr %9, ptr %13, align 8, !tbaa !46
  %14 = load i64, ptr %7, align 8
  %15 = and i64 %14, 134217728
  %16 = icmp eq i64 %15, 0
  %17 = load i64, ptr %9, align 8
  br i1 %16, label %21, label %18

18:                                               ; preds = %2
  %19 = or i64 %17, 134217728
  store i64 %19, ptr %9, align 8
  %20 = tail call ptr @decl_assembler_name(ptr noundef nonnull %9) #15
  tail call void @make_decl_one_only(ptr noundef nonnull %9, ptr noundef %20) #15
  br label %23

21:                                               ; preds = %2
  %22 = or i64 %17, 67108864
  store i64 %22, ptr %9, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %4) #15
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !66
  %26 = tail call ptr %25(ptr noundef %4) #15
  %27 = load i64, ptr %9, align 8
  %28 = and i64 %27, 134217728
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %32 = load ptr, ptr @user_label_prefix, align 8, !tbaa !35
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.110, ptr noundef %32, ptr noundef %26)
  br label %34

34:                                               ; preds = %30, %23
  tail call void @assemble_variable(ptr noundef nonnull %9, i32 noundef 1, i32 noundef 1, i32 noundef 1) #15
  %35 = tail call zeroext i8 @assemble_integer(ptr noundef %24, i32 noundef 4, i32 noundef 32, i32 noundef 1) #15
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dw2_asm_output_encoded_addr_rtx(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef readonly %3, ...) local_unnamed_addr #9 !prof !34 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @size_of_encoded_value(i32 noundef %0), !range !81
  %7 = icmp eq i32 %0, 80
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  call void @assemble_align(i32 noundef 32) #15
  %9 = call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %6, i32 noundef 32, i32 noundef 1) #15
  br label %71

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %12 = icmp eq ptr %11, %1
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %14 = icmp eq ptr %13, %1
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %6, 4
  %18 = and i32 %0, 112
  %19 = icmp eq i32 %18, 48
  %20 = and i1 %17, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = and i32 %0, 112
  %23 = icmp eq i32 %22, 48
  %24 = and i1 %17, %23
  %25 = and i32 %0, 128
  %26 = icmp eq i32 %25, 0
  br label %42

27:                                               ; preds = %10
  %28 = call zeroext i8 @assemble_integer(ptr noundef %1, i32 noundef %6, i32 noundef 8, i32 noundef 1) #15
  br label %58

29:                                               ; preds = %45, %16
  %30 = phi ptr [ %1, %16 ], [ %46, %45 ]
  %31 = phi i32 [ %0, %16 ], [ 0, %45 ]
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %33 = call i64 @fwrite(ptr nonnull @.str.107, i64 7, i64 1, ptr %32)
  %34 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  call void @assemble_name(ptr noundef %34, ptr noundef %36) #15
  %37 = and i32 %31, 128
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.109, ptr @.str.108
  %40 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %41 = call i32 @fputs(ptr noundef nonnull %39, ptr noundef %40)
  br label %58

42:                                               ; preds = %21, %45
  %43 = phi i1 [ %26, %21 ], [ true, %45 ]
  %44 = phi ptr [ %1, %21 ], [ %46, %45 ]
  br i1 %43, label %47, label %45

45:                                               ; preds = %42
  %46 = call ptr @dw2_force_const_mem(ptr noundef %44, i8 noundef zeroext %2)
  br i1 %24, label %29, label %42

47:                                               ; preds = %42
  switch i32 %22, label %57 [
    i32 0, label %48
    i32 16, label %49
  ]

48:                                               ; preds = %47
  call void @dw2_assemble_integer(i32 noundef %6, ptr noundef %44)
  br label %58

49:                                               ; preds = %47
  %50 = load i32, ptr %44, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 969, ptr noundef nonnull @.str.16) #15
  br label %54

54:                                               ; preds = %49, %53
  %55 = load ptr, ptr @global_rtl, align 16, !tbaa !35
  %56 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef 16, ptr noundef nonnull %44, ptr noundef %55) #15
  call void @dw2_assemble_integer(i32 noundef %6, ptr noundef %56)
  br label %58

57:                                               ; preds = %47
  call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 980, ptr noundef nonnull @.str.16) #15
  br label %58

58:                                               ; preds = %29, %57, %54, %48, %27
  %59 = load i32, ptr @flag_debug_asm, align 4, !tbaa !50
  %60 = icmp ne i32 %59, 0
  %61 = icmp ne ptr %3, null
  %62 = and i1 %61, %60
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  %66 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %67 = call i32 @vfprintf(ptr noundef %66, ptr noundef nonnull %3, ptr noundef nonnull %5)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %70 = call i32 @fputc(i32 noundef 10, ptr noundef %69)
  call void @llvm.va_end(ptr %5)
  br label %71

71:                                               ; preds = %68, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

declare void @assemble_align(i32 noundef) local_unnamed_addr #3

declare void @gt_ggc_m_SP9tree_node12splay_tree_s(ptr noundef) #3

declare void @gt_pch_n_SP9tree_node12splay_tree_s(ptr noundef) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_decl_one_only(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare void @assemble_variable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

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
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }

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
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = !{!43, !43, i64 0}
!57 = distinct !{!57, !52, !53}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52, !53}
!60 = distinct !{!60, !52, !53}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !53}
!64 = !{!65, !42, i64 8}
!65 = !{!"splay_tree_node_s", !42, i64 0, !42, i64 8, !36, i64 16, !36, i64 24}
!66 = !{!67, !36, i64 1136}
!67 = !{!"gcc_target", !68, i64 0, !70, i64 368, !71, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !72, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !73, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !74, i64 1784, !75, i64 1792, !76, i64 1896, !77, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!68 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !69, i64 24, !69, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!69 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!70 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!71 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!72 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!73 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!74 = !{!"c", !36, i64 0}
!75 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!76 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!77 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!78 = !{!"function_entry_count", i64 1}
!79 = !{!"branch_weights", i32 1, i32 0}
!80 = !{!65, !42, i64 0}
!81 = !{i32 0, i32 9}
