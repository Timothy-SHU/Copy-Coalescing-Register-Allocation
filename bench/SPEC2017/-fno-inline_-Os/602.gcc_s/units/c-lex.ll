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
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.c_fileinfo = type { i32, i16, i16 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cpp_num = type { i64, i64, i8, i8 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.fixed_value = type { %struct.double_int, i32 }

@pending_lang_change = dso_local local_unnamed_addr global i32 0, align 4
@c_header_level = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"<top level>\00", align 1
@flag_detailed_statistics = external local_unnamed_addr global i32, align 4
@header_time = internal unnamed_addr global i32 0, align 4
@body_time = internal unnamed_addr global i32 0, align 4
@parse_in = external local_unnamed_addr global ptr, align 8
@debug_info_level = external local_unnamed_addr global i32, align 4
@write_symbols = external local_unnamed_addr global i32, align 4
@input_location = external local_unnamed_addr global i32, align 4
@flag_no_ident = external local_unnamed_addr global i32, align 4
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s\22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\09.ident\09\00", align 1
@warn_unknown_pragmas = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ignoring #pragma %s %s\00", align 1
@line_table = external local_unnamed_addr global ptr, align 8
@debug_hooks = external local_unnamed_addr global ptr, align 8
@file_info_tree = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"\0A******\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"header files (total)\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"main file (total)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ratio = %g : 1\0A\00", align 1
@c_lex_with_flags.no_more_pch = internal unnamed_addr global i1 false, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@global_dc = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"c-lex.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@c_language = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"stray %<@%> in program\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"stray %qs in program\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"stray %qc in program\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"stray %<\\%o%> in program\00", align 1
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
@switch.table.lex_charconst = private unnamed_addr constant [3 x ptr] [ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), ptr @c_global_trees, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 1)], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_c_lex() local_unnamed_addr #0 !prof !98 {
  %1 = tail call ptr @get_fileinfo(ptr noundef nonnull @.str) #12
  %2 = load i32, ptr @flag_detailed_statistics, align 4, !tbaa !99
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4, !prof !103

4:                                                ; preds = %0
  store i32 0, ptr @header_time, align 4, !tbaa !99
  %5 = tail call i64 @get_run_time() #13
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr @body_time, align 4, !tbaa !99
  store i32 %6, ptr %1, align 4, !tbaa !104
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %9 = tail call ptr @cpp_get_callbacks(ptr noundef %8) #13
  store ptr @cb_line_change, ptr %9, align 8, !tbaa !109
  %10 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 6
  store ptr @cb_ident, ptr %10, align 8, !tbaa !111
  %11 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 7
  store ptr @cb_def_pragma, ptr %11, align 8, !tbaa !112
  %12 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 8
  store ptr @c_common_valid_pch, ptr %12, align 8, !tbaa !113
  %13 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 9
  store ptr @c_common_read_pch, ptr %13, align 8, !tbaa !114
  %14 = load i32, ptr @debug_info_level, align 4, !tbaa !99
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %21, !prof !115

16:                                               ; preds = %7
  %17 = load i32, ptr @write_symbols, align 4
  switch i32 %17, label %21 [
    i32 6, label %18
    i32 3, label %18
  ]

18:                                               ; preds = %16, %16
  %19 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 4
  store ptr @cb_define, ptr %19, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct.cpp_callbacks, ptr %9, i64 0, i32 5
  store ptr @cb_undef, ptr %20, align 8, !tbaa !117
  br label %21

21:                                               ; preds = %16, %18, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_fileinfo(ptr noundef %0) local_unnamed_addr #0 !prof !98 {
  %2 = load ptr, ptr @file_info_tree, align 8, !tbaa !107
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !103

4:                                                ; preds = %1
  %5 = tail call ptr @splay_tree_new(ptr noundef nonnull @strcmp, ptr noundef null, ptr noundef nonnull @free) #13
  store ptr %5, ptr @file_info_tree, align 8, !tbaa !107
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = ptrtoint ptr %0 to i64
  %9 = tail call ptr @splay_tree_lookup(ptr noundef %7, i64 noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !103

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.splay_tree_node_s, ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !118
  %14 = inttoptr i64 %13 to ptr
  br label %22

15:                                               ; preds = %6
  %16 = tail call ptr @xmalloc(i64 noundef 8) #13
  store i32 0, ptr %16, align 4, !tbaa !104
  %17 = getelementptr inbounds %struct.c_fileinfo, ptr %16, i64 0, i32 1
  store i16 0, ptr %17, align 4, !tbaa !121
  %18 = getelementptr inbounds %struct.c_fileinfo, ptr %16, i64 0, i32 2
  store i16 1, ptr %18, align 2, !tbaa !122
  %19 = load ptr, ptr @file_info_tree, align 8, !tbaa !107
  %20 = ptrtoint ptr %16 to i64
  %21 = tail call ptr @splay_tree_insert(ptr noundef %19, i64 noundef %8, i64 noundef %20) #13
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %14, %11 ], [ %16, %15 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i64 @get_run_time() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal void @cb_line_change(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 !prof !123 !PGOFuncName !124 {
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 22
  %7 = icmp ne i32 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %11, label %9, !prof !125

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8, !tbaa !126
  store i32 %10, ptr @input_location, align 4, !tbaa !99
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_ident(ptr noundef %0, i32 %1, ptr noundef %2) #0 !prof !128 !PGOFuncName !129 {
  %4 = alloca %struct.cpp_string, align 8
  %5 = load i32, ptr @flag_no_ident, align 4, !tbaa !99
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %8 = call zeroext i8 @cpp_interpret_string(ptr noundef %0, ptr noundef %2, i64 noundef 1, ptr noundef nonnull %4, i32 noundef 61) #13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %13) #12
  %15 = load ptr, ptr %12, align 8, !tbaa !130
  call void @free(ptr noundef %15) #12
  br label %16

16:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %17

17:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_def_pragma(ptr noundef %0, i32 noundef %1) #0 !prof !128 !PGOFuncName !132 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !99
  %5 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %5) #13
  %6 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !133
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i32
  %10 = icmp sgt i32 %4, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = call ptr @cpp_get_token(ptr noundef %0) #13
  %13 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 22
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %12) #13
  %18 = call ptr @cpp_get_token(ptr noundef %0) #13
  %19 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 53
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %18) #13
  br label %24

24:                                               ; preds = %16, %22, %11
  %25 = phi ptr [ %23, %22 ], [ @.str.3, %16 ], [ @.str.3, %11 ]
  %26 = phi ptr [ %17, %22 ], [ %17, %16 ], [ @.str.3, %11 ]
  %27 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1, i32 noundef 212, ptr noundef nonnull @.str.4, ptr noundef %26, ptr noundef %25) #13
  br label %28

28:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: optsize
declare i32 @c_common_valid_pch(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: optsize
declare void @c_common_read_pch(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_define(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !prof !128 !PGOFuncName !135 {
  %4 = load ptr, ptr @line_table, align 8, !tbaa !107
  %5 = tail call ptr @linemap_lookup(ptr noundef %4, i32 noundef %1) #13
  %6 = load ptr, ptr @debug_hooks, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !138
  %11 = sub i32 %1, %10
  %12 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = zext nneg i8 %13 to i32
  %15 = lshr i32 %11, %14
  %16 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !140
  %18 = add i32 %15, %17
  %19 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %2) #13
  tail call void %8(i32 noundef %18, ptr noundef %19) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_undef(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 !prof !128 !PGOFuncName !141 {
  %4 = load ptr, ptr @line_table, align 8, !tbaa !107
  %5 = tail call ptr @linemap_lookup(ptr noundef %4, i32 noundef %1) #13
  %6 = load ptr, ptr @debug_hooks, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !142
  %9 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !138
  %11 = sub i32 %1, %10
  %12 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = zext nneg i8 %13 to i32
  %15 = lshr i32 %11, %14
  %16 = getelementptr inbounds %struct.line_map, ptr %5, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !140
  %18 = add i32 %15, %17
  %19 = load ptr, ptr %2, align 8, !tbaa !143
  tail call void %8(i32 noundef %18, ptr noundef %19) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare zeroext i8 @cpp_interpret_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #6

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_macro_definition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) #7

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #2

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_time_statistics() local_unnamed_addr #0 !prof !128 {
  %1 = alloca %struct.expanded_location, align 8
  %2 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %2) #13
  %3 = load ptr, ptr %1, align 8, !tbaa !146
  %4 = call ptr @get_fileinfo(ptr noundef %3) #12
  %5 = call i64 @get_run_time() #13
  %6 = trunc i64 %5 to i32
  %7 = load i32, ptr @body_time, align 4, !tbaa !99
  %8 = sub i32 %6, %7
  %9 = load i32, ptr %4, align 4, !tbaa !104
  %10 = add nsw i32 %8, %9
  store i32 %10, ptr %4, align 4, !tbaa !104
  %11 = load ptr, ptr @stderr, align 8, !tbaa !107
  %12 = call i64 @fwrite(ptr nonnull @.str.5, i64 8, i64 1, ptr %11) #15
  %13 = load i32, ptr @header_time, align 4, !tbaa !99
  %14 = sext i32 %13 to i64
  call void @print_time(ptr noundef nonnull @.str.6, i64 noundef %14) #13
  %15 = load i32, ptr @body_time, align 4, !tbaa !99
  %16 = sub nsw i32 %6, %15
  %17 = sext i32 %16 to i64
  call void @print_time(ptr noundef nonnull @.str.7, i64 noundef %17) #13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !107
  %19 = load i32, ptr @header_time, align 4, !tbaa !99
  %20 = sitofp i32 %19 to double
  %21 = load i32, ptr @body_time, align 4, !tbaa !99
  %22 = sub nsw i32 %6, %21
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %20, %23
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.8, double noundef %24) #16
  %26 = load ptr, ptr @stderr, align 8, !tbaa !107
  %27 = call i64 @fwrite(ptr nonnull @.str.5, i64 8, i64 1, ptr %26) #15
  %28 = load ptr, ptr @file_info_tree, align 8, !tbaa !107
  %29 = call i32 @splay_tree_foreach(ptr noundef %28, ptr noundef nonnull @dump_one_header, ptr noundef null) #13
  ret void
}

; Function Attrs: optsize
declare void @print_time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_one_header(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 !prof !128 !PGOFuncName !147 {
  %3 = load i64, ptr %0, align 8, !tbaa !148
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !118
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4, !tbaa !104
  %9 = sext i32 %8 to i64
  tail call void @print_time(ptr noundef %4, i64 noundef %9) #13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fe_file_change(ptr noundef readonly %0) local_unnamed_addr #0 !prof !149 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3, !prof !150

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %43 [
    i8 0, label %6
    i8 1, label %35
  ], !prof !151

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !152
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %43, label %10, !prof !103

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !138
  %13 = getelementptr %struct.line_map, ptr %0, i64 -1, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !138
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
  %27 = load i32, ptr %26, align 8, !tbaa !140
  %28 = add i32 %27, %25
  br label %29

29:                                               ; preds = %24, %10
  %30 = phi i32 [ %28, %24 ], [ 0, %10 ]
  store i32 %12, ptr @input_location, align 4, !tbaa !99
  %31 = load ptr, ptr @debug_hooks, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !153
  %34 = load ptr, ptr %0, align 8, !tbaa !154
  tail call void %33(i32 noundef %30, ptr noundef %34) #13
  br label %43

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !138
  store i32 %37, ptr @input_location, align 4, !tbaa !99
  %38 = load ptr, ptr @debug_hooks, align 8, !tbaa !107
  %39 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !155
  %41 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !140
  tail call void %40(i32 noundef %42) #13
  br label %43

43:                                               ; preds = %3, %35, %6, %29
  %44 = load ptr, ptr %0, align 8, !tbaa !154
  tail call fastcc void @update_header_times(ptr noundef %44) #12
  %45 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !138
  store i32 %46, ptr @input_location, align 4, !tbaa !99
  br label %47

47:                                               ; preds = %1, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_header_times(ptr noundef %0) unnamed_addr #0 !prof !156 !PGOFuncName !157 {
  %2 = load i32, ptr @flag_detailed_statistics, align 4, !tbaa !99
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4, !prof !158

4:                                                ; preds = %1
  %5 = tail call i64 @get_run_time() #13
  %6 = trunc i64 %5 to i32
  %7 = tail call ptr @get_fileinfo(ptr noundef %0) #12
  %8 = load i32, ptr @body_time, align 4, !tbaa !99
  %9 = sub nsw i32 %6, %8
  %10 = load i32, ptr @header_time, align 4, !tbaa !99
  %11 = add nsw i32 %10, %9
  store i32 %11, ptr @header_time, align 4, !tbaa !99
  %12 = load i32, ptr %7, align 4, !tbaa !104
  %13 = add nsw i32 %12, %9
  store i32 %13, ptr %7, align 4, !tbaa !104
  store i32 %6, ptr @body_time, align 4, !tbaa !99
  br label %14

14:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @c_lex_with_flags(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 !prof !159 {
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  %7 = load i8, ptr @timevar_enable, align 1, !tbaa !160
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !161

9:                                                ; preds = %4
  tail call void @timevar_push_1(i32 noundef 42) #13
  br label %10

10:                                               ; preds = %9, %4
  br label %11

11:                                               ; preds = %81, %10
  %12 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %13 = call ptr @cpp_get_token_with_location(ptr noundef %12, ptr noundef %1) #13
  %14 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  br label %16

16:                                               ; preds = %70, %11
  %17 = phi i8 [ %15, %11 ], [ %59, %70 ]
  %18 = phi ptr [ %13, %11 ], [ %57, %70 ]
  switch i8 %17, label %114 [
    i8 72, label %81
    i8 53, label %19
    i8 55, label %23
    i8 52, label %49
    i8 37, label %72
    i8 38, label %72
    i8 60, label %75
    i8 56, label %90
    i8 57, label %90
    i8 58, label %90
    i8 59, label %90
    i8 61, label %93
    i8 62, label %93
    i8 63, label %93
    i8 64, label %93
    i8 65, label %93
    i8 70, label %108
    i8 67, label %113
    i8 68, label %113
    i8 69, label %113
  ], !prof !162

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = getelementptr inbounds i8, ptr %21, i64 -24
  store ptr %22, ptr %0, align 8, !tbaa !107
  br label %116

23:                                               ; preds = %16
  %24 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %25 = call i32 @cpp_classify_number(ptr noundef %24, ptr noundef nonnull %18) #13
  %26 = and i32 %25, 15
  switch i32 %26, label %48 [
    i32 0, label %27
    i32 1, label %33
    i32 2, label %46
  ], !prof !163

27:                                               ; preds = %23
  %28 = load ptr, ptr @global_trees, align 16, !tbaa !107
  store ptr %28, ptr %0, align 8, !tbaa !107
  %29 = load ptr, ptr @global_dc, align 8, !tbaa !107
  %30 = getelementptr inbounds %struct.diagnostic_context, ptr %29, i64 0, i32 1, i64 4
  %31 = load i32, ptr %30, align 8, !tbaa !99
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !99
  br label %116

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !160
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43, !prof !164

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !160
  %40 = load i8, ptr %39, align 1, !tbaa !160
  %41 = icmp eq i8 %40, 48
  %42 = select i1 %41, i8 -128, i8 0, !prof !165
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i8 [ 0, %33 ], [ %42, %37 ]
  %45 = call fastcc ptr @interpret_integer(ptr noundef nonnull %18, i32 noundef %25) #12
  store ptr %45, ptr %0, align 8, !tbaa !107
  br label %116

46:                                               ; preds = %23
  %47 = call fastcc ptr @interpret_float(ptr noundef nonnull %18, i32 noundef %25) #12
  store ptr %47, ptr %0, align 8, !tbaa !107
  br label %116

48:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 344, ptr noundef nonnull @.str.10) #13
  br label %116

49:                                               ; preds = %16
  %50 = load i32, ptr @c_language, align 4, !tbaa !99
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %1, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  br label %55

55:                                               ; preds = %55, %53
  %56 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %57 = call ptr @cpp_get_token_with_location(ptr noundef %56, ptr noundef nonnull %5) #13
  %58 = getelementptr inbounds %struct.cpp_token, ptr %57, i64 0, i32 1
  %59 = load i8, ptr %58, align 4
  switch i8 %59, label %70 [
    i8 72, label %55
    i8 61, label %60
    i8 62, label %60
    i8 63, label %60
    i8 64, label %60
    i8 65, label %60
    i8 53, label %62
  ]

60:                                               ; preds = %55, %55, %55, %55, %55
  %61 = call fastcc i32 @lex_string(ptr noundef nonnull %57, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #12, !range !166
  br label %68

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.cpp_token, ptr %57, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !160
  %65 = getelementptr inbounds i8, ptr %64, i64 -24
  store ptr %65, ptr %0, align 8, !tbaa !107
  %66 = call i32 @objc_is_reserved_word(ptr noundef nonnull %65) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62, %60
  %69 = phi i32 [ %61, %60 ], [ 54, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %116

70:                                               ; preds = %55, %62
  call void (i32, ptr, ...) @error_at(i32 noundef %54, ptr noundef nonnull @.str.11) #13
  %71 = load i32, ptr %5, align 4, !tbaa !99
  store i32 %71, ptr %1, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %16

72:                                               ; preds = %49, %16, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %73 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %74 = call ptr @cpp_spell_token(ptr noundef %73, ptr noundef nonnull %18, ptr noundef nonnull %6, i8 noundef zeroext 1) #13
  store i8 0, ptr %74, align 1, !tbaa !160
  call void (ptr, ...) @error(ptr noundef nonnull @.str.12, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %81

75:                                               ; preds = %16
  %76 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !160
  %78 = load i8, ptr %77, align 1, !tbaa !160
  %79 = zext i8 %78 to i32
  switch i8 %78, label %82 [
    i8 39, label %80
    i8 34, label %80
  ]

80:                                               ; preds = %75, %75
  call void (ptr, ...) @error(ptr noundef nonnull @.str.13, i32 noundef %79) #13
  br label %81

81:                                               ; preds = %16, %80, %89, %88, %72
  br label %11

82:                                               ; preds = %75
  %83 = zext i8 %78 to i64
  %84 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !167
  %86 = and i16 %85, 172
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  call void (ptr, ...) @error(ptr noundef nonnull @.str.14, i32 noundef %79) #13
  br label %81

89:                                               ; preds = %82
  call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %79) #13
  br label %81

90:                                               ; preds = %16, %16, %16, %16
  %91 = zext nneg i8 %17 to i32
  %92 = call fastcc ptr @lex_charconst(ptr noundef nonnull %18) #12
  store ptr %92, ptr %0, align 8, !tbaa !107
  br label %116

93:                                               ; preds = %16, %16, %16, %16, %16
  %94 = and i32 %3, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101, !prof !168

96:                                               ; preds = %93
  %97 = trunc i32 %3 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  %100 = call fastcc i32 @lex_string(ptr noundef nonnull %18, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %99) #12, !range !166
  br label %116

101:                                              ; preds = %93
  %102 = zext nneg i8 %17 to i32
  %103 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !160
  %105 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !160
  %107 = call ptr @build_string(i32 noundef %104, ptr noundef %106) #13
  store ptr %107, ptr %0, align 8, !tbaa !107
  br label %116

108:                                              ; preds = %16
  %109 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3
  %110 = load i32, ptr %109, align 8, !tbaa !160
  %111 = zext i32 %110 to i64
  %112 = call ptr @build_int_cst(ptr noundef null, i64 noundef %111) #13
  store ptr %112, ptr %0, align 8, !tbaa !107
  br label %116

113:                                              ; preds = %16, %16, %16
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 445, ptr noundef nonnull @.str.10) #13
  br label %114

114:                                              ; preds = %16, %113
  %115 = zext i8 %17 to i32
  store ptr null, ptr %0, align 8, !tbaa !107
  br label %116

116:                                              ; preds = %68, %27, %43, %46, %48, %114, %108, %101, %96, %90, %19
  %117 = phi i8 [ 0, %114 ], [ 0, %108 ], [ 0, %96 ], [ 0, %101 ], [ 0, %90 ], [ 0, %19 ], [ 0, %48 ], [ 0, %46 ], [ %44, %43 ], [ 0, %27 ], [ 0, %68 ]
  %118 = phi i32 [ %115, %114 ], [ 70, %108 ], [ %100, %96 ], [ %102, %101 ], [ %91, %90 ], [ 53, %19 ], [ 55, %48 ], [ 55, %46 ], [ 55, %43 ], [ 55, %27 ], [ %69, %68 ]
  %119 = phi ptr [ %18, %114 ], [ %18, %108 ], [ %18, %96 ], [ %18, %101 ], [ %18, %90 ], [ %18, %19 ], [ %18, %48 ], [ %18, %46 ], [ %18, %43 ], [ %18, %27 ], [ %57, %68 ]
  %120 = icmp eq ptr %2, null
  br i1 %120, label %126, label %121, !prof !161

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.cpp_token, ptr %119, i64 0, i32 2
  %123 = load i16, ptr %122, align 2, !tbaa !169
  %124 = trunc i16 %123 to i8
  %125 = or i8 %117, %124
  store i8 %125, ptr %2, align 1, !tbaa !160
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i1, ptr @c_lex_with_flags.no_more_pch, align 1
  br i1 %127, label %129, label %128, !prof !170

128:                                              ; preds = %126
  store i1 true, ptr @c_lex_with_flags.no_more_pch, align 1
  call void @c_common_no_more_pch() #13
  br label %129

129:                                              ; preds = %126, %128
  %130 = load i8, ptr @timevar_enable, align 1, !tbaa !160
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %133, label %132, !prof !161

132:                                              ; preds = %129
  call void @timevar_pop_1(i32 noundef 42) #13
  br label %133

133:                                              ; preds = %132, %129
  ret i32 %118
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_get_token_with_location(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @cpp_classify_number(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_integer(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !171 !PGOFuncName !172 {
  %3 = alloca %struct.cpp_num, align 8
  %4 = alloca %struct.cpp_num, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %5 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %6 = tail call ptr @cpp_get_options(ptr noundef %5) #13
  %7 = load ptr, ptr @parse_in, align 8, !tbaa !107
  call void @cpp_interpret_integer(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %3, ptr noundef %7, ptr noundef %0, i32 noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 44
  %9 = load i64, ptr %8, align 8, !tbaa !173
  call void @cpp_num_sign_extend(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %4, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %9) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %10 = and i32 %1, 4096
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !178
  %14 = load i64, ptr %3, align 8, !tbaa !180
  %15 = call fastcc i32 @narrowest_unsigned_type(i64 noundef %13, i64 noundef %14, i32 noundef %1) #12
  br i1 %11, label %16, label %36, !prof !181

16:                                               ; preds = %2
  %17 = call fastcc i32 @narrowest_signed_type(i64 noundef %13, i64 noundef %14, i32 noundef %1) #12
  %18 = and i32 %1, 3840
  %19 = icmp eq i32 %18, 256
  br i1 %19, label %22, label %20, !prof !182

20:                                               ; preds = %16
  %21 = call i32 @llvm.umin.i32(i32 %15, i32 %17)
  br label %36

22:                                               ; preds = %16
  %23 = icmp ugt i32 %17, %15
  br i1 %23, label %24, label %36, !prof !183

24:                                               ; preds = %22
  %25 = icmp ugt i32 %17, 7
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !107
  br label %63

28:                                               ; preds = %24
  %29 = load i32, ptr @flag_isoc99, align 4, !tbaa !99
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @llvm.umax.i32(i32 %15, i32 8)
  %33 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.16) #13
  br label %36

34:                                               ; preds = %28
  %35 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 202, ptr noundef nonnull @.str.17) #13
  br label %36

36:                                               ; preds = %2, %20, %31, %34, %22
  %37 = phi i32 [ %21, %20 ], [ %17, %34 ], [ %32, %31 ], [ %17, %22 ], [ %15, %2 ]
  %38 = icmp eq i32 %37, 11
  br i1 %38, label %39, label %43, !prof !184

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 10), align 16
  %41 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 9), align 8
  %42 = select i1 %11, ptr %41, ptr %40
  br label %63

43:                                               ; preds = %36
  %44 = zext i32 %37 to i64
  %45 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !107
  %47 = icmp ugt i32 %37, 8
  br i1 %47, label %48, label %63, !prof !185

48:                                               ; preds = %43
  %49 = and i32 %1, 240
  %50 = icmp eq i32 %49, 64
  br i1 %50, label %63, label %51, !prof !186

51:                                               ; preds = %48
  %52 = load i32, ptr @c_language, align 4, !tbaa !99
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr @flag_isoc99, align 4
  %56 = load i32, ptr @cxx_dialect, align 4
  %57 = select i1 %54, i32 %55, i32 %56
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 10, i32 6
  %60 = load i32, ptr @input_location, align 4, !tbaa !99
  %61 = select i1 %11, ptr @.str.19, ptr @.str.18
  %62 = call zeroext i8 (i32, i32, i32, ptr, ...) @emit_diagnostic(i32 noundef %59, i32 noundef %60, i32 noundef 125, ptr noundef nonnull %61) #13
  br label %63

63:                                               ; preds = %26, %43, %48, %51, %39
  %64 = phi ptr [ %42, %39 ], [ %46, %51 ], [ %46, %48 ], [ %46, %43 ], [ %27, %26 ]
  %65 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !178
  %67 = load i64, ptr %3, align 8, !tbaa !180
  %68 = call ptr @build_int_cst_wide(ptr noundef %64, i64 noundef %66, i64 noundef %67) #13
  %69 = and i32 %1, 8192
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71, !prof !187

71:                                               ; preds = %63
  %72 = call ptr @build_int_cst(ptr noundef %64, i64 noundef 0) #13
  %73 = call ptr @build_complex(ptr noundef null, ptr noundef %72, ptr noundef %68) #13
  br label %74

74:                                               ; preds = %71, %63
  %75 = phi ptr [ %73, %71 ], [ %68, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_float(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !188 !PGOFuncName !189 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  %6 = and i32 %1, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8, !prof !190

8:                                                ; preds = %2
  %9 = and i32 %1, -32801
  %10 = or disjoint i32 %9, 32
  %11 = and i32 %1, 8704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19, !prof !191

13:                                               ; preds = %8
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 217, ptr noundef nonnull @.str.20) #13
  %15 = tail call zeroext i8 @float_const_decimal64_p() #13
  %16 = icmp eq i8 %15, 0
  %17 = or i32 %9, 16416
  %18 = select i1 %16, i32 %10, i32 %17, !prof !192
  br label %19

19:                                               ; preds = %13, %8, %2
  %20 = phi i32 [ %10, %8 ], [ %1, %2 ], [ %18, %13 ]
  %21 = and i32 %20, 3145728
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !191

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @interpret_fixed(ptr noundef %0, i32 noundef %20) #12
  br label %443

25:                                               ; preds = %19
  %26 = and i32 %20, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28, !prof !192

28:                                               ; preds = %25
  %29 = trunc i32 %20 to i8
  %30 = and i8 %29, -16
  switch i8 %30, label %35 [
    i8 64, label %31
    i8 16, label %33
  ]

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !107
  br label %71

33:                                               ; preds = %28
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !107
  br label %71

35:                                               ; preds = %28
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !107
  br label %71

37:                                               ; preds = %25
  %38 = and i32 %20, 983040
  switch i32 %38, label %39 [
    i32 0, label %57
    i32 65536, label %40
  ], !prof !193

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %37, %39
  %41 = phi i8 [ 113, %39 ], [ 119, %37 ]
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 104), align 8, !tbaa !194
  %43 = tail call i32 %42(i8 noundef signext %41) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr @input_location, align 4, !tbaa !99
  %47 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %46, i32 noundef 834, ptr noundef nonnull @.str.22) #13
  %48 = tail call ptr @c_common_type_for_mode(i32 noundef %43, i32 noundef 0) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 674, ptr noundef nonnull @.str.10) #13
  br label %71

51:                                               ; preds = %40
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21) #13
  %52 = load ptr, ptr @global_dc, align 8, !tbaa !107
  %53 = getelementptr inbounds %struct.diagnostic_context, ptr %52, i64 0, i32 1, i64 4
  %54 = load i32, ptr %53, align 8, !tbaa !99
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !99
  %56 = load ptr, ptr @global_trees, align 16, !tbaa !107
  br label %443

57:                                               ; preds = %37
  %58 = and i32 %20, 240
  %59 = icmp eq i32 %58, 64
  br i1 %59, label %60, label %62, !prof !190

60:                                               ; preds = %57
  %61 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !107
  br label %71

62:                                               ; preds = %57
  %63 = icmp eq i32 %58, 16
  %64 = load i32, ptr @flag_single_precision_constant, align 4
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %69, !prof !206

67:                                               ; preds = %62
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !107
  br label %71

69:                                               ; preds = %62
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !107
  br label %71

71:                                               ; preds = %45, %50, %67, %69, %60, %31, %35, %33
  %72 = phi ptr [ %32, %31 ], [ %34, %33 ], [ %36, %35 ], [ %61, %60 ], [ %68, %67 ], [ %70, %69 ], [ null, %50 ], [ %48, %45 ]
  %73 = tail call ptr @excess_precision_type(ptr noundef %72) #13
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr %72, ptr %73, !prof !192
  %76 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !160
  %78 = zext i32 %77 to i64
  br i1 %27, label %81, label %79, !prof !192

79:                                               ; preds = %71
  %80 = add nsw i64 %78, -2
  br label %90

81:                                               ; preds = %71
  %82 = and i32 %20, 240
  %83 = icmp ne i32 %82, 32
  %84 = sext i1 %83 to i64
  %85 = shl i32 %20, 18
  %86 = ashr i32 %85, 31
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %84
  %89 = add nsw i64 %88, %78
  br label %90

90:                                               ; preds = %81, %79
  %91 = phi i64 [ %80, %79 ], [ %89, %81 ]
  %92 = add nsw i64 %91, 1
  %93 = alloca i8, i64 %92, align 16
  %94 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %93, ptr align 1 %95, i64 %91, i1 false)
  %96 = getelementptr inbounds i8, ptr %93, i64 %91
  store i8 0, ptr %96, align 1, !tbaa !160
  %97 = load i64, ptr %75, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 14
  br i1 %99, label %100, label %102, !prof !190

100:                                              ; preds = %90
  %101 = tail call i32 @vector_type_mode(ptr noundef nonnull %75) #13
  br label %107

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i32 [ %101, %100 ], [ %106, %102 ]
  call void @real_from_string3(ptr noundef nonnull %3, ptr noundef nonnull %93, i32 noundef %108) #13
  %109 = icmp eq ptr %75, %72
  br i1 %109, label %121, label %110, !prof !192

110:                                              ; preds = %107
  %111 = load i64, ptr %72, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 14
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %124

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  br label %124

121:                                              ; preds = %107
  %122 = call zeroext i8 @real_isinf(ptr noundef nonnull %3) #13
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %413, label %131, !prof !192

124:                                              ; preds = %114, %116
  %125 = phi i32 [ %115, %114 ], [ %120, %116 ]
  call void @real_convert(ptr noundef nonnull %4, i32 noundef %125, ptr noundef nonnull %3) #13
  %126 = call zeroext i8 @real_isinf(ptr noundef nonnull %3) #13
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %131, !prof !192

128:                                              ; preds = %124
  %129 = call zeroext i8 @real_isinf(ptr noundef nonnull %4) #13
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %416, label %131

131:                                              ; preds = %124, %128, %121
  %132 = load i64, ptr %72, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 14
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %137 = load i64, ptr %72, align 8
  br label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  br label %143

143:                                              ; preds = %138, %135
  %144 = phi i64 [ %137, %135 ], [ %132, %138 ]
  %145 = phi i32 [ %136, %135 ], [ %142, %138 ]
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !160
  %149 = icmp eq i8 %148, 8
  br i1 %149, label %204, label %150

150:                                              ; preds = %143
  %151 = and i64 %144, 65535
  %152 = icmp eq i64 %151, 14
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %155 = load i64, ptr %72, align 8
  br label %161

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  br label %161

161:                                              ; preds = %156, %153
  %162 = phi i64 [ %155, %153 ], [ %144, %156 ]
  %163 = phi i32 [ %154, %153 ], [ %160, %156 ]
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !160
  %167 = icmp eq i8 %166, 9
  br i1 %167, label %204, label %168

168:                                              ; preds = %161
  %169 = and i64 %162, 65535
  %170 = icmp eq i64 %169, 14
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %173 = load i64, ptr %72, align 8
  br label %179

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = lshr i32 %176, 16
  %178 = and i32 %177, 255
  br label %179

179:                                              ; preds = %174, %171
  %180 = phi i64 [ %173, %171 ], [ %162, %174 ]
  %181 = phi i32 [ %172, %171 ], [ %178, %174 ]
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !160
  %185 = icmp eq i8 %184, 11
  br i1 %185, label %204, label %186

186:                                              ; preds = %179
  %187 = and i64 %180, 65535
  %188 = icmp eq i64 %187, 14
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %196

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  br label %196

196:                                              ; preds = %191, %189
  %197 = phi i32 [ %190, %189 ], [ %195, %191 ]
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !160
  %201 = icmp eq i8 %200, 17
  br i1 %201, label %202, label %408

202:                                              ; preds = %196
  %203 = load i64, ptr %72, align 8
  br label %204

204:                                              ; preds = %202, %179, %161, %143
  %205 = phi i64 [ %203, %202 ], [ %180, %179 ], [ %162, %161 ], [ %144, %143 ]
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 14
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %210 = load i64, ptr %72, align 8
  br label %216

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = lshr i32 %213, 16
  %215 = and i32 %214, 255
  br label %216

216:                                              ; preds = %211, %208
  %217 = phi i64 [ %210, %208 ], [ %205, %211 ]
  %218 = phi i32 [ %209, %208 ], [ %215, %211 ]
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !160
  %222 = icmp eq i8 %221, 8
  br i1 %222, label %241, label %223

223:                                              ; preds = %216
  %224 = and i64 %217, 65535
  %225 = icmp eq i64 %224, 14
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %228 = load i64, ptr %72, align 8
  br label %234

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %231 = load i32, ptr %230, align 4
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  br label %234

234:                                              ; preds = %229, %226
  %235 = phi i64 [ %228, %226 ], [ %217, %229 ]
  %236 = phi i32 [ %227, %226 ], [ %233, %229 ]
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !160
  %240 = icmp eq i8 %239, 9
  br i1 %240, label %241, label %252

241:                                              ; preds = %234, %216
  %242 = phi i64 [ %235, %234 ], [ %217, %216 ]
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 14
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %268

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  br label %268

252:                                              ; preds = %234
  %253 = and i64 %235, 65535
  %254 = icmp eq i64 %253, 14
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %262

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %259 = load i32, ptr %258, align 4
  %260 = lshr i32 %259, 16
  %261 = and i32 %260, 255
  br label %262

262:                                              ; preds = %257, %255
  %263 = phi i32 [ %256, %255 ], [ %261, %257 ]
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !160
  %267 = zext i8 %266 to i32
  br label %268

268:                                              ; preds = %245, %247, %262
  %269 = phi i32 [ %267, %262 ], [ %246, %245 ], [ %251, %247 ]
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !160
  %273 = icmp eq i8 %272, 9
  %274 = load i64, ptr %72, align 8
  %275 = and i64 %274, 65535
  %276 = icmp eq i64 %275, 14
  br i1 %273, label %277, label %338

277:                                              ; preds = %268
  br i1 %276, label %278, label %281

278:                                              ; preds = %277
  %279 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %280 = load i64, ptr %72, align 8
  br label %286

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %283 = load i32, ptr %282, align 4
  %284 = lshr i32 %283, 16
  %285 = and i32 %284, 255
  br label %286

286:                                              ; preds = %281, %278
  %287 = phi i64 [ %280, %278 ], [ %274, %281 ]
  %288 = phi i32 [ %279, %278 ], [ %285, %281 ]
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !160
  %292 = icmp eq i8 %291, 8
  br i1 %292, label %311, label %293

293:                                              ; preds = %286
  %294 = and i64 %287, 65535
  %295 = icmp eq i64 %294, 14
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %298 = load i64, ptr %72, align 8
  br label %304

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %301 = load i32, ptr %300, align 4
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  br label %304

304:                                              ; preds = %299, %296
  %305 = phi i64 [ %298, %296 ], [ %287, %299 ]
  %306 = phi i32 [ %297, %296 ], [ %303, %299 ]
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !160
  %310 = icmp eq i8 %309, 9
  br i1 %310, label %311, label %322

311:                                              ; preds = %304, %286
  %312 = phi i64 [ %305, %304 ], [ %287, %286 ]
  %313 = and i64 %312, 65535
  %314 = icmp eq i64 %313, 14
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %399

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %319 = load i32, ptr %318, align 4
  %320 = lshr i32 %319, 16
  %321 = and i32 %320, 255
  br label %399

322:                                              ; preds = %304
  %323 = and i64 %305, 65535
  %324 = icmp eq i64 %323, 14
  br i1 %324, label %325, label %327

325:                                              ; preds = %322
  %326 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %332

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = lshr i32 %329, 16
  %331 = and i32 %330, 255
  br label %332

332:                                              ; preds = %327, %325
  %333 = phi i32 [ %326, %325 ], [ %331, %327 ]
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !160
  %337 = zext i8 %336 to i32
  br label %399

338:                                              ; preds = %268
  br i1 %276, label %339, label %342

339:                                              ; preds = %338
  %340 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %341 = load i64, ptr %72, align 8
  br label %347

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %344 = load i32, ptr %343, align 4
  %345 = lshr i32 %344, 16
  %346 = and i32 %345, 255
  br label %347

347:                                              ; preds = %342, %339
  %348 = phi i64 [ %341, %339 ], [ %274, %342 ]
  %349 = phi i32 [ %340, %339 ], [ %346, %342 ]
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !160
  %353 = icmp eq i8 %352, 8
  br i1 %353, label %372, label %354

354:                                              ; preds = %347
  %355 = and i64 %348, 65535
  %356 = icmp eq i64 %355, 14
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  %359 = load i64, ptr %72, align 8
  br label %365

360:                                              ; preds = %354
  %361 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %362 = load i32, ptr %361, align 4
  %363 = lshr i32 %362, 16
  %364 = and i32 %363, 255
  br label %365

365:                                              ; preds = %360, %357
  %366 = phi i64 [ %359, %357 ], [ %348, %360 ]
  %367 = phi i32 [ %358, %357 ], [ %364, %360 ]
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !160
  %371 = icmp eq i8 %370, 9
  br i1 %371, label %372, label %383

372:                                              ; preds = %365, %347
  %373 = phi i64 [ %366, %365 ], [ %348, %347 ]
  %374 = and i64 %373, 65535
  %375 = icmp eq i64 %374, 14
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %399

378:                                              ; preds = %372
  %379 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %380 = load i32, ptr %379, align 4
  %381 = lshr i32 %380, 16
  %382 = and i32 %381, 255
  br label %399

383:                                              ; preds = %365
  %384 = and i64 %366, 65535
  %385 = icmp eq i64 %384, 14
  br i1 %385, label %386, label %388

386:                                              ; preds = %383
  %387 = call i32 @vector_type_mode(ptr noundef nonnull %72) #13
  br label %393

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %390 = load i32, ptr %389, align 4
  %391 = lshr i32 %390, 16
  %392 = and i32 %391, 255
  br label %393

393:                                              ; preds = %388, %386
  %394 = phi i32 [ %387, %386 ], [ %392, %388 ]
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !160
  %398 = zext i8 %397 to i32
  br label %399

399:                                              ; preds = %393, %378, %376, %332, %317, %315
  %400 = phi i32 [ %337, %332 ], [ %316, %315 ], [ %321, %317 ], [ %398, %393 ], [ %377, %376 ], [ %382, %378 ]
  %401 = add i32 %400, -38
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !107
  %405 = getelementptr inbounds %struct.real_format, ptr %404, i64 0, i32 12
  %406 = load i8, ptr %405, align 1, !tbaa !207
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %399, %196
  %409 = load i32, ptr @input_location, align 4, !tbaa !99
  %410 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %409, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull %72) #13
  br label %431

411:                                              ; preds = %399
  %412 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 151, ptr noundef nonnull @.str.23, ptr noundef nonnull %72) #13
  br label %431

413:                                              ; preds = %121
  %414 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %3, ptr noundef nonnull @dconst0) #13
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %431, label %422, !prof !209

416:                                              ; preds = %128
  %417 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %3, ptr noundef nonnull @dconst0) #13
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %419, label %422, !prof !209

419:                                              ; preds = %416
  %420 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %4, ptr noundef nonnull @dconst0) #13
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %416, %419, %413
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %423 = call i32 @real_from_string(ptr noundef nonnull %5, ptr noundef nonnull %93) #13
  %424 = icmp slt i32 %423, 0
  br i1 %424, label %428, label %425, !prof !210

425:                                              ; preds = %422
  %426 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %5, ptr noundef nonnull @dconst0) #13
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %428, label %430, !prof !210

428:                                              ; preds = %425, %422
  %429 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 151, ptr noundef nonnull @.str.24) #13
  br label %430

430:                                              ; preds = %428, %425
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %431

431:                                              ; preds = %413, %419, %430, %408, %411
  %432 = call ptr @build_real(ptr noundef nonnull %75, ptr noundef nonnull byval(%struct.real_value) align 8 %3) #13
  %433 = and i32 %20, 8192
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %439, label %435, !prof !192

435:                                              ; preds = %431
  %436 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !107
  %437 = call ptr @convert(ptr noundef nonnull %75, ptr noundef %436) #13
  %438 = call ptr @build_complex(ptr noundef null, ptr noundef %437, ptr noundef %432) #13
  br label %439

439:                                              ; preds = %435, %431
  %440 = phi ptr [ %438, %435 ], [ %432, %431 ]
  br i1 %109, label %443, label %441, !prof !192

441:                                              ; preds = %439
  %442 = call ptr @build1_stat(i32 noundef 190, ptr noundef %72, ptr noundef %440) #13
  br label %443

443:                                              ; preds = %51, %439, %441, %23
  %444 = phi ptr [ %24, %23 ], [ %56, %51 ], [ %442, %441 ], [ %440, %439 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret ptr %444
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lex_string(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !211 !PGOFuncName !212 {
  %5 = alloca %struct.obstack, align 8
  %6 = alloca %struct.cpp_string, align 8
  %7 = alloca %struct.cpp_string, align 8
  %8 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %9 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %12 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !213
  %13 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 5
  %14 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 3
  %15 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 4
  %16 = icmp eq i8 %2, 0
  br label %17

17:                                               ; preds = %29, %4
  %18 = phi i1 [ false, %29 ], [ %16, %4 ]
  %19 = phi i64 [ %22, %29 ], [ 0, %4 ]
  %20 = phi i32 [ %23, %29 ], [ %11, %4 ]
  br label %21

21:                                               ; preds = %17, %68
  %22 = phi i64 [ %19, %17 ], [ %61, %68 ]
  %23 = phi i32 [ %20, %17 ], [ %40, %68 ]
  br label %24

24:                                               ; preds = %21, %24
  %25 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %26 = call ptr @cpp_get_token(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.cpp_token, ptr %26, i64 0, i32 1
  %28 = load i8, ptr %27, align 4
  switch i8 %28, label %75 [
    i8 72, label %24
    i8 52, label %29
    i8 62, label %33
    i8 63, label %33
    i8 64, label %33
    i8 65, label %33
    i8 61, label %39
  ], !prof !214

29:                                               ; preds = %24
  %30 = load i32, ptr @c_language, align 4, !tbaa !99
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %75, label %17

33:                                               ; preds = %24, %24, %24, %24
  %34 = zext nneg i8 %28 to i32
  %35 = icmp eq i32 %23, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = icmp eq i32 %23, 61
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  call void (ptr, ...) @error(ptr noundef nonnull @.str.25) #13
  br label %39

39:                                               ; preds = %24, %36, %33, %38
  %40 = phi i32 [ %23, %38 ], [ %23, %33 ], [ %34, %36 ], [ %23, %24 ]
  %41 = icmp eq i64 %22, 0
  br i1 %41, label %44, label %42, !prof !215

42:                                               ; preds = %39
  %43 = load ptr, ptr %14, align 8, !tbaa !216
  br label %59

44:                                               ; preds = %39
  %45 = call i32 @_obstack_begin(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #13
  store i64 16, ptr %13, align 8, !tbaa !218
  %46 = load ptr, ptr %14, align 8, !tbaa !216
  %47 = getelementptr inbounds i8, ptr %46, i64 16
  %48 = load ptr, ptr %15, align 8, !tbaa !219
  %49 = icmp ugt ptr %47, %48
  br i1 %49, label %50, label %53, !prof !220

50:                                               ; preds = %44
  call void @_obstack_newchunk(ptr noundef nonnull %5, i32 noundef 16) #13
  %51 = load ptr, ptr %14, align 8, !tbaa !216
  %52 = load i64, ptr %13, align 8, !tbaa !218
  br label %53

53:                                               ; preds = %44, %50
  %54 = phi i64 [ 16, %44 ], [ %52, %50 ]
  %55 = phi ptr [ %46, %44 ], [ %51, %50 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr nonnull align 8 %7, i64 %54, i1 false)
  %56 = load i64, ptr %13, align 8, !tbaa !218
  %57 = load ptr, ptr %14, align 8, !tbaa !216
  %58 = getelementptr inbounds i8, ptr %57, i64 %56
  store ptr %58, ptr %14, align 8, !tbaa !216
  br label %59

59:                                               ; preds = %42, %53
  %60 = phi ptr [ %43, %42 ], [ %58, %53 ]
  %61 = add i64 %22, 1
  store i64 16, ptr %13, align 8, !tbaa !218
  %62 = getelementptr inbounds i8, ptr %60, i64 16
  %63 = load ptr, ptr %15, align 8, !tbaa !219
  %64 = icmp ugt ptr %62, %63
  br i1 %64, label %65, label %68, !prof !221

65:                                               ; preds = %59
  call void @_obstack_newchunk(ptr noundef nonnull %5, i32 noundef 16) #13
  %66 = load ptr, ptr %14, align 8, !tbaa !216
  %67 = load i64, ptr %13, align 8, !tbaa !218
  br label %68

68:                                               ; preds = %59, %65
  %69 = phi i64 [ 16, %59 ], [ %67, %65 ]
  %70 = phi ptr [ %60, %59 ], [ %66, %65 ]
  %71 = getelementptr inbounds %struct.cpp_token, ptr %26, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr nonnull align 8 %71, i64 %69, i1 false)
  %72 = load i64, ptr %13, align 8, !tbaa !218
  %73 = load ptr, ptr %14, align 8, !tbaa !216
  %74 = getelementptr inbounds i8, ptr %73, i64 %72
  store ptr %74, ptr %14, align 8, !tbaa !216
  br label %21

75:                                               ; preds = %29, %24
  %76 = load ptr, ptr @parse_in, align 8, !tbaa !107
  call void @_cpp_backup_tokens(ptr noundef %76, i32 noundef 1) #13
  %77 = icmp eq i64 %22, 0
  br i1 %77, label %116, label %78, !prof !222

78:                                               ; preds = %75
  %79 = load ptr, ptr %14, align 8, !tbaa !216
  %80 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !223
  %82 = icmp eq ptr %79, %81
  br i1 %82, label %83, label %87, !prof !220

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 10
  %85 = load i8, ptr %84, align 8
  %86 = or i8 %85, 2
  store i8 %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %78, %83
  %88 = ptrtoint ptr %81 to i64
  store i64 %88, ptr %13, align 8, !tbaa !218
  %89 = ptrtoint ptr %79 to i64
  %90 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 6
  %91 = load i32, ptr %90, align 8, !tbaa !224
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %89
  %94 = xor i32 %91, -1
  %95 = sext i32 %94 to i64
  %96 = and i64 %93, %95
  %97 = inttoptr i64 %96 to ptr
  store ptr %97, ptr %14, align 8, !tbaa !216
  %98 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !225
  %100 = ptrtoint ptr %99 to i64
  %101 = sub i64 %96, %100
  %102 = load ptr, ptr %15, align 8, !tbaa !219
  %103 = ptrtoint ptr %102 to i64
  %104 = sub i64 %103, %100
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %106, label %107, !prof !220

106:                                              ; preds = %87
  store ptr %102, ptr %14, align 8, !tbaa !216
  br label %107

107:                                              ; preds = %106, %87
  %108 = phi ptr [ %102, %106 ], [ %97, %87 ]
  store ptr %108, ptr %80, align 8, !tbaa !223
  br i1 %18, label %109, label %116, !prof !226

109:                                              ; preds = %107
  %110 = load i32, ptr @input_location, align 4, !tbaa !99
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %110) #13
  %111 = getelementptr inbounds %struct.expanded_location, ptr %8, i64 0, i32 3
  %112 = load i8, ptr %111, align 8, !tbaa !133
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %116, !prof !227

114:                                              ; preds = %109
  %115 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 202, ptr noundef nonnull @.str.26) #13
  br label %116

116:                                              ; preds = %75, %114, %109, %107
  %117 = phi ptr [ %81, %114 ], [ %81, %109 ], [ %81, %107 ], [ %7, %75 ]
  %118 = icmp eq i8 %3, 0
  %119 = select i1 %118, ptr @cpp_interpret_string_notranslate, ptr @cpp_interpret_string
  %120 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %121 = add i64 %22, 1
  %122 = call zeroext i8 %119(ptr noundef %120, ptr noundef %117, i64 noundef %121, ptr noundef nonnull %6, i32 noundef %23) #13, !callees !228
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %130, label %124, !prof !229

124:                                              ; preds = %116
  %125 = load i32, ptr %6, align 8, !tbaa !230
  %126 = getelementptr inbounds %struct.cpp_string, ptr %6, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !130
  %128 = call ptr @build_string(i32 noundef %125, ptr noundef %127) #13
  %129 = load ptr, ptr %126, align 8, !tbaa !130
  call void @free(ptr noundef %129) #12
  br label %175

130:                                              ; preds = %116
  switch i32 %23, label %131 [
    i32 62, label %161
    i32 64, label %147
    i32 63, label %133
  ]

131:                                              ; preds = %130
  %132 = call ptr @build_string(i32 noundef 1, ptr noundef nonnull @.str.3) #13
  br label %175

133:                                              ; preds = %130
  %134 = load ptr, ptr @c_global_trees, align 16, !tbaa !107
  %135 = getelementptr inbounds %struct.tree_type, ptr %134, i64 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr @integer_types, align 16, !tbaa !107
  %138 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = trunc i32 %136 to i16
  %141 = and i16 %140, 1023
  %142 = trunc i32 %139 to i16
  %143 = and i16 %142, 1023
  %144 = udiv i16 %141, %143
  %145 = zext nneg i16 %144 to i32
  %146 = call ptr @build_string(i32 noundef %145, ptr noundef nonnull @.str.27) #13
  br label %180

147:                                              ; preds = %130
  %148 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 1), align 8, !tbaa !107
  %149 = getelementptr inbounds %struct.tree_type, ptr %148, i64 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = load ptr, ptr @integer_types, align 16, !tbaa !107
  %152 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = trunc i32 %150 to i16
  %155 = and i16 %154, 1023
  %156 = trunc i32 %153 to i16
  %157 = and i16 %156, 1023
  %158 = udiv i16 %155, %157
  %159 = zext nneg i16 %158 to i32
  %160 = call ptr @build_string(i32 noundef %159, ptr noundef nonnull @.str.28) #13
  br label %180

161:                                              ; preds = %130
  %162 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !107
  %163 = getelementptr inbounds %struct.tree_type, ptr %162, i64 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = load ptr, ptr @integer_types, align 16, !tbaa !107
  %166 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = trunc i32 %164 to i16
  %169 = and i16 %168, 1023
  %170 = trunc i32 %167 to i16
  %171 = and i16 %170, 1023
  %172 = udiv i16 %169, %171
  %173 = zext nneg i16 %172 to i32
  %174 = call ptr @build_string(i32 noundef %173, ptr noundef nonnull @.str.28) #13
  br label %180

175:                                              ; preds = %131, %124
  %176 = phi ptr [ %128, %124 ], [ %132, %131 ]
  switch i32 %23, label %180 [
    i32 62, label %179
    i32 64, label %178
    i32 63, label %177
  ], !prof !231

177:                                              ; preds = %175
  br label %180

178:                                              ; preds = %175
  br label %180

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %161, %147, %133, %175, %179, %178, %177
  %181 = phi ptr [ %176, %175 ], [ %146, %133 ], [ %176, %177 ], [ %160, %147 ], [ %176, %178 ], [ %174, %161 ], [ %176, %179 ]
  %182 = phi ptr [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 38), %175 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 39), %133 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 39), %177 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 40), %147 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 40), %178 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 41), %161 ], [ getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 41), %179 ]
  %183 = load ptr, ptr %182, align 8, !tbaa !107
  %184 = getelementptr inbounds %struct.tree_common, ptr %181, i64 0, i32 2
  store ptr %183, ptr %184, align 8, !tbaa !160
  %185 = call ptr @fix_string_type(ptr noundef nonnull %181) #13
  store ptr %185, ptr %1, align 8, !tbaa !107
  br i1 %77, label %199, label %186, !prof !222

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.obstack, ptr %5, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !225
  %189 = ptrtoint ptr %188 to i64
  %190 = sub i64 0, %189
  store i64 %190, ptr %13, align 8, !tbaa !218
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %197, !prof !220

192:                                              ; preds = %186
  %193 = load ptr, ptr %15, align 8, !tbaa !219
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %194, %189
  %196 = icmp sgt i64 %195, %190
  br i1 %196, label %199, label %197

197:                                              ; preds = %192, %186
  %198 = getelementptr inbounds i8, ptr %188, i64 %190
  call void @obstack_free(ptr noundef nonnull %5, ptr noundef %198) #13
  br label %199

199:                                              ; preds = %192, %197, %180
  %200 = select i1 %18, i32 %23, i32 66, !prof !168
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  ret i32 %200
}

; Function Attrs: optsize
declare i32 @objc_is_reserved_word(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_spell_token(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_charconst(ptr noundef %0) unnamed_addr #0 !prof !232 !PGOFuncName !233 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !tbaa !99
  %4 = load ptr, ptr @parse_in, align 8, !tbaa !107
  %5 = call i32 @cpp_interpret_charconst(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %6 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = add i8 %7, -57
  %9 = icmp ult i8 %8, 3
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr @c_language, align 4, !tbaa !99
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !234

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4, !tbaa !99
  %16 = icmp ugt i32 %15, 1
  %17 = select i1 %16, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), ptr @integer_types
  br label %22

18:                                               ; preds = %1
  %19 = zext nneg i8 %8 to i64
  %20 = getelementptr inbounds [3 x ptr], ptr @switch.table.lex_charconst, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %18, %14, %10
  %23 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), %10 ], [ %17, %14 ], [ %21, %18 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !107
  %25 = load i32, ptr %3, align 4, !tbaa !99
  %26 = icmp ne i32 %25, 0
  %27 = icmp sgt i32 %5, -1
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %32, !prof !235

29:                                               ; preds = %22
  %30 = zext i32 %5 to i64
  %31 = call ptr @build_int_cst_wide(ptr noundef %24, i64 noundef %30, i64 noundef 0) #13
  br label %35

32:                                               ; preds = %22
  %33 = sext i32 %5 to i64
  %34 = call ptr @build_int_cst_wide(ptr noundef %24, i64 noundef %33, i64 noundef -1) #13
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi ptr [ %31, %29 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_common_no_more_pch() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cpp_interpret_integer(ptr dead_on_unwind writable sret(%struct.cpp_num) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @cpp_num_sign_extend(ptr dead_on_unwind writable sret(%struct.cpp_num) align 8, ptr noundef byval(%struct.cpp_num) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @narrowest_unsigned_type(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !171 !PGOFuncName !236 {
  %4 = and i32 %2, 240
  %5 = icmp eq i32 %4, 32
  %6 = select i1 %5, i64 8, i64 10
  %7 = icmp eq i32 %4, 16
  %8 = select i1 %7, i64 6, i64 %6
  br label %9

9:                                                ; preds = %3, %24
  %10 = phi i64 [ %8, %3 ], [ %25, %24 ]
  %11 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 16, !tbaa !107
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !160
  %18 = icmp ugt i64 %17, %1
  br i1 %18, label %27, label %19, !prof !237

19:                                               ; preds = %9
  %20 = icmp eq i64 %17, %1
  br i1 %20, label %21, label %24, !prof !238

21:                                               ; preds = %19
  %22 = load i64, ptr %15, align 8, !tbaa !160
  %23 = icmp ult i64 %22, %0
  br i1 %23, label %24, label %29, !prof !239

24:                                               ; preds = %21, %19
  %25 = add nuw nsw i64 %10, 2
  %26 = icmp ult i64 %10, 9
  br i1 %26, label %9, label %31, !prof !240, !llvm.loop !241

27:                                               ; preds = %9
  %28 = trunc i64 %10 to i32
  br label %31

29:                                               ; preds = %21
  %30 = trunc i64 %10 to i32
  br label %31

31:                                               ; preds = %24, %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ], [ 11, %24 ]
  ret i32 %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @narrowest_signed_type(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !243 !PGOFuncName !244 {
  %4 = and i32 %2, 240
  %5 = icmp eq i32 %4, 32
  %6 = select i1 %5, i64 7, i64 9
  %7 = icmp eq i32 %4, 16
  %8 = select i1 %7, i64 5, i64 %6
  br label %9

9:                                                ; preds = %3, %24
  %10 = phi i64 [ %8, %3 ], [ %25, %24 ]
  %11 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %14, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !160
  %18 = icmp ugt i64 %17, %1
  br i1 %18, label %27, label %19, !prof !245

19:                                               ; preds = %9
  %20 = icmp eq i64 %17, %1
  br i1 %20, label %21, label %24, !prof !246

21:                                               ; preds = %19
  %22 = load i64, ptr %15, align 8, !tbaa !160
  %23 = icmp ult i64 %22, %0
  br i1 %23, label %24, label %29, !prof !247

24:                                               ; preds = %21, %19
  %25 = add nuw nsw i64 %10, 2
  %26 = icmp ult i64 %10, 9
  br i1 %26, label %9, label %31, !prof !248, !llvm.loop !249

27:                                               ; preds = %9
  %28 = trunc i64 %10 to i32
  br label %31

29:                                               ; preds = %21
  %30 = trunc i64 %10 to i32
  br label %31

31:                                               ; preds = %24, %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ], [ 11, %24 ]
  ret i32 %32
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @emit_diagnostic(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_complex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @float_const_decimal64_p() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @interpret_fixed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !128 !PGOFuncName !250 {
  %3 = alloca %struct.fixed_value, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !160
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
  %35 = load ptr, ptr %33, align 8, !tbaa !107
  %36 = add nsw i64 %34, 1
  %37 = alloca i8, i64 %36, align 16
  %38 = getelementptr inbounds %struct.cpp_token, ptr %0, i64 0, i32 3, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %37, ptr align 1 %39, i64 %34, i1 false)
  %40 = getelementptr inbounds i8, ptr %37, i64 %34
  store i8 0, ptr %40, align 1, !tbaa !160
  %41 = load i64, ptr %35, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %35) #13
  br label %51

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  call void @fixed_from_string(ptr noundef nonnull %3, ptr noundef nonnull %37, i32 noundef %52) #13
  %53 = call ptr @build_fixed(ptr noundef nonnull %35, ptr noundef nonnull byval(%struct.fixed_value) align 8 %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret ptr %53
}

; Function Attrs: optsize
declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_common_type_for_mode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @excess_precision_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_from_string3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_convert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fixed_from_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fixed(ptr noundef, ptr noundef byval(%struct.fixed_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_backup_tokens(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cpp_interpret_string_notranslate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fix_string_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @cpp_interpret_charconst(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { cold optsize }

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
!36 = !{ptr @init_c_lex, ptr @get_fileinfo, i64 1}
!37 = !{ptr @init_c_lex, ptr @cpp_get_callbacks, i64 1}
!38 = !{ptr @get_fileinfo, ptr @splay_tree_new, i64 1}
!39 = !{ptr @get_fileinfo, ptr @splay_tree_lookup, i64 1}
!40 = !{ptr @get_fileinfo, ptr @xmalloc, i64 1}
!41 = !{ptr @get_fileinfo, ptr @splay_tree_insert, i64 1}
!42 = !{ptr @fe_file_change, ptr @update_header_times, i64 4}
!43 = !{ptr @update_header_times, ptr @get_run_time, i64 1}
!44 = !{ptr @update_header_times, ptr @get_fileinfo, i64 1}
!45 = !{ptr @c_lex_with_flags, ptr @timevar_push_1, i64 1}
!46 = !{ptr @c_lex_with_flags, ptr @cpp_get_token_with_location, i64 4310365}
!47 = !{ptr @c_lex_with_flags, ptr @cpp_classify_number, i64 268159}
!48 = !{ptr @c_lex_with_flags, ptr @interpret_integer, i64 268129}
!49 = !{ptr @c_lex_with_flags, ptr @interpret_float, i64 28}
!50 = !{ptr @c_lex_with_flags, ptr @fancy_abort, i64 4}
!51 = !{ptr @c_lex_with_flags, ptr @lex_string, i64 24988}
!52 = !{ptr @c_lex_with_flags, ptr @cpp_spell_token, i64 2}
!53 = !{ptr @c_lex_with_flags, ptr @error, i64 3}
!54 = !{ptr @c_lex_with_flags, ptr @lex_charconst, i64 5221}
!55 = !{ptr @c_lex_with_flags, ptr @build_string, i64 1}
!56 = !{ptr @c_lex_with_flags, ptr @build_int_cst, i64 1}
!57 = !{ptr @c_lex_with_flags, ptr @c_common_no_more_pch, i64 2}
!58 = !{ptr @c_lex_with_flags, ptr @timevar_pop_1, i64 1}
!59 = !{ptr @interpret_integer, ptr @cpp_get_options, i64 268132}
!60 = !{ptr @interpret_integer, ptr @cpp_interpret_integer, i64 268132}
!61 = !{ptr @interpret_integer, ptr @cpp_num_sign_extend, i64 268132}
!62 = !{ptr @interpret_integer, ptr @narrowest_unsigned_type, i64 268132}
!63 = !{ptr @interpret_integer, ptr @narrowest_signed_type, i64 268120}
!64 = !{ptr @interpret_integer, ptr @emit_diagnostic, i64 4}
!65 = !{ptr @interpret_integer, ptr @build_int_cst_wide, i64 268132}
!66 = !{ptr @interpret_integer, ptr @build_int_cst, i64 1}
!67 = !{ptr @interpret_integer, ptr @build_complex, i64 1}
!68 = !{ptr @interpret_float, ptr @warning, i64 26}
!69 = !{ptr @interpret_float, ptr @float_const_decimal64_p, i64 24}
!70 = !{ptr @interpret_float, ptr @interpret_fixed, i64 2}
!71 = !{ptr @interpret_float, ptr @pedwarn, i64 2}
!72 = !{ptr @interpret_float, ptr @c_common_type_for_mode, i64 1}
!73 = !{ptr @interpret_float, ptr @excess_precision_type, i64 25}
!74 = !{ptr @interpret_float, ptr @vector_type_mode, i64 3}
!75 = !{ptr @interpret_float, ptr @real_from_string3, i64 25}
!76 = !{ptr @interpret_float, ptr @real_isinf, i64 26}
!77 = !{ptr @interpret_float, ptr @real_convert, i64 1}
!78 = !{ptr @interpret_float, ptr @real_compare, i64 26}
!79 = !{ptr @interpret_float, ptr @real_from_string, i64 3}
!80 = !{ptr @interpret_float, ptr @build_real, i64 25}
!81 = !{ptr @interpret_float, ptr @convert, i64 1}
!82 = !{ptr @interpret_float, ptr @build_complex, i64 1}
!83 = !{ptr @interpret_float, ptr @build1_stat, i64 1}
!84 = !{ptr @lex_string, ptr @cpp_get_token, i64 28061}
!85 = !{ptr @lex_string, ptr @error, i64 1}
!86 = !{ptr @lex_string, ptr @_obstack_begin, i64 2918}
!87 = !{ptr @lex_string, ptr @_obstack_newchunk, i64 2}
!88 = !{ptr @lex_string, ptr @_cpp_backup_tokens, i64 24983}
!89 = !{ptr @lex_string, ptr @expand_location, i64 2914}
!90 = !{ptr @lex_string, ptr @warning, i64 2913}
!91 = !{ptr @lex_string, ptr @build_string, i64 24982}
!92 = !{ptr @lex_string, ptr @free, i64 24982}
!93 = !{ptr @lex_string, ptr @fix_string_type, i64 24983}
!94 = !{ptr @lex_string, ptr @obstack_free, i64 2914}
!95 = !{ptr @lex_charconst, ptr @cpp_interpret_charconst, i64 5217}
!96 = !{ptr @lex_charconst, ptr @build_int_cst_wide, i64 5217}
!97 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!98 = !{!"function_entry_count", i64 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!"branch_weights", i32 2, i32 1}
!104 = !{!105, !100, i64 0}
!105 = !{!"c_fileinfo", !100, i64 0, !106, i64 4, !106, i64 6}
!106 = !{!"short", !101, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"any pointer", !101, i64 0}
!109 = !{!110, !108, i64 0}
!110 = !{!"cpp_callbacks", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96, !108, i64 104, !108, i64 112, !108, i64 120, !108, i64 128}
!111 = !{!110, !108, i64 48}
!112 = !{!110, !108, i64 56}
!113 = !{!110, !108, i64 64}
!114 = !{!110, !108, i64 72}
!115 = !{!"branch_weights", i32 1, i32 2}
!116 = !{!110, !108, i64 32}
!117 = !{!110, !108, i64 40}
!118 = !{!119, !120, i64 8}
!119 = !{!"splay_tree_node_s", !120, i64 0, !120, i64 8, !108, i64 16, !108, i64 24}
!120 = !{!"long", !101, i64 0}
!121 = !{!105, !106, i64 4}
!122 = !{!105, !106, i64 6}
!123 = !{!"function_entry_count", i64 501735}
!124 = !{!"c-lex.c:cb_line_change"}
!125 = !{!"branch_weights", i32 23518, i32 -361560887}
!126 = !{!127, !100, i64 0}
!127 = !{!"cpp_token", !100, i64 0, !100, i64 4, !106, i64 6, !101, i64 8}
!128 = !{!"function_entry_count", i64 0}
!129 = !{!"c-lex.c:cb_ident"}
!130 = !{!131, !108, i64 8}
!131 = !{!"cpp_string", !100, i64 0, !108, i64 8}
!132 = !{!"c-lex.c:cb_def_pragma"}
!133 = !{!134, !101, i64 16}
!134 = !{!"", !108, i64 0, !100, i64 8, !100, i64 12, !101, i64 16}
!135 = !{!"c-lex.c:cb_define"}
!136 = !{!137, !108, i64 24}
!137 = !{!"gcc_debug_hooks", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96, !108, i64 104, !108, i64 112, !108, i64 120, !108, i64 128, !108, i64 136, !108, i64 144, !108, i64 152, !108, i64 160, !108, i64 168, !108, i64 176, !108, i64 184, !108, i64 192, !108, i64 200, !108, i64 208, !108, i64 216, !108, i64 224, !108, i64 232, !108, i64 240, !100, i64 248}
!138 = !{!139, !100, i64 12}
!139 = !{!"line_map", !108, i64 0, !100, i64 8, !100, i64 12, !100, i64 16, !100, i64 20, !101, i64 21, !100, i64 22}
!140 = !{!139, !100, i64 8}
!141 = !{!"c-lex.c:cb_undef"}
!142 = !{!137, !108, i64 32}
!143 = !{!144, !108, i64 0}
!144 = !{!"cpp_hashnode", !145, i64 0, !100, i64 16, !100, i64 16, !101, i64 17, !100, i64 18, !100, i64 18, !101, i64 24}
!145 = !{!"ht_identifier", !108, i64 0, !100, i64 8, !100, i64 12}
!146 = !{!134, !108, i64 0}
!147 = !{!"c-lex.c:dump_one_header"}
!148 = !{!119, !120, i64 0}
!149 = !{!"function_entry_count", i64 5}
!150 = !{!"branch_weights", i32 2, i32 5}
!151 = !{!"branch_weights", i32 16, i32 10, i32 4}
!152 = !{!139, !100, i64 16}
!153 = !{!137, !108, i64 40}
!154 = !{!139, !108, i64 0}
!155 = !{!137, !108, i64 48}
!156 = !{!"function_entry_count", i64 4}
!157 = !{!"c-lex.c:update_header_times"}
!158 = !{!"branch_weights", i32 5, i32 1}
!159 = !{!"function_entry_count", i64 4310356}
!160 = !{!101, !101, i64 0}
!161 = !{!"branch_weights", i32 4310357, i32 1}
!162 = !{!"branch_weights", i32 2666575, i32 1, i32 1345424, i32 268160, i32 1, i32 1, i32 1, i32 1, i32 5218, i32 1, i32 1, i32 1, i32 24984, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!163 = !{!"branch_weights", i32 1, i32 1, i32 268133, i32 28}
!164 = !{!"branch_weights", i32 201108, i32 67026}
!165 = !{!"branch_weights", i32 102434, i32 98675}
!166 = !{i32 0, i32 256}
!167 = !{!106, !106, i64 0}
!168 = !{!"branch_weights", i32 24984, i32 1}
!169 = !{!127, !106, i64 6}
!170 = !{!"branch_weights", i32 4310356, i32 2}
!171 = !{!"function_entry_count", i64 268132}
!172 = !{!"c-lex.c:interpret_integer"}
!173 = !{!174, !120, i64 88}
!174 = !{!"cpp_options", !100, i64 0, !100, i64 4, !101, i64 8, !101, i64 9, !101, i64 10, !101, i64 11, !101, i64 12, !101, i64 13, !101, i64 14, !101, i64 15, !101, i64 16, !101, i64 17, !101, i64 18, !101, i64 19, !101, i64 20, !101, i64 21, !101, i64 22, !101, i64 23, !101, i64 24, !101, i64 25, !101, i64 26, !101, i64 27, !101, i64 28, !101, i64 29, !101, i64 30, !101, i64 31, !101, i64 32, !101, i64 33, !101, i64 34, !101, i64 35, !101, i64 36, !101, i64 37, !101, i64 38, !101, i64 39, !101, i64 40, !101, i64 41, !101, i64 42, !108, i64 48, !108, i64 56, !108, i64 64, !100, i64 72, !101, i64 76, !101, i64 77, !175, i64 80, !120, i64 88, !120, i64 96, !120, i64 104, !120, i64 112, !101, i64 120, !101, i64 121, !101, i64 122, !101, i64 123, !101, i64 124}
!175 = !{!"", !100, i64 0, !101, i64 4, !101, i64 5, !101, i64 6, !101, i64 7}
!176 = !{i64 0, i64 8, !177, i64 8, i64 8, !177, i64 16, i64 1, !160, i64 17, i64 1, !160}
!177 = !{!120, !120, i64 0}
!178 = !{!179, !120, i64 8}
!179 = !{!"cpp_num", !120, i64 0, !120, i64 8, !101, i64 16, !101, i64 17}
!180 = !{!179, !120, i64 0}
!181 = !{!"branch_weights", i32 268122, i32 12}
!182 = !{!"branch_weights", i32 261280, i32 6843}
!183 = !{!"branch_weights", i32 1, i32 261280}
!184 = !{!"branch_weights", i32 8009, i32 2147475639}
!185 = !{!"branch_weights", i32 40044, i32 2147443604}
!186 = !{!"branch_weights", i32 1, i32 5}
!187 = !{!"branch_weights", i32 268133, i32 1}
!188 = !{!"function_entry_count", i64 27}
!189 = !{!"c-lex.c:interpret_float"}
!190 = !{!"branch_weights", i32 1, i32 28}
!191 = !{!"branch_weights", i32 784, i32 57}
!192 = !{!"branch_weights", i32 28, i32 1}
!193 = !{!"branch_weights", i32 1, i32 56, i32 1}
!194 = !{!195, !108, i64 1784}
!195 = !{!"gcc_target", !196, i64 0, !198, i64 368, !199, i64 664, !100, i64 744, !108, i64 752, !108, i64 760, !108, i64 768, !108, i64 776, !108, i64 784, !108, i64 792, !108, i64 800, !108, i64 808, !108, i64 816, !108, i64 824, !108, i64 832, !108, i64 840, !108, i64 848, !108, i64 856, !108, i64 864, !108, i64 872, !108, i64 880, !108, i64 888, !108, i64 896, !108, i64 904, !108, i64 912, !108, i64 920, !108, i64 928, !108, i64 936, !108, i64 944, !108, i64 952, !108, i64 960, !108, i64 968, !108, i64 976, !108, i64 984, !108, i64 992, !108, i64 1000, !108, i64 1008, !108, i64 1016, !108, i64 1024, !108, i64 1032, !108, i64 1040, !108, i64 1048, !108, i64 1056, !120, i64 1064, !120, i64 1072, !108, i64 1080, !108, i64 1088, !108, i64 1096, !108, i64 1104, !108, i64 1112, !108, i64 1120, !108, i64 1128, !108, i64 1136, !108, i64 1144, !108, i64 1152, !108, i64 1160, !108, i64 1168, !200, i64 1176, !108, i64 1232, !108, i64 1240, !108, i64 1248, !108, i64 1256, !108, i64 1264, !108, i64 1272, !108, i64 1280, !108, i64 1288, !108, i64 1296, !108, i64 1304, !108, i64 1312, !108, i64 1320, !108, i64 1328, !108, i64 1336, !108, i64 1344, !108, i64 1352, !108, i64 1360, !108, i64 1368, !108, i64 1376, !108, i64 1384, !108, i64 1392, !108, i64 1400, !108, i64 1408, !108, i64 1416, !108, i64 1424, !108, i64 1432, !108, i64 1440, !108, i64 1448, !108, i64 1456, !120, i64 1464, !201, i64 1472, !108, i64 1664, !108, i64 1672, !108, i64 1680, !108, i64 1688, !108, i64 1696, !108, i64 1704, !108, i64 1712, !108, i64 1720, !108, i64 1728, !108, i64 1736, !108, i64 1744, !108, i64 1752, !108, i64 1760, !108, i64 1768, !108, i64 1776, !202, i64 1784, !203, i64 1792, !204, i64 1896, !205, i64 1968, !108, i64 2016, !101, i64 2024, !101, i64 2025, !101, i64 2026, !101, i64 2027, !101, i64 2028, !101, i64 2029, !101, i64 2030, !101, i64 2031, !101, i64 2032, !101, i64 2033, !101, i64 2034, !101, i64 2035}
!196 = !{!"asm_out", !108, i64 0, !108, i64 8, !108, i64 16, !197, i64 24, !197, i64 56, !108, i64 88, !108, i64 96, !108, i64 104, !108, i64 112, !108, i64 120, !108, i64 128, !108, i64 136, !108, i64 144, !108, i64 152, !108, i64 160, !108, i64 168, !108, i64 176, !108, i64 184, !108, i64 192, !108, i64 200, !108, i64 208, !108, i64 216, !108, i64 224, !108, i64 232, !108, i64 240, !108, i64 248, !108, i64 256, !108, i64 264, !108, i64 272, !108, i64 280, !108, i64 288, !108, i64 296, !108, i64 304, !108, i64 312, !108, i64 320, !108, i64 328, !108, i64 336, !108, i64 344, !108, i64 352, !108, i64 360}
!197 = !{!"asm_int_op", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24}
!198 = !{!"sched", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96, !108, i64 104, !108, i64 112, !108, i64 120, !108, i64 128, !108, i64 136, !108, i64 144, !108, i64 152, !108, i64 160, !108, i64 168, !108, i64 176, !108, i64 184, !108, i64 192, !108, i64 200, !108, i64 208, !108, i64 216, !108, i64 224, !108, i64 232, !108, i64 240, !108, i64 248, !108, i64 256, !108, i64 264, !108, i64 272, !108, i64 280, !108, i64 288}
!199 = !{!"vectorize", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72}
!200 = !{!"addr_space", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48}
!201 = !{!"calls", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96, !108, i64 104, !108, i64 112, !108, i64 120, !108, i64 128, !108, i64 136, !108, i64 144, !108, i64 152, !108, i64 160, !108, i64 168, !108, i64 176, !108, i64 184}
!202 = !{!"c", !108, i64 0}
!203 = !{!"cxx", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96}
!204 = !{!"emutls", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !101, i64 64, !101, i64 65}
!205 = !{!"target_option_hooks", !108, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !108, i64 40}
!206 = !{!"branch_weights", i32 57, i32 784}
!207 = !{!208, !101, i64 47}
!208 = !{!"real_format", !108, i64 0, !108, i64 8, !100, i64 16, !100, i64 20, !100, i64 24, !100, i64 28, !100, i64 32, !100, i64 36, !100, i64 40, !101, i64 44, !101, i64 45, !101, i64 46, !101, i64 47, !101, i64 48, !101, i64 49, !101, i64 50, !101, i64 51}
!209 = !{!"branch_weights", i32 25, i32 4}
!210 = !{!"branch_weights", i32 1, i32 4}
!211 = !{!"function_entry_count", i64 24983}
!212 = !{!"c-lex.c:lex_string"}
!213 = !{i64 0, i64 4, !99, i64 8, i64 8, !107}
!214 = !{!"branch_weights", i32 24984, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3072}
!215 = !{!"branch_weights", i32 2915, i32 158}
!216 = !{!217, !108, i64 24}
!217 = !{!"obstack", !120, i64 0, !108, i64 8, !108, i64 16, !108, i64 24, !108, i64 32, !120, i64 40, !100, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !100, i64 80, !100, i64 80, !100, i64 80}
!218 = !{!217, !120, i64 40}
!219 = !{!217, !108, i64 32}
!220 = !{!"branch_weights", i32 1, i32 2915}
!221 = !{!"branch_weights", i32 1, i32 3072}
!222 = !{!"branch_weights", i32 22070, i32 2915}
!223 = !{!217, !108, i64 16}
!224 = !{!217, !100, i64 48}
!225 = !{!217, !108, i64 8}
!226 = !{!"branch_weights", i32 2146747196, i32 736452}
!227 = !{!"branch_weights", i32 2915, i32 1}
!228 = !{ptr @cpp_interpret_string, ptr @cpp_interpret_string_notranslate}
!229 = !{!"branch_weights", i32 1, i32 24984}
!230 = !{!131, !100, i64 0}
!231 = !{!"branch_weights", i32 2147290295, i32 64451, i32 64451, i32 64450}
!232 = !{!"function_entry_count", i64 5217}
!233 = !{!"c-lex.c:lex_charconst"}
!234 = !{!"branch_weights", i32 5218, i32 1}
!235 = !{!"branch_weights", i32 27232743, i32 5218}
!236 = !{!"c-lex.c:narrowest_unsigned_type"}
!237 = !{!"branch_weights", i32 1, i32 268140}
!238 = !{!"branch_weights", i32 268140, i32 1}
!239 = !{!"branch_weights", i32 8, i32 268133}
!240 = !{!"branch_weights", i32 268139, i32 1}
!241 = distinct !{!241, !242}
!242 = !{!"llvm.loop.mustprogress"}
!243 = !{!"function_entry_count", i64 268121}
!244 = !{!"c-lex.c:narrowest_signed_type"}
!245 = !{!"branch_weights", i32 1, i32 268465}
!246 = !{!"branch_weights", i32 268465, i32 1}
!247 = !{!"branch_weights", i32 344, i32 268122}
!248 = !{!"branch_weights", i32 268464, i32 1}
!249 = distinct !{!249, !242}
!250 = !{!"c-lex.c:interpret_fixed"}
