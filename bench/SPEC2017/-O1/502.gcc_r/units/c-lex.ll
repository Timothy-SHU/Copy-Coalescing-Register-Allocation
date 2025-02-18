; ModuleID = 'c-lex.c'
source_filename = "c-lex.c"
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
%struct.real_value = type { i32, [3 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.c_fileinfo = type { i32, i16, i16 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.cpp_num = type { i64, i64, i8, i8 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.fixed_value = type { %struct.double_int, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"<top level>\00", align 1
@flag_detailed_statistics = external local_unnamed_addr global i32, align 4
@header_time = internal unnamed_addr global i32 0, align 4
@body_time = internal unnamed_addr global i32 0, align 4
@parse_in = external local_unnamed_addr global ptr, align 8
@debug_info_level = external local_unnamed_addr global i32, align 4
@write_symbols = external local_unnamed_addr global i32, align 4
@file_info_tree = internal unnamed_addr global ptr null, align 8
@input_location = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"\0A******\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"header files (total)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"main file (total)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ratio = %g : 1\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@c_lex_with_flags.no_more_pch = internal unnamed_addr global i1 false, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@global_dc = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"c-lex.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@c_language = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"stray %<@%> in program\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"stray %qs in program\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"stray %qc in program\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"stray %<\\%o%> in program\00", align 1
@pending_lang_change = dso_local local_unnamed_addr global i32 0, align 4
@c_header_level = dso_local local_unnamed_addr global i32 0, align 4
@flag_no_ident = external local_unnamed_addr global i32, align 4
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"%s\22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\09.ident\09\00", align 1
@warn_unknown_pragmas = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ignoring #pragma %s %s\00", align 1
@line_table = external local_unnamed_addr global ptr, align 8
@flag_isoc99 = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [50 x i8] c"this decimal constant is unsigned only in ISO C90\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"this decimal constant would be unsigned in ISO C90\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@cxx_dialect = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [57 x i8] c"integer constant is too large for %<unsigned long%> type\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"integer constant is too large for %<long%> type\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"unsuffixed float constant\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.21 = private unnamed_addr constant [53 x i8] c"unsupported non-standard suffix on floating constant\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"non-standard suffix on floating constant\00", align 1
@flag_single_precision_constant = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.23 = private unnamed_addr constant [39 x i8] c"floating constant exceeds range of %qT\00", align 1
@dconst0 = external global %struct.real_value, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"floating constant truncated to zero\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"unsupported non-standard concatenation of string literals\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"traditional C rejects string constant concatenation\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@switch.table.c_lex_with_flags = private unnamed_addr constant [3 x ptr] [ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), ptr @c_global_trees, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 1)], align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !58 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !59
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !58 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !59
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !58 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !69

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !63
  %11 = load i8, ptr %3, align 1, !tbaa !70
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !58 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !69

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !63
  %11 = load i8, ptr %3, align 1, !tbaa !70
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !58 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !59
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !69

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !63
  %11 = load i8, ptr %3, align 1, !tbaa !70
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !59
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !58 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !69

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !71
  store i8 %12, ptr %4, align 1, !tbaa !70
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !58 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !69

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !71
  store i8 %12, ptr %4, align 1, !tbaa !70
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !58 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !69

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !71
  store i8 %12, ptr %4, align 1, !tbaa !70
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !58 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !58 {
  %2 = load i32, ptr %0, align 8, !tbaa !73
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !58 {
  %2 = load i32, ptr %0, align 8, !tbaa !73
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !58 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !74
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !58 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !74
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !58 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !75

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !58 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @init_c_lex() local_unnamed_addr #9 !prof !78 {
  %1 = tail call ptr @get_fileinfo(ptr noundef nonnull @.str)
  %2 = load i32, ptr @flag_detailed_statistics, align 4, !tbaa !74
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4, !prof !79

4:                                                ; preds = %0
  store i32 0, ptr @header_time, align 4, !tbaa !74
  %5 = tail call i64 @get_run_time() #19
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr @body_time, align 4, !tbaa !74
  store i32 %6, ptr %1, align 4, !tbaa !80
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %9 = tail call ptr @cpp_get_callbacks(ptr noundef %8) #19
  store ptr @cb_line_change, ptr %9, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 6
  store ptr @cb_ident, ptr %10, align 8, !tbaa !84
  %11 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 7
  store ptr @cb_def_pragma, ptr %11, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 8
  store ptr @c_common_valid_pch, ptr %12, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 9
  store ptr @c_common_read_pch, ptr %13, align 8, !tbaa !87
  %14 = load i32, ptr @debug_info_level, align 4, !tbaa !74
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %21, !prof !88

16:                                               ; preds = %7
  %17 = load i32, ptr @write_symbols, align 4
  switch i32 %17, label %21 [
    i32 6, label %18
    i32 3, label %18
  ]

18:                                               ; preds = %16, %16
  %19 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 4
  store ptr @cb_define, ptr %19, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 5
  store ptr @cb_undef, ptr %20, align 8, !tbaa !90
  br label %21

21:                                               ; preds = %16, %18, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_fileinfo(ptr noundef %0) local_unnamed_addr #9 !prof !78 {
  %2 = load ptr, ptr @file_info_tree, align 8, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !79

4:                                                ; preds = %1
  %5 = tail call ptr @splay_tree_new(ptr noundef nonnull @strcmp, ptr noundef null, ptr noundef nonnull @free) #19
  store ptr %5, ptr @file_info_tree, align 8, !tbaa !59
  br label %6

6:                                                ; preds = %4, %1
  %7 = load ptr, ptr @file_info_tree, align 8, !tbaa !59
  %8 = ptrtoint ptr %0 to i64
  %9 = tail call ptr @splay_tree_lookup(ptr noundef %7, i64 noundef %8) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !79

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.splay_tree_node_s, ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !91
  %14 = inttoptr i64 %13 to ptr
  br label %22

15:                                               ; preds = %6
  %16 = tail call ptr @xmalloc(i64 noundef 8) #19
  store i32 0, ptr %16, align 4, !tbaa !80
  %17 = getelementptr inbounds %struct.c_fileinfo, ptr %16, i64 0, i32 1
  store i16 0, ptr %17, align 4, !tbaa !93
  %18 = getelementptr inbounds %struct.c_fileinfo, ptr %16, i64 0, i32 2
  store i16 1, ptr %18, align 2, !tbaa !94
  %19 = load ptr, ptr @file_info_tree, align 8, !tbaa !59
  %20 = ptrtoint ptr %16 to i64
  %21 = tail call ptr @splay_tree_insert(ptr noundef %19, i64 noundef %8, i64 noundef %20) #19
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %14, %11 ], [ %16, %15 ]
  ret ptr %23
}

declare i64 @get_run_time() local_unnamed_addr #3

declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal void @cb_line_change(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #10 !prof !95 !PGOFuncName !96 {
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 22
  %7 = icmp ne i32 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %11, label %9, !prof !97

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8, !tbaa !98
  store i32 %10, ptr @input_location, align 4, !tbaa !74
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_ident(ptr noundef %0, i32 %1, ptr noundef %2) #9 !prof !58 {
  %4 = alloca %struct.cpp_string, align 8
  %5 = load i32, ptr @flag_no_ident, align 4, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = call zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr noundef %2, i64 noundef 1, ptr noundef nonnull %4, i32 noundef 61) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %13)
  %15 = load ptr, ptr %12, align 8, !tbaa !100
  call void @free(ptr noundef %15)
  br label %16

16:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_def_pragma(ptr noundef %0, i32 noundef %1) #9 !prof !58 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !74
  %5 = load i32, ptr @input_location, align 4, !tbaa !74
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %5) #19
  %6 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !102
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i32
  %10 = icmp sgt i32 %4, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = call ptr @cpp_get_token(ptr noundef %0) #19
  %13 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 22
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %12) #19
  %18 = call ptr @cpp_get_token(ptr noundef %0) #19
  %19 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 53
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %18) #19
  br label %24

24:                                               ; preds = %16, %22, %11
  %25 = phi ptr [ %23, %22 ], [ @.str.14, %16 ], [ @.str.14, %11 ]
  %26 = phi ptr [ %17, %22 ], [ %17, %16 ], [ @.str.14, %11 ]
  %27 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1, i32 noundef 212, ptr noundef nonnull @.str.15, ptr noundef %26, ptr noundef %25) #19
  br label %28

28:                                               ; preds = %24, %2
  ret void
}

declare i32 @c_common_valid_pch(ptr noundef, ptr noundef, i32 noundef) #3

declare void @c_common_read_pch(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @cb_define(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9 !prof !58 {
  %4 = load ptr, ptr @line_table, align 8, !tbaa !59
  %5 = tail call ptr @linemap_lookup(ptr noundef %4, i32 noundef %1) #19
  %6 = load ptr, ptr @debug_hooks, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = sub i32 %1, %10
  %12 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = zext nneg i8 %13 to i32
  %15 = lshr i32 %11, %14
  %16 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !108
  %18 = add i32 %15, %17
  %19 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %2) #19
  tail call void %8(i32 noundef %18, ptr noundef %19) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_undef(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 !prof !58 {
  %4 = load ptr, ptr @line_table, align 8, !tbaa !59
  %5 = tail call ptr @linemap_lookup(ptr noundef %4, i32 noundef %1) #19
  %6 = load ptr, ptr @debug_hooks, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = sub i32 %1, %10
  %12 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = zext nneg i8 %13 to i32
  %15 = lshr i32 %11, %14
  %16 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !108
  %18 = add i32 %15, %17
  %19 = load ptr, ptr %2, align 8, !tbaa !110
  tail call void %8(i32 noundef %18, ptr noundef %19) #19
  ret void
}

declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_time_statistics() local_unnamed_addr #9 !prof !58 {
  %1 = alloca %struct.expanded_location, align 8
  %2 = load i32, ptr @input_location, align 4, !tbaa !74
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %2) #19
  %3 = load ptr, ptr %1, align 8, !tbaa !113
  %4 = call ptr @get_fileinfo(ptr noundef %3)
  %5 = call i64 @get_run_time() #19
  %6 = trunc i64 %5 to i32
  %7 = load i32, ptr @body_time, align 4, !tbaa !74
  %8 = sub i32 %6, %7
  %9 = load i32, ptr %4, align 4, !tbaa !80
  %10 = add nsw i32 %8, %9
  store i32 %10, ptr %4, align 4, !tbaa !80
  %11 = load ptr, ptr @stderr, align 8, !tbaa !59
  %12 = call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %11) #20
  %13 = load i32, ptr @header_time, align 4, !tbaa !74
  %14 = sext i32 %13 to i64
  call void @print_time(ptr noundef nonnull @.str.2, i64 noundef %14) #19
  %15 = load i32, ptr @body_time, align 4, !tbaa !74
  %16 = sub nsw i32 %6, %15
  %17 = sext i32 %16 to i64
  call void @print_time(ptr noundef nonnull @.str.3, i64 noundef %17) #19
  %18 = load ptr, ptr @stderr, align 8, !tbaa !59
  %19 = load i32, ptr @header_time, align 4, !tbaa !74
  %20 = sitofp i32 %19 to double
  %21 = load i32, ptr @body_time, align 4, !tbaa !74
  %22 = sub nsw i32 %6, %21
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %20, %23
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.4, double noundef %24) #20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !59
  %27 = call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %26) #20
  %28 = load ptr, ptr @file_info_tree, align 8, !tbaa !59
  %29 = call i32 @splay_tree_foreach(ptr noundef %28, ptr noundef nonnull @dump_one_header, ptr noundef null) #19
  ret void
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_time(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_one_header(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !58 {
  %3 = load i64, ptr %0, align 8, !tbaa !114
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4, !tbaa !80
  %9 = sext i32 %8 to i64
  tail call void @print_time(ptr noundef %4, i64 noundef %9) #19
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @fe_file_change(ptr noundef readonly %0) local_unnamed_addr #9 !prof !115 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3, !prof !116

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %43 [
    i8 0, label %6
    i8 1, label %35
  ], !prof !117

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %43, label %10, !prof !79

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !106
  %13 = getelementptr %struct.line_map, ptr %0, i64 -1, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !106
  %15 = xor i32 %14, -1
  %16 = add i32 %12, %15
  %17 = getelementptr %struct.line_map, ptr %0, i64 -1, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = shl nsw i32 -1, %19
  %21 = and i32 %20, %16
  %22 = add i32 %21, %14
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %10
  %25 = lshr i32 %21, %19
  %26 = getelementptr %struct.line_map, ptr %0, i64 -1, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !108
  %28 = add i32 %27, %25
  br label %29

29:                                               ; preds = %24, %10
  %30 = phi i32 [ %28, %24 ], [ 0, %10 ]
  store i32 %12, ptr @input_location, align 4, !tbaa !74
  %31 = load ptr, ptr @debug_hooks, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !119
  %34 = load ptr, ptr %0, align 8, !tbaa !120
  tail call void %33(i32 noundef %30, ptr noundef %34) #19
  br label %43

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !106
  store i32 %37, ptr @input_location, align 4, !tbaa !74
  %38 = load ptr, ptr @debug_hooks, align 8, !tbaa !59
  %39 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  %41 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !108
  tail call void %40(i32 noundef %42) #19
  br label %43

43:                                               ; preds = %3, %35, %6, %29
  %44 = load i32, ptr @flag_detailed_statistics, align 4, !tbaa !74
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46, !prof !122

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 8, !tbaa !120
  %48 = tail call i64 @get_run_time() #19
  %49 = trunc i64 %48 to i32
  %50 = tail call ptr @get_fileinfo(ptr noundef %47)
  %51 = load i32, ptr @body_time, align 4, !tbaa !74
  %52 = sub nsw i32 %49, %51
  %53 = load i32, ptr @header_time, align 4, !tbaa !74
  %54 = add nsw i32 %53, %52
  store i32 %54, ptr @header_time, align 4, !tbaa !74
  %55 = load i32, ptr %50, align 4, !tbaa !80
  %56 = add nsw i32 %55, %52
  store i32 %56, ptr %50, align 4, !tbaa !80
  store i32 %49, ptr @body_time, align 4, !tbaa !74
  br label %57

57:                                               ; preds = %43, %46
  %58 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !106
  store i32 %59, ptr @input_location, align 4, !tbaa !74
  br label %60

60:                                               ; preds = %1, %57
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @c_lex_with_flags(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #13 !prof !123 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !70
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !124

13:                                               ; preds = %4
  tail call void @timevar_push_1(i32 noundef 42) #19
  br label %14

14:                                               ; preds = %13, %4
  br label %15

15:                                               ; preds = %236, %14
  %16 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %17 = call ptr @cpp_get_token_with_location(ptr noundef %16, ptr noundef %1) #19
  %18 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %224, %15
  %22 = phi i32 [ %20, %15 ], [ %225, %224 ]
  %23 = phi ptr [ %17, %15 ], [ %210, %224 ]
  switch i32 %22, label %299 [
    i32 72, label %236
    i32 53, label %24
    i32 55, label %28
    i32 52, label %202
    i32 37, label %227
    i32 38, label %227
    i32 60, label %230
    i32 56, label %245
    i32 57, label %245
    i32 58, label %245
    i32 59, label %245
    i32 61, label %279
    i32 62, label %279
    i32 63, label %279
    i32 64, label %279
    i32 65, label %279
    i32 70, label %293
    i32 67, label %298
    i32 68, label %298
    i32 69, label %298
  ], !prof !125

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds i8, ptr %26, i64 -24
  store ptr %27, ptr %0, align 8, !tbaa !59
  br label %300

28:                                               ; preds = %21
  %29 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %30 = call i32 @cpp_classify_number(ptr noundef %29, ptr noundef %23) #19
  %31 = and i32 %30, 15
  switch i32 %31, label %201 [
    i32 0, label %32
    i32 1, label %38
    i32 2, label %199
  ], !prof !126

32:                                               ; preds = %28
  %33 = load ptr, ptr @global_trees, align 16, !tbaa !59
  store ptr %33, ptr %0, align 8, !tbaa !59
  %34 = load ptr, ptr @global_dc, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.diagnostic_context, ptr %34, i64 0, i32 1, i64 4
  %36 = load i32, ptr %35, align 8, !tbaa !74
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !74
  br label %300

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !70
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48, !prof !127

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = load i8, ptr %44, align 1, !tbaa !70
  %46 = icmp eq i8 %45, 48
  %47 = select i1 %46, i8 -128, i8 0, !prof !128
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i8 [ 0, %38 ], [ %47, %42 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %51 = call ptr @cpp_get_options(ptr noundef %50) #19
  %52 = load ptr, ptr @parse_in, align 8, !tbaa !59
  call void @cpp_interpret_integer(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef %52, ptr noundef %23, i32 noundef %30) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %53 = getelementptr inbounds %struct.cpp_options, ptr %51, i64 0, i32 44
  %54 = load i64, ptr %53, align 8, !tbaa !129
  call void @cpp_num_sign_extend(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %5, i64 noundef %54) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  %55 = and i32 %30, 4096
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.cpp_num, ptr %5, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !134
  %59 = load i64, ptr %5, align 8, !tbaa !136
  %60 = and i32 %30, 240
  %61 = icmp eq i32 %60, 32
  %62 = select i1 %61, i64 8, i64 10
  %63 = icmp eq i32 %60, 16
  %64 = select i1 %63, i64 6, i64 %62
  br i1 %56, label %92, label %68, !prof !137

65:                                               ; preds = %86
  %66 = add nuw nsw i64 %69, 2
  %67 = icmp ult i64 %69, 9
  br i1 %67, label %68, label %159, !prof !138, !llvm.loop !139

68:                                               ; preds = %48, %65
  %69 = phi i64 [ %66, %65 ], [ %64, %48 ]
  %70 = phi i32 [ %87, %65 ], [ undef, %48 ]
  %71 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %69
  %72 = load ptr, ptr %71, align 16, !tbaa !59
  %73 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 14
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  %75 = getelementptr inbounds %struct.tree_int_cst, ptr %74, i64 0, i32 1
  %76 = getelementptr inbounds %struct.tree_int_cst, ptr %74, i64 0, i32 1, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !70
  %78 = icmp ugt i64 %77, %59
  %79 = trunc i64 %69 to i32
  br i1 %78, label %86, label %80, !prof !140

80:                                               ; preds = %68
  %81 = icmp eq i64 %77, %59
  br i1 %81, label %82, label %85, !prof !138

82:                                               ; preds = %80
  %83 = load i64, ptr %75, align 8, !tbaa !70
  %84 = icmp ult i64 %83, %58
  br i1 %84, label %85, label %86, !prof !140

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %82, %68
  %87 = phi i32 [ %70, %85 ], [ %79, %82 ], [ %79, %68 ]
  %88 = phi i1 [ true, %85 ], [ false, %82 ], [ false, %68 ]
  br i1 %88, label %65, label %159, !prof !140

89:                                               ; preds = %110
  %90 = add nuw nsw i64 %93, 2
  %91 = icmp ult i64 %93, 9
  br i1 %91, label %92, label %113, !prof !141, !llvm.loop !139

92:                                               ; preds = %48, %89
  %93 = phi i64 [ %90, %89 ], [ %64, %48 ]
  %94 = phi i32 [ %111, %89 ], [ undef, %48 ]
  %95 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %93
  %96 = load ptr, ptr %95, align 16, !tbaa !59
  %97 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 14
  %98 = load ptr, ptr %97, align 8, !tbaa !70
  %99 = getelementptr inbounds %struct.tree_int_cst, ptr %98, i64 0, i32 1
  %100 = getelementptr inbounds %struct.tree_int_cst, ptr %98, i64 0, i32 1, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !70
  %102 = icmp ugt i64 %101, %59
  %103 = trunc i64 %93 to i32
  br i1 %102, label %110, label %104, !prof !142

104:                                              ; preds = %92
  %105 = icmp eq i64 %101, %59
  br i1 %105, label %106, label %109, !prof !141

106:                                              ; preds = %104
  %107 = load i64, ptr %99, align 8, !tbaa !70
  %108 = icmp ult i64 %107, %58
  br i1 %108, label %109, label %110, !prof !142

109:                                              ; preds = %106, %104
  br label %110

110:                                              ; preds = %109, %106, %92
  %111 = phi i32 [ %94, %109 ], [ %103, %106 ], [ %103, %92 ]
  %112 = phi i1 [ true, %109 ], [ false, %106 ], [ false, %92 ]
  br i1 %112, label %89, label %113, !prof !142

113:                                              ; preds = %110, %89
  %114 = phi i32 [ %111, %110 ], [ 11, %89 ]
  %115 = select i1 %61, i64 7, i64 9
  %116 = select i1 %63, i64 5, i64 %115
  br label %120

117:                                              ; preds = %138
  %118 = add nuw nsw i64 %121, 2
  %119 = icmp ult i64 %121, 9
  br i1 %119, label %120, label %141, !prof !141, !llvm.loop !143

120:                                              ; preds = %117, %113
  %121 = phi i64 [ %116, %113 ], [ %118, %117 ]
  %122 = phi i32 [ undef, %113 ], [ %139, %117 ]
  %123 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %121
  %124 = load ptr, ptr %123, align 8, !tbaa !59
  %125 = getelementptr inbounds %struct.tree_type, ptr %124, i64 0, i32 14
  %126 = load ptr, ptr %125, align 8, !tbaa !70
  %127 = getelementptr inbounds %struct.tree_int_cst, ptr %126, i64 0, i32 1
  %128 = getelementptr inbounds %struct.tree_int_cst, ptr %126, i64 0, i32 1, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !70
  %130 = icmp ugt i64 %129, %59
  %131 = trunc i64 %121 to i32
  br i1 %130, label %138, label %132, !prof !142

132:                                              ; preds = %120
  %133 = icmp eq i64 %129, %59
  br i1 %133, label %134, label %137, !prof !141

134:                                              ; preds = %132
  %135 = load i64, ptr %127, align 8, !tbaa !70
  %136 = icmp ult i64 %135, %58
  br i1 %136, label %137, label %138, !prof !142

137:                                              ; preds = %134, %132
  br label %138

138:                                              ; preds = %137, %134, %120
  %139 = phi i32 [ %122, %137 ], [ %131, %134 ], [ %131, %120 ]
  %140 = phi i1 [ true, %137 ], [ false, %134 ], [ false, %120 ]
  br i1 %140, label %117, label %141, !prof !142

141:                                              ; preds = %138, %117
  %142 = phi i32 [ %139, %138 ], [ 11, %117 ]
  %143 = and i32 %30, 3840
  %144 = icmp eq i32 %143, 256
  br i1 %144, label %147, label %145, !prof !144

145:                                              ; preds = %141
  %146 = call i32 @llvm.umin.i32(i32 %114, i32 %142)
  br label %159

147:                                              ; preds = %141
  %148 = icmp ugt i32 %142, %114
  %149 = icmp ugt i32 %142, 7
  %150 = and i1 %148, %149
  br i1 %150, label %151, label %159, !prof !145

151:                                              ; preds = %147
  %152 = load i32, ptr @flag_isoc99, align 4, !tbaa !74
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = call i32 @llvm.umax.i32(i32 %114, i32 8)
  %156 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.16) #19
  br label %159

157:                                              ; preds = %151
  %158 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 202, ptr noundef nonnull @.str.17) #19
  br label %159

159:                                              ; preds = %86, %65, %157, %154, %147, %145
  %160 = phi i32 [ %146, %145 ], [ %142, %157 ], [ %155, %154 ], [ %142, %147 ], [ %87, %86 ], [ 11, %65 ]
  %161 = icmp eq i32 %160, 11
  br i1 %161, label %162, label %166, !prof !146

162:                                              ; preds = %159
  %163 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 10), align 16
  %164 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 9), align 8
  %165 = select i1 %56, ptr %164, ptr %163
  br label %186

166:                                              ; preds = %159
  %167 = zext i32 %160 to i64
  %168 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !59
  %170 = icmp ult i32 %160, 9
  %171 = and i32 %30, 240
  %172 = icmp eq i32 %171, 64
  %173 = or i1 %172, %170
  br i1 %173, label %186, label %174, !prof !147

174:                                              ; preds = %166
  %175 = load i32, ptr @c_language, align 4, !tbaa !74
  %176 = and i32 %175, 2
  %177 = icmp eq i32 %176, 0
  %178 = load i32, ptr @flag_isoc99, align 4
  %179 = load i32, ptr @cxx_dialect, align 4
  %180 = select i1 %177, i32 %178, i32 %179
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, i32 10, i32 6
  %183 = load i32, ptr @input_location, align 4, !tbaa !74
  %184 = select i1 %56, ptr @.str.19, ptr @.str.18
  %185 = call zeroext i8 (i32, i32, i32, ptr, ...) @emit_diagnostic(i32 noundef %182, i32 noundef %183, i32 noundef 125, ptr noundef nonnull %184) #19
  br label %186

186:                                              ; preds = %174, %166, %162
  %187 = phi ptr [ %165, %162 ], [ %169, %174 ], [ %169, %166 ]
  %188 = getelementptr inbounds %struct.cpp_num, ptr %5, i64 0, i32 1
  %189 = load i64, ptr %188, align 8, !tbaa !134
  %190 = load i64, ptr %5, align 8, !tbaa !136
  %191 = call ptr @build_int_cst_wide(ptr noundef %187, i64 noundef %189, i64 noundef %190) #19
  %192 = and i32 %30, 8192
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %197, label %194, !prof !147

194:                                              ; preds = %186
  %195 = call ptr @build_int_cst(ptr noundef %187, i64 noundef 0) #19
  %196 = call ptr @build_complex(ptr noundef null, ptr noundef %195, ptr noundef %191) #19
  br label %197

197:                                              ; preds = %186, %194
  %198 = phi ptr [ %196, %194 ], [ %191, %186 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  store ptr %198, ptr %0, align 8, !tbaa !59
  br label %300

199:                                              ; preds = %28
  %200 = call fastcc ptr @interpret_float(ptr noundef %23, i32 noundef %30)
  store ptr %200, ptr %0, align 8, !tbaa !59
  br label %300

201:                                              ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 344, ptr noundef nonnull @.str.6) #19
  br label %300

202:                                              ; preds = %21
  %203 = load i32, ptr @c_language, align 4, !tbaa !74
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %227, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %1, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  br label %208

208:                                              ; preds = %208, %206
  %209 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %210 = call ptr @cpp_get_token_with_location(ptr noundef %209, ptr noundef nonnull %9) #19
  %211 = getelementptr inbounds %struct.cpp_token, ptr %210, i64 0, i32 1
  %212 = load i8, ptr %211, align 4
  switch i8 %212, label %221 [
    i8 72, label %208
    i8 61, label %213
    i8 62, label %213
    i8 63, label %213
    i8 64, label %213
    i8 65, label %213
    i8 53, label %215
  ]

213:                                              ; preds = %208, %208, %208, %208, %208
  %214 = call fastcc i32 @lex_string(ptr noundef %210, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1), !range !148
  br label %224

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.cpp_token, ptr %210, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !70
  %218 = getelementptr inbounds i8, ptr %217, i64 -24
  store ptr %218, ptr %0, align 8, !tbaa !59
  %219 = call i32 @objc_is_reserved_word(ptr noundef nonnull %218) #19
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %208, %215
  %222 = zext i8 %212 to i32
  call void (i32, ptr, ...) @error_at(i32 noundef %207, ptr noundef nonnull @.str.7) #19
  %223 = load i32, ptr %9, align 4, !tbaa !74
  store i32 %223, ptr %1, align 4, !tbaa !74
  br label %224

224:                                              ; preds = %213, %215, %221
  %225 = phi i32 [ %222, %221 ], [ %214, %213 ], [ 54, %215 ]
  %226 = phi i1 [ true, %221 ], [ false, %213 ], [ false, %215 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br i1 %226, label %21, label %300

227:                                              ; preds = %21, %202, %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %228 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %229 = call ptr @cpp_spell_token(ptr noundef %228, ptr noundef %23, ptr noundef nonnull %10, i8 noundef zeroext 1) #19
  store i8 0, ptr %229, align 1, !tbaa !70
  call void (ptr, ...) @error(ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %236

230:                                              ; preds = %21
  %231 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3, i32 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !70
  %233 = load i8, ptr %232, align 1, !tbaa !70
  %234 = zext i8 %233 to i32
  switch i8 %233, label %237 [
    i8 39, label %235
    i8 34, label %235
  ]

235:                                              ; preds = %230, %230
  call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %234) #19
  br label %236

236:                                              ; preds = %21, %235, %244, %243, %227
  br label %15

237:                                              ; preds = %230
  %238 = zext i8 %233 to i64
  %239 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %238
  %240 = load i16, ptr %239, align 2, !tbaa !149
  %241 = and i16 %240, 172
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %237
  call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %234) #19
  br label %236

244:                                              ; preds = %237
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %234) #19
  br label %236

245:                                              ; preds = %21, %21, %21, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !tbaa !74
  %246 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %247 = call i32 @cpp_interpret_charconst(ptr noundef %246, ptr noundef %23, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %248 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 1
  %249 = load i8, ptr %248, align 4
  %250 = add i8 %249, -57
  %251 = icmp ult i8 %250, 3
  br i1 %251, label %260, label %252

252:                                              ; preds = %245
  %253 = load i32, ptr @c_language, align 4, !tbaa !74
  %254 = and i32 %253, 2
  %255 = icmp eq i32 %254, 0
  %256 = load i32, ptr %7, align 4
  %257 = icmp ugt i32 %256, 1
  %258 = select i1 %255, i1 true, i1 %257, !prof !150
  %259 = select i1 %258, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), ptr @integer_types, !prof !150
  br label %264

260:                                              ; preds = %245
  %261 = zext nneg i8 %250 to i64
  %262 = getelementptr inbounds [3 x ptr], ptr @switch.table.c_lex_with_flags, i64 0, i64 %261
  %263 = load ptr, ptr %262, align 8
  br label %264

264:                                              ; preds = %260, %252
  %265 = phi ptr [ %259, %252 ], [ %263, %260 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !59
  %267 = load i32, ptr %8, align 4, !tbaa !74
  %268 = icmp ne i32 %267, 0
  %269 = icmp sgt i32 %247, -1
  %270 = select i1 %268, i1 true, i1 %269, !prof !151
  br i1 %270, label %271, label %274, !prof !150

271:                                              ; preds = %264
  %272 = zext i32 %247 to i64
  %273 = call ptr @build_int_cst_wide(ptr noundef %266, i64 noundef %272, i64 noundef 0) #19
  br label %277

274:                                              ; preds = %264
  %275 = sext i32 %247 to i64
  %276 = call ptr @build_int_cst_wide(ptr noundef %266, i64 noundef %275, i64 noundef -1) #19
  br label %277

277:                                              ; preds = %271, %274
  %278 = phi ptr [ %273, %271 ], [ %276, %274 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  store ptr %278, ptr %0, align 8, !tbaa !59
  br label %300

279:                                              ; preds = %21, %21, %21, %21, %21
  %280 = and i32 %3, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287, !prof !152

282:                                              ; preds = %279
  %283 = trunc i32 %3 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  %286 = call fastcc i32 @lex_string(ptr noundef %23, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %285), !range !148
  br label %300

287:                                              ; preds = %279
  %288 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3
  %289 = load i32, ptr %288, align 8, !tbaa !70
  %290 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3, i32 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !70
  %292 = call ptr @build_string(i32 noundef %289, ptr noundef %291) #19
  store ptr %292, ptr %0, align 8, !tbaa !59
  br label %300

293:                                              ; preds = %21
  %294 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 3
  %295 = load i32, ptr %294, align 8, !tbaa !70
  %296 = zext i32 %295 to i64
  %297 = call ptr @build_int_cst(ptr noundef null, i64 noundef %296) #19
  store ptr %297, ptr %0, align 8, !tbaa !59
  br label %300

298:                                              ; preds = %21, %21, %21
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 445, ptr noundef nonnull @.str.6) #19
  br label %299

299:                                              ; preds = %21, %298
  store ptr null, ptr %0, align 8, !tbaa !59
  br label %300

300:                                              ; preds = %224, %32, %197, %199, %201, %299, %293, %287, %282, %277, %24
  %301 = phi i8 [ 0, %299 ], [ 0, %293 ], [ 0, %282 ], [ 0, %287 ], [ 0, %277 ], [ 0, %24 ], [ 0, %201 ], [ 0, %199 ], [ %49, %197 ], [ 0, %32 ], [ 0, %224 ]
  %302 = phi i32 [ %22, %299 ], [ 70, %293 ], [ %286, %282 ], [ %22, %287 ], [ %22, %277 ], [ 53, %24 ], [ 55, %201 ], [ 55, %199 ], [ 55, %197 ], [ 55, %32 ], [ %225, %224 ]
  %303 = phi ptr [ %23, %299 ], [ %23, %293 ], [ %23, %282 ], [ %23, %287 ], [ %23, %277 ], [ %23, %24 ], [ %23, %201 ], [ %23, %199 ], [ %23, %197 ], [ %23, %32 ], [ %210, %224 ]
  %304 = icmp eq ptr %2, null
  br i1 %304, label %310, label %305, !prof !124

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.cpp_token, ptr %303, i64 0, i32 2
  %307 = load i16, ptr %306, align 2, !tbaa !153
  %308 = trunc i16 %307 to i8
  %309 = or i8 %301, %308
  store i8 %309, ptr %2, align 1, !tbaa !70
  br label %310

310:                                              ; preds = %305, %300
  %311 = load i1, ptr @c_lex_with_flags.no_more_pch, align 1
  br i1 %311, label %313, label %312, !prof !154

312:                                              ; preds = %310
  store i1 true, ptr @c_lex_with_flags.no_more_pch, align 1
  call void @c_common_no_more_pch() #19
  br label %313

313:                                              ; preds = %310, %312
  %314 = load i8, ptr @timevar_enable, align 1, !tbaa !70
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %317, label %316, !prof !124

316:                                              ; preds = %313
  call void @timevar_pop_1(i32 noundef 42) #19
  br label %317

317:                                              ; preds = %316, %313
  ret i32 %302
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare ptr @cpp_get_token_with_location(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cpp_classify_number(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @interpret_float(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !58 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %6 = and i32 %1, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = and i32 %1, -32801
  %10 = or disjoint i32 %9, 32
  %11 = and i32 %1, 8704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 217, ptr noundef nonnull @.str.20) #19
  %15 = tail call zeroext i8 @float_const_decimal64_p() #19
  %16 = icmp eq i8 %15, 0
  %17 = or i32 %9, 16416
  %18 = select i1 %16, i32 %10, i32 %17
  br label %19

19:                                               ; preds = %13, %8, %2
  %20 = phi i32 [ %10, %8 ], [ %1, %2 ], [ %18, %13 ]
  %21 = and i32 %20, 3145728
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @interpret_fixed(ptr noundef %0, i32 noundef %20)
  br label %432

25:                                               ; preds = %19
  %26 = and i32 %20, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = trunc i32 %20 to i8
  %30 = and i8 %29, -16
  switch i8 %30, label %35 [
    i8 64, label %31
    i8 16, label %33
  ]

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !59
  br label %74

33:                                               ; preds = %28
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !59
  br label %74

35:                                               ; preds = %28
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !59
  br label %74

37:                                               ; preds = %25
  %38 = and i32 %20, 983040
  switch i32 %38, label %39 [
    i32 0, label %60
    i32 65536, label %40
  ]

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %37, %39
  %41 = phi i8 [ 113, %39 ], [ 119, %37 ]
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 104), align 8, !tbaa !155
  %43 = tail call i32 %42(i8 noundef signext %41) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21) #19
  %46 = load ptr, ptr @global_dc, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.diagnostic_context, ptr %46, i64 0, i32 1, i64 4
  %48 = load i32, ptr %47, align 8, !tbaa !74
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !74
  %50 = load ptr, ptr @global_trees, align 16, !tbaa !59
  br label %57

51:                                               ; preds = %40
  %52 = load i32, ptr @input_location, align 4, !tbaa !74
  %53 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %52, i32 noundef 834, ptr noundef nonnull @.str.22) #19
  %54 = tail call ptr @c_common_type_for_mode(i32 noundef %43, i32 noundef 0) #19
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 674, ptr noundef nonnull @.str.6) #19
  br label %57

57:                                               ; preds = %56, %51, %45
  %58 = phi ptr [ undef, %45 ], [ %54, %51 ], [ %54, %56 ]
  %59 = phi ptr [ %50, %45 ], [ undef, %51 ], [ undef, %56 ]
  br i1 %44, label %432, label %74

60:                                               ; preds = %37
  %61 = and i32 %20, 240
  %62 = icmp eq i32 %61, 64
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !59
  br label %74

65:                                               ; preds = %60
  %66 = icmp eq i32 %61, 16
  %67 = load i32, ptr @flag_single_precision_constant, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !59
  br label %74

72:                                               ; preds = %65
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !59
  br label %74

74:                                               ; preds = %57, %70, %72, %63, %31, %35, %33
  %75 = phi ptr [ %32, %31 ], [ %34, %33 ], [ %36, %35 ], [ %58, %57 ], [ %64, %63 ], [ %71, %70 ], [ %73, %72 ]
  %76 = tail call ptr @excess_precision_type(ptr noundef %75) #19
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, ptr %75, ptr %76
  %79 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !70
  %81 = zext i32 %80 to i64
  br i1 %27, label %84, label %82

82:                                               ; preds = %74
  %83 = add nsw i64 %81, -2
  br label %93

84:                                               ; preds = %74
  %85 = and i32 %20, 240
  %86 = icmp ne i32 %85, 32
  %87 = sext i1 %86 to i64
  %88 = shl i32 %20, 18
  %89 = ashr i32 %88, 31
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %87
  %92 = add nsw i64 %91, %81
  br label %93

93:                                               ; preds = %84, %82
  %94 = phi i64 [ %83, %82 ], [ %92, %84 ]
  %95 = add nsw i64 %94, 1
  %96 = alloca i8, i64 %95, align 16
  %97 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %96, ptr align 1 %98, i64 %94, i1 false)
  %99 = getelementptr inbounds i8, ptr %96, i64 %94
  store i8 0, ptr %99, align 1, !tbaa !70
  %100 = load i64, ptr %78, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 14
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #19
  br label %110

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %107 = load i32, ptr %106, align 4
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  br label %110

110:                                              ; preds = %105, %103
  %111 = phi i32 [ %104, %103 ], [ %109, %105 ]
  call void @real_from_string3(ptr noundef nonnull %3, ptr noundef nonnull %96, i32 noundef %111) #19
  %112 = icmp eq ptr %78, %75
  br i1 %112, label %126, label %113

113:                                              ; preds = %110
  %114 = load i64, ptr %75, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 14
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @vector_type_mode(ptr noundef nonnull %75) #19
  br label %124

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %118, %117 ], [ %123, %119 ]
  call void @real_convert(ptr noundef nonnull %4, i32 noundef %125, ptr noundef nonnull %3) #19
  br label %126

126:                                              ; preds = %124, %110
  %127 = call zeroext i8 @real_isinf(ptr noundef nonnull %3) #19
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  br i1 %112, label %404, label %130

130:                                              ; preds = %129
  %131 = call zeroext i8 @real_isinf(ptr noundef nonnull %4) #19
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %404, label %133

133:                                              ; preds = %130, %126
  %134 = load i64, ptr %75, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 14
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %144

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  br label %144

144:                                              ; preds = %139, %137
  %145 = phi i32 [ %138, %137 ], [ %143, %139 ]
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !70
  %149 = icmp eq i8 %148, 8
  br i1 %149, label %201, label %150

150:                                              ; preds = %144
  %151 = load i64, ptr %75, align 8
  %152 = and i64 %151, 65535
  %153 = icmp eq i64 %152, 14
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 @vector_type_mode(ptr noundef nonnull %75) #19
  br label %161

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  br label %161

161:                                              ; preds = %156, %154
  %162 = phi i32 [ %155, %154 ], [ %160, %156 ]
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !70
  %166 = icmp eq i8 %165, 9
  br i1 %166, label %201, label %167

167:                                              ; preds = %161
  %168 = load i64, ptr %75, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 14
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = call i32 @vector_type_mode(ptr noundef nonnull %75) #19
  br label %178

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %173, %171
  %179 = phi i32 [ %172, %171 ], [ %177, %173 ]
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !70
  %183 = icmp eq i8 %182, 11
  br i1 %183, label %201, label %184

184:                                              ; preds = %178
  %185 = load i64, ptr %75, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 14
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call i32 @vector_type_mode(ptr noundef nonnull %75) #19
  br label %195

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  br label %195

195:                                              ; preds = %190, %188
  %196 = phi i32 [ %189, %188 ], [ %194, %190 ]
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !70
  %200 = icmp eq i8 %199, 17
  br i1 %200, label %201, label %399

201:                                              ; preds = %195, %178, %161, %144
  %202 = load i64, ptr %75, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 14
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %212

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  br label %212

212:                                              ; preds = %207, %205
  %213 = phi i32 [ %206, %205 ], [ %211, %207 ]
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !70
  %217 = icmp eq i8 %216, 8
  br i1 %217, label %235, label %218

218:                                              ; preds = %212
  %219 = load i64, ptr %75, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 14
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %229

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %226 = load i32, ptr %225, align 4
  %227 = lshr i32 %226, 16
  %228 = and i32 %227, 255
  br label %229

229:                                              ; preds = %224, %222
  %230 = phi i32 [ %223, %222 ], [ %228, %224 ]
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !70
  %234 = icmp eq i8 %233, 9
  br i1 %234, label %235, label %246

235:                                              ; preds = %229, %212
  %236 = load i64, ptr %75, align 8
  %237 = and i64 %236, 65535
  %238 = icmp eq i64 %237, 14
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %263

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %243 = load i32, ptr %242, align 4
  %244 = lshr i32 %243, 16
  %245 = and i32 %244, 255
  br label %263

246:                                              ; preds = %229
  %247 = load i64, ptr %75, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 14
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = call i32 @vector_type_mode(ptr noundef nonnull %75) #19
  br label %257

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = lshr i32 %254, 16
  %256 = and i32 %255, 255
  br label %257

257:                                              ; preds = %252, %250
  %258 = phi i32 [ %251, %250 ], [ %256, %252 ]
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !70
  %262 = zext i8 %261 to i32
  br label %263

263:                                              ; preds = %239, %241, %257
  %264 = phi i32 [ %262, %257 ], [ %240, %239 ], [ %245, %241 ]
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !70
  %268 = icmp eq i8 %267, 9
  %269 = load i64, ptr %75, align 8
  %270 = and i64 %269, 65535
  %271 = icmp eq i64 %270, 14
  br i1 %268, label %272, label %331

272:                                              ; preds = %263
  br i1 %271, label %273, label %275

273:                                              ; preds = %272
  %274 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %280

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 255
  br label %280

280:                                              ; preds = %275, %273
  %281 = phi i32 [ %274, %273 ], [ %279, %275 ]
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !70
  %285 = icmp eq i8 %284, 8
  br i1 %285, label %303, label %286

286:                                              ; preds = %280
  %287 = load i64, ptr %75, align 8
  %288 = and i64 %287, 65535
  %289 = icmp eq i64 %288, 14
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %297

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %294 = load i32, ptr %293, align 4
  %295 = lshr i32 %294, 16
  %296 = and i32 %295, 255
  br label %297

297:                                              ; preds = %292, %290
  %298 = phi i32 [ %291, %290 ], [ %296, %292 ]
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !70
  %302 = icmp eq i8 %301, 9
  br i1 %302, label %303, label %314

303:                                              ; preds = %297, %280
  %304 = load i64, ptr %75, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 14
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %390

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %311 = load i32, ptr %310, align 4
  %312 = lshr i32 %311, 16
  %313 = and i32 %312, 255
  br label %390

314:                                              ; preds = %297
  %315 = load i64, ptr %75, align 8
  %316 = and i64 %315, 65535
  %317 = icmp eq i64 %316, 14
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %325

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %322 = load i32, ptr %321, align 4
  %323 = lshr i32 %322, 16
  %324 = and i32 %323, 255
  br label %325

325:                                              ; preds = %320, %318
  %326 = phi i32 [ %319, %318 ], [ %324, %320 ]
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !70
  %330 = zext i8 %329 to i32
  br label %390

331:                                              ; preds = %263
  br i1 %271, label %332, label %334

332:                                              ; preds = %331
  %333 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %339

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %336 = load i32, ptr %335, align 4
  %337 = lshr i32 %336, 16
  %338 = and i32 %337, 255
  br label %339

339:                                              ; preds = %334, %332
  %340 = phi i32 [ %333, %332 ], [ %338, %334 ]
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !70
  %344 = icmp eq i8 %343, 8
  br i1 %344, label %362, label %345

345:                                              ; preds = %339
  %346 = load i64, ptr %75, align 8
  %347 = and i64 %346, 65535
  %348 = icmp eq i64 %347, 14
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  %350 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %356

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %353 = load i32, ptr %352, align 4
  %354 = lshr i32 %353, 16
  %355 = and i32 %354, 255
  br label %356

356:                                              ; preds = %351, %349
  %357 = phi i32 [ %350, %349 ], [ %355, %351 ]
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !70
  %361 = icmp eq i8 %360, 9
  br i1 %361, label %362, label %373

362:                                              ; preds = %356, %339
  %363 = load i64, ptr %75, align 8
  %364 = and i64 %363, 65535
  %365 = icmp eq i64 %364, 14
  br i1 %365, label %366, label %368

366:                                              ; preds = %362
  %367 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %390

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = lshr i32 %370, 16
  %372 = and i32 %371, 255
  br label %390

373:                                              ; preds = %356
  %374 = load i64, ptr %75, align 8
  %375 = and i64 %374, 65535
  %376 = icmp eq i64 %375, 14
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = call i32 @vector_type_mode(ptr noundef %75) #19
  br label %384

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %381 = load i32, ptr %380, align 4
  %382 = lshr i32 %381, 16
  %383 = and i32 %382, 255
  br label %384

384:                                              ; preds = %379, %377
  %385 = phi i32 [ %378, %377 ], [ %383, %379 ]
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !70
  %389 = zext i8 %388 to i32
  br label %390

390:                                              ; preds = %384, %368, %366, %325, %309, %307
  %391 = phi i32 [ %330, %325 ], [ %308, %307 ], [ %313, %309 ], [ %389, %384 ], [ %367, %366 ], [ %372, %368 ]
  %392 = add i32 %391, -38
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !59
  %396 = getelementptr inbounds %struct.real_format, ptr %395, i64 0, i32 12
  %397 = load i8, ptr %396, align 1, !tbaa !167
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %390, %195
  %400 = load i32, ptr @input_location, align 4, !tbaa !74
  %401 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %400, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef %75) #19
  br label %420

402:                                              ; preds = %390
  %403 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 151, ptr noundef nonnull @.str.23, ptr noundef %75) #19
  br label %420

404:                                              ; preds = %130, %129
  %405 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %3, ptr noundef nonnull @dconst0) #19
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %404
  br i1 %112, label %420, label %408

408:                                              ; preds = %407
  %409 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %4, ptr noundef nonnull @dconst0) #19
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %420, label %411

411:                                              ; preds = %408, %404
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %412 = call i32 @real_from_string(ptr noundef nonnull %5, ptr noundef nonnull %96) #19
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %411
  %415 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %5, ptr noundef nonnull @dconst0) #19
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %414, %411
  %418 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 151, ptr noundef nonnull @.str.24) #19
  br label %419

419:                                              ; preds = %417, %414
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %420

420:                                              ; preds = %407, %408, %419, %399, %402
  %421 = call ptr @build_real(ptr noundef nonnull %78, ptr noundef nonnull byval(%struct.real_value) align 8 %3) #19
  %422 = and i32 %20, 8192
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %428, label %424

424:                                              ; preds = %420
  %425 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !59
  %426 = call ptr @convert(ptr noundef nonnull %78, ptr noundef %425) #19
  %427 = call ptr @build_complex(ptr noundef null, ptr noundef %426, ptr noundef %421) #19
  br label %428

428:                                              ; preds = %424, %420
  %429 = phi ptr [ %427, %424 ], [ %421, %420 ]
  br i1 %112, label %432, label %430

430:                                              ; preds = %428
  %431 = call ptr @build1_stat(i32 noundef 190, ptr noundef %75, ptr noundef %429) #19
  br label %432

432:                                              ; preds = %428, %430, %57, %23
  %433 = phi ptr [ %24, %23 ], [ %59, %57 ], [ %431, %430 ], [ %429, %428 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret ptr %433
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lex_string(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #14 !prof !169 !PGOFuncName !170 {
  %5 = alloca %struct.obstack, align 8
  %6 = alloca %struct.cpp_string, align 8
  %7 = alloca %struct.cpp_string, align 8
  %8 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %9 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  %12 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !171
  br label %13

13:                                               ; preds = %25, %4
  %14 = phi i8 [ 1, %25 ], [ %2, %4 ]
  %15 = phi i64 [ %18, %25 ], [ 0, %4 ]
  %16 = phi i32 [ %19, %25 ], [ %11, %4 ]
  br label %17

17:                                               ; preds = %13, %64
  %18 = phi i64 [ %15, %13 ], [ %58, %64 ]
  %19 = phi i32 [ %16, %13 ], [ %36, %64 ]
  br label %20

20:                                               ; preds = %17, %20
  %21 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %22 = call ptr @cpp_get_token(ptr noundef %21) #19
  %23 = getelementptr inbounds %struct.cpp_token, ptr %22, i64 0, i32 1
  %24 = load i8, ptr %23, align 4
  switch i8 %24, label %71 [
    i8 72, label %20
    i8 52, label %25
    i8 62, label %29
    i8 63, label %29
    i8 64, label %29
    i8 65, label %29
    i8 61, label %35
  ], !prof !172

25:                                               ; preds = %20
  %26 = load i32, ptr @c_language, align 4, !tbaa !74
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %71, label %13

29:                                               ; preds = %20, %20, %20, %20
  %30 = zext i8 %24 to i32
  %31 = icmp eq i32 %19, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = icmp eq i32 %19, 61
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  call void (ptr, ...) @error(ptr noundef nonnull @.str.25) #19
  br label %35

35:                                               ; preds = %20, %32, %29, %34
  %36 = phi i32 [ %19, %34 ], [ %19, %29 ], [ %30, %32 ], [ %19, %20 ]
  %37 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 5
  %38 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 3
  %39 = icmp eq i64 %18, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 5
  %42 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 3
  %43 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 4
  %44 = call i32 @_obstack_begin(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #19
  store i64 16, ptr %41, align 8, !tbaa !173
  %45 = load ptr, ptr %42, align 8, !tbaa !175
  %46 = getelementptr inbounds i8, ptr %45, i64 16
  %47 = load ptr, ptr %43, align 8, !tbaa !176
  %48 = icmp ugt ptr %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  call void @_obstack_newchunk(ptr noundef nonnull %5, i32 noundef 16) #19
  br label %50

50:                                               ; preds = %40, %49
  %51 = load ptr, ptr %42, align 8, !tbaa !175
  %52 = load i64, ptr %41, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr nonnull align 8 %7, i64 %52, i1 false)
  %53 = load i64, ptr %41, align 8, !tbaa !173
  %54 = load ptr, ptr %42, align 8, !tbaa !175
  %55 = getelementptr inbounds i8, ptr %54, i64 %53
  store ptr %55, ptr %42, align 8, !tbaa !175
  br label %56

56:                                               ; preds = %50, %35
  %57 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 4
  %58 = add i64 %18, 1
  store i64 16, ptr %37, align 8, !tbaa !173
  %59 = load ptr, ptr %38, align 8, !tbaa !175
  %60 = getelementptr inbounds i8, ptr %59, i64 16
  %61 = load ptr, ptr %57, align 8, !tbaa !176
  %62 = icmp ugt ptr %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  call void @_obstack_newchunk(ptr noundef nonnull %5, i32 noundef 16) #19
  br label %64

64:                                               ; preds = %56, %63
  %65 = load ptr, ptr %38, align 8, !tbaa !175
  %66 = getelementptr inbounds %struct.cpp_token, ptr %22, i64 0, i32 3
  %67 = load i64, ptr %37, align 8, !tbaa !173
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr nonnull align 8 %66, i64 %67, i1 false)
  %68 = load i64, ptr %37, align 8, !tbaa !173
  %69 = load ptr, ptr %38, align 8, !tbaa !175
  %70 = getelementptr inbounds i8, ptr %69, i64 %68
  store ptr %70, ptr %38, align 8, !tbaa !175
  br label %17

71:                                               ; preds = %25, %20
  %72 = load ptr, ptr @parse_in, align 8, !tbaa !59
  call void @_cpp_backup_tokens(ptr noundef %72, i32 noundef 1) #19
  %73 = icmp eq i64 %18, 0
  br i1 %73, label %108, label %74, !prof !152

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !175
  %77 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !177
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 10
  %82 = load i8, ptr %81, align 8
  %83 = or i8 %82, 2
  store i8 %83, ptr %81, align 8
  br label %84

84:                                               ; preds = %74, %80
  %85 = ptrtoint ptr %78 to i64
  %86 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 5
  store i64 %85, ptr %86, align 8, !tbaa !173
  %87 = ptrtoint ptr %76 to i64
  %88 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 6
  %89 = load i32, ptr %88, align 8, !tbaa !178
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %87
  %92 = xor i32 %89, -1
  %93 = sext i32 %92 to i64
  %94 = and i64 %91, %93
  %95 = inttoptr i64 %94 to ptr
  store ptr %95, ptr %75, align 8, !tbaa !175
  %96 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !179
  %98 = ptrtoint ptr %97 to i64
  %99 = sub i64 %94, %98
  %100 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !176
  %102 = ptrtoint ptr %101 to i64
  %103 = sub i64 %102, %98
  %104 = icmp sgt i64 %99, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %84
  store ptr %101, ptr %75, align 8, !tbaa !175
  br label %106

106:                                              ; preds = %84, %105
  %107 = load ptr, ptr %75, align 8, !tbaa !175
  store ptr %107, ptr %77, align 8, !tbaa !177
  br label %108

108:                                              ; preds = %106, %71
  %109 = phi ptr [ %78, %106 ], [ %7, %71 ]
  %110 = icmp ne i8 %14, 0
  %111 = or i1 %73, %110
  br i1 %111, label %119, label %112, !prof !152

112:                                              ; preds = %108
  %113 = load i32, ptr @input_location, align 4, !tbaa !74
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %113) #19
  %114 = getelementptr inbounds %struct.expanded_location, ptr %8, i64 0, i32 3
  %115 = load i8, ptr %114, align 8, !tbaa !102
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 202, ptr noundef nonnull @.str.26) #19
  br label %119

119:                                              ; preds = %117, %112, %108
  %120 = icmp eq i8 %3, 0
  %121 = select i1 %120, ptr @cpp_interpret_string_notranslate, ptr @cpp_interpret_string, !prof !180
  %122 = load ptr, ptr @parse_in, align 8, !tbaa !59
  %123 = add i64 %18, 1
  %124 = call zeroext i8 %121(ptr noundef %122, ptr noundef %109, i64 noundef %123, ptr noundef nonnull %6, i32 noundef %19) #19, !prof !181, !callees !182
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %132, label %126, !prof !183

126:                                              ; preds = %119
  %127 = load i32, ptr %6, align 8, !tbaa !184
  %128 = getelementptr inbounds %struct.cpp_string, ptr %6, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !100
  %130 = call ptr @build_string(i32 noundef %127, ptr noundef %129) #19
  %131 = load ptr, ptr %128, align 8, !tbaa !100
  call void @free(ptr noundef %131)
  br label %168

132:                                              ; preds = %119
  switch i32 %19, label %133 [
    i32 62, label %157
    i32 64, label %146
    i32 63, label %135
  ]

133:                                              ; preds = %132
  %134 = call ptr @build_string(i32 noundef 1, ptr noundef nonnull @.str.14) #19
  br label %168

135:                                              ; preds = %132
  %136 = load ptr, ptr @c_global_trees, align 16, !tbaa !59
  %137 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 1023
  %140 = load ptr, ptr @integer_types, align 16, !tbaa !59
  %141 = getelementptr inbounds %struct.tree_type, ptr %140, i64 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 1023
  %144 = udiv i32 %139, %143
  %145 = call ptr @build_string(i32 noundef %144, ptr noundef nonnull @.str.27) #19
  br label %168

146:                                              ; preds = %132
  %147 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 1), align 8, !tbaa !59
  %148 = getelementptr inbounds %struct.tree_type, ptr %147, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 1023
  %151 = load ptr, ptr @integer_types, align 16, !tbaa !59
  %152 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, 1023
  %155 = udiv i32 %150, %154
  %156 = call ptr @build_string(i32 noundef %155, ptr noundef nonnull @.str.28) #19
  br label %168

157:                                              ; preds = %132
  %158 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !59
  %159 = getelementptr inbounds %struct.tree_type, ptr %158, i64 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 1023
  %162 = load ptr, ptr @integer_types, align 16, !tbaa !59
  %163 = getelementptr inbounds %struct.tree_type, ptr %162, i64 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 1023
  %166 = udiv i32 %161, %165
  %167 = call ptr @build_string(i32 noundef %166, ptr noundef nonnull @.str.28) #19
  br label %168

168:                                              ; preds = %133, %135, %146, %157, %126
  %169 = phi ptr [ %130, %126 ], [ %134, %133 ], [ %145, %135 ], [ %156, %146 ], [ %167, %157 ]
  %170 = getelementptr inbounds %struct.tree_common, ptr %169, i64 0, i32 2
  switch i32 %19, label %174 [
    i32 62, label %173
    i32 64, label %172
    i32 63, label %171
  ], !prof !185

171:                                              ; preds = %168
  br label %174

172:                                              ; preds = %168
  br label %174

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %168, %173, %172, %171
  %175 = phi ptr [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 41), %173 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 40), %172 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 39), %171 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 38), %168 ]
  %176 = load ptr, ptr %175, align 8, !tbaa !59
  store ptr %176, ptr %170, align 8, !tbaa !70
  %177 = call ptr @fix_string_type(ptr noundef %169) #19
  store ptr %177, ptr %1, align 8, !tbaa !59
  br i1 %73, label %197, label %178, !prof !152

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !179
  %181 = ptrtoint ptr %180 to i64
  %182 = sub i64 0, %181
  %183 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 5
  store i64 %182, ptr %183, align 8, !tbaa !173
  %184 = icmp sgt i64 %182, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !176
  %188 = ptrtoint ptr %187 to i64
  %189 = sub i64 %188, %181
  %190 = icmp sgt i64 %189, %182
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = getelementptr inbounds i8, ptr %180, i64 %182
  %193 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 2
  store ptr %192, ptr %193, align 8, !tbaa !177
  %194 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 3
  store ptr %192, ptr %194, align 8, !tbaa !175
  br label %197

195:                                              ; preds = %185, %178
  %196 = getelementptr inbounds i8, ptr %180, i64 %182
  call void @obstack_free(ptr noundef nonnull %5, ptr noundef %196) #19
  br label %197

197:                                              ; preds = %191, %195, %174
  %198 = icmp eq i8 %14, 0
  %199 = select i1 %198, i32 %19, i32 66, !prof !152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #19
  ret i32 %199
}

declare i32 @objc_is_reserved_word(ptr noundef) local_unnamed_addr #3

declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @cpp_spell_token(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @c_common_no_more_pch() local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare zeroext i8 @cpp_interpret_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #3

declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cpp_macro_definition(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #3

declare void @cpp_interpret_integer(ptr dead_on_unwind writable sret(%struct.cpp_num) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

declare void @cpp_num_sign_extend(ptr dead_on_unwind writable sret(%struct.cpp_num) align 8, ptr noundef byval(%struct.cpp_num) align 8, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @emit_diagnostic(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_complex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @float_const_decimal64_p() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @interpret_fixed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !58 {
  %3 = alloca %struct.fixed_value, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = zext i32 %5 to i64
  %7 = and i32 %1, 1048576
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %1, 4096
  %10 = icmp eq i32 %9, 0
  %11 = trunc i32 %1 to i8
  %12 = and i8 %11, -16
  br i1 %8, label %22, label %13

13:                                               ; preds = %2
  br i1 %10, label %18, label %14

14:                                               ; preds = %13
  switch i8 %12, label %17 [
    i8 64, label %31
    i8 32, label %15
    i8 16, label %16
  ]

15:                                               ; preds = %14
  br label %31

16:                                               ; preds = %14
  br label %31

17:                                               ; preds = %14
  br label %31

18:                                               ; preds = %13
  switch i8 %12, label %21 [
    i8 64, label %31
    i8 32, label %19
    i8 16, label %20
  ]

19:                                               ; preds = %18
  br label %31

20:                                               ; preds = %18
  br label %31

21:                                               ; preds = %18
  br label %31

22:                                               ; preds = %2
  br i1 %10, label %27, label %23

23:                                               ; preds = %22
  switch i8 %12, label %26 [
    i8 64, label %31
    i8 32, label %24
    i8 16, label %25
  ]

24:                                               ; preds = %23
  br label %31

25:                                               ; preds = %23
  br label %31

26:                                               ; preds = %23
  br label %31

27:                                               ; preds = %22
  switch i8 %12, label %30 [
    i8 64, label %31
    i8 32, label %28
    i8 16, label %29
  ]

28:                                               ; preds = %27
  br label %31

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %27, %23, %18, %14, %24, %26, %25, %28, %30, %29, %15, %17, %16, %19, %21, %20
  %32 = phi i64 [ -3, %24 ], [ -2, %26 ], [ -3, %25 ], [ -2, %28 ], [ -1, %30 ], [ -2, %29 ], [ -3, %15 ], [ -2, %17 ], [ -3, %16 ], [ -2, %19 ], [ -1, %21 ], [ -2, %20 ], [ -4, %14 ], [ -3, %18 ], [ -4, %23 ], [ -3, %27 ]
  %33 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 87), %24 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 86), %26 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 85), %25 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 83), %28 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 82), %30 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 81), %29 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 71), %15 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 70), %17 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 69), %16 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 67), %19 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 66), %21 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 65), %20 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 72), %14 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 68), %18 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 88), %23 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 84), %27 ]
  %34 = add nsw i64 %32, %6
  %35 = load ptr, ptr %33, align 8, !tbaa !59
  %36 = add nsw i64 %34, 1
  %37 = alloca i8, i64 %36, align 16
  %38 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %37, ptr align 1 %39, i64 %34, i1 false)
  %40 = getelementptr inbounds i8, ptr %37, i64 %34
  store i8 0, ptr %40, align 1, !tbaa !70
  %41 = load i64, ptr %35, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %35) #19
  br label %51

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  call void @fixed_from_string(ptr noundef nonnull %3, ptr noundef nonnull %37, i32 noundef %52) #19
  %53 = call ptr @build_fixed(ptr noundef nonnull %35, ptr noundef nonnull byval(%struct.fixed_value) align 8 %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret ptr %53
}

declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @c_common_type_for_mode(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @excess_precision_type(ptr noundef) local_unnamed_addr #3

declare void @real_from_string3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare void @real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare ptr @convert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fixed_from_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_fixed(ptr noundef, ptr noundef byval(%struct.fixed_value) align 8) local_unnamed_addr #3

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_cpp_backup_tokens(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cpp_interpret_string_notranslate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fix_string_type(ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cpp_interpret_charconst(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

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
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @init_c_lex, ptr @get_fileinfo, i64 1}
!36 = !{ptr @init_c_lex, ptr @cpp_get_callbacks, i64 1}
!37 = !{ptr @get_fileinfo, ptr @splay_tree_new, i64 1}
!38 = !{ptr @get_fileinfo, ptr @splay_tree_lookup, i64 1}
!39 = !{ptr @get_fileinfo, ptr @xmalloc, i64 1}
!40 = !{ptr @get_fileinfo, ptr @splay_tree_insert, i64 1}
!41 = !{ptr @c_lex_with_flags, ptr @cpp_get_token_with_location, i64 2660351}
!42 = !{ptr @c_lex_with_flags, ptr @cpp_classify_number, i64 125453}
!43 = !{ptr @c_lex_with_flags, ptr @cpp_get_options, i64 125453}
!44 = !{ptr @c_lex_with_flags, ptr @cpp_interpret_integer, i64 125453}
!45 = !{ptr @c_lex_with_flags, ptr @cpp_num_sign_extend, i64 125453}
!46 = !{ptr @c_lex_with_flags, ptr @build_int_cst_wide, i64 125458}
!47 = !{ptr @c_lex_with_flags, ptr @cpp_interpret_charconst, i64 5}
!48 = !{ptr @c_lex_with_flags, ptr @lex_string, i64 68}
!49 = !{ptr @c_lex_with_flags, ptr @c_common_no_more_pch, i64 1}
!50 = !{ptr @lex_string, ptr @cpp_get_token, i64 68}
!51 = !{ptr @lex_string, ptr @_cpp_backup_tokens, i64 68}
!52 = !{ptr @lex_string, ptr @cpp_interpret_string, i64 67}
!53 = !{ptr @lex_string, ptr @cpp_interpret_string_notranslate, i64 1}
!54 = !{ptr @lex_string, ptr @build_string, i64 68}
!55 = !{ptr @lex_string, ptr @free, i64 68}
!56 = !{ptr @lex_string, ptr @fix_string_type, i64 68}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!64, !60, i64 8}
!64 = !{!"_IO_FILE", !65, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !65, i64 112, !65, i64 116, !66, i64 120, !67, i64 128, !61, i64 130, !61, i64 131, !60, i64 136, !66, i64 144, !60, i64 152, !60, i64 160, !60, i64 168, !60, i64 176, !66, i64 184, !65, i64 192, !61, i64 196}
!65 = !{!"int", !61, i64 0}
!66 = !{!"long", !61, i64 0}
!67 = !{!"short", !61, i64 0}
!68 = !{!64, !60, i64 16}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{!61, !61, i64 0}
!71 = !{!64, !60, i64 40}
!72 = !{!64, !60, i64 48}
!73 = !{!64, !65, i64 0}
!74 = !{!65, !65, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!"function_entry_count", i64 1}
!79 = !{!"branch_weights", i32 1, i32 0}
!80 = !{!81, !65, i64 0}
!81 = !{!"c_fileinfo", !65, i64 0, !67, i64 4, !67, i64 6}
!82 = !{!83, !60, i64 0}
!83 = !{!"cpp_callbacks", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !60, i64 112, !60, i64 120, !60, i64 128}
!84 = !{!83, !60, i64 48}
!85 = !{!83, !60, i64 56}
!86 = !{!83, !60, i64 64}
!87 = !{!83, !60, i64 72}
!88 = !{!"branch_weights", i32 0, i32 1}
!89 = !{!83, !60, i64 32}
!90 = !{!83, !60, i64 40}
!91 = !{!92, !66, i64 8}
!92 = !{!"splay_tree_node_s", !66, i64 0, !66, i64 8, !60, i64 16, !60, i64 24}
!93 = !{!81, !67, i64 4}
!94 = !{!81, !67, i64 6}
!95 = !{!"function_entry_count", i64 345227}
!96 = !{!"c-lex.c;cb_line_change"}
!97 = !{!"branch_weights", i32 1, i32 345226}
!98 = !{!99, !65, i64 0}
!99 = !{!"cpp_token", !65, i64 0, !65, i64 4, !67, i64 6, !61, i64 8}
!100 = !{!101, !60, i64 8}
!101 = !{!"cpp_string", !65, i64 0, !60, i64 8}
!102 = !{!103, !61, i64 16}
!103 = !{!"", !60, i64 0, !65, i64 8, !65, i64 12, !61, i64 16}
!104 = !{!105, !60, i64 24}
!105 = !{!"gcc_debug_hooks", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !60, i64 112, !60, i64 120, !60, i64 128, !60, i64 136, !60, i64 144, !60, i64 152, !60, i64 160, !60, i64 168, !60, i64 176, !60, i64 184, !60, i64 192, !60, i64 200, !60, i64 208, !60, i64 216, !60, i64 224, !60, i64 232, !60, i64 240, !65, i64 248}
!106 = !{!107, !65, i64 12}
!107 = !{!"line_map", !60, i64 0, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !61, i64 21, !65, i64 22}
!108 = !{!107, !65, i64 8}
!109 = !{!105, !60, i64 32}
!110 = !{!111, !60, i64 0}
!111 = !{!"cpp_hashnode", !112, i64 0, !65, i64 16, !65, i64 16, !61, i64 17, !65, i64 18, !65, i64 18, !61, i64 24}
!112 = !{!"ht_identifier", !60, i64 0, !65, i64 8, !65, i64 12}
!113 = !{!103, !60, i64 0}
!114 = !{!92, !66, i64 0}
!115 = !{!"function_entry_count", i64 5}
!116 = !{!"branch_weights", i32 1, i32 4}
!117 = !{!"branch_weights", i32 3, i32 1, i32 0}
!118 = !{!107, !65, i64 16}
!119 = !{!105, !60, i64 40}
!120 = !{!107, !60, i64 0}
!121 = !{!105, !60, i64 48}
!122 = !{!"branch_weights", i32 4, i32 0}
!123 = !{!"function_entry_count", i64 2660351}
!124 = !{!"branch_weights", i32 2660351, i32 0}
!125 = !{!"branch_weights", i32 1953574, i32 0, i32 581251, i32 125453, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!126 = !{!"branch_weights", i32 0, i32 0, i32 125453, i32 0}
!127 = !{!"branch_weights", i32 68090, i32 57363}
!128 = !{!"branch_weights", i32 22173, i32 45917}
!129 = !{!130, !66, i64 88}
!130 = !{!"cpp_options", !65, i64 0, !65, i64 4, !61, i64 8, !61, i64 9, !61, i64 10, !61, i64 11, !61, i64 12, !61, i64 13, !61, i64 14, !61, i64 15, !61, i64 16, !61, i64 17, !61, i64 18, !61, i64 19, !61, i64 20, !61, i64 21, !61, i64 22, !61, i64 23, !61, i64 24, !61, i64 25, !61, i64 26, !61, i64 27, !61, i64 28, !61, i64 29, !61, i64 30, !61, i64 31, !61, i64 32, !61, i64 33, !61, i64 34, !61, i64 35, !61, i64 36, !61, i64 37, !61, i64 38, !61, i64 39, !61, i64 40, !61, i64 41, !61, i64 42, !60, i64 48, !60, i64 56, !60, i64 64, !65, i64 72, !61, i64 76, !61, i64 77, !131, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !61, i64 120, !61, i64 121, !61, i64 122, !61, i64 123, !61, i64 124}
!131 = !{!"", !65, i64 0, !61, i64 4, !61, i64 5, !61, i64 6, !61, i64 7}
!132 = !{i64 0, i64 8, !133, i64 8, i64 8, !133, i64 16, i64 1, !70, i64 17, i64 1, !70}
!133 = !{!66, !66, i64 0}
!134 = !{!135, !66, i64 8}
!135 = !{!"cpp_num", !66, i64 0, !66, i64 8, !61, i64 16, !61, i64 17}
!136 = !{!135, !66, i64 0}
!137 = !{!"branch_weights", i32 125383, i32 70}
!138 = !{!"branch_weights", i32 70, i32 0}
!139 = distinct !{!139, !76, !77}
!140 = !{!"branch_weights", i32 0, i32 70}
!141 = !{!"branch_weights", i32 125383, i32 0}
!142 = !{!"branch_weights", i32 0, i32 125383}
!143 = distinct !{!143, !76, !77}
!144 = !{!"branch_weights", i32 118163, i32 7220}
!145 = !{!"branch_weights", i32 0, i32 118163}
!146 = !{!"branch_weights", i32 0, i32 125453}
!147 = !{!"branch_weights", i32 125453, i32 0}
!148 = !{i32 0, i32 256}
!149 = !{!67, !67, i64 0}
!150 = !{!"branch_weights", i32 5, i32 0}
!151 = !{!"branch_weights", i32 0, i32 5}
!152 = !{!"branch_weights", i32 68, i32 0}
!153 = !{!99, !67, i64 6}
!154 = !{!"branch_weights", i32 2660350, i32 1}
!155 = !{!156, !60, i64 1784}
!156 = !{!"gcc_target", !157, i64 0, !159, i64 368, !160, i64 664, !65, i64 744, !60, i64 752, !60, i64 760, !60, i64 768, !60, i64 776, !60, i64 784, !60, i64 792, !60, i64 800, !60, i64 808, !60, i64 816, !60, i64 824, !60, i64 832, !60, i64 840, !60, i64 848, !60, i64 856, !60, i64 864, !60, i64 872, !60, i64 880, !60, i64 888, !60, i64 896, !60, i64 904, !60, i64 912, !60, i64 920, !60, i64 928, !60, i64 936, !60, i64 944, !60, i64 952, !60, i64 960, !60, i64 968, !60, i64 976, !60, i64 984, !60, i64 992, !60, i64 1000, !60, i64 1008, !60, i64 1016, !60, i64 1024, !60, i64 1032, !60, i64 1040, !60, i64 1048, !60, i64 1056, !66, i64 1064, !66, i64 1072, !60, i64 1080, !60, i64 1088, !60, i64 1096, !60, i64 1104, !60, i64 1112, !60, i64 1120, !60, i64 1128, !60, i64 1136, !60, i64 1144, !60, i64 1152, !60, i64 1160, !60, i64 1168, !161, i64 1176, !60, i64 1232, !60, i64 1240, !60, i64 1248, !60, i64 1256, !60, i64 1264, !60, i64 1272, !60, i64 1280, !60, i64 1288, !60, i64 1296, !60, i64 1304, !60, i64 1312, !60, i64 1320, !60, i64 1328, !60, i64 1336, !60, i64 1344, !60, i64 1352, !60, i64 1360, !60, i64 1368, !60, i64 1376, !60, i64 1384, !60, i64 1392, !60, i64 1400, !60, i64 1408, !60, i64 1416, !60, i64 1424, !60, i64 1432, !60, i64 1440, !60, i64 1448, !60, i64 1456, !66, i64 1464, !162, i64 1472, !60, i64 1664, !60, i64 1672, !60, i64 1680, !60, i64 1688, !60, i64 1696, !60, i64 1704, !60, i64 1712, !60, i64 1720, !60, i64 1728, !60, i64 1736, !60, i64 1744, !60, i64 1752, !60, i64 1760, !60, i64 1768, !60, i64 1776, !163, i64 1784, !164, i64 1792, !165, i64 1896, !166, i64 1968, !60, i64 2016, !61, i64 2024, !61, i64 2025, !61, i64 2026, !61, i64 2027, !61, i64 2028, !61, i64 2029, !61, i64 2030, !61, i64 2031, !61, i64 2032, !61, i64 2033, !61, i64 2034, !61, i64 2035}
!157 = !{!"asm_out", !60, i64 0, !60, i64 8, !60, i64 16, !158, i64 24, !158, i64 56, !60, i64 88, !60, i64 96, !60, i64 104, !60, i64 112, !60, i64 120, !60, i64 128, !60, i64 136, !60, i64 144, !60, i64 152, !60, i64 160, !60, i64 168, !60, i64 176, !60, i64 184, !60, i64 192, !60, i64 200, !60, i64 208, !60, i64 216, !60, i64 224, !60, i64 232, !60, i64 240, !60, i64 248, !60, i64 256, !60, i64 264, !60, i64 272, !60, i64 280, !60, i64 288, !60, i64 296, !60, i64 304, !60, i64 312, !60, i64 320, !60, i64 328, !60, i64 336, !60, i64 344, !60, i64 352, !60, i64 360}
!158 = !{!"asm_int_op", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24}
!159 = !{!"sched", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !60, i64 112, !60, i64 120, !60, i64 128, !60, i64 136, !60, i64 144, !60, i64 152, !60, i64 160, !60, i64 168, !60, i64 176, !60, i64 184, !60, i64 192, !60, i64 200, !60, i64 208, !60, i64 216, !60, i64 224, !60, i64 232, !60, i64 240, !60, i64 248, !60, i64 256, !60, i64 264, !60, i64 272, !60, i64 280, !60, i64 288}
!160 = !{!"vectorize", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72}
!161 = !{!"addr_space", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48}
!162 = !{!"calls", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !60, i64 112, !60, i64 120, !60, i64 128, !60, i64 136, !60, i64 144, !60, i64 152, !60, i64 160, !60, i64 168, !60, i64 176, !60, i64 184}
!163 = !{!"c", !60, i64 0}
!164 = !{!"cxx", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96}
!165 = !{!"emutls", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !61, i64 64, !61, i64 65}
!166 = !{!"target_option_hooks", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40}
!167 = !{!168, !61, i64 47}
!168 = !{!"real_format", !60, i64 0, !60, i64 8, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !65, i64 36, !65, i64 40, !61, i64 44, !61, i64 45, !61, i64 46, !61, i64 47, !61, i64 48, !61, i64 49, !61, i64 50, !61, i64 51}
!169 = !{!"function_entry_count", i64 68}
!170 = !{!"c-lex.c;lex_string"}
!171 = !{i64 0, i64 4, !74, i64 8, i64 8, !59}
!172 = !{!"branch_weights", i32 68, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!173 = !{!174, !66, i64 40}
!174 = !{!"obstack", !66, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !66, i64 40, !65, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !65, i64 80, !65, i64 80, !65, i64 80}
!175 = !{!174, !60, i64 24}
!176 = !{!174, !60, i64 32}
!177 = !{!174, !60, i64 16}
!178 = !{!174, !65, i64 48}
!179 = !{!174, !60, i64 8}
!180 = !{!"branch_weights", i32 1, i32 67}
!181 = !{!"VP", i32 0, i64 68, i64 -7510873158619846991, i64 67, i64 -520643852678745328, i64 1}
!182 = !{ptr @cpp_interpret_string, ptr @cpp_interpret_string_notranslate}
!183 = !{!"branch_weights", i32 0, i32 68}
!184 = !{!101, !65, i64 0}
!185 = !{!"branch_weights", i32 68, i32 0, i32 0, i32 0}
