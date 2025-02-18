; ModuleID = 'mcf.c'
source_filename = "mcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.fixup_graph_d = type { i32, i32, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.fixup_edge_d = type { i32, i32, i32, i8, i32, i64, i64, i64, i64, i64 }
%struct.fixup_vertex_d = type { ptr }
%struct.VEC_fixup_edge_p_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"\0AVertex transformation:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mcf.c\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0AReverse edges:\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\0As'->S, T->t':\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0AD(v) balance:\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\0AAdjust supply and demand:\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"supply_value=%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"demand_value=%ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\0ANormalize edges:\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\0AAnti-parallel edge:\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"New vertex is %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"------------------\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"After normalization:\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"After create_fixup_graph()\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"NULL fixup graph edge.\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"flow/capacity=%ld/\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"+oo,\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%ld,\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" rflow=+oo.\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" rflow=%ld,\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c" cost=%ld.\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"\09(%d->%d)\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c" @VERTEX_SPLIT_EDGE\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c" @REDIRECT_EDGE\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" @SOURCE_CONNECT_EDGE\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c" @SINK_CONNECT_EDGE\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c" @REVERSE_EDGE\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" @BALANCE_EDGE\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"  @NORMALIZED_EDGE\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c" @INVALID_EDGE\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ENTRY''\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"EXIT''\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"NEW_EXIT\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"NEW_ENTRY\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"\0ADump fixup graph for %s(): %s.\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [60 x i8] c"There are %d vertices and %d edges. new_exit_index is %d.\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"vertex_list[%d]: %d succ fixup edges.\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"(f) \00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"(b) \00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"After find_minimum_cost_flow()\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"\0ADump augmenting path:\0A\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"ENTRY  (path_capacity=%ld)\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"Network flow is %ld.\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"After find_max_flow()\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"\0Acompute_residual_flow():\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"\0ANegative cycle length is %d:\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c": (%ld, %ld)\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Augment cycle with %ld\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"\0Aadjust_cfg_counts():\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"BB%d: %ld\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c" + %ld(\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c" - %ld(\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c" = %ld\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%d->%d: %ld\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"(self edge)\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c" = %ld\09(%.1f%%)\0A\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"\0ACheck %s() CFG flow conservation:\0A\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"BB%d(%ld)  **INVALID**: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.71 = private unnamed_addr constant [35 x i8] c"******** BB%d(%ld)  **INVALID**: \0A\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"in_edges=%ld \00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"out_edges=%ld\0A\00", align 1

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
define dso_local i64 @sum_edge_counts(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ne ptr %0, null
  br label %4

4:                                                ; preds = %38, %1
  %5 = phi i32 [ 0, %1 ], [ %39, %38 ]
  %6 = phi i64 [ 0, %1 ], [ %31, %38 ]
  br i1 %2, label %9, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  %11 = icmp eq i32 %10, %5
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @llvm.assume(i1 %3)
  %13 = zext i32 %5 to i64
  %14 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ]
  br i1 %11, label %40, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %20, align 4
  %24 = and i8 %23, 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !58
  %29 = add nsw i64 %28, %6
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i64 [ %6, %22 ], [ %29, %26 ]
  br i1 %2, label %34, label %32

32:                                               ; preds = %30
  %33 = load i32, ptr %0, align 8, !tbaa !54
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %33, %32 ], [ 0, %30 ]
  %36 = icmp ult i32 %5, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %38

38:                                               ; preds = %34, %37
  %39 = add i32 %5, 1
  br label %4, !llvm.loop !59

40:                                               ; preds = %16
  ret i64 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mcf_smooth_cfg() local_unnamed_addr #9 !prof !34 {
  %1 = alloca %struct.fixup_graph_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = shl nsw i32 %6, 1
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = add nsw i32 %9, %6
  %11 = add i32 %9, %6
  %12 = add i32 %11, 2
  %13 = add i32 %12, %7
  %14 = shl nsw i32 %10, 3
  store i32 %6, ptr %1, align 8, !tbaa !65
  %15 = sext i32 %13 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 8) #17
  %17 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !67
  %18 = sext i32 %14 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !68
  %21 = or disjoint i32 %7, 1
  %22 = sext i32 %21 to i64
  %23 = tail call ptr @xcalloc(i64 noundef %22, i64 noundef 8) #17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %0, %29
  %30 = phi ptr [ %37, %29 ], [ %27, %0 ]
  %31 = phi double [ %35, %29 ], [ 0.000000e+00, %0 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !69
  %34 = sitofp i64 %33 to double
  %35 = fadd double %31, %34
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29, !llvm.loop !71

39:                                               ; preds = %29, %0
  %40 = phi double [ 0.000000e+00, %0 ], [ %35, %29 ]
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !62
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %40, %43
  %45 = fcmp ult double %44, 0.000000e+00
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 356, ptr noundef nonnull @.str.1) #17
  br label %47

47:                                               ; preds = %46, %39
  %48 = fptrunc double %44 to float
  %49 = bitcast float %48 to i32
  %50 = ashr i32 %49, 1
  %51 = add nsw i32 %50, 532477952
  %52 = sub nsw i32 1597463007, %50
  %53 = bitcast i32 %51 to float
  %54 = fpext float %53 to double
  %55 = bitcast i32 %52 to float
  %56 = fpext float %55 to double
  %57 = tail call double @llvm.fmuladd.f64(double %44, double %56, double %54)
  %58 = fmul double %57, 5.000000e-01
  %59 = fmul double %58, 5.000000e+01
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %47
  %63 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 24, i64 1, ptr nonnull %60)
  br label %64

64:                                               ; preds = %62, %47
  %65 = load ptr, ptr @cfun, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !60
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = icmp eq ptr %68, null
  br i1 %69, label %171, label %70

70:                                               ; preds = %64, %167
  %71 = phi ptr [ %169, %167 ], [ %68, %64 ]
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !72
  %74 = shl nsw i32 %73, 1
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 8
  %76 = load i64, ptr %75, align 8, !tbaa !69
  %77 = add nsw i64 %76, 2
  %78 = sitofp i64 %77 to double
  %79 = icmp slt i64 %76, -2
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 331, ptr noundef nonnull @.str.1) #17
  br label %81

81:                                               ; preds = %80, %70
  %82 = icmp sgt i64 %76, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %81, %83
  %84 = phi double [ %86, %83 ], [ 2.718280e+00, %81 ]
  %85 = phi i32 [ %87, %83 ], [ 1, %81 ]
  %86 = fmul double %84, 2.718280e+00
  %87 = add nuw nsw i32 %85, 1
  %88 = fcmp olt double %86, %78
  br i1 %88, label %83, label %89, !llvm.loop !73

89:                                               ; preds = %83, %81
  %90 = phi i32 [ 1, %81 ], [ %87, %83 ]
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %58, %91
  %93 = fptosi double %92 to i64
  %94 = or disjoint i32 %74, 1
  %95 = load i64, ptr %75, align 8, !tbaa !69
  %96 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %74, i32 noundef %94, i64 noundef %93)
  %97 = getelementptr inbounds %struct.fixup_edge_d, ptr %96, i64 0, i32 2
  store i32 1, ptr %97, align 8, !tbaa !74
  %98 = getelementptr inbounds %struct.fixup_edge_d, ptr %96, i64 0, i32 7
  store i64 %95, ptr %98, align 8, !tbaa !76
  %99 = getelementptr inbounds %struct.fixup_edge_d, ptr %96, i64 0, i32 9
  store i64 9223372036854775807, ptr %99, align 8, !tbaa !77
  %100 = load i32, ptr %1, align 8, !tbaa !65
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %1, align 8, !tbaa !65
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 1
  br label %103

103:                                              ; preds = %165, %89
  %104 = phi i32 [ 0, %89 ], [ %166, %165 ]
  %105 = load ptr, ptr %102, align 8, !tbaa !35
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i32, ptr %105, align 8, !tbaa !54
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i32 [ %108, %107 ], [ 0, %103 ]
  %111 = icmp eq i32 %110, %104
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = zext i32 %104 to i64
  %114 = getelementptr inbounds %struct.VEC_edge_base, ptr %105, i64 0, i32 2, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi ptr [ %115, %112 ], [ null, %109 ]
  br i1 %111, label %167, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i8, ptr %120, align 4
  %124 = and i8 %123, 4
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %122, %118
  %127 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !78
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 9
  %130 = load i32, ptr %129, align 8, !tbaa !72
  %131 = shl nsw i32 %130, 1
  %132 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 9
  %133 = load i64, ptr %132, align 8, !tbaa !58
  %134 = add nsw i64 %133, 2
  %135 = sitofp i64 %134 to double
  %136 = icmp slt i64 %133, -2
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 331, ptr noundef nonnull @.str.1) #17
  br label %138

138:                                              ; preds = %137, %126
  %139 = icmp sgt i64 %133, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %138, %140
  %141 = phi double [ %143, %140 ], [ 2.718280e+00, %138 ]
  %142 = phi i32 [ %144, %140 ], [ 1, %138 ]
  %143 = fmul double %141, 2.718280e+00
  %144 = add nuw nsw i32 %142, 1
  %145 = fcmp olt double %143, %135
  br i1 %145, label %140, label %146, !llvm.loop !73

146:                                              ; preds = %140, %138
  %147 = phi i32 [ 1, %138 ], [ %144, %140 ]
  %148 = sitofp i32 %147 to double
  %149 = fdiv double %58, %148
  %150 = fptosi double %149 to i64
  %151 = load i64, ptr %132, align 8, !tbaa !58
  %152 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %94, i32 noundef %131, i64 noundef %150)
  %153 = getelementptr inbounds %struct.fixup_edge_d, ptr %152, i64 0, i32 2
  store i32 2, ptr %153, align 8, !tbaa !74
  %154 = getelementptr inbounds %struct.fixup_edge_d, ptr %152, i64 0, i32 7
  store i64 %151, ptr %154, align 8, !tbaa !76
  %155 = getelementptr inbounds %struct.fixup_edge_d, ptr %152, i64 0, i32 9
  store i64 9223372036854775807, ptr %155, align 8, !tbaa !77
  br label %156

156:                                              ; preds = %146, %122
  %157 = load ptr, ptr %102, align 8, !tbaa !35
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = load i32, ptr %157, align 8, !tbaa !54
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi i32 [ %160, %159 ], [ 0, %156 ]
  %163 = icmp ult i32 %104, %162
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %165

165:                                              ; preds = %164, %161
  %166 = add i32 %104, 1
  br label %103, !llvm.loop !79

167:                                              ; preds = %116
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !35
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %70, !llvm.loop !80

171:                                              ; preds = %167, %64
  %172 = load i32, ptr %1, align 8, !tbaa !65
  %173 = icmp eq i32 %172, %7
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 552, ptr noundef nonnull @.str.1) #17
  br label %175

175:                                              ; preds = %174, %171
  %176 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !81
  %178 = icmp sgt i32 %177, %10
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 554, ptr noundef nonnull @.str.1) #17
  br label %180

180:                                              ; preds = %179, %175
  %181 = load i32, ptr %176, align 4, !tbaa !81
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load ptr, ptr %20, align 8, !tbaa !68
  %185 = zext nneg i32 %181 to i64
  br label %189

186:                                              ; preds = %189, %180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 0, i64 32, i1 false), !tbaa !82
  %187 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %188 = icmp eq ptr %187, null
  br i1 %188, label %210, label %208

189:                                              ; preds = %183, %189
  %190 = phi i64 [ 0, %183 ], [ %206, %189 ]
  %191 = getelementptr inbounds %struct.fixup_edge_d, ptr %184, i64 %190
  %192 = getelementptr inbounds %struct.fixup_edge_d, ptr %184, i64 %190, i32 7
  %193 = load i64, ptr %192, align 8, !tbaa !76
  %194 = load i32, ptr %191, align 8, !tbaa !83
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, ptr %23, i64 %195
  %197 = load i64, ptr %196, align 8, !tbaa !82
  %198 = add nsw i64 %197, %193
  store i64 %198, ptr %196, align 8, !tbaa !82
  %199 = load i64, ptr %192, align 8, !tbaa !76
  %200 = getelementptr inbounds %struct.fixup_edge_d, ptr %184, i64 %190, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !84
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, ptr %23, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !82
  %205 = sub nsw i64 %204, %199
  store i64 %205, ptr %203, align 8, !tbaa !82
  %206 = add nuw nsw i64 %190, 1
  %207 = icmp eq i64 %206, %185
  br i1 %207, label %186, label %189, !llvm.loop !85

208:                                              ; preds = %186
  %209 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 16, i64 1, ptr nonnull %187)
  br label %210

210:                                              ; preds = %208, %186
  %211 = icmp sgt i32 %181, 0
  br i1 %211, label %212, label %256

212:                                              ; preds = %210
  %213 = zext nneg i32 %181 to i64
  br label %214

214:                                              ; preds = %212, %253
  %215 = phi i64 [ 0, %212 ], [ %254, %253 ]
  %216 = load ptr, ptr %20, align 8, !tbaa !68
  %217 = getelementptr inbounds %struct.fixup_edge_d, ptr %216, i64 %215
  %218 = load i32, ptr %217, align 8, !tbaa !83
  switch i32 %218, label %219 [
    i32 0, label %253
    i32 2, label %253
  ]

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.fixup_edge_d, ptr %216, i64 %215, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !84
  %222 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %221, i32 noundef %218)
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %253

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.fixup_edge_d, ptr %216, i64 %215, i32 7
  %226 = load i64, ptr %225, align 8, !tbaa !76
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %253, label %228

228:                                              ; preds = %224
  %229 = add nsw i64 %226, 2
  %230 = sitofp i64 %229 to double
  %231 = icmp slt i64 %226, -2
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 331, ptr noundef nonnull @.str.1) #17
  br label %233

233:                                              ; preds = %232, %228
  %234 = icmp sgt i64 %226, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %233, %235
  %236 = phi double [ %238, %235 ], [ 2.718280e+00, %233 ]
  %237 = phi i32 [ %239, %235 ], [ 1, %233 ]
  %238 = fmul double %236, 2.718280e+00
  %239 = add nuw nsw i32 %237, 1
  %240 = fcmp olt double %238, %230
  br i1 %240, label %235, label %241, !llvm.loop !73

241:                                              ; preds = %235, %233
  %242 = phi i32 [ 1, %233 ], [ %239, %235 ]
  %243 = sitofp i32 %242 to double
  %244 = fdiv double %59, %243
  %245 = fptosi double %244 to i64
  %246 = load i32, ptr %220, align 4, !tbaa !84
  %247 = load i32, ptr %217, align 8, !tbaa !83
  %248 = load i64, ptr %225, align 8, !tbaa !76
  %249 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %246, i32 noundef %247, i64 noundef %245)
  %250 = getelementptr inbounds %struct.fixup_edge_d, ptr %249, i64 0, i32 2
  store i32 3, ptr %250, align 8, !tbaa !74
  %251 = getelementptr inbounds %struct.fixup_edge_d, ptr %249, i64 0, i32 7
  store i64 0, ptr %251, align 8, !tbaa !76
  %252 = getelementptr inbounds %struct.fixup_edge_d, ptr %249, i64 0, i32 9
  store i64 %248, ptr %252, align 8, !tbaa !77
  br label %253

253:                                              ; preds = %214, %241, %224, %219, %214
  %254 = add nuw nsw i64 %215, 1
  %255 = icmp eq i64 %254, %213
  br i1 %255, label %256, label %214, !llvm.loop !86

256:                                              ; preds = %253, %210
  %257 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %258 = icmp eq ptr %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 15, i64 1, ptr nonnull %257)
  br label %261

261:                                              ; preds = %259, %256
  %262 = load i32, ptr %1, align 8, !tbaa !65
  %263 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 2
  store i32 %262, ptr %263, align 8, !tbaa !87
  %264 = add nsw i32 %262, 1
  store i32 %264, ptr %1, align 8, !tbaa !65
  %265 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %262, i32 noundef 0, i64 noundef 0)
  %266 = getelementptr inbounds %struct.fixup_edge_d, ptr %265, i64 0, i32 2
  store i32 4, ptr %266, align 8, !tbaa !74
  %267 = getelementptr inbounds %struct.fixup_edge_d, ptr %265, i64 0, i32 7
  store i64 1, ptr %267, align 8, !tbaa !76
  %268 = getelementptr inbounds %struct.fixup_edge_d, ptr %265, i64 0, i32 9
  store i64 1, ptr %268, align 8, !tbaa !77
  %269 = load i32, ptr %1, align 8, !tbaa !65
  %270 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 3
  store i32 %269, ptr %270, align 4, !tbaa !88
  %271 = add nsw i32 %269, 1
  store i32 %271, ptr %1, align 8, !tbaa !65
  %272 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef 3, i32 noundef %269, i64 noundef 0)
  %273 = getelementptr inbounds %struct.fixup_edge_d, ptr %272, i64 0, i32 2
  store i32 5, ptr %273, align 8, !tbaa !74
  %274 = getelementptr inbounds %struct.fixup_edge_d, ptr %272, i64 0, i32 7
  store i64 0, ptr %274, align 8, !tbaa !76
  %275 = getelementptr inbounds %struct.fixup_edge_d, ptr %272, i64 0, i32 9
  store i64 0, ptr %275, align 8, !tbaa !77
  %276 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %277 = icmp eq ptr %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %261
  %279 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr nonnull %276)
  br label %280

280:                                              ; preds = %278, %261
  %281 = icmp sgt i32 %262, 4
  br i1 %281, label %282, label %314

282:                                              ; preds = %280, %308
  %283 = phi i64 [ %311, %308 ], [ 4, %280 ]
  %284 = phi i64 [ %310, %308 ], [ 1, %280 ]
  %285 = phi i64 [ %309, %308 ], [ 0, %280 ]
  %286 = getelementptr inbounds i64, ptr %23, i64 %283
  %287 = load i64, ptr %286, align 8, !tbaa !82
  %288 = icmp sgt i64 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %282
  %290 = trunc i64 %283 to i32
  %291 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %290, i32 noundef %269, i64 noundef 0)
  %292 = getelementptr inbounds %struct.fixup_edge_d, ptr %291, i64 0, i32 2
  store i32 6, ptr %292, align 8, !tbaa !74
  %293 = getelementptr inbounds %struct.fixup_edge_d, ptr %291, i64 0, i32 7
  store i64 0, ptr %293, align 8, !tbaa !76
  %294 = getelementptr inbounds %struct.fixup_edge_d, ptr %291, i64 0, i32 9
  store i64 %287, ptr %294, align 8, !tbaa !77
  %295 = load i64, ptr %286, align 8, !tbaa !82
  %296 = add nsw i64 %295, %285
  br label %308

297:                                              ; preds = %282
  %298 = icmp slt i64 %287, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %297
  %300 = sub nsw i64 0, %287
  %301 = trunc i64 %283 to i32
  %302 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %262, i32 noundef %301, i64 noundef 0)
  %303 = getelementptr inbounds %struct.fixup_edge_d, ptr %302, i64 0, i32 2
  store i32 6, ptr %303, align 8, !tbaa !74
  %304 = getelementptr inbounds %struct.fixup_edge_d, ptr %302, i64 0, i32 7
  store i64 0, ptr %304, align 8, !tbaa !76
  %305 = getelementptr inbounds %struct.fixup_edge_d, ptr %302, i64 0, i32 9
  store i64 %300, ptr %305, align 8, !tbaa !77
  %306 = load i64, ptr %286, align 8, !tbaa !82
  %307 = sub nsw i64 %284, %306
  br label %308

308:                                              ; preds = %299, %297, %289
  %309 = phi i64 [ %296, %289 ], [ %285, %299 ], [ %285, %297 ]
  %310 = phi i64 [ %284, %289 ], [ %307, %299 ], [ %284, %297 ]
  %311 = add nuw i64 %283, 2
  %312 = trunc i64 %311 to i32
  %313 = icmp sgt i32 %262, %312
  br i1 %313, label %282, label %314, !llvm.loop !89

314:                                              ; preds = %308, %280
  %315 = phi i64 [ 0, %280 ], [ %309, %308 ]
  %316 = phi i64 [ 1, %280 ], [ %310, %308 ]
  %317 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %318 = icmp eq ptr %317, null
  br i1 %318, label %325, label %319

319:                                              ; preds = %314
  %320 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 27, i64 1, ptr nonnull %317)
  %321 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %322 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %321, ptr noundef nonnull @.str.8, i64 noundef %316)
  %323 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %324 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef nonnull @.str.9, i64 noundef %315)
  br label %325

325:                                              ; preds = %319, %314
  %326 = icmp sgt i64 %315, %316
  br i1 %326, label %327, label %330

327:                                              ; preds = %325
  %328 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %262, i32 noundef 0)
  %329 = sub i64 %315, %316
  br label %357

330:                                              ; preds = %325
  %331 = load i32, ptr %1, align 8, !tbaa !65
  %332 = icmp sgt i32 %331, 3
  br i1 %332, label %334, label %333

333:                                              ; preds = %330
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 427, ptr noundef nonnull @.str.1) #17
  br label %334

334:                                              ; preds = %333, %330
  %335 = load ptr, ptr %17, align 8, !tbaa !67
  %336 = getelementptr inbounds %struct.fixup_vertex_d, ptr %335, i64 3
  %337 = load ptr, ptr %336, align 8, !tbaa !90
  %338 = icmp eq ptr %337, null
  br label %339

339:                                              ; preds = %348, %334
  %340 = phi i64 [ %354, %348 ], [ 0, %334 ]
  br i1 %338, label %348, label %341

341:                                              ; preds = %339
  %342 = load i32, ptr %337, align 8, !tbaa !92
  %343 = zext i32 %342 to i64
  %344 = icmp ult i64 %340, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %337, i64 0, i32 2, i64 %340
  %347 = load ptr, ptr %346, align 8, !tbaa !35
  br label %348

348:                                              ; preds = %345, %341, %339
  %349 = phi ptr [ %347, %345 ], [ null, %341 ], [ null, %339 ]
  %350 = phi i1 [ true, %345 ], [ false, %341 ], [ false, %339 ]
  tail call void @llvm.assume(i1 %350)
  %351 = getelementptr inbounds %struct.fixup_edge_d, ptr %349, i64 0, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !84
  %353 = icmp eq i32 %352, %269
  %354 = add nuw i64 %340, 1
  br i1 %353, label %355, label %339, !llvm.loop !94

355:                                              ; preds = %348
  %356 = sub i64 %316, %315
  br label %357

357:                                              ; preds = %355, %327
  %358 = phi ptr [ %349, %355 ], [ %328, %327 ]
  %359 = phi i64 [ %356, %355 ], [ %329, %327 ]
  %360 = getelementptr inbounds %struct.fixup_edge_d, ptr %358, i64 0, i32 9
  %361 = load i64, ptr %360, align 8, !tbaa !77
  %362 = add nsw i64 %359, %361
  store i64 %362, ptr %360, align 8, !tbaa !77
  %363 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %364 = icmp eq ptr %363, null
  br i1 %364, label %367, label %365

365:                                              ; preds = %357
  %366 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 18, i64 1, ptr nonnull %363)
  br label %367

367:                                              ; preds = %365, %357
  %368 = load i32, ptr %176, align 4, !tbaa !81
  %369 = load ptr, ptr %20, align 8, !tbaa !68
  %370 = icmp sgt i32 %368, 0
  br i1 %370, label %371, label %437

371:                                              ; preds = %367
  %372 = zext nneg i32 %368 to i64
  br label %373

373:                                              ; preds = %371, %434
  %374 = phi i64 [ 0, %371 ], [ %435, %434 ]
  %375 = getelementptr inbounds %struct.fixup_edge_d, ptr %369, i64 %374
  %376 = getelementptr inbounds %struct.fixup_edge_d, ptr %369, i64 %374, i32 1
  %377 = load i32, ptr %376, align 4, !tbaa !84
  %378 = load i32, ptr %375, align 8, !tbaa !83
  %379 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %377, i32 noundef %378)
  %380 = getelementptr inbounds %struct.fixup_edge_d, ptr %369, i64 %374, i32 2
  %381 = load i32, ptr %380, align 8, !tbaa !74
  %382 = icmp eq i32 %381, 1
  br i1 %382, label %387, label %383

383:                                              ; preds = %373
  %384 = icmp eq i32 %381, 2
  %385 = icmp ne ptr %379, null
  %386 = select i1 %384, i1 %385, i1 false
  br i1 %386, label %389, label %434

387:                                              ; preds = %373
  %388 = icmp eq ptr %379, null
  br i1 %388, label %434, label %389

389:                                              ; preds = %387, %383
  %390 = load i32, ptr %1, align 8, !tbaa !65
  %391 = add nsw i32 %390, 1
  store i32 %391, ptr %1, align 8, !tbaa !65
  %392 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %393 = icmp eq ptr %392, null
  br i1 %393, label %402, label %394

394:                                              ; preds = %389
  %395 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 21, i64 1, ptr nonnull %392)
  %396 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @dump_fixup_edge(ptr noundef %396, ptr noundef nonnull %1, ptr noundef nonnull %375)
  %397 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @dump_fixup_edge(ptr noundef %397, ptr noundef nonnull %1, ptr noundef %379)
  %398 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %399 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.12, i32 noundef %390)
  %400 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %401 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %400)
  br label %402

402:                                              ; preds = %394, %389
  %403 = getelementptr inbounds %struct.fixup_edge_d, ptr %369, i64 %374, i32 8
  %404 = load i64, ptr %403, align 8, !tbaa !95
  %405 = sdiv i64 %404, 2
  store i64 %405, ptr %403, align 8, !tbaa !95
  %406 = getelementptr inbounds %struct.fixup_edge_d, ptr %369, i64 %374, i32 4
  store i32 %390, ptr %406, align 8, !tbaa !96
  %407 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %408 = icmp eq ptr %407, null
  br i1 %408, label %412, label %409

409:                                              ; preds = %402
  %410 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 21, i64 1, ptr nonnull %407)
  %411 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @dump_fixup_edge(ptr noundef %411, ptr noundef nonnull %1, ptr noundef nonnull %375)
  br label %412

412:                                              ; preds = %409, %402
  %413 = load i32, ptr %375, align 8, !tbaa !83
  %414 = getelementptr inbounds %struct.fixup_edge_d, ptr %379, i64 0, i32 8
  %415 = load i64, ptr %414, align 8, !tbaa !95
  %416 = getelementptr inbounds %struct.fixup_edge_d, ptr %379, i64 0, i32 9
  %417 = load i64, ptr %416, align 8, !tbaa !77
  %418 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %390, i32 noundef %413, i64 noundef %415)
  %419 = getelementptr inbounds %struct.fixup_edge_d, ptr %418, i64 0, i32 2
  store i32 8, ptr %419, align 8, !tbaa !74
  %420 = getelementptr inbounds %struct.fixup_edge_d, ptr %418, i64 0, i32 7
  store i64 0, ptr %420, align 8, !tbaa !76
  %421 = getelementptr inbounds %struct.fixup_edge_d, ptr %418, i64 0, i32 9
  store i64 %417, ptr %421, align 8, !tbaa !77
  %422 = load i32, ptr %1, align 8, !tbaa !65
  %423 = icmp sgt i32 %422, %13
  br i1 %423, label %424, label %425

424:                                              ; preds = %412
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 689, ptr noundef nonnull @.str.1) #17
  br label %425

425:                                              ; preds = %424, %412
  %426 = getelementptr inbounds %struct.fixup_edge_d, ptr %379, i64 0, i32 1
  store i32 %390, ptr %426, align 4, !tbaa !84
  %427 = getelementptr inbounds %struct.fixup_edge_d, ptr %379, i64 0, i32 2
  store i32 8, ptr %427, align 8, !tbaa !74
  %428 = load i64, ptr %403, align 8, !tbaa !95
  store i64 %428, ptr %414, align 8, !tbaa !95
  %429 = getelementptr inbounds %struct.fixup_edge_d, ptr %369, i64 %374, i32 9
  %430 = load i64, ptr %429, align 8, !tbaa !77
  store i64 %430, ptr %416, align 8, !tbaa !77
  %431 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %432 = icmp eq ptr %431, null
  br i1 %432, label %434, label %433

433:                                              ; preds = %425
  call fastcc void @dump_fixup_edge(ptr noundef nonnull %431, ptr noundef nonnull %1, ptr noundef %379)
  br label %434

434:                                              ; preds = %425, %387, %433, %383
  %435 = add nuw nsw i64 %374, 1
  %436 = icmp eq i64 %435, %372
  br i1 %436, label %437, label %373, !llvm.loop !97

437:                                              ; preds = %434, %367
  %438 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %439 = icmp eq ptr %438, null
  br i1 %439, label %441, label %440

440:                                              ; preds = %437
  call fastcc void @dump_fixup_graph(ptr noundef nonnull %438, ptr noundef nonnull %1, ptr noundef nonnull @.str.15)
  br label %441

441:                                              ; preds = %437, %440
  call void @free(ptr noundef %23)
  %442 = load i32, ptr %1, align 8, !tbaa !65
  %443 = load i32, ptr %270, align 4, !tbaa !88
  %444 = load i32, ptr %263, align 8, !tbaa !87
  %445 = load i32, ptr %176, align 4, !tbaa !81
  %446 = load ptr, ptr %20, align 8, !tbaa !68
  %447 = icmp sgt i32 %445, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %441
  %449 = zext nneg i32 %445 to i64
  br label %450

450:                                              ; preds = %448, %450
  %451 = phi i64 [ 0, %448 ], [ %453, %450 ]
  %452 = getelementptr inbounds %struct.fixup_edge_d, ptr %446, i64 %451, i32 5
  store i64 0, ptr %452, align 8, !tbaa !98
  %453 = add nuw nsw i64 %451, 1
  %454 = icmp eq i64 %453, %449
  br i1 %454, label %455, label %450, !llvm.loop !99

455:                                              ; preds = %450, %441
  %456 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %457 = icmp eq ptr %456, null
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = call i64 @fwrite(ptr nonnull @.str.55, i64 26, i64 1, ptr nonnull %456)
  br label %460

460:                                              ; preds = %458, %455
  %461 = load i32, ptr %176, align 4, !tbaa !81
  %462 = load ptr, ptr %20, align 8, !tbaa !68
  %463 = icmp sgt i32 %461, 0
  br i1 %463, label %464, label %488

464:                                              ; preds = %460
  %465 = zext nneg i32 %461 to i64
  br label %466

466:                                              ; preds = %464, %466
  %467 = phi i64 [ 0, %464 ], [ %486, %466 ]
  %468 = getelementptr inbounds %struct.fixup_edge_d, ptr %462, i64 %467
  %469 = getelementptr inbounds %struct.fixup_edge_d, ptr %462, i64 %467, i32 9
  %470 = load i64, ptr %469, align 8, !tbaa !77
  %471 = getelementptr inbounds %struct.fixup_edge_d, ptr %462, i64 %467, i32 5
  %472 = load i64, ptr %471, align 8, !tbaa !98
  %473 = sub nsw i64 %470, %472
  %474 = getelementptr inbounds %struct.fixup_edge_d, ptr %462, i64 %467, i32 6
  store i64 %473, ptr %474, align 8, !tbaa !100
  %475 = getelementptr inbounds %struct.fixup_edge_d, ptr %462, i64 %467, i32 3
  store i8 1, ptr %475, align 4, !tbaa !101
  %476 = getelementptr inbounds %struct.fixup_edge_d, ptr %462, i64 %467, i32 1
  %477 = load i32, ptr %476, align 4, !tbaa !84
  %478 = load i32, ptr %468, align 8, !tbaa !83
  %479 = getelementptr inbounds %struct.fixup_edge_d, ptr %462, i64 %467, i32 8
  %480 = load i64, ptr %479, align 8, !tbaa !95
  %481 = sub nsw i64 0, %480
  %482 = call fastcc ptr @add_edge(ptr noundef nonnull %1, i32 noundef %477, i32 noundef %478, i64 noundef %481)
  %483 = getelementptr inbounds %struct.fixup_edge_d, ptr %482, i64 0, i32 6
  store i64 %472, ptr %483, align 8, !tbaa !100
  %484 = getelementptr inbounds %struct.fixup_edge_d, ptr %482, i64 0, i32 3
  store i8 1, ptr %484, align 4, !tbaa !101
  %485 = getelementptr inbounds %struct.fixup_edge_d, ptr %482, i64 0, i32 2
  store i32 0, ptr %485, align 8, !tbaa !74
  %486 = add nuw nsw i64 %467, 1
  %487 = icmp eq i64 %486, %465
  br i1 %487, label %488, label %466, !llvm.loop !102

488:                                              ; preds = %466, %460
  %489 = load i32, ptr %1, align 8, !tbaa !65
  %490 = add nsw i32 %489, 2
  %491 = sext i32 %490 to i64
  %492 = call ptr @xcalloc(i64 noundef %491, i64 noundef 4) #17
  %493 = sext i32 %489 to i64
  %494 = call ptr @xcalloc(i64 noundef %493, i64 noundef 4) #17
  %495 = call ptr @xcalloc(i64 noundef %493, i64 noundef 4) #17
  %496 = icmp eq ptr %494, null
  %497 = icmp eq ptr %495, null
  %498 = icmp sgt i32 %489, -2
  %499 = sext i32 %444 to i64
  %500 = getelementptr inbounds i32, ptr %494, i64 %499
  %501 = icmp eq i32 %443, %444
  %502 = icmp eq i32 %443, %444
  %503 = icmp eq i32 %443, %444
  br label %504

504:                                              ; preds = %647, %488
  %505 = phi i64 [ 0, %488 ], [ %588, %647 ]
  br i1 %496, label %506, label %507

506:                                              ; preds = %504
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 976, ptr noundef nonnull @.str.1) #17
  br label %507

507:                                              ; preds = %506, %504
  br i1 %497, label %508, label %509

508:                                              ; preds = %507
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 978, ptr noundef nonnull @.str.1) #17
  br label %509

509:                                              ; preds = %508, %507
  %510 = load ptr, ptr %17, align 8, !tbaa !67
  %511 = load i32, ptr %1, align 8, !tbaa !65
  %512 = icmp sgt i32 %511, 0
  br i1 %512, label %513, label %520

513:                                              ; preds = %509, %513
  %514 = phi i64 [ %516, %513 ], [ 0, %509 ]
  %515 = getelementptr inbounds i32, ptr %495, i64 %514
  store i32 0, ptr %515, align 4, !tbaa !50
  %516 = add nuw nsw i64 %514, 1
  %517 = load i32, ptr %1, align 8, !tbaa !65
  %518 = sext i32 %517 to i64
  %519 = icmp slt i64 %516, %518
  br i1 %519, label %513, label %520, !llvm.loop !103

520:                                              ; preds = %513, %509
  br i1 %498, label %522, label %521

521:                                              ; preds = %520
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 755, ptr noundef nonnull @.str.1) #17
  br label %522

522:                                              ; preds = %521, %520
  store i32 %444, ptr %492, align 4, !tbaa !50
  store i32 -1, ptr %500, align 4, !tbaa !50
  br label %526

523:                                              ; preds = %547
  %524 = zext i32 %537 to i64
  %525 = icmp eq i64 %531, %524
  br i1 %525, label %648, label %526, !llvm.loop !104

526:                                              ; preds = %522, %523
  %527 = phi i64 [ 0, %522 ], [ %531, %523 ]
  %528 = phi i32 [ 1, %522 ], [ %537, %523 ]
  %529 = getelementptr inbounds i32, ptr %492, i64 %527
  %530 = load i32, ptr %529, align 4, !tbaa !50
  %531 = add nuw i64 %527, 1
  %532 = sext i32 %530 to i64
  %533 = getelementptr inbounds i32, ptr %495, i64 %532
  store i32 1, ptr %533, align 4, !tbaa !50
  %534 = getelementptr inbounds %struct.fixup_vertex_d, ptr %510, i64 %532
  br label %535

535:                                              ; preds = %570, %526
  %536 = phi i64 [ %572, %570 ], [ 0, %526 ]
  %537 = phi i32 [ %571, %570 ], [ %528, %526 ]
  %538 = load ptr, ptr %534, align 8, !tbaa !90
  %539 = icmp eq ptr %538, null
  br i1 %539, label %547, label %540

540:                                              ; preds = %535
  %541 = load i32, ptr %538, align 8, !tbaa !92
  %542 = zext i32 %541 to i64
  %543 = icmp ult i64 %536, %542
  br i1 %543, label %544, label %547

544:                                              ; preds = %540
  %545 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %538, i64 0, i32 2, i64 %536
  %546 = load ptr, ptr %545, align 8, !tbaa !35
  br label %547

547:                                              ; preds = %544, %540, %535
  %548 = phi ptr [ %546, %544 ], [ null, %540 ], [ null, %535 ]
  %549 = phi i1 [ false, %544 ], [ true, %540 ], [ true, %535 ]
  br i1 %549, label %523, label %550

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.fixup_edge_d, ptr %548, i64 0, i32 1
  %552 = load i32, ptr %551, align 4, !tbaa !84
  %553 = getelementptr inbounds %struct.fixup_edge_d, ptr %548, i64 0, i32 6
  %554 = load i64, ptr %553, align 8, !tbaa !100
  %555 = icmp sgt i64 %554, 0
  br i1 %555, label %556, label %570

556:                                              ; preds = %550
  %557 = sext i32 %552 to i64
  %558 = getelementptr inbounds i32, ptr %495, i64 %557
  %559 = load i32, ptr %558, align 4, !tbaa !50
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %570

561:                                              ; preds = %556
  %562 = icmp slt i32 %537, %490
  br i1 %562, label %564, label %563

563:                                              ; preds = %561
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 755, ptr noundef nonnull @.str.1) #17
  br label %564

564:                                              ; preds = %563, %561
  %565 = sext i32 %537 to i64
  %566 = getelementptr inbounds i32, ptr %492, i64 %565
  store i32 %552, ptr %566, align 4, !tbaa !50
  %567 = add nsw i32 %537, 1
  %568 = getelementptr inbounds i32, ptr %494, i64 %557
  store i32 %530, ptr %568, align 4, !tbaa !50
  store i32 1, ptr %558, align 4, !tbaa !50
  %569 = icmp eq i32 %552, %443
  br i1 %569, label %573, label %570

570:                                              ; preds = %564, %556, %550
  %571 = phi i32 [ %567, %564 ], [ %537, %556 ], [ %537, %550 ]
  %572 = add nuw i64 %536, 1
  br label %535, !llvm.loop !105

573:                                              ; preds = %564
  br i1 %501, label %586, label %574

574:                                              ; preds = %573, %574
  %575 = phi i64 [ %583, %574 ], [ 9223372036854775807, %573 ]
  %576 = phi i32 [ %584, %574 ], [ %443, %573 ]
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32, ptr %494, i64 %577
  %579 = load i32, ptr %578, align 4, !tbaa !50
  %580 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %579, i32 noundef %576)
  %581 = getelementptr inbounds %struct.fixup_edge_d, ptr %580, i64 0, i32 6
  %582 = load i64, ptr %581, align 8, !tbaa !100
  %583 = call i64 @llvm.smin.i64(i64 %575, i64 %582)
  %584 = load i32, ptr %578, align 4, !tbaa !50
  %585 = icmp eq i32 %584, %444
  br i1 %585, label %586, label %574, !llvm.loop !106

586:                                              ; preds = %574, %573
  %587 = phi i64 [ 9223372036854775807, %573 ], [ %583, %574 ]
  %588 = add nsw i64 %587, %505
  br i1 %502, label %628, label %589

589:                                              ; preds = %586, %625
  %590 = phi i32 [ %626, %625 ], [ %443, %586 ]
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, ptr %494, i64 %591
  %593 = load i32, ptr %592, align 4, !tbaa !50
  %594 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %593, i32 noundef %590)
  %595 = load i32, ptr %592, align 4, !tbaa !50
  %596 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %590, i32 noundef %595)
  %597 = getelementptr inbounds %struct.fixup_edge_d, ptr %594, i64 0, i32 2
  %598 = load i32, ptr %597, align 8, !tbaa !74
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %610, label %600

600:                                              ; preds = %589
  %601 = getelementptr inbounds %struct.fixup_edge_d, ptr %594, i64 0, i32 5
  %602 = load i64, ptr %601, align 8, !tbaa !98
  %603 = add nsw i64 %602, %587
  store i64 %603, ptr %601, align 8, !tbaa !98
  %604 = getelementptr inbounds %struct.fixup_edge_d, ptr %594, i64 0, i32 6
  %605 = load i64, ptr %604, align 8, !tbaa !100
  %606 = sub nsw i64 %605, %587
  store i64 %606, ptr %604, align 8, !tbaa !100
  %607 = getelementptr inbounds %struct.fixup_edge_d, ptr %596, i64 0, i32 6
  %608 = load i64, ptr %607, align 8, !tbaa !100
  %609 = add nsw i64 %608, %587
  store i64 %609, ptr %607, align 8, !tbaa !100
  br label %625

610:                                              ; preds = %589
  %611 = getelementptr inbounds %struct.fixup_edge_d, ptr %596, i64 0, i32 2
  %612 = load i32, ptr %611, align 8, !tbaa !74
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %615

614:                                              ; preds = %610
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1083, ptr noundef nonnull @.str.1) #17
  br label %615

615:                                              ; preds = %614, %610
  %616 = getelementptr inbounds %struct.fixup_edge_d, ptr %596, i64 0, i32 6
  %617 = load i64, ptr %616, align 8, !tbaa !100
  %618 = add nsw i64 %617, %587
  store i64 %618, ptr %616, align 8, !tbaa !100
  %619 = getelementptr inbounds %struct.fixup_edge_d, ptr %596, i64 0, i32 5
  %620 = load i64, ptr %619, align 8, !tbaa !98
  %621 = sub nsw i64 %620, %587
  store i64 %621, ptr %619, align 8, !tbaa !98
  %622 = getelementptr inbounds %struct.fixup_edge_d, ptr %594, i64 0, i32 6
  %623 = load i64, ptr %622, align 8, !tbaa !100
  %624 = sub nsw i64 %623, %587
  store i64 %624, ptr %622, align 8, !tbaa !100
  br label %625

625:                                              ; preds = %615, %600
  %626 = load i32, ptr %592, align 4, !tbaa !50
  %627 = icmp eq i32 %626, %444
  br i1 %627, label %628, label %589, !llvm.loop !107

628:                                              ; preds = %625, %586
  %629 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %630 = icmp eq ptr %629, null
  br i1 %630, label %647, label %631

631:                                              ; preds = %628
  %632 = call i64 @fwrite(ptr nonnull @.str.50, i64 23, i64 1, ptr nonnull %629)
  br i1 %503, label %642, label %633

633:                                              ; preds = %631, %633
  %634 = phi i32 [ %640, %633 ], [ %443, %631 ]
  %635 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @print_basic_block(ptr noundef %635, ptr noundef nonnull %1, i32 noundef %634)
  %636 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %637 = call i64 @fwrite(ptr nonnull @.str.51, i64 2, i64 1, ptr %636)
  %638 = sext i32 %634 to i64
  %639 = getelementptr inbounds i32, ptr %494, i64 %638
  %640 = load i32, ptr %639, align 4, !tbaa !50
  %641 = icmp eq i32 %640, %444
  br i1 %641, label %642, label %633, !llvm.loop !108

642:                                              ; preds = %633, %631
  %643 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %644 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %643, ptr noundef nonnull @.str.52, i64 noundef %587)
  %645 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %645, ptr noundef nonnull @.str.53, i64 noundef %588)
  br label %647

647:                                              ; preds = %642, %628
  br label %504, !llvm.loop !109

648:                                              ; preds = %523
  call void @free(ptr noundef %492)
  call void @free(ptr noundef %494)
  call void @free(ptr noundef %495)
  %649 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %650 = icmp eq ptr %649, null
  br i1 %650, label %652, label %651

651:                                              ; preds = %648
  call fastcc void @dump_fixup_graph(ptr noundef nonnull %649, ptr noundef nonnull %1, ptr noundef nonnull @.str.54)
  br label %652

652:                                              ; preds = %651, %648
  %653 = sext i32 %442 to i64
  %654 = call ptr @xcalloc(i64 noundef %653, i64 noundef 4) #17
  %655 = call ptr @xcalloc(i64 noundef %653, i64 noundef 8) #17
  %656 = call ptr @xcalloc(i64 noundef %653, i64 noundef 4) #17
  br label %657

657:                                              ; preds = %909, %652
  %658 = phi i32 [ 0, %652 ], [ %910, %909 ]
  %659 = load i32, ptr %1, align 8, !tbaa !65
  %660 = load i32, ptr %176, align 4, !tbaa !81
  %661 = load ptr, ptr %20, align 8, !tbaa !68
  %662 = load i32, ptr %263, align 8, !tbaa !87
  %663 = icmp sgt i32 %659, 1
  br i1 %663, label %664, label %673

664:                                              ; preds = %657
  %665 = zext nneg i32 %659 to i64
  br label %666

666:                                              ; preds = %664, %666
  %667 = phi i64 [ 1, %664 ], [ %671, %666 ]
  %668 = getelementptr inbounds i64, ptr %655, i64 %667
  store i64 9223372036854775807, ptr %668, align 8, !tbaa !82
  %669 = getelementptr inbounds i32, ptr %654, i64 %667
  store i32 -1, ptr %669, align 4, !tbaa !50
  %670 = getelementptr inbounds i32, ptr %656, i64 %667
  store i32 -1, ptr %670, align 4, !tbaa !50
  %671 = add nuw nsw i64 %667, 1
  %672 = icmp eq i64 %671, %665
  br i1 %672, label %673, label %666, !llvm.loop !110

673:                                              ; preds = %666, %657
  store i64 0, ptr %655, align 8, !tbaa !82
  %674 = icmp sgt i32 %659, 1
  br i1 %674, label %675, label %723

675:                                              ; preds = %673
  %676 = icmp sgt i32 %660, 0
  %677 = zext nneg i32 %660 to i64
  br label %678

678:                                              ; preds = %716, %675
  %679 = phi ptr [ undef, %675 ], [ %717, %716 ]
  %680 = phi i32 [ 1, %675 ], [ %720, %716 ]
  br i1 %676, label %681, label %716

681:                                              ; preds = %678, %712
  %682 = phi i64 [ %714, %712 ], [ 0, %678 ]
  %683 = phi i8 [ %713, %712 ], [ 0, %678 ]
  %684 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %682
  %685 = load i32, ptr %684, align 8, !tbaa !83
  %686 = icmp eq i32 %685, %662
  br i1 %686, label %712, label %687

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %682, i32 3
  %689 = load i8, ptr %688, align 4, !tbaa !101
  %690 = icmp eq i8 %689, 0
  br i1 %690, label %712, label %691

691:                                              ; preds = %687
  %692 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %682, i32 6
  %693 = load i64, ptr %692, align 8, !tbaa !100
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %712, label %695

695:                                              ; preds = %691
  %696 = sext i32 %685 to i64
  %697 = getelementptr inbounds i64, ptr %655, i64 %696
  %698 = load i64, ptr %697, align 8, !tbaa !82
  %699 = icmp eq i64 %698, 9223372036854775807
  br i1 %699, label %712, label %700

700:                                              ; preds = %695
  %701 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %682, i32 1
  %702 = load i32, ptr %701, align 4, !tbaa !84
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds i64, ptr %655, i64 %703
  %705 = load i64, ptr %704, align 8, !tbaa !82
  %706 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %682, i32 8
  %707 = load i64, ptr %706, align 8, !tbaa !95
  %708 = add nsw i64 %707, %698
  %709 = icmp sgt i64 %705, %708
  br i1 %709, label %710, label %712

710:                                              ; preds = %700
  store i64 %708, ptr %704, align 8, !tbaa !82
  %711 = getelementptr inbounds i32, ptr %654, i64 %703
  store i32 %685, ptr %711, align 4, !tbaa !50
  br label %712

712:                                              ; preds = %710, %700, %695, %691, %687, %681
  %713 = phi i8 [ %683, %681 ], [ 1, %710 ], [ %683, %700 ], [ %683, %695 ], [ %683, %691 ], [ %683, %687 ]
  %714 = add nuw nsw i64 %682, 1
  %715 = icmp eq i64 %714, %677
  br i1 %715, label %716, label %681, !llvm.loop !111

716:                                              ; preds = %712, %678
  %717 = phi ptr [ %679, %678 ], [ %684, %712 ]
  %718 = phi i8 [ 0, %678 ], [ %713, %712 ]
  %719 = icmp eq i8 %718, 0
  %720 = add nuw nsw i32 %680, 1
  %721 = icmp eq i32 %720, %659
  %722 = select i1 %719, i1 true, i1 %721
  br i1 %722, label %723, label %678, !llvm.loop !112

723:                                              ; preds = %716, %673
  %724 = phi ptr [ undef, %673 ], [ %717, %716 ]
  %725 = phi i1 [ true, %673 ], [ %719, %716 ]
  br i1 %725, label %917, label %726

726:                                              ; preds = %723
  %727 = icmp sgt i32 %660, 0
  br i1 %727, label %728, label %768

728:                                              ; preds = %726
  %729 = zext nneg i32 %660 to i64
  %730 = add nsw i32 %660, -1
  %731 = zext i32 %730 to i64
  %732 = shl nuw nsw i64 %731, 6
  %733 = getelementptr i8, ptr %661, i64 %732
  %734 = zext nneg i32 %660 to i64
  br label %735

735:                                              ; preds = %728, %764
  %736 = phi i64 [ 0, %728 ], [ %765, %764 ]
  %737 = phi i1 [ %727, %728 ], [ %766, %764 ]
  %738 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %736
  %739 = load i32, ptr %738, align 8, !tbaa !83
  %740 = icmp eq i32 %739, %662
  br i1 %740, label %764, label %741

741:                                              ; preds = %735
  %742 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %736, i32 3
  %743 = load i8, ptr %742, align 4, !tbaa !101
  %744 = icmp eq i8 %743, 0
  br i1 %744, label %764, label %745

745:                                              ; preds = %741
  %746 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %736, i32 6
  %747 = load i64, ptr %746, align 8, !tbaa !100
  %748 = icmp eq i64 %747, 0
  br i1 %748, label %764, label %749

749:                                              ; preds = %745
  %750 = sext i32 %739 to i64
  %751 = getelementptr inbounds i64, ptr %655, i64 %750
  %752 = load i64, ptr %751, align 8, !tbaa !82
  %753 = icmp eq i64 %752, 9223372036854775807
  br i1 %753, label %764, label %754

754:                                              ; preds = %749
  %755 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %736, i32 1
  %756 = load i32, ptr %755, align 4, !tbaa !84
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds i64, ptr %655, i64 %757
  %759 = load i64, ptr %758, align 8, !tbaa !82
  %760 = getelementptr inbounds %struct.fixup_edge_d, ptr %661, i64 %736, i32 8
  %761 = load i64, ptr %760, align 8, !tbaa !95
  %762 = add nsw i64 %761, %752
  %763 = icmp sgt i64 %759, %762
  br i1 %763, label %768, label %764

764:                                              ; preds = %754, %749, %745, %741, %735
  %765 = add nuw nsw i64 %736, 1
  %766 = icmp ult i64 %765, %729
  %767 = icmp eq i64 %765, %734
  br i1 %767, label %768, label %735, !llvm.loop !113

768:                                              ; preds = %764, %754, %726
  %769 = phi i1 [ %727, %726 ], [ %737, %754 ], [ %766, %764 ]
  %770 = phi ptr [ %724, %726 ], [ %738, %754 ], [ %733, %764 ]
  br i1 %769, label %771, label %917

771:                                              ; preds = %768
  %772 = getelementptr inbounds %struct.fixup_edge_d, ptr %770, i64 0, i32 1
  %773 = load i32, ptr %772, align 4, !tbaa !84
  store i32 %773, ptr %656, align 4, !tbaa !50
  %774 = icmp sgt i32 %659, 1
  br i1 %774, label %775, label %808

775:                                              ; preds = %771
  %776 = load i32, ptr %772, align 4, !tbaa !84
  %777 = zext nneg i32 %659 to i64
  br label %778

778:                                              ; preds = %775, %801
  %779 = phi i64 [ 1, %775 ], [ %805, %801 ]
  %780 = phi i32 [ 0, %775 ], [ %804, %801 ]
  %781 = phi i32 [ 0, %775 ], [ %803, %801 ]
  %782 = phi i32 [ %776, %775 ], [ %785, %801 ]
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i32, ptr %654, i64 %783
  %785 = load i32, ptr %784, align 4, !tbaa !50
  %786 = getelementptr inbounds i32, ptr %656, i64 %779
  store i32 %785, ptr %786, align 4, !tbaa !50
  %787 = trunc i64 %779 to i32
  %788 = load i32, ptr %656, align 4, !tbaa !50
  %789 = icmp eq i32 %788, %785
  br i1 %789, label %801, label %794

790:                                              ; preds = %794
  %791 = getelementptr inbounds i32, ptr %656, i64 %796
  %792 = load i32, ptr %791, align 4, !tbaa !50
  %793 = icmp eq i32 %792, %785
  br i1 %793, label %798, label %794, !llvm.loop !114

794:                                              ; preds = %778, %790
  %795 = phi i64 [ %796, %790 ], [ 0, %778 ]
  %796 = add nuw nsw i64 %795, 1
  %797 = icmp eq i64 %796, %779
  br i1 %797, label %801, label %790, !llvm.loop !114

798:                                              ; preds = %790
  %799 = icmp ult i64 %796, %779
  %800 = trunc i64 %796 to i32
  br label %801

801:                                              ; preds = %794, %798, %778
  %802 = phi i1 [ %799, %798 ], [ true, %778 ], [ false, %794 ]
  %803 = phi i32 [ %800, %798 ], [ 0, %778 ], [ %781, %794 ]
  %804 = phi i32 [ %787, %798 ], [ %787, %778 ], [ %780, %794 ]
  %805 = add nuw nsw i64 %779, 1
  %806 = icmp uge i64 %805, %777
  %807 = select i1 %802, i1 true, i1 %806
  br i1 %807, label %808, label %778, !llvm.loop !115

808:                                              ; preds = %801, %771
  %809 = phi i32 [ 0, %771 ], [ %803, %801 ]
  %810 = phi i32 [ 0, %771 ], [ %804, %801 ]
  %811 = sext i32 %809 to i64
  %812 = getelementptr inbounds i32, ptr %656, i64 %811
  %813 = load i32, ptr %812, align 4, !tbaa !50
  %814 = sext i32 %810 to i64
  %815 = getelementptr inbounds i32, ptr %656, i64 %814
  %816 = load i32, ptr %815, align 4, !tbaa !50
  %817 = icmp eq i32 %813, %816
  br i1 %817, label %819, label %818

818:                                              ; preds = %808
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 884, ptr noundef nonnull @.str.1) #17
  br label %819

819:                                              ; preds = %818, %808
  %820 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %821 = icmp eq ptr %820, null
  br i1 %821, label %825, label %822

822:                                              ; preds = %819
  %823 = sub nsw i32 %810, %809
  %824 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %820, ptr noundef nonnull @.str.56, i32 noundef %823)
  br label %825

825:                                              ; preds = %822, %819
  %826 = icmp slt i32 %809, %810
  br i1 %826, label %827, label %855

827:                                              ; preds = %825
  %828 = sext i32 %809 to i64
  %829 = sext i32 %810 to i64
  br label %830

830:                                              ; preds = %827, %851
  %831 = phi i64 [ %828, %827 ], [ %834, %851 ]
  %832 = phi i64 [ 9223372036854775807, %827 ], [ %842, %851 ]
  %833 = phi i64 [ 0, %827 ], [ %845, %851 ]
  %834 = add nsw i64 %831, 1
  %835 = getelementptr inbounds i32, ptr %656, i64 %834
  %836 = load i32, ptr %835, align 4, !tbaa !50
  %837 = getelementptr inbounds i32, ptr %656, i64 %831
  %838 = load i32, ptr %837, align 4, !tbaa !50
  %839 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %836, i32 noundef %838)
  %840 = getelementptr inbounds %struct.fixup_edge_d, ptr %839, i64 0, i32 6
  %841 = load i64, ptr %840, align 8, !tbaa !100
  %842 = call i64 @llvm.smin.i64(i64 %832, i64 %841)
  %843 = getelementptr inbounds %struct.fixup_edge_d, ptr %839, i64 0, i32 8
  %844 = load i64, ptr %843, align 8, !tbaa !95
  %845 = add nsw i64 %844, %833
  %846 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %847 = icmp eq ptr %846, null
  br i1 %847, label %851, label %848

848:                                              ; preds = %830
  %849 = load i32, ptr %837, align 4, !tbaa !50
  %850 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %846, ptr noundef nonnull @.str.57, i32 noundef %849)
  br label %851

851:                                              ; preds = %848, %830
  %852 = icmp eq i64 %834, %829
  br i1 %852, label %853, label %830, !llvm.loop !116

853:                                              ; preds = %851
  %854 = trunc i64 %834 to i32
  br label %855

855:                                              ; preds = %853, %825
  %856 = phi i32 [ %809, %825 ], [ %854, %853 ]
  %857 = phi i64 [ 0, %825 ], [ %845, %853 ]
  %858 = phi i64 [ 9223372036854775807, %825 ], [ %842, %853 ]
  %859 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %860 = icmp eq ptr %859, null
  br i1 %860, label %870, label %861

861:                                              ; preds = %855
  %862 = sext i32 %856 to i64
  %863 = getelementptr inbounds i32, ptr %656, i64 %862
  %864 = load i32, ptr %863, align 4, !tbaa !50
  %865 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %859, ptr noundef nonnull @.str.41, i32 noundef %864)
  %866 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %867 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %866, ptr noundef nonnull @.str.58, i64 noundef %857, i64 noundef %858)
  %868 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %869 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %868, ptr noundef nonnull @.str.59, i64 noundef %858)
  br label %870

870:                                              ; preds = %861, %855
  %871 = icmp slt i32 %809, %810
  br i1 %871, label %872, label %909

872:                                              ; preds = %870
  %873 = sext i32 %809 to i64
  %874 = sext i32 %810 to i64
  br label %875

875:                                              ; preds = %872, %907
  %876 = phi i64 [ %873, %872 ], [ %877, %907 ]
  %877 = add nsw i64 %876, 1
  %878 = getelementptr inbounds i32, ptr %656, i64 %877
  %879 = load i32, ptr %878, align 4, !tbaa !50
  %880 = getelementptr inbounds i32, ptr %656, i64 %876
  %881 = load i32, ptr %880, align 4, !tbaa !50
  %882 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %879, i32 noundef %881)
  %883 = load i32, ptr %880, align 4, !tbaa !50
  %884 = load i32, ptr %878, align 4, !tbaa !50
  %885 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %883, i32 noundef %884)
  %886 = getelementptr inbounds %struct.fixup_edge_d, ptr %882, i64 0, i32 6
  %887 = load i64, ptr %886, align 8, !tbaa !100
  %888 = sub nsw i64 %887, %858
  store i64 %888, ptr %886, align 8, !tbaa !100
  %889 = getelementptr inbounds %struct.fixup_edge_d, ptr %882, i64 0, i32 2
  %890 = load i32, ptr %889, align 8, !tbaa !74
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %896, label %892

892:                                              ; preds = %875
  %893 = getelementptr inbounds %struct.fixup_edge_d, ptr %882, i64 0, i32 5
  %894 = load i64, ptr %893, align 8, !tbaa !98
  %895 = add nsw i64 %894, %858
  store i64 %895, ptr %893, align 8, !tbaa !98
  br label %896

896:                                              ; preds = %892, %875
  %897 = getelementptr inbounds %struct.fixup_edge_d, ptr %885, i64 0, i32 6
  %898 = load i64, ptr %897, align 8, !tbaa !100
  %899 = add nsw i64 %898, %858
  store i64 %899, ptr %897, align 8, !tbaa !100
  %900 = getelementptr inbounds %struct.fixup_edge_d, ptr %885, i64 0, i32 2
  %901 = load i32, ptr %900, align 8, !tbaa !74
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %907, label %903

903:                                              ; preds = %896
  %904 = getelementptr inbounds %struct.fixup_edge_d, ptr %885, i64 0, i32 5
  %905 = load i64, ptr %904, align 8, !tbaa !98
  %906 = sub nsw i64 %905, %858
  store i64 %906, ptr %904, align 8, !tbaa !98
  br label %907

907:                                              ; preds = %903, %896
  %908 = icmp eq i64 %877, %874
  br i1 %908, label %909, label %875, !llvm.loop !117

909:                                              ; preds = %907, %870
  %910 = add nuw nsw i32 %658, 1
  %911 = load i32, ptr %1, align 8, !tbaa !65
  %912 = load i32, ptr %176, align 4, !tbaa !81
  %913 = mul nsw i32 %912, %911
  %914 = sdiv i32 1000000, %913
  %915 = add nsw i32 %914, 10
  %916 = icmp slt i32 %658, %915
  br i1 %916, label %657, label %917, !llvm.loop !118

917:                                              ; preds = %768, %723, %909
  %918 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %919 = icmp eq ptr %918, null
  br i1 %919, label %921, label %920

920:                                              ; preds = %917
  call fastcc void @dump_fixup_graph(ptr noundef nonnull %918, ptr noundef nonnull %1, ptr noundef nonnull @.str.49)
  br label %921

921:                                              ; preds = %917, %920
  call void @free(ptr noundef %654)
  call void @free(ptr noundef %655)
  call void @free(ptr noundef %656)
  %922 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %923 = icmp eq ptr %922, null
  br i1 %923, label %926, label %924

924:                                              ; preds = %921
  %925 = call i64 @fwrite(ptr nonnull @.str.60, i64 22, i64 1, ptr nonnull %922)
  br label %926

926:                                              ; preds = %924, %921
  %927 = load ptr, ptr @cfun, align 8, !tbaa !35
  %928 = getelementptr inbounds %struct.function, ptr %927, i64 0, i32 1
  %929 = load ptr, ptr %928, align 8, !tbaa !60
  %930 = load ptr, ptr %929, align 8, !tbaa !35
  %931 = getelementptr inbounds %struct.control_flow_graph, ptr %929, i64 0, i32 1
  %932 = load ptr, ptr %931, align 8, !tbaa !119
  %933 = icmp eq ptr %930, %932
  br i1 %933, label %1144, label %934

934:                                              ; preds = %926, %1135
  %935 = phi ptr [ %1137, %1135 ], [ %930, %926 ]
  %936 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 9
  %937 = load i32, ptr %936, align 8, !tbaa !72
  %938 = shl nsw i32 %937, 1
  %939 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %940 = icmp eq ptr %939, null
  br i1 %940, label %945, label %941

941:                                              ; preds = %934
  %942 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 8
  %943 = load i64, ptr %942, align 8, !tbaa !69
  %944 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %939, ptr noundef nonnull @.str.61, i32 noundef %937, i64 noundef %943)
  br label %945

945:                                              ; preds = %941, %934
  %946 = or disjoint i32 %938, 1
  %947 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %938, i32 noundef %946)
  %948 = getelementptr inbounds %struct.fixup_edge_d, ptr %947, i64 0, i32 5
  %949 = load i64, ptr %948, align 8, !tbaa !98
  %950 = icmp eq i64 %949, 0
  br i1 %950, label %963, label %951

951:                                              ; preds = %945
  %952 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 8
  %953 = load i64, ptr %952, align 8, !tbaa !69
  %954 = add nsw i64 %953, %949
  store i64 %954, ptr %952, align 8, !tbaa !69
  %955 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %956 = icmp eq ptr %955, null
  br i1 %956, label %963, label %957

957:                                              ; preds = %951
  %958 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %955, ptr noundef nonnull @.str.62, i64 noundef %949)
  %959 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @print_basic_block(ptr noundef %959, ptr noundef nonnull %1, i32 noundef %938)
  %960 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %959)
  call fastcc void @print_basic_block(ptr noundef %959, ptr noundef nonnull %1, i32 noundef %946)
  %961 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %962 = call i32 @fputc(i32 41, ptr %961)
  br label %963

963:                                              ; preds = %957, %951, %945
  %964 = getelementptr inbounds %struct.fixup_edge_d, ptr %947, i64 0, i32 4
  %965 = load i32, ptr %964, align 8, !tbaa !96
  %966 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %946, i32 noundef %965)
  %967 = load i32, ptr %964, align 8, !tbaa !96
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %986, label %969

969:                                              ; preds = %963
  %970 = getelementptr inbounds %struct.fixup_edge_d, ptr %966, i64 0, i32 5
  %971 = load i64, ptr %970, align 8, !tbaa !98
  %972 = icmp eq i64 %971, 0
  br i1 %972, label %986, label %973

973:                                              ; preds = %969
  %974 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 8
  %975 = load i64, ptr %974, align 8, !tbaa !69
  %976 = sub nsw i64 %975, %971
  store i64 %976, ptr %974, align 8, !tbaa !69
  %977 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %978 = icmp eq ptr %977, null
  br i1 %978, label %986, label %979

979:                                              ; preds = %973
  %980 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %977, ptr noundef nonnull @.str.64, i64 noundef %971)
  %981 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %982 = load i32, ptr %964, align 8, !tbaa !96
  call fastcc void @print_basic_block(ptr noundef %981, ptr noundef nonnull %1, i32 noundef %946)
  %983 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %981)
  call fastcc void @print_basic_block(ptr noundef %981, ptr noundef nonnull %1, i32 noundef %982)
  %984 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %985 = call i32 @fputc(i32 41, ptr %984)
  br label %986

986:                                              ; preds = %979, %973, %969, %963
  %987 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %988 = icmp eq ptr %987, null
  br i1 %988, label %993, label %989

989:                                              ; preds = %986
  %990 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 8
  %991 = load i64, ptr %990, align 8, !tbaa !69
  %992 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %987, ptr noundef nonnull @.str.65, i64 noundef %991)
  br label %993

993:                                              ; preds = %989, %986
  %994 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 1
  %995 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 8
  %996 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 8
  br label %997

997:                                              ; preds = %1133, %993
  %998 = phi i32 [ 0, %993 ], [ %1134, %1133 ]
  %999 = load ptr, ptr %994, align 8, !tbaa !35
  %1000 = icmp eq ptr %999, null
  br i1 %1000, label %1003, label %1001

1001:                                             ; preds = %997
  %1002 = load i32, ptr %999, align 8, !tbaa !54
  br label %1003

1003:                                             ; preds = %1001, %997
  %1004 = phi i32 [ %1002, %1001 ], [ 0, %997 ]
  %1005 = icmp eq i32 %1004, %998
  br i1 %1005, label %1010, label %1006

1006:                                             ; preds = %1003
  %1007 = zext i32 %998 to i64
  %1008 = getelementptr inbounds %struct.VEC_edge_base, ptr %999, i64 0, i32 2, i64 %1007
  %1009 = load ptr, ptr %1008, align 8, !tbaa !35
  br label %1010

1010:                                             ; preds = %1006, %1003
  %1011 = phi ptr [ %1009, %1006 ], [ null, %1003 ]
  br i1 %1005, label %1135, label %1012

1012:                                             ; preds = %1010
  %1013 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 3
  %1014 = load ptr, ptr %1013, align 8, !tbaa !56
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %1020, label %1016

1016:                                             ; preds = %1012
  %1017 = load i8, ptr %1014, align 4
  %1018 = and i8 %1017, 4
  %1019 = icmp eq i8 %1018, 0
  br i1 %1019, label %1020, label %1124

1020:                                             ; preds = %1016, %1012
  %1021 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 1
  %1022 = load ptr, ptr %1021, align 8, !tbaa !78
  %1023 = getelementptr inbounds %struct.basic_block_def, ptr %1022, i64 0, i32 9
  %1024 = load i32, ptr %1023, align 8, !tbaa !72
  %1025 = shl nsw i32 %1024, 1
  %1026 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1027 = icmp eq ptr %1026, null
  br i1 %1027, label %1033, label %1028

1028:                                             ; preds = %1020
  %1029 = load i32, ptr %936, align 8, !tbaa !72
  %1030 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 9
  %1031 = load i64, ptr %1030, align 8, !tbaa !58
  %1032 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1026, ptr noundef nonnull @.str.66, i32 noundef %1029, i32 noundef %1024, i64 noundef %1031)
  br label %1033

1033:                                             ; preds = %1028, %1020
  %1034 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %946, i32 noundef %1025)
  %1035 = load i32, ptr %936, align 8, !tbaa !72
  %1036 = load ptr, ptr %1021, align 8, !tbaa !78
  %1037 = getelementptr inbounds %struct.basic_block_def, ptr %1036, i64 0, i32 9
  %1038 = load i32, ptr %1037, align 8, !tbaa !72
  %1039 = icmp eq i32 %1035, %1038
  br i1 %1039, label %1077, label %1040

1040:                                             ; preds = %1033
  %1041 = getelementptr inbounds %struct.fixup_edge_d, ptr %1034, i64 0, i32 5
  %1042 = load i64, ptr %1041, align 8, !tbaa !98
  %1043 = icmp eq i64 %1042, 0
  br i1 %1043, label %1056, label %1044

1044:                                             ; preds = %1040
  %1045 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 9
  %1046 = load i64, ptr %1045, align 8, !tbaa !58
  %1047 = add nsw i64 %1046, %1042
  store i64 %1047, ptr %1045, align 8, !tbaa !58
  %1048 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1056, label %1050

1050:                                             ; preds = %1044
  %1051 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1048, ptr noundef nonnull @.str.62, i64 noundef %1042)
  %1052 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call fastcc void @print_basic_block(ptr noundef %1052, ptr noundef nonnull %1, i32 noundef %946)
  %1053 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %1052)
  call fastcc void @print_basic_block(ptr noundef %1052, ptr noundef nonnull %1, i32 noundef %1025)
  %1054 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1055 = call i32 @fputc(i32 41, ptr %1054)
  br label %1056

1056:                                             ; preds = %1050, %1044, %1040
  %1057 = getelementptr inbounds %struct.fixup_edge_d, ptr %1034, i64 0, i32 4
  %1058 = load i32, ptr %1057, align 8, !tbaa !96
  %1059 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %1025, i32 noundef %1058)
  %1060 = load i32, ptr %1057, align 8, !tbaa !96
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1102, label %1062

1062:                                             ; preds = %1056
  %1063 = getelementptr inbounds %struct.fixup_edge_d, ptr %1059, i64 0, i32 5
  %1064 = load i64, ptr %1063, align 8, !tbaa !98
  %1065 = icmp eq i64 %1064, 0
  br i1 %1065, label %1102, label %1066

1066:                                             ; preds = %1062
  %1067 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 9
  %1068 = load i64, ptr %1067, align 8, !tbaa !58
  %1069 = sub nsw i64 %1068, %1064
  store i64 %1069, ptr %1067, align 8, !tbaa !58
  %1070 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1102, label %1072

1072:                                             ; preds = %1066
  %1073 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1070, ptr noundef nonnull @.str.64, i64 noundef %1064)
  %1074 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1075 = load i32, ptr %1057, align 8, !tbaa !96
  call fastcc void @print_basic_block(ptr noundef %1074, ptr noundef nonnull %1, i32 noundef %1025)
  %1076 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %1074)
  call fastcc void @print_basic_block(ptr noundef %1074, ptr noundef nonnull %1, i32 noundef %1075)
  br label %1099

1077:                                             ; preds = %1033
  %1078 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %1025, i32 noundef %946)
  %1079 = getelementptr inbounds %struct.fixup_edge_d, ptr %1078, i64 0, i32 4
  %1080 = load i32, ptr %1079, align 8, !tbaa !96
  %1081 = call fastcc ptr @find_fixup_edge(ptr noundef nonnull %1, i32 noundef %946, i32 noundef %1080)
  %1082 = getelementptr inbounds %struct.fixup_edge_d, ptr %1081, i64 0, i32 5
  %1083 = load i64, ptr %1082, align 8, !tbaa !98
  %1084 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 9
  %1085 = load i64, ptr %1084, align 8, !tbaa !58
  %1086 = add nsw i64 %1085, %1083
  store i64 %1086, ptr %1084, align 8, !tbaa !58
  %1087 = load i64, ptr %995, align 8, !tbaa !69
  %1088 = add nsw i64 %1087, %1083
  store i64 %1088, ptr %995, align 8, !tbaa !69
  %1089 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1102, label %1091

1091:                                             ; preds = %1077
  %1092 = call i64 @fwrite(ptr nonnull @.str.67, i64 11, i64 1, ptr nonnull %1089)
  %1093 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1094 = load i64, ptr %1082, align 8, !tbaa !98
  %1095 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1093, ptr noundef nonnull @.str.62, i64 noundef %1094)
  %1096 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1097 = load i32, ptr %1079, align 8, !tbaa !96
  call fastcc void @print_basic_block(ptr noundef %1096, ptr noundef nonnull %1, i32 noundef %946)
  %1098 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %1096)
  call fastcc void @print_basic_block(ptr noundef %1096, ptr noundef nonnull %1, i32 noundef %1097)
  br label %1099

1099:                                             ; preds = %1072, %1091
  %1100 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1101 = call i32 @fputc(i32 41, ptr %1100)
  br label %1102

1102:                                             ; preds = %1099, %1077, %1066, %1062, %1056
  %1103 = load i64, ptr %996, align 8, !tbaa !69
  %1104 = icmp eq i64 %1103, 0
  br i1 %1104, label %1112, label %1105

1105:                                             ; preds = %1102
  %1106 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 9
  %1107 = load i64, ptr %1106, align 8, !tbaa !58
  %1108 = mul nsw i64 %1107, 10000
  %1109 = sdiv i64 %1108, %1103
  %1110 = trunc i64 %1109 to i32
  %1111 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 8
  store i32 %1110, ptr %1111, align 4, !tbaa !120
  br label %1112

1112:                                             ; preds = %1105, %1102
  %1113 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1124, label %1115

1115:                                             ; preds = %1112
  %1116 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 9
  %1117 = load i64, ptr %1116, align 8, !tbaa !58
  %1118 = getelementptr inbounds %struct.edge_def, ptr %1011, i64 0, i32 8
  %1119 = load i32, ptr %1118, align 4, !tbaa !120
  %1120 = sitofp i32 %1119 to double
  %1121 = fmul double %1120, 1.000000e+02
  %1122 = fdiv double %1121, 1.000000e+04
  %1123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1113, ptr noundef nonnull @.str.68, i64 noundef %1117, double noundef %1122)
  br label %1124

1124:                                             ; preds = %1115, %1112, %1016
  %1125 = load ptr, ptr %994, align 8, !tbaa !35
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1129, label %1127

1127:                                             ; preds = %1124
  %1128 = load i32, ptr %1125, align 8, !tbaa !54
  br label %1129

1129:                                             ; preds = %1127, %1124
  %1130 = phi i32 [ %1128, %1127 ], [ 0, %1124 ]
  %1131 = icmp ult i32 %998, %1130
  br i1 %1131, label %1133, label %1132

1132:                                             ; preds = %1129
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %1133

1133:                                             ; preds = %1132, %1129
  %1134 = add i32 %998, 1
  br label %997, !llvm.loop !121

1135:                                             ; preds = %1010
  %1136 = getelementptr inbounds %struct.basic_block_def, ptr %935, i64 0, i32 6
  %1137 = load ptr, ptr %1136, align 8, !tbaa !35
  %1138 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1139 = getelementptr inbounds %struct.function, ptr %1138, i64 0, i32 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !60
  %1141 = getelementptr inbounds %struct.control_flow_graph, ptr %1140, i64 0, i32 1
  %1142 = load ptr, ptr %1141, align 8, !tbaa !119
  %1143 = icmp eq ptr %1137, %1142
  br i1 %1143, label %1144, label %934, !llvm.loop !122

1144:                                             ; preds = %1135, %926
  %1145 = phi ptr [ %929, %926 ], [ %1140, %1135 ]
  %1146 = load ptr, ptr %1145, align 8, !tbaa !123
  %1147 = getelementptr inbounds %struct.basic_block_def, ptr %1146, i64 0, i32 1
  %1148 = load ptr, ptr %1147, align 8, !tbaa !124
  %1149 = call i64 @sum_edge_counts(ptr noundef %1148)
  %1150 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1151 = getelementptr inbounds %struct.function, ptr %1150, i64 0, i32 1
  %1152 = load ptr, ptr %1151, align 8, !tbaa !60
  %1153 = load ptr, ptr %1152, align 8, !tbaa !123
  %1154 = getelementptr inbounds %struct.basic_block_def, ptr %1153, i64 0, i32 8
  store i64 %1149, ptr %1154, align 8, !tbaa !69
  %1155 = getelementptr inbounds %struct.control_flow_graph, ptr %1152, i64 0, i32 1
  %1156 = load ptr, ptr %1155, align 8, !tbaa !119
  %1157 = load ptr, ptr %1156, align 8, !tbaa !125
  %1158 = call i64 @sum_edge_counts(ptr noundef %1157)
  %1159 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1160 = getelementptr inbounds %struct.function, ptr %1159, i64 0, i32 1
  %1161 = load ptr, ptr %1160, align 8, !tbaa !60
  %1162 = getelementptr inbounds %struct.control_flow_graph, ptr %1161, i64 0, i32 1
  %1163 = load ptr, ptr %1162, align 8, !tbaa !119
  %1164 = getelementptr inbounds %struct.basic_block_def, ptr %1163, i64 0, i32 8
  store i64 %1158, ptr %1164, align 8, !tbaa !69
  %1165 = load ptr, ptr %1161, align 8, !tbaa !35
  %1166 = icmp eq ptr %1165, null
  br i1 %1166, label %1305, label %1167

1167:                                             ; preds = %1144, %1301
  %1168 = phi ptr [ %1303, %1301 ], [ %1165, %1144 ]
  %1169 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 8
  %1170 = load i64, ptr %1169, align 8, !tbaa !69
  %1171 = icmp eq i64 %1170, 0
  %1172 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 1
  br i1 %1171, label %1204, label %1173

1173:                                             ; preds = %1167, %1202
  %1174 = phi i32 [ %1203, %1202 ], [ 0, %1167 ]
  %1175 = load ptr, ptr %1172, align 8, !tbaa !35
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1179, label %1177

1177:                                             ; preds = %1173
  %1178 = load i32, ptr %1175, align 8, !tbaa !54
  br label %1179

1179:                                             ; preds = %1177, %1173
  %1180 = phi i32 [ %1178, %1177 ], [ 0, %1173 ]
  %1181 = icmp eq i32 %1180, %1174
  br i1 %1181, label %1186, label %1182

1182:                                             ; preds = %1179
  %1183 = zext i32 %1174 to i64
  %1184 = getelementptr inbounds %struct.VEC_edge_base, ptr %1175, i64 0, i32 2, i64 %1183
  %1185 = load ptr, ptr %1184, align 8, !tbaa !35
  br label %1186

1186:                                             ; preds = %1182, %1179
  %1187 = phi ptr [ %1185, %1182 ], [ null, %1179 ]
  br i1 %1181, label %1301, label %1188

1188:                                             ; preds = %1186
  %1189 = getelementptr inbounds %struct.edge_def, ptr %1187, i64 0, i32 9
  %1190 = load i64, ptr %1189, align 8, !tbaa !58
  %1191 = mul nsw i64 %1190, 10000
  %1192 = load i64, ptr %1169, align 8, !tbaa !69
  %1193 = sdiv i64 %1191, %1192
  %1194 = trunc i64 %1193 to i32
  %1195 = getelementptr inbounds %struct.edge_def, ptr %1187, i64 0, i32 8
  store i32 %1194, ptr %1195, align 4, !tbaa !120
  br i1 %1176, label %1198, label %1196

1196:                                             ; preds = %1188
  %1197 = load i32, ptr %1175, align 8, !tbaa !54
  br label %1198

1198:                                             ; preds = %1196, %1188
  %1199 = phi i32 [ %1197, %1196 ], [ 0, %1188 ]
  %1200 = icmp ult i32 %1174, %1199
  br i1 %1200, label %1202, label %1201

1201:                                             ; preds = %1198
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %1202

1202:                                             ; preds = %1201, %1198
  %1203 = add i32 %1174, 1
  br label %1173, !llvm.loop !126

1204:                                             ; preds = %1167, %1233
  %1205 = phi i32 [ %1234, %1233 ], [ 0, %1167 ]
  %1206 = phi i32 [ %1226, %1233 ], [ 0, %1167 ]
  %1207 = load ptr, ptr %1172, align 8, !tbaa !35
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1211, label %1209

1209:                                             ; preds = %1204
  %1210 = load i32, ptr %1207, align 8, !tbaa !54
  br label %1211

1211:                                             ; preds = %1209, %1204
  %1212 = phi i32 [ %1210, %1209 ], [ 0, %1204 ]
  %1213 = icmp eq i32 %1212, %1205
  br i1 %1213, label %1218, label %1214

1214:                                             ; preds = %1211
  %1215 = zext i32 %1205 to i64
  %1216 = getelementptr inbounds %struct.VEC_edge_base, ptr %1207, i64 0, i32 2, i64 %1215
  %1217 = load ptr, ptr %1216, align 8, !tbaa !35
  br label %1218

1218:                                             ; preds = %1214, %1211
  %1219 = phi ptr [ %1217, %1214 ], [ null, %1211 ]
  br i1 %1213, label %1235, label %1220

1220:                                             ; preds = %1218
  %1221 = getelementptr inbounds %struct.edge_def, ptr %1219, i64 0, i32 7
  %1222 = load i32, ptr %1221, align 8, !tbaa !127
  %1223 = and i32 %1222, 30
  %1224 = icmp eq i32 %1223, 0
  %1225 = zext i1 %1224 to i32
  %1226 = add nuw nsw i32 %1206, %1225
  br i1 %1208, label %1229, label %1227

1227:                                             ; preds = %1220
  %1228 = load i32, ptr %1207, align 8, !tbaa !54
  br label %1229

1229:                                             ; preds = %1227, %1220
  %1230 = phi i32 [ %1228, %1227 ], [ 0, %1220 ]
  %1231 = icmp ult i32 %1205, %1230
  br i1 %1231, label %1233, label %1232

1232:                                             ; preds = %1229
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %1233

1233:                                             ; preds = %1232, %1229
  %1234 = add i32 %1205, 1
  br label %1204, !llvm.loop !128

1235:                                             ; preds = %1218
  %1236 = icmp eq i32 %1206, 0
  br i1 %1236, label %1270, label %1237

1237:                                             ; preds = %1235, %1268
  %1238 = phi i32 [ %1269, %1268 ], [ 0, %1235 ]
  %1239 = load ptr, ptr %1172, align 8, !tbaa !35
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1243, label %1241

1241:                                             ; preds = %1237
  %1242 = load i32, ptr %1239, align 8, !tbaa !54
  br label %1243

1243:                                             ; preds = %1241, %1237
  %1244 = phi i32 [ %1242, %1241 ], [ 0, %1237 ]
  %1245 = icmp eq i32 %1244, %1238
  br i1 %1245, label %1250, label %1246

1246:                                             ; preds = %1243
  %1247 = zext i32 %1238 to i64
  %1248 = getelementptr inbounds %struct.VEC_edge_base, ptr %1239, i64 0, i32 2, i64 %1247
  %1249 = load ptr, ptr %1248, align 8, !tbaa !35
  br label %1250

1250:                                             ; preds = %1246, %1243
  %1251 = phi ptr [ %1249, %1246 ], [ null, %1243 ]
  br i1 %1245, label %1301, label %1252

1252:                                             ; preds = %1250
  %1253 = getelementptr inbounds %struct.edge_def, ptr %1251, i64 0, i32 7
  %1254 = load i32, ptr %1253, align 8, !tbaa !127
  %1255 = and i32 %1254, 30
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1257, label %1259

1257:                                             ; preds = %1252
  %1258 = udiv i32 10000, %1206
  br label %1259

1259:                                             ; preds = %1252, %1257
  %1260 = phi i32 [ %1258, %1257 ], [ 0, %1252 ]
  %1261 = getelementptr inbounds %struct.edge_def, ptr %1251, i64 0, i32 8
  store i32 %1260, ptr %1261, align 4, !tbaa !120
  br i1 %1240, label %1264, label %1262

1262:                                             ; preds = %1259
  %1263 = load i32, ptr %1239, align 8, !tbaa !54
  br label %1264

1264:                                             ; preds = %1262, %1259
  %1265 = phi i32 [ %1263, %1262 ], [ 0, %1259 ]
  %1266 = icmp ult i32 %1238, %1265
  br i1 %1266, label %1268, label %1267

1267:                                             ; preds = %1264
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %1268

1268:                                             ; preds = %1267, %1264
  %1269 = add i32 %1238, 1
  br label %1237, !llvm.loop !129

1270:                                             ; preds = %1235
  br i1 %1208, label %1273, label %1271

1271:                                             ; preds = %1270
  %1272 = load i32, ptr %1207, align 8, !tbaa !54
  br label %1273

1273:                                             ; preds = %1271, %1270
  %1274 = phi i32 [ %1272, %1271 ], [ 0, %1270 ]
  br label %1275

1275:                                             ; preds = %1299, %1273
  %1276 = phi i32 [ 0, %1273 ], [ %1300, %1299 ]
  %1277 = load ptr, ptr %1172, align 8, !tbaa !35
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1281, label %1279

1279:                                             ; preds = %1275
  %1280 = load i32, ptr %1277, align 8, !tbaa !54
  br label %1281

1281:                                             ; preds = %1279, %1275
  %1282 = phi i32 [ %1280, %1279 ], [ 0, %1275 ]
  %1283 = icmp eq i32 %1282, %1276
  br i1 %1283, label %1288, label %1284

1284:                                             ; preds = %1281
  %1285 = zext i32 %1276 to i64
  %1286 = getelementptr inbounds %struct.VEC_edge_base, ptr %1277, i64 0, i32 2, i64 %1285
  %1287 = load ptr, ptr %1286, align 8, !tbaa !35
  br label %1288

1288:                                             ; preds = %1284, %1281
  %1289 = phi ptr [ %1287, %1284 ], [ null, %1281 ]
  br i1 %1283, label %1301, label %1290

1290:                                             ; preds = %1288
  %1291 = sdiv i32 10000, %1274
  %1292 = getelementptr inbounds %struct.edge_def, ptr %1289, i64 0, i32 8
  store i32 %1291, ptr %1292, align 4, !tbaa !120
  br i1 %1278, label %1295, label %1293

1293:                                             ; preds = %1290
  %1294 = load i32, ptr %1277, align 8, !tbaa !54
  br label %1295

1295:                                             ; preds = %1293, %1290
  %1296 = phi i32 [ %1294, %1293 ], [ 0, %1290 ]
  %1297 = icmp ult i32 %1276, %1296
  br i1 %1297, label %1299, label %1298

1298:                                             ; preds = %1295
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %1299

1299:                                             ; preds = %1298, %1295
  %1300 = add i32 %1276, 1
  br label %1275, !llvm.loop !130

1301:                                             ; preds = %1186, %1250, %1288
  %1302 = getelementptr inbounds %struct.basic_block_def, ptr %1168, i64 0, i32 6
  %1303 = load ptr, ptr %1302, align 8, !tbaa !35
  %1304 = icmp eq ptr %1303, null
  br i1 %1304, label %1305, label %1167, !llvm.loop !131

1305:                                             ; preds = %1301, %1144
  %1306 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1363, label %1308

1308:                                             ; preds = %1305
  %1309 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !132
  %1310 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %1311 = call ptr %1309(ptr noundef %1310, i32 noundef 2) #17
  %1312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1306, ptr noundef nonnull @.str.69, ptr noundef %1311)
  %1313 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1314 = getelementptr inbounds %struct.function, ptr %1313, i64 0, i32 1
  %1315 = load ptr, ptr %1314, align 8, !tbaa !60
  %1316 = load ptr, ptr %1315, align 8, !tbaa !123
  %1317 = getelementptr inbounds %struct.basic_block_def, ptr %1316, i64 0, i32 6
  %1318 = load ptr, ptr %1317, align 8, !tbaa !140
  %1319 = getelementptr inbounds %struct.control_flow_graph, ptr %1315, i64 0, i32 1
  %1320 = load ptr, ptr %1319, align 8, !tbaa !119
  %1321 = icmp eq ptr %1318, %1320
  br i1 %1321, label %1363, label %1322

1322:                                             ; preds = %1308, %1354
  %1323 = phi ptr [ %1356, %1354 ], [ %1318, %1308 ]
  %1324 = getelementptr inbounds %struct.basic_block_def, ptr %1323, i64 0, i32 8
  %1325 = load i64, ptr %1324, align 8, !tbaa !69
  %1326 = load ptr, ptr %1323, align 8, !tbaa !125
  %1327 = call i64 @sum_edge_counts(ptr noundef %1326)
  %1328 = icmp eq i64 %1325, %1327
  br i1 %1328, label %1329, label %1335

1329:                                             ; preds = %1322
  %1330 = load i64, ptr %1324, align 8, !tbaa !69
  %1331 = getelementptr inbounds %struct.basic_block_def, ptr %1323, i64 0, i32 1
  %1332 = load ptr, ptr %1331, align 8, !tbaa !124
  %1333 = call i64 @sum_edge_counts(ptr noundef %1332)
  %1334 = icmp eq i64 %1330, %1333
  br i1 %1334, label %1354, label %1335

1335:                                             ; preds = %1329, %1322
  %1336 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1337 = getelementptr inbounds %struct.basic_block_def, ptr %1323, i64 0, i32 9
  %1338 = load i32, ptr %1337, align 8, !tbaa !72
  %1339 = load i64, ptr %1324, align 8, !tbaa !69
  %1340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1336, ptr noundef nonnull @.str.70, i32 noundef %1338, i64 noundef %1339)
  %1341 = load ptr, ptr @stderr, align 8, !tbaa !35
  %1342 = load i32, ptr %1337, align 8, !tbaa !72
  %1343 = load i64, ptr %1324, align 8, !tbaa !69
  %1344 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1341, ptr noundef nonnull @.str.71, i32 noundef %1342, i64 noundef %1343) #18
  %1345 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1346 = load ptr, ptr %1323, align 8, !tbaa !125
  %1347 = call i64 @sum_edge_counts(ptr noundef %1346)
  %1348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1345, ptr noundef nonnull @.str.72, i64 noundef %1347)
  %1349 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1350 = getelementptr inbounds %struct.basic_block_def, ptr %1323, i64 0, i32 1
  %1351 = load ptr, ptr %1350, align 8, !tbaa !124
  %1352 = call i64 @sum_edge_counts(ptr noundef %1351)
  %1353 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1349, ptr noundef nonnull @.str.73, i64 noundef %1352)
  br label %1354

1354:                                             ; preds = %1335, %1329
  %1355 = getelementptr inbounds %struct.basic_block_def, ptr %1323, i64 0, i32 6
  %1356 = load ptr, ptr %1355, align 8, !tbaa !140
  %1357 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1358 = getelementptr inbounds %struct.function, ptr %1357, i64 0, i32 1
  %1359 = load ptr, ptr %1358, align 8, !tbaa !60
  %1360 = getelementptr inbounds %struct.control_flow_graph, ptr %1359, i64 0, i32 1
  %1361 = load ptr, ptr %1360, align 8, !tbaa !119
  %1362 = icmp eq ptr %1356, %1361
  br i1 %1362, label %1363, label %1322, !llvm.loop !141

1363:                                             ; preds = %1354, %1308, %1305
  %1364 = load i32, ptr %1, align 8, !tbaa !65
  %1365 = icmp sgt i32 %1364, 0
  br i1 %1365, label %1366, label %1378

1366:                                             ; preds = %1363
  %1367 = load ptr, ptr %17, align 8, !tbaa !67
  br label %1368

1368:                                             ; preds = %1366, %1374
  %1369 = phi ptr [ %1376, %1374 ], [ %1367, %1366 ]
  %1370 = phi i32 [ %1375, %1374 ], [ 0, %1366 ]
  %1371 = load ptr, ptr %1369, align 8, !tbaa !35
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %1374, label %1373

1373:                                             ; preds = %1368
  call void @free(ptr noundef %1371)
  br label %1374

1374:                                             ; preds = %1373, %1368
  store ptr null, ptr %1369, align 8, !tbaa !35
  %1375 = add nuw nsw i32 %1370, 1
  %1376 = getelementptr inbounds %struct.fixup_vertex_d, ptr %1369, i64 1
  %1377 = icmp eq i32 %1375, %1364
  br i1 %1377, label %1378, label %1368, !llvm.loop !142

1378:                                             ; preds = %1374, %1363
  %1379 = load ptr, ptr %17, align 8, !tbaa !67
  call void @free(ptr noundef %1379)
  %1380 = load ptr, ptr %20, align 8, !tbaa !68
  call void @free(ptr noundef %1380)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_fixup_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load i32, ptr %0, align 8, !tbaa !65
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 427, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.fixup_vertex_d, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %12, null
  br label %14

14:                                               ; preds = %26, %7
  %15 = phi i64 [ %30, %26 ], [ 0, %7 ]
  br i1 %13, label %23, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %12, align 8, !tbaa !92
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %12, i64 0, i32 2, i64 %15
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %14, %16, %20
  %24 = phi ptr [ %22, %20 ], [ null, %16 ], [ null, %14 ]
  %25 = phi i1 [ false, %20 ], [ true, %16 ], [ true, %14 ]
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.fixup_edge_d, ptr %24, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !84
  %29 = icmp eq i32 %28, %2
  %30 = add nuw i64 %15, 1
  br i1 %29, label %31, label %14, !llvm.loop !94

31:                                               ; preds = %23, %26
  %32 = phi ptr [ %24, %26 ], [ null, %23 ]
  ret ptr %32
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_fixup_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #11 !prof !34 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %0)
  br label %65

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !84
  tail call fastcc void @print_basic_block(ptr noundef %0, ptr noundef %1, i32 noundef %8)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %0)
  tail call fastcc void @print_basic_block(ptr noundef %0, ptr noundef %1, i32 noundef %10)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %0)
  %13 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !74
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !98
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef %18)
  %20 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !77
  %22 = icmp eq i64 %21, 9223372036854775807
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 4, i64 1, ptr %0)
  br label %27

25:                                               ; preds = %16
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef %21)
  br label %27

27:                                               ; preds = %23, %25, %7
  %28 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 3
  %29 = load i8, ptr %28, align 4, !tbaa !101
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 6
  %33 = load i64, ptr %32, align 8, !tbaa !100
  %34 = icmp eq i64 %33, 9223372036854775807
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 11, i64 1, ptr %0)
  br label %39

37:                                               ; preds = %31
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %33)
  br label %39

39:                                               ; preds = %35, %37, %27
  %40 = getelementptr inbounds %struct.fixup_edge_d, ptr %2, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !95
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef %41)
  %43 = load i32, ptr %2, align 8, !tbaa !83
  %44 = load i32, ptr %9, align 4, !tbaa !84
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %43, i32 noundef %44)
  %46 = load i32, ptr %13, align 8, !tbaa !74
  switch i32 %46, label %61 [
    i32 0, label %63
    i32 1, label %47
    i32 2, label %49
    i32 4, label %51
    i32 5, label %53
    i32 3, label %55
    i32 6, label %57
    i32 7, label %59
    i32 8, label %59
  ]

47:                                               ; preds = %39
  %48 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 19, i64 1, ptr %0)
  br label %63

49:                                               ; preds = %39
  %50 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 15, i64 1, ptr %0)
  br label %63

51:                                               ; preds = %39
  %52 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 21, i64 1, ptr %0)
  br label %63

53:                                               ; preds = %39
  %54 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 19, i64 1, ptr %0)
  br label %63

55:                                               ; preds = %39
  %56 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 14, i64 1, ptr %0)
  br label %63

57:                                               ; preds = %39
  %58 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 14, i64 1, ptr %0)
  br label %63

59:                                               ; preds = %39, %39
  %60 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 18, i64 1, ptr %0)
  br label %63

61:                                               ; preds = %39
  %62 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 14, i64 1, ptr %0)
  br label %63

63:                                               ; preds = %39, %47, %49, %51, %53, %55, %57, %59, %61
  %64 = tail call i32 @fputc(i32 10, ptr %0)
  br label %65

65:                                               ; preds = %63, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_fixup_graph(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 287, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %3, %5
  %7 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = load i32, ptr %1, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !132
  %13 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %14 = tail call ptr %12(ptr noundef %13, i32 noundef 2) #17
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %14, ptr noundef %2)
  %16 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !88
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %9, i32 noundef %11, i32 noundef %17)
  %19 = icmp sgt i32 %9, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %6
  %21 = zext nneg i32 %9 to i64
  br label %22

22:                                               ; preds = %20, %60
  %23 = phi i64 [ 0, %20 ], [ %61, %60 ]
  %24 = getelementptr inbounds %struct.fixup_vertex_d, ptr %8, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %25, align 8, !tbaa !92
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %22 ]
  %31 = trunc i64 %23 to i32
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %31, i32 noundef %30)
  br label %33

33:                                               ; preds = %58, %29
  %34 = phi i64 [ %59, %58 ], [ 0, %29 ]
  %35 = load ptr, ptr %24, align 8, !tbaa !90
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8, !tbaa !92
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %35, i64 0, i32 2, i64 %34
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  br label %44

44:                                               ; preds = %33, %37, %41
  %45 = phi ptr [ %43, %41 ], [ null, %37 ], [ null, %33 ]
  %46 = phi i1 [ false, %41 ], [ true, %37 ], [ true, %33 ]
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.fixup_edge_d, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !74
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fixup_edge_d, ptr %45, i64 0, i32 3
  %53 = load i8, ptr %52, align 4, !tbaa !101
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %47
  %56 = phi ptr [ @.str.47, %47 ], [ @.str.48, %51 ]
  %57 = tail call i64 @fwrite(ptr nonnull %56, i64 4, i64 1, ptr %0)
  br label %58

58:                                               ; preds = %55, %51
  tail call fastcc void @dump_fixup_edge(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %45)
  %59 = add nuw i64 %34, 1
  br label %33, !llvm.loop !143

60:                                               ; preds = %44
  %61 = add nuw nsw i64 %23, 1
  %62 = icmp eq i64 %61, %21
  br i1 %62, label %63, label %22, !llvm.loop !144

63:                                               ; preds = %60, %6
  %64 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @add_edge(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.fixup_graph_d, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !81
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 %11
  store i32 %1, ptr %12, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 %11, i32 1
  store i32 %2, ptr %13, align 4, !tbaa !84
  %14 = getelementptr inbounds %struct.fixup_edge_d, ptr %8, i64 %11, i32 8
  store i64 %3, ptr %14, align 8, !tbaa !95
  %15 = add nsw i32 %10, 1
  store i32 %15, ptr %9, align 4, !tbaa !81
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  tail call fastcc void @dump_fixup_edge(ptr noundef nonnull %16, ptr noundef %0, ptr noundef nonnull %12)
  br label %19

19:                                               ; preds = %18, %4
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.fixup_vertex_d, ptr %6, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !145
  %27 = load i32, ptr %22, align 8, !tbaa !92
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19, %24
  %30 = tail call ptr @vec_heap_p_reserve(ptr noundef %22, i32 noundef 1) #17
  store ptr %30, ptr %21, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %24, %29
  %32 = load ptr, ptr %21, align 8, !tbaa !35
  %33 = load i32, ptr %32, align 8, !tbaa !92
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !92
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, ptr %32, i64 0, i32 2, i64 %35
  store ptr %12, ptr %36, align 8, !tbaa !35
  ret ptr %12
}

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_basic_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 !prof !34 {
  switch i32 %2, label %12 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
  ]

4:                                                ; preds = %3
  %5 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 5, i64 1, ptr %0)
  br label %33

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 7, i64 1, ptr %0)
  br label %33

8:                                                ; preds = %3
  %9 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 4, i64 1, ptr %0)
  br label %33

10:                                               ; preds = %3
  %11 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 6, i64 1, ptr %0)
  br label %33

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !88
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 8, i64 1, ptr %0)
  br label %33

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.fixup_graph_d, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !87
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 9, i64 1, ptr %0)
  br label %33

24:                                               ; preds = %18
  %25 = sdiv i32 %2, 2
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %25)
  %27 = and i32 %2, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 2, i64 1, ptr %0)
  br label %33

31:                                               ; preds = %24
  %32 = tail call i32 @fputc(i32 39, ptr %0)
  br label %33

33:                                               ; preds = %6, %10, %22, %31, %29, %16, %8, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!54 = !{!55, !41, i64 0}
!55 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!56 = !{!57, !36, i64 24}
!57 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!58 = !{!57, !42, i64 56}
!59 = distinct !{!59, !52, !53}
!60 = !{!61, !36, i64 8}
!61 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!62 = !{!63, !41, i64 24}
!63 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!64 = !{!63, !41, i64 28}
!65 = !{!66, !41, i64 0}
!66 = !{!"fixup_graph_d", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 24}
!67 = !{!66, !36, i64 16}
!68 = !{!66, !36, i64 24}
!69 = !{!70, !42, i64 72}
!70 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!71 = distinct !{!71, !52, !53}
!72 = !{!70, !41, i64 80}
!73 = distinct !{!73, !52, !53}
!74 = !{!75, !41, i64 8}
!75 = !{!"fixup_edge_d", !41, i64 0, !41, i64 4, !41, i64 8, !37, i64 12, !41, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56}
!76 = !{!75, !42, i64 40}
!77 = !{!75, !42, i64 56}
!78 = !{!57, !36, i64 8}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = !{!66, !41, i64 4}
!82 = !{!42, !42, i64 0}
!83 = !{!75, !41, i64 0}
!84 = !{!75, !41, i64 4}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = !{!66, !41, i64 8}
!88 = !{!66, !41, i64 12}
!89 = distinct !{!89, !52, !53}
!90 = !{!91, !36, i64 0}
!91 = !{!"fixup_vertex_d", !36, i64 0}
!92 = !{!93, !41, i64 0}
!93 = !{!"VEC_fixup_edge_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!94 = distinct !{!94, !52, !53}
!95 = !{!75, !42, i64 48}
!96 = !{!75, !41, i64 16}
!97 = distinct !{!97, !52, !53}
!98 = !{!75, !42, i64 24}
!99 = distinct !{!99, !52, !53}
!100 = !{!75, !42, i64 32}
!101 = !{!75, !37, i64 12}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = distinct !{!108, !52, !53}
!109 = distinct !{!109, !52, !53}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = !{!63, !36, i64 8}
!120 = !{!57, !41, i64 52}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = !{!63, !36, i64 0}
!124 = !{!70, !36, i64 8}
!125 = !{!70, !36, i64 0}
!126 = distinct !{!126, !52, !53}
!127 = !{!57, !41, i64 48}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = distinct !{!130, !52, !53}
!131 = distinct !{!131, !52, !53}
!132 = !{!133, !36, i64 176}
!133 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !134, i64 240, !135, i64 248, !136, i64 256, !137, i64 272, !138, i64 432, !139, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!134 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!135 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!136 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!137 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!138 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!139 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!140 = !{!70, !36, i64 56}
!141 = distinct !{!141, !52, !53}
!142 = distinct !{!142, !52, !53}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = !{!93, !41, i64 4}
