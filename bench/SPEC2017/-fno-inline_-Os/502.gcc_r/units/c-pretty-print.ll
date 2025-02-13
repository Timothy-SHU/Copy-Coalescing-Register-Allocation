; ModuleID = 'c-pretty-print.c'
source_filename = "c-pretty-print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.c_pretty_print_info = type { %struct.pretty_print_info, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@flag_isoc99 = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"__restrict__\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"<type-error>\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"<unnamed-unsigned:\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"<unnamed-signed:\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"<unnamed-float:\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"<unnamed-fixed:\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"c-pretty-print.c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"<typedef-error>\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"#%qs not supported by %s#\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@c_language = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"_Complex\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"__complex__\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"__vector\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.32 = private unnamed_addr constant [23 x i8] c"<erroneous-expression>\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"<return-value>\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"__builtin_memcpy\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"isunordered\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"__builtin_isunordered\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"!isunordered\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"!__builtin_isunordered\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"!isgreaterequal\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"!__builtin_isgreaterequal\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"!isgreater\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"!__builtin_isgreater\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"!islessequal\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"!__builtin_islessequal\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"!isless\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"!__builtin_isless\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"!islessgreater\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"!__builtin_islessgreater\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"islessgreater\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"__builtin_islessgreater\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"__builtin_abs\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"__builtin_va_arg\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"__real__\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"__imag__\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"({...})\00", align 1
@print_c_tree.pp_rec = internal global %struct.c_pretty_print_info zeroinitializer, align 8
@print_c_tree.initialized = internal unnamed_addr global i1 false, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@pp_c_tree_decl_identifier.xname = internal global [8 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"<U%4x>\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.60 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"_False\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"_True\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@.str.68 = private unnamed_addr constant [5 x i8] c"\\x%x\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"!=\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_whitespace(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_left_paren(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_right_paren(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_left_brace(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_right_brace(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_left_bracket(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_right_bracket(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_dot(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 46) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_ampersand(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_star(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 42) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_arrow(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_semicolon(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_complement(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 126) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_exclamation(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 33) #8
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_space_for_pointer_operator(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %12 [
    i16 10, label %5
    i16 12, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = tail call ptr @strip_pointer_operator(ptr noundef %7) #8
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %11 [
    i16 15, label %12
    i16 20, label %12
  ]

11:                                               ; preds = %5
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %11, %5, %5, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @strip_pointer_operator(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_type_qualifier_list(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %1
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = load i64, ptr %15, align 8
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i64 [ %8, %7 ], [ %16, %13 ]
  %19 = phi ptr [ %1, %7 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i64 %18, 1048576
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %25

25:                                               ; preds = %24, %17
  %26 = and i64 %18, 524288
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %29

29:                                               ; preds = %28, %25
  %30 = and i32 %21, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.4, ptr @.str.3
  tail call fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef nonnull %35) #9
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i64, ptr %19, align 8
  %38 = icmp ult i64 %37, 72057594037927936
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = lshr i64 %37, 56
  %41 = trunc i64 %40 to i8
  %42 = tail call ptr @c_addr_space_name(i8 noundef zeroext %41) #8
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %42) #9
  br label %43

43:                                               ; preds = %36, %39, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_cv_qualifier(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !45 {
  %3 = tail call ptr @pp_base_last_position_in_text(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !43
  switch i8 %6, label %8 [
    i8 42, label %7
    i8 38, label %7
  ]

7:                                                ; preds = %5, %5
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %5, %7, %2
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare ptr @c_addr_space_name(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_identifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @pp_c_whitespace(ptr noundef nonnull %0) #9
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %9 = load i8, ptr %8, align 2, !tbaa !46
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @identifier_to_locale(ptr noundef %1) #8
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ %1, %7 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef %14) #8
  store i32 1, ptr %3, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_type_specifier(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %1, %2 ], [ %11, %9 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %235 [
    i16 0, label %7
    i16 1, label %8
    i16 19, label %9
    i16 7, label %9
    i16 8, label %9
    i16 9, label %9
    i16 11, label %9
    i16 35, label %216
    i16 17, label %225
    i16 16, label %226
    i16 6, label %224
  ]

7:                                                ; preds = %3
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  br label %239

8:                                                ; preds = %3
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %239

9:                                                ; preds = %3, %3, %3, %3, %3
  %10 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1023
  %17 = and i64 %5, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %21 = load i64, ptr %4, align 8
  br label %25

22:                                               ; preds = %13
  %23 = lshr i32 %15, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i64 [ %21, %19 ], [ %5, %22 ]
  %27 = phi i32 [ %20, %19 ], [ %24, %22 ]
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = icmp eq i8 %30, 4
  br i1 %31, label %151, label %32

32:                                               ; preds = %25
  %33 = and i64 %26, 65535
  %34 = icmp eq i64 %33, 14
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %37 = load i64, ptr %4, align 8
  br label %42

38:                                               ; preds = %32
  %39 = load i32, ptr %14, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i64 [ %37, %35 ], [ %26, %38 ]
  %44 = phi i32 [ %36, %35 ], [ %41, %38 ]
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = icmp eq i8 %47, 13
  br i1 %48, label %151, label %49

49:                                               ; preds = %42
  %50 = and i64 %43, 65535
  %51 = icmp eq i64 %50, 14
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %54 = load i64, ptr %4, align 8
  br label %59

55:                                               ; preds = %49
  %56 = load i32, ptr %14, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i64 [ %54, %52 ], [ %43, %55 ]
  %61 = phi i32 [ %53, %52 ], [ %58, %55 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = icmp eq i8 %64, 6
  br i1 %65, label %151, label %66

66:                                               ; preds = %59
  %67 = and i64 %60, 65535
  %68 = icmp eq i64 %67, 14
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %71 = load i64, ptr %4, align 8
  br label %76

72:                                               ; preds = %66
  %73 = load i32, ptr %14, align 4
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i64 [ %71, %69 ], [ %60, %72 ]
  %78 = phi i32 [ %70, %69 ], [ %75, %72 ]
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !43
  %82 = icmp eq i8 %81, 15
  br i1 %82, label %151, label %83

83:                                               ; preds = %76
  %84 = and i64 %77, 65535
  %85 = icmp eq i64 %84, 14
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %88 = load i64, ptr %4, align 8
  br label %93

89:                                               ; preds = %83
  %90 = load i32, ptr %14, align 4
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i64 [ %88, %86 ], [ %77, %89 ]
  %95 = phi i32 [ %87, %86 ], [ %92, %89 ]
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !43
  %99 = icmp eq i8 %98, 5
  br i1 %99, label %151, label %100

100:                                              ; preds = %93
  %101 = and i64 %94, 65535
  %102 = icmp eq i64 %101, 14
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %105 = load i64, ptr %4, align 8
  br label %110

106:                                              ; preds = %100
  %107 = load i32, ptr %14, align 4
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i64 [ %105, %103 ], [ %94, %106 ]
  %112 = phi i32 [ %104, %103 ], [ %109, %106 ]
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !43
  %116 = icmp eq i8 %115, 14
  br i1 %116, label %151, label %117

117:                                              ; preds = %110
  %118 = and i64 %111, 65535
  %119 = icmp eq i64 %118, 14
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %122 = load i64, ptr %4, align 8
  br label %127

123:                                              ; preds = %117
  %124 = load i32, ptr %14, align 4
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi i64 [ %122, %120 ], [ %111, %123 ]
  %129 = phi i32 [ %121, %120 ], [ %126, %123 ]
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !43
  %133 = icmp eq i8 %132, 7
  br i1 %133, label %151, label %134

134:                                              ; preds = %127
  %135 = and i64 %128, 65535
  %136 = icmp eq i64 %135, 14
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %139 = load i64, ptr %4, align 8
  br label %144

140:                                              ; preds = %134
  %141 = load i32, ptr %14, align 4
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i64 [ %139, %137 ], [ %128, %140 ]
  %146 = phi i32 [ %138, %137 ], [ %143, %140 ]
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !43
  %150 = icmp eq i8 %149, 16
  br i1 %150, label %151, label %168

151:                                              ; preds = %144, %127, %110, %93, %76, %59, %42, %25
  %152 = phi i64 [ %145, %144 ], [ %128, %127 ], [ %111, %110 ], [ %94, %93 ], [ %77, %76 ], [ %60, %59 ], [ %43, %42 ], [ %26, %25 ]
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 14
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %157 = load i64, ptr %4, align 8
  br label %162

158:                                              ; preds = %151
  %159 = load i32, ptr %14, align 4
  %160 = lshr i32 %159, 16
  %161 = and i32 %160, 255
  br label %162

162:                                              ; preds = %158, %155
  %163 = phi i64 [ %157, %155 ], [ %152, %158 ]
  %164 = phi i32 [ %156, %155 ], [ %161, %158 ]
  %165 = trunc i64 %163 to i32
  %166 = lshr i32 %165, 31
  %167 = tail call ptr @c_common_type_for_mode(i32 noundef %164, i32 noundef %166) #8
  br label %185

168:                                              ; preds = %144
  %169 = and i64 %145, 65535
  %170 = icmp eq i64 %169, 14
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #8
  %173 = load i64, ptr %4, align 8
  br label %178

174:                                              ; preds = %168
  %175 = load i32, ptr %14, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i64 [ %173, %171 ], [ %145, %174 ]
  %180 = phi i32 [ %172, %171 ], [ %177, %174 ]
  %181 = trunc i64 %179 to i32
  %182 = lshr i32 %181, 21
  %183 = and i32 %182, 1
  %184 = tail call ptr @c_common_type_for_mode(i32 noundef %180, i32 noundef %183) #8
  br label %185

185:                                              ; preds = %178, %162
  %186 = phi ptr [ %167, %162 ], [ %184, %178 ]
  %187 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 12
  %188 = load ptr, ptr %187, align 8, !tbaa !43
  %189 = icmp eq ptr %188, null
  br i1 %189, label %201, label %190

190:                                              ; preds = %185
  tail call void @pp_c_type_specifier(ptr noundef %0, ptr noundef nonnull %186) #9
  %191 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 1023
  %194 = icmp eq i32 %193, %16
  br i1 %194, label %239, label %195

195:                                              ; preds = %190
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  %196 = load ptr, ptr %0, align 8, !tbaa !47
  %197 = getelementptr inbounds %struct.output_buffer, ptr %196, i64 0, i32 6
  %198 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %16) #9
  %199 = load ptr, ptr %0, align 8, !tbaa !47
  %200 = getelementptr inbounds %struct.output_buffer, ptr %199, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %200) #8
  br label %239

201:                                              ; preds = %185
  switch i16 %6, label %209 [
    i16 8, label %202
    i16 9, label %207
    i16 11, label %208
  ]

202:                                              ; preds = %201
  %203 = load i64, ptr %186, align 8
  %204 = and i64 %203, 2097152
  %205 = icmp eq i64 %204, 0
  %206 = select i1 %205, ptr @.str.9, ptr @.str.8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %206) #8
  br label %210

207:                                              ; preds = %201
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.10) #8
  br label %210

208:                                              ; preds = %201
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.11) #8
  br label %210

209:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 373, ptr noundef nonnull @.str.13) #8
  br label %210

210:                                              ; preds = %202, %207, %208, %209
  %211 = load ptr, ptr %0, align 8, !tbaa !47
  %212 = getelementptr inbounds %struct.output_buffer, ptr %211, i64 0, i32 6
  %213 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %212, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %16) #9
  %214 = load ptr, ptr %0, align 8, !tbaa !47
  %215 = getelementptr inbounds %struct.output_buffer, ptr %214, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %215) #8
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #8
  br label %239

216:                                              ; preds = %3
  %217 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !43
  %219 = icmp eq ptr %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  %222 = load ptr, ptr %221, align 8, !tbaa !48
  tail call void %222(ptr noundef %0, ptr noundef nonnull %4) #8
  br label %239

223:                                              ; preds = %216
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.15) #9
  br label %239

224:                                              ; preds = %3
  br label %226

225:                                              ; preds = %3
  br label %226

226:                                              ; preds = %3, %225, %224
  %227 = phi ptr [ @.str.18, %224 ], [ @.str.16, %225 ], [ @.str.17, %3 ]
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull %227) #9
  %228 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %229 = load ptr, ptr %228, align 8, !tbaa !43
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  %233 = load ptr, ptr %232, align 8, !tbaa !48
  tail call void %233(ptr noundef %0, ptr noundef nonnull %229) #8
  br label %239

234:                                              ; preds = %226
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.20) #9
  br label %239

235:                                              ; preds = %3
  %236 = and i64 %5, 65535
  %237 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %238, ptr noundef nonnull @.str.13) #8
  br label %239

239:                                              ; preds = %210, %195, %190, %231, %234, %220, %223, %235, %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_ws_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @pp_c_whitespace(ptr noundef nonnull %0) #9
  br label %7

7:                                                ; preds = %2, %6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef %1) #8
  store i32 1, ptr %3, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2247, ptr noundef nonnull @.str.13) #8
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  br label %21

16:                                               ; preds = %9
  %17 = ptrtoint ptr %1 to i64
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @pp_c_tree_decl_identifier.xname, ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %19) #9
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi ptr [ %15, %13 ], [ @pp_c_tree_decl_identifier.xname, %16 ]
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %22) #9
  ret void
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @c_common_type_for_mode(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pp_verbatim(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_specifier_qualifier_list(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  br label %3

3:                                                ; preds = %25, %2
  %4 = phi ptr [ %1, %2 ], [ %27, %25 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @pp_c_type_qualifier_list(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %9

9:                                                ; preds = %8, %3
  %10 = trunc i64 %5 to i16
  switch i16 %10, label %43 [
    i16 12, label %11
    i16 10, label %11
    i16 20, label %25
    i16 15, label %25
    i16 13, label %28
    i16 14, label %32
  ]

11:                                               ; preds = %9, %9
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = tail call ptr @strip_pointer_operator(ptr noundef %13) #8
  tail call void @pp_c_specifier_qualifier_list(ptr noundef %0, ptr noundef %14) #9
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %18 [
    i16 15, label %17
    i16 20, label %17
  ]

17:                                               ; preds = %11, %11
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  br label %23

18:                                               ; preds = %11
  %19 = load i32, ptr @c_language, align 4, !tbaa !44
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  br label %23

23:                                               ; preds = %18, %22, %17
  %24 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 10
  br label %45

25:                                               ; preds = %9, %9, %28, %32
  %26 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  br label %3

28:                                               ; preds = %9
  %29 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.23, ptr @.str.22
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull %31) #9
  br label %25

32:                                               ; preds = %9
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.24) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %33 = load ptr, ptr %0, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.output_buffer, ptr %33, i64 0, i32 6
  %35 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1023
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %39) #9
  %41 = load ptr, ptr %0, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.output_buffer, ptr %41, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %42) #8
  tail call void @pp_c_right_paren(ptr noundef nonnull %0) #9
  tail call void @pp_c_whitespace(ptr noundef nonnull %0) #9
  br label %25

43:                                               ; preds = %9
  %44 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 13
  br label %45

45:                                               ; preds = %43, %23
  %46 = phi ptr [ %44, %43 ], [ %24, %23 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  tail call void %47(ptr noundef %0, ptr noundef nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_parameter_type_list(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = freeze i32 %12
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %18 = select i1 %15, ptr %17, ptr %16
  br label %19

19:                                               ; preds = %10, %8
  %20 = phi i1 [ true, %8 ], [ %15, %10 ]
  %21 = phi ptr [ %9, %8 ], [ %18, %10 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = icmp eq ptr %22, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  %29 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  %30 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  br label %32

31:                                               ; preds = %19
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.26) #9
  br label %52

32:                                               ; preds = %27, %45
  %33 = phi i1 [ false, %27 ], [ true, %45 ]
  %34 = phi ptr [ %22, %27 ], [ %47, %45 ]
  br i1 %33, label %35, label %36

35:                                               ; preds = %32
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr %28, align 8, !tbaa !51
  br i1 %20, label %38, label %43

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tree_list, ptr %34, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  tail call void %37(ptr noundef nonnull %0, ptr noundef %40) #8
  %41 = load ptr, ptr %30, align 8, !tbaa !52
  %42 = load ptr, ptr %39, align 8, !tbaa !43
  tail call void %41(ptr noundef nonnull %0, ptr noundef %42) #8
  br label %45

43:                                               ; preds = %36
  tail call void %37(ptr noundef nonnull %0, ptr noundef nonnull %34) #8
  %44 = load ptr, ptr %29, align 8, !tbaa !53
  tail call void %44(ptr noundef nonnull %0, ptr noundef nonnull %34) #8
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = icmp ne ptr %47, null
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %50 = icmp ne ptr %47, %49
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %32, label %52, !llvm.loop !54

52:                                               ; preds = %45, %25, %31
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_direct_abstract_declarator(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %44 [
    i16 10, label %5
    i16 20, label %8
    i16 15, label %13
    i16 1, label %48
    i16 19, label %48
    i16 7, label %48
    i16 8, label %48
    i16 9, label %48
    i16 11, label %48
    i16 6, label %48
    i16 16, label %48
    i16 17, label %48
    i16 14, label %48
    i16 13, label %48
    i16 35, label %48
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void %7(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %48

8:                                                ; preds = %2
  tail call void @pp_c_parameter_type_list(ptr noundef %0, ptr noundef nonnull %1) #9
  %9 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void %10(ptr noundef %0, ptr noundef %12) #8
  br label %48

13:                                               ; preds = %2
  tail call void @pp_c_left_bracket(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = tail call i32 @host_integerp(ptr noundef nonnull %19, i32 noundef 0) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %0, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 6
  %29 = tail call i64 @tree_low_cst(ptr noundef nonnull %19, i32 noundef 0) #8
  %30 = add nsw i64 %29, 1
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %30) #9
  %32 = load ptr, ptr %0, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.output_buffer, ptr %32, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %33) #8
  br label %39

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = tail call ptr @build_int_cst(ptr noundef %23, i64 noundef 1) #8
  %38 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %23, ptr noundef nonnull %19, ptr noundef %37) #8
  tail call void %36(ptr noundef %0, ptr noundef %38) #8
  br label %39

39:                                               ; preds = %26, %34, %17, %13
  tail call void @pp_c_right_bracket(ptr noundef %0) #9
  %40 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  tail call void %41(ptr noundef %0, ptr noundef %43) #8
  br label %48

44:                                               ; preds = %2
  %45 = and i64 %3, 65535
  %46 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %47, ptr noundef nonnull @.str.13) #8
  br label %48

48:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %44, %39, %8, %5
  ret void
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_type_id(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  tail call void @pp_c_specifier_qualifier_list(ptr noundef %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  tail call void %4(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_storage_class_specifier(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 35
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = and i64 %3, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 16777216
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = and i64 %3, 67108864
  %19 = icmp ne i64 %18, 0
  %20 = icmp eq i32 %5, 32
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12, %2
  %23 = phi ptr [ @.str.27, %2 ], [ @.str.28, %12 ], [ @.str.29, %17 ]
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull %23) #9
  br label %24

24:                                               ; preds = %22, %7, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_function_specifier(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.30) #9
  br label %12

12:                                               ; preds = %11, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_declaration_specifiers(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  tail call void %4(ptr noundef %0, ptr noundef %1) #8
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  tail call void %6(ptr noundef %0, ptr noundef %1) #8
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ %1, %2 ]
  tail call void @pp_c_specifier_qualifier_list(ptr noundef nonnull %0, ptr noundef %16) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_direct_declarator(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %41 [
    i16 32, label %5
    i16 34, label %5
    i16 35, label %5
    i16 31, label %5
    i16 30, label %5
    i16 15, label %8
    i16 10, label %8
    i16 20, label %13
    i16 29, label %20
    i16 8, label %45
    i16 9, label %45
    i16 11, label %45
    i16 6, label %45
    i16 17, label %45
    i16 16, label %45
  ]

5:                                                ; preds = %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  tail call void @pp_c_space_for_pointer_operator(ptr noundef %0, ptr noundef %7) #9
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %45

8:                                                ; preds = %2, %2
  %9 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void %10(ptr noundef %0, ptr noundef %12) #8
  br label %45

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  tail call void %15(ptr noundef %0, ptr noundef nonnull %1) #8
  %16 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  tail call void %17(ptr noundef %0, ptr noundef %19) #8
  br label %45

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  tail call void @pp_c_space_for_pointer_operator(ptr noundef %0, ptr noundef %24) #9
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1) #9
  %25 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !50
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = load ptr, ptr %21, align 8, !tbaa !43
  tail call void %31(ptr noundef nonnull %0, ptr noundef %32) #8
  br label %45

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  tail call void %35(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %36 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = load ptr, ptr %21, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  tail call void %37(ptr noundef nonnull %0, ptr noundef %40) #8
  br label %45

41:                                               ; preds = %2
  %42 = and i64 %3, 65535
  %43 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %44, ptr noundef nonnull @.str.13) #8
  br label %45

45:                                               ; preds = %2, %2, %2, %2, %2, %2, %29, %33, %41, %13, %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_declarator(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %8 [
    i16 8, label %12
    i16 9, label %12
    i16 11, label %12
    i16 6, label %12
    i16 17, label %12
    i16 16, label %12
    i16 32, label %5
    i16 34, label %5
    i16 31, label %5
    i16 15, label %5
    i16 20, label %5
    i16 29, label %5
    i16 35, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  tail call void %7(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %12

8:                                                ; preds = %2
  %9 = and i64 %3, 65535
  %10 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %11, ptr noundef nonnull @.str.13) #8
  br label %12

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_declaration(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  tail call void %4(ptr noundef %0, ptr noundef %1) #8
  tail call void @pp_c_init_declarator(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_init_declarator(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  tail call void %4(ptr noundef %0, ptr noundef %1) #8
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 29
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  tail call void @pp_c_left_paren(ptr noundef nonnull %0) #9
  %17 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void %18(ptr noundef nonnull %0, ptr noundef %20) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 41) #8
  br label %22

21:                                               ; preds = %12
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 61) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #8
  tail call void @pp_c_initializer(ptr noundef nonnull %0, ptr noundef nonnull %10) #9
  br label %22

22:                                               ; preds = %16, %21, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_attributes(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.31) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  br label %5

5:                                                ; preds = %4, %17
  %6 = phi ptr [ %1, %4 ], [ %18, %17 ]
  %7 = getelementptr inbounds %struct.tree_list, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.tree_list, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @pp_c_call_argument_list(ptr noundef %0, ptr noundef nonnull %10) #9
  br label %13

13:                                               ; preds = %12, %5
  %14 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  %18 = load ptr, ptr %14, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !62

20:                                               ; preds = %13, %17
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  br label %21

21:                                               ; preds = %2, %20
  ret void
}

; Function Attrs: optsize
declare void @pp_base_tree_identifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_call_argument_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @pp_c_expression_list(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %9

9:                                                ; preds = %8, %4, %2
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_function_definition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  tail call void %4(ptr noundef %0, ptr noundef %1) #8
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void %6(ptr noundef %0, ptr noundef %1) #8
  %7 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 1, ptr %7, align 1, !tbaa !63
  %8 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void %9(ptr noundef %0, ptr noundef %11) #8
  tail call void @pp_base_newline(ptr noundef %0) #8
  tail call void @pp_base_flush(ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare void @pp_base_newline(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pp_base_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_string_literal(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !43
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 34) #8
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = add nsw i32 %5, -1
  %9 = zext nneg i32 %8 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %15, %10 ]
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !43
  %14 = sext i8 %13 to i32
  tail call fastcc void @pp_c_char(ptr noundef %0, i32 noundef %14) #9
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %9
  br i1 %16, label %17, label %10, !llvm.loop !65

17:                                               ; preds = %10, %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 34) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_char(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !66 {
  %3 = and i32 %1, 255
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !67
  %7 = and i16 %6, 16
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  switch i32 %1, label %13 [
    i32 92, label %10
    i32 39, label %11
    i32 34, label %12
  ]

10:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.60) #8
  br label %20

11:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.61) #8
  br label %20

12:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.62) #8
  br label %20

13:                                               ; preds = %9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %1) #8
  br label %20

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.output_buffer, ptr %15, i64 0, i32 6
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %1) #9
  %18 = load ptr, ptr %0, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.output_buffer, ptr %18, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %19) #8
  br label %20

20:                                               ; preds = %10, %11, %12, %13, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_constant(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %27 [
    i16 23, label %5
    i16 24, label %23
    i16 25, label %24
    i16 28, label %25
    i16 26, label %26
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !49
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call fastcc void @pp_c_bool_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %31

11:                                               ; preds = %5
  %12 = load ptr, ptr @integer_types, align 16, !tbaa !49
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call fastcc void @pp_c_character_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %31

15:                                               ; preds = %11
  %16 = load i64, ptr %7, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 6
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call fastcc zeroext i8 @pp_c_enumeration_constant(ptr noundef %0, ptr noundef nonnull %1) #9, !range !69
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19, %15
  tail call fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %31

23:                                               ; preds = %2
  tail call fastcc void @pp_c_floating_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %31

24:                                               ; preds = %2
  tail call fastcc void @pp_c_fixed_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %31

25:                                               ; preds = %2
  tail call void @pp_c_string_literal(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %31

26:                                               ; preds = %2
  tail call fastcc void @pp_c_compound_literal(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %31

27:                                               ; preds = %2
  %28 = and i64 %3, 65535
  %29 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %30, ptr noundef nonnull @.str.13) #8
  br label %31

31:                                               ; preds = %10, %22, %19, %14, %27, %26, %25, %24, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_bool_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !70 {
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !49
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = load i32, ptr @c_language, align 4, !tbaa !44
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.64) #9
  br label %44

10:                                               ; preds = %5
  %11 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.65) #9
  br label %44

14:                                               ; preds = %10
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %18, ptr noundef nonnull @.str.13) #8
  br label %44

19:                                               ; preds = %2
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !49
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32, ptr @c_language, align 4, !tbaa !44
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.66) #9
  br label %44

27:                                               ; preds = %22
  %28 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.67) #9
  br label %44

31:                                               ; preds = %27
  %32 = load i64, ptr %1, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %35, ptr noundef nonnull @.str.13) #8
  br label %44

36:                                               ; preds = %19
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %38
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %43, ptr noundef nonnull @.str.13) #8
  br label %44

44:                                               ; preds = %30, %31, %26, %41, %40, %9, %14, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_character_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !71 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !49
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 76) #8
  br label %8

8:                                                ; preds = %7, %2
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 39) #8
  %9 = load i64, ptr %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i32 %10, 21
  %12 = and i32 %11, 1
  %13 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load i64, ptr %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 21
  %19 = and i32 %18, 1
  %20 = tail call i64 @tree_low_cst(ptr noundef nonnull %1, i32 noundef %19) #8
  %21 = trunc i64 %20 to i32
  tail call fastcc void @pp_c_char(ptr noundef %0, i32 noundef %21) #9
  br label %31

22:                                               ; preds = %8
  %23 = load ptr, ptr %0, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.output_buffer, ptr %23, i64 0, i32 6
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !43
  %27 = trunc i64 %26 to i32
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %27) #9
  %29 = load ptr, ptr %0, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.output_buffer, ptr %29, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %30) #8
  br label %31

31:                                               ; preds = %22, %15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 39) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pp_c_enumeration_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %2, %14
  %9 = phi ptr [ %16, %14 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = tail call i32 @tree_int_cst_equal(ptr noundef %11, ptr noundef %1) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %8, !llvm.loop !73

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  tail call void %20(ptr noundef %0, ptr noundef %22) #8
  br label %24

23:                                               ; preds = %14, %2
  tail call fastcc void @pp_c_type_cast(ptr noundef %0, ptr noundef %4) #9
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i8 [ 1, %18 ], [ 0, %23 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.output_buffer, ptr %10, i64 0, i32 6
  %12 = load i64, ptr %5, align 8, !tbaa !43
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %12) #9
  br label %30

14:                                               ; preds = %2
  %15 = load i64, ptr %5, align 8, !tbaa !43
  %16 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %1) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #8
  %19 = xor i64 %7, -1
  %20 = icmp eq i64 %15, 0
  %21 = zext i1 %20 to i64
  %22 = add nuw nsw i64 %21, %19
  %23 = sub i64 0, %15
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i64 [ %23, %18 ], [ %15, %14 ]
  %26 = phi i64 [ %22, %18 ], [ %7, %14 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 6
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @.str.69, i64 noundef %26, i64 noundef %25) #9
  br label %30

30:                                               ; preds = %24, %9
  %31 = load ptr, ptr %0, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.output_buffer, ptr %31, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %32) #8
  %33 = load i64, ptr %4, align 8
  %34 = and i64 %33, 2097152
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 117) #8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !49
  %39 = icmp eq ptr %4, %38
  %40 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %41 = icmp eq ptr %4, %40
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 108) #8
  br label %51

44:                                               ; preds = %37
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !49
  %46 = icmp eq ptr %4, %45
  %47 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %48 = icmp eq ptr %4, %47
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #8
  br label %51

51:                                               ; preds = %44, %50, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_floating_constant(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !75 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void @real_to_decimal(ptr noundef nonnull %4, ptr noundef %6, i64 noundef 128, i64 noundef 0, i32 noundef 1) #8
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %8) #8
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !49
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 102) #8
  br label %30

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !49
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 108) #8
  br label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !49
  %20 = icmp eq ptr %10, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.71) #8
  br label %30

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !49
  %24 = icmp eq ptr %10, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #8
  br label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !49
  %28 = icmp eq ptr %10, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #8
  br label %30

30:                                               ; preds = %17, %25, %29, %26, %21, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_fixed_constant(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  tail call void @fixed_to_decimal(ptr noundef nonnull %4, ptr noundef %6, i64 noundef 128) #8
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_compound_literal(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  tail call fastcc void @pp_c_type_cast(ptr noundef %0, ptr noundef %4) #9
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  %7 = add i16 %6, -13
  %8 = icmp ult i16 %7, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call fastcc void @pp_c_brace_enclosed_initializer_list(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %15

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %14, ptr noundef nonnull @.str.13) #8
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_primary_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %27 [
    i16 32, label %5
    i16 34, label %5
    i16 31, label %5
    i16 33, label %5
    i16 29, label %5
    i16 30, label %5
    i16 1, label %6
    i16 0, label %9
    i16 36, label %10
    i16 23, label %11
    i16 24, label %11
    i16 25, label %11
    i16 28, label %11
    i16 55, label %12
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %8) #9
  br label %30

9:                                                ; preds = %2
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.32) #9
  br label %30

10:                                               ; preds = %2
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.33) #9
  br label %30

11:                                               ; preds = %2, %2, %2, %2
  tail call void @pp_c_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %30

12:                                               ; preds = %2
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.34) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #8
  %13 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  tail call void %14(ptr noundef %0, ptr noundef %16) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #8
  %17 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void %18(ptr noundef %0, ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #8
  %25 = load ptr, ptr %21, align 8, !tbaa !43
  tail call void @pp_c_expression(ptr noundef nonnull %0, ptr noundef %25) #9
  br label %26

26:                                               ; preds = %24, %12
  tail call void @pp_c_right_paren(ptr noundef nonnull %0) #9
  br label %30

27:                                               ; preds = %2
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %28 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  tail call void %29(ptr noundef %0, ptr noundef nonnull %1) #8
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  br label %30

30:                                               ; preds = %27, %26, %11, %10, %9, %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %55 [
    i16 23, label %5
    i16 24, label %6
    i16 25, label %7
    i16 28, label %8
    i16 1, label %9
    i16 29, label %9
    i16 32, label %9
    i16 33, label %9
    i16 34, label %9
    i16 36, label %9
    i16 31, label %9
    i16 30, label %9
    i16 0, label %9
    i16 128, label %12
    i16 127, label %12
    i16 45, label %12
    i16 59, label %12
    i16 41, label %12
    i16 42, label %12
    i16 26, label %12
    i16 123, label %12
    i16 27, label %12
    i16 104, label %12
    i16 103, label %12
    i16 110, label %12
    i16 109, label %12
    i16 106, label %12
    i16 105, label %12
    i16 108, label %12
    i16 107, label %12
    i16 82, label %12
    i16 51, label %12
    i16 119, label %12
    i16 129, label %12
    i16 124, label %15
    i16 121, label %15
    i16 47, label %15
    i16 79, label %15
    i16 90, label %15
    i16 96, label %15
    i16 126, label %15
    i16 125, label %15
    i16 43, label %15
    i16 44, label %15
    i16 78, label %16
    i16 77, label %16
    i16 116, label %16
    i16 113, label %16
    i16 118, label %16
    i16 65, label %17
    i16 71, label %17
    i16 67, label %17
    i16 83, label %20
    i16 84, label %20
    i16 97, label %21
    i16 99, label %21
    i16 98, label %21
    i16 100, label %21
    i16 89, label %22
    i16 88, label %23
    i16 95, label %23
    i16 87, label %24
    i16 91, label %25
    i16 93, label %25
    i16 92, label %26
    i16 94, label %26
    i16 101, label %27
    i16 102, label %27
    i16 56, label %28
    i16 66, label %31
    i16 63, label %31
    i16 64, label %31
    i16 53, label %32
    i16 54, label %32
    i16 52, label %35
    i16 117, label %44
    i16 120, label %44
    i16 55, label %49
    i16 58, label %54
    i16 134, label %54
  ]

5:                                                ; preds = %2
  tail call fastcc void @pp_c_integer_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

6:                                                ; preds = %2
  tail call fastcc void @pp_c_floating_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

7:                                                ; preds = %2
  tail call fastcc void @pp_c_fixed_constant(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

8:                                                ; preds = %2
  tail call void @pp_c_string_literal(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %10 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  tail call void %11(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %59

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %13 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  tail call void %14(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %59

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  tail call void @pp_c_unary_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

16:                                               ; preds = %2, %2, %2, %2, %2
  tail call void @pp_c_cast_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

17:                                               ; preds = %2, %2, %2
  %18 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  tail call void %19(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %59

20:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

21:                                               ; preds = %2, %2, %2, %2
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

22:                                               ; preds = %2
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

23:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

24:                                               ; preds = %2
  tail call fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

25:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

26:                                               ; preds = %2, %2
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

27:                                               ; preds = %2, %2
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 24
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  tail call void %30(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %59

31:                                               ; preds = %2, %2, %2
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %59

32:                                               ; preds = %2, %2
  %33 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  tail call void %34(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %59

35:                                               ; preds = %2
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %36 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  tail call void %37(ptr noundef %0, ptr noundef %39) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  %40 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  %41 = load ptr, ptr %40, align 8, !tbaa !83
  %42 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  tail call void %41(ptr noundef %0, ptr noundef %43) #8
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  br label %59

44:                                               ; preds = %2, %2
  %45 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  tail call void %46(ptr noundef %0, ptr noundef %48) #8
  br label %59

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  tail call void %51(ptr noundef %0, ptr noundef %53) #8
  br label %59

54:                                               ; preds = %2, %2
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.58) #8
  br label %59

55:                                               ; preds = %2
  %56 = and i64 %3, 65535
  %57 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %58, ptr noundef nonnull @.str.13) #8
  br label %59

59:                                               ; preds = %55, %54, %49, %44, %35, %32, %31, %28, %27, %26, %25, %24, %23, %22, %21, %20, %17, %16, %15, %12, %9, %8, %7, %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pp_c_initializer(ptr noundef %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !84 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 51
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @pp_c_brace_enclosed_initializer_list(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  tail call void %9(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_id_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %9 [
    i16 32, label %5
    i16 34, label %5
    i16 33, label %5
    i16 35, label %5
    i16 29, label %5
    i16 31, label %5
    i16 30, label %5
    i16 1, label %6
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  tail call void @pp_c_tree_decl_identifier(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @pp_c_identifier(ptr noundef %0, ptr noundef %8) #9
  br label %13

9:                                                ; preds = %2
  %10 = and i64 %3, 65535
  %11 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %12, ptr noundef nonnull @.str.13) #8
  br label %13

13:                                               ; preds = %9, %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_postfix_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = alloca %struct.call_expr_arg_iterator_d, align 8
  %4 = load i64, ptr %1, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %176 [
    i16 128, label %6
    i16 127, label %6
    i16 45, label %14
    i16 59, label %23
    i16 103, label %42
    i16 104, label %46
    i16 105, label %50
    i16 106, label %54
    i16 107, label %58
    i16 108, label %62
    i16 109, label %66
    i16 110, label %70
    i16 82, label %83
    i16 41, label %88
    i16 42, label %105
    i16 26, label %147
    i16 27, label %147
    i16 123, label %148
    i16 119, label %149
    i16 51, label %156
    i16 129, label %160
    i16 121, label %169
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call void %8(ptr noundef %0, ptr noundef %10) #8
  %11 = and i64 %4, 65535
  %12 = icmp eq i64 %11, 128
  %13 = select i1 %12, ptr @.str.35, ptr @.str.36
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %13) #8
  br label %179

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  tail call void %16(ptr noundef %0, ptr noundef %18) #8
  tail call void @pp_c_left_bracket(ptr noundef %0) #9
  %19 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  tail call void %20(ptr noundef %0, ptr noundef %22) #8
  tail call void @pp_c_right_bracket(ptr noundef %0) #9
  br label %179

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %24 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  tail call void %25(ptr noundef %0, ptr noundef %27) #8
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %28 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %1, ptr noundef nonnull %3) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  br label %32

32:                                               ; preds = %30, %38
  %33 = phi ptr [ %28, %30 ], [ %39, %38 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !57
  tail call void %34(ptr noundef nonnull %0, ptr noundef nonnull %33) #8
  %35 = call fastcc zeroext i8 @more_call_expr_args_p(ptr noundef nonnull %3) #9, !range !69
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #8
  br label %38

38:                                               ; preds = %32, %37
  %39 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %3) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !85

41:                                               ; preds = %38, %23
  tail call void @pp_c_right_paren(ptr noundef nonnull %0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %179

42:                                               ; preds = %2
  %43 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @.str.38, ptr @.str.37
  br label %74

46:                                               ; preds = %2
  %47 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.40, ptr @.str.39
  br label %74

50:                                               ; preds = %2
  %51 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr @.str.42, ptr @.str.41
  br label %74

54:                                               ; preds = %2
  %55 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.44, ptr @.str.43
  br label %74

58:                                               ; preds = %2
  %59 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str.46, ptr @.str.45
  br label %74

62:                                               ; preds = %2
  %63 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.48, ptr @.str.47
  br label %74

66:                                               ; preds = %2
  %67 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr @.str.50, ptr @.str.49
  br label %74

70:                                               ; preds = %2
  %71 = load i32, ptr @flag_isoc99, align 4, !tbaa !44
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, ptr @.str.52, ptr @.str.51
  br label %74

74:                                               ; preds = %70, %66, %62, %58, %54, %50, %46, %42
  %75 = phi ptr [ %73, %70 ], [ %69, %66 ], [ %65, %62 ], [ %61, %58 ], [ %57, %54 ], [ %53, %50 ], [ %49, %46 ], [ %45, %42 ]
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull %75) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %76 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %77 = load ptr, ptr %76, align 8, !tbaa !57
  %78 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  tail call void %77(ptr noundef %0, ptr noundef %79) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  %80 = load ptr, ptr %76, align 8, !tbaa !57
  %81 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !43
  tail call void %80(ptr noundef %0, ptr noundef %82) #8
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  br label %179

83:                                               ; preds = %2
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.53) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %84 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %85 = load ptr, ptr %84, align 8, !tbaa !57
  %86 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  tail call void %85(ptr noundef %0, ptr noundef %87) #8
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  br label %179

88:                                               ; preds = %2
  %89 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !43
  %91 = load i64, ptr %90, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 47
  %94 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  br i1 %93, label %96, label %99

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.tree_exp, ptr %90, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  tail call void %95(ptr noundef %0, ptr noundef %98) #8
  tail call void @pp_c_arrow(ptr noundef %0) #9
  br label %100

99:                                               ; preds = %88
  tail call void %95(ptr noundef %0, ptr noundef nonnull %90) #8
  tail call void @pp_c_dot(ptr noundef %0) #9
  br label %100

100:                                              ; preds = %99, %96
  %101 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %102 = load ptr, ptr %101, align 8, !tbaa !57
  %103 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  tail call void %102(ptr noundef nonnull %0, ptr noundef %104) #8
  br label %179

105:                                              ; preds = %2
  %106 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !43
  %108 = load i64, ptr %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = lshr i32 %109, 21
  %111 = and i32 %110, 1
  %112 = tail call ptr @signed_or_unsigned_type_for(i32 noundef %111, ptr noundef nonnull %107) #8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %142, label %114

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.tree_type, ptr %112, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !43
  %117 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %118 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  %120 = tail call i32 @tree_int_cst_equal(ptr noundef %116, ptr noundef %119) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !43
  %125 = tail call i64 @tree_low_cst(ptr noundef %124, i32 noundef 0) #8
  %126 = load ptr, ptr %115, align 8, !tbaa !43
  %127 = tail call i64 @tree_low_cst(ptr noundef %126, i32 noundef 0) #8
  %128 = srem i64 %125, %127
  %129 = sdiv i64 %125, %127
  %130 = icmp eq i64 %128, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %122
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %132 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !86
  tail call void %133(ptr noundef %0, ptr noundef nonnull %112) #8
  tail call void @pp_c_star(ptr noundef %0) #9
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  tail call void @pp_c_ampersand(ptr noundef %0) #9
  %134 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %135 = load ptr, ptr %134, align 8, !tbaa !57
  %136 = load ptr, ptr %117, align 8, !tbaa !43
  tail call void %135(ptr noundef %0, ptr noundef %136) #8
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  tail call void @pp_c_left_bracket(ptr noundef %0) #9
  %137 = load ptr, ptr %0, align 8, !tbaa !47
  %138 = getelementptr inbounds %struct.output_buffer, ptr %137, i64 0, i32 6
  %139 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %138, ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %129) #9
  %140 = load ptr, ptr %0, align 8, !tbaa !47
  %141 = getelementptr inbounds %struct.output_buffer, ptr %140, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %141) #8
  tail call void @pp_c_right_bracket(ptr noundef nonnull %0) #9
  br label %179

142:                                              ; preds = %122, %114, %105
  %143 = load i64, ptr %1, align 8
  %144 = and i64 %143, 65535
  %145 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %146, ptr noundef nonnull @.str.13) #8
  br label %179

147:                                              ; preds = %2, %2
  tail call fastcc void @pp_c_compound_literal(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %179

148:                                              ; preds = %2
  tail call fastcc void @pp_c_complex_expr(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %179

149:                                              ; preds = %2
  %150 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !43
  %152 = getelementptr inbounds %struct.tree_exp, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !43
  %154 = getelementptr inbounds %struct.tree_decl_common, ptr %153, i64 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !43
  br label %156

156:                                              ; preds = %2, %149
  %157 = phi ptr [ %1, %2 ], [ %155, %149 ]
  %158 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  %159 = load ptr, ptr %158, align 8, !tbaa !79
  tail call void %159(ptr noundef %0, ptr noundef %157) #8
  br label %179

160:                                              ; preds = %2
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull @.str.54) #9
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %161 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  %162 = load ptr, ptr %161, align 8, !tbaa !83
  %163 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !43
  tail call void %162(ptr noundef %0, ptr noundef %164) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  %165 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %166 = load ptr, ptr %165, align 8, !tbaa !86
  %167 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !43
  tail call void %166(ptr noundef %0, ptr noundef %168) #8
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  br label %179

169:                                              ; preds = %2
  %170 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !43
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 29
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  tail call void @pp_c_id_expression(ptr noundef %0, ptr noundef nonnull %171) #9
  br label %179

176:                                              ; preds = %169, %2
  %177 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  %178 = load ptr, ptr %177, align 8, !tbaa !78
  tail call void %178(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %179

179:                                              ; preds = %131, %142, %176, %175, %160, %156, %148, %147, %100, %83, %74, %41, %14, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !34 !PGOFuncName !87 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #9
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @more_call_expr_args_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !88 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !89
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp slt i32 %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #4 !prof !34 !PGOFuncName !92 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !89
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !93
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !89
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @signed_or_unsigned_type_for(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_complex_expr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !94 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 116
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load i64, ptr %8, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 116
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, %18
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 43
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 44
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  tail call fastcc void @pp_c_type_cast(ptr noundef %0, ptr noundef nonnull %4) #9
  %45 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = load ptr, ptr %27, align 8, !tbaa !43
  %48 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  tail call void %46(ptr noundef %0, ptr noundef %49) #8
  br label %74

50:                                               ; preds = %38, %32, %26, %22, %16, %12, %2
  %51 = tail call i32 @integer_zerop(ptr noundef %8) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = tail call i32 @real_zerop(ptr noundef %8) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  tail call fastcc void @pp_c_type_cast(ptr noundef %0, ptr noundef nonnull %4) #9
  %63 = load i64, ptr %6, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 116
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !43
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi ptr [ %68, %66 ], [ %6, %62 ]
  %71 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  tail call void %72(ptr noundef %0, ptr noundef %70) #8
  br label %74

73:                                               ; preds = %56, %53
  tail call fastcc void @pp_c_compound_literal(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %74

74:                                               ; preds = %73, %69, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_expression_list(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  br label %6

6:                                                ; preds = %4, %14
  %7 = phi ptr [ %1, %4 ], [ %15, %14 ]
  %8 = load ptr, ptr %5, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call void %8(ptr noundef %0, ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #8
  %15 = load ptr, ptr %11, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !95

17:                                               ; preds = %6, %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_constructor_elts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i64 [ 0, %5 ], [ %20, %19 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %1, i32 noundef %9) #9
  %11 = getelementptr inbounds %struct.constructor_elt_d, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void %13(ptr noundef %0, ptr noundef %12) #8
  %14 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #9
  %15 = add i32 %14, -1
  %16 = zext i32 %15 to i64
  %17 = icmp eq i64 %8, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #8
  br label %19

19:                                               ; preds = %7, %18
  %20 = add nuw nsw i64 %8, 1
  %21 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #9
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %7, label %24, !llvm.loop !98

24:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !34 !PGOFuncName !99 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !100
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !34 !PGOFuncName !102 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_unary_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %1, %2 ], [ %13, %9 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = trunc i64 %5 to i16
  switch i16 %8, label %35 [
    i16 126, label %9
    i16 125, label %9
    i16 44, label %28
    i16 43, label %28
    i16 121, label %14
    i16 47, label %21
    i16 79, label %22
    i16 124, label %23
    i16 90, label %23
    i16 96, label %24
  ]

9:                                                ; preds = %3, %3
  %10 = icmp eq i32 %7, 126
  %11 = select i1 %10, ptr @.str.35, ptr @.str.36
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %11) #8
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %3

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 28
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #8
  br label %25

21:                                               ; preds = %3
  tail call void @pp_c_star(ptr noundef %0) #9
  br label %25

22:                                               ; preds = %3
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #8
  br label %25

23:                                               ; preds = %3, %3
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 126) #8
  br label %25

24:                                               ; preds = %3
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 33) #8
  br label %25

25:                                               ; preds = %14, %21, %23, %24, %22, %20
  %26 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  tail call void @pp_c_cast_expression(ptr noundef %0, ptr noundef %27) #9
  br label %38

28:                                               ; preds = %3, %3
  %29 = icmp eq i32 %7, 43
  %30 = select i1 %29, ptr @.str.55, ptr @.str.56
  tail call void @pp_c_ws_string(ptr noundef %0, ptr noundef nonnull %30) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %31 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 22
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  tail call void %32(ptr noundef %0, ptr noundef %34) #8
  br label %38

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  tail call void %37(ptr noundef %0, ptr noundef nonnull %4) #8
  br label %38

38:                                               ; preds = %35, %28, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_cast_expression(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %11, %7 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 78, label %7
    i16 77, label %7
    i16 116, label %7
    i16 113, label %7
    i16 118, label %7
  ]

7:                                                ; preds = %3, %3, %3, %3, %3
  %8 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  tail call fastcc void @pp_c_type_cast(ptr noundef %0, ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  br label %3

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  tail call void %14(ptr noundef %0, ptr noundef nonnull %4) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_type_cast(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !104 {
  tail call void @pp_c_left_paren(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  tail call void %4(ptr noundef %0, ptr noundef %1) #8
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %11 [
    i16 92, label %6
    i16 94, label %6
  ]

5:                                                ; preds = %6, %11
  ret void

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef %8) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef %10) #9
  br label %5

11:                                               ; preds = %2
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !105 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %11 [
    i16 91, label %6
    i16 93, label %6
  ]

5:                                                ; preds = %6, %11
  ret void

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call fastcc void @pp_c_logical_and_expression(ptr noundef %0, ptr noundef %8) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef %10) #9
  br label %5

11:                                               ; preds = %2
  tail call fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !106 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  %5 = add i16 %4, -83
  %6 = icmp ult i16 %5, 2
  br i1 %6, label %8, label %16

7:                                                ; preds = %8, %16
  ret void

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef %10) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %11 = and i64 %3, 65535
  %12 = icmp eq i64 %11, 83
  %13 = select i1 %12, ptr @.str.75, ptr @.str.76
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %13) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef %15) #9
  br label %7

16:                                               ; preds = %2
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !107 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  %5 = add i16 %4, -97
  %6 = icmp ult i16 %5, 4
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef %9) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  switch i16 %4, label %14 [
    i16 97, label %10
    i16 99, label %11
    i16 98, label %12
    i16 100, label %13
  ]

10:                                               ; preds = %7
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 60) #8
  br label %14

11:                                               ; preds = %7
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #8
  br label %14

12:                                               ; preds = %7
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.77) #8
  br label %14

13:                                               ; preds = %7
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.78) #8
  br label %14

14:                                               ; preds = %7, %11, %13, %12, %10
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef %16) #9
  br label %18

17:                                               ; preds = %2
  tail call fastcc void @pp_c_shift_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %18

18:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !108 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 89
  br i1 %5, label %7, label %12

6:                                                ; preds = %7, %12
  ret void

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef %9) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 38) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef %11) #9
  br label %6

12:                                               ; preds = %2
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !109 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %20 [
    i16 88, label %5
    i16 95, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %7) #9
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 88
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !35
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  tail call void @pp_c_whitespace(ptr noundef nonnull %0) #9
  br label %17

16:                                               ; preds = %5
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  br label %17

17:                                               ; preds = %15, %11, %16
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 94) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %18 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef %19) #9
  br label %21

20:                                               ; preds = %2
  tail call fastcc void @pp_c_and_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %21

21:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_inclusive_or_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !110 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 87
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %8) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 124) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef %10) #9
  br label %12

11:                                               ; preds = %2
  tail call fastcc void @pp_c_exclusive_or_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %12

12:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !111 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  %5 = add i16 %4, -101
  %6 = icmp ult i16 %5, 2
  br i1 %6, label %8, label %16

7:                                                ; preds = %8, %16
  ret void

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call fastcc void @pp_c_equality_expression(ptr noundef %0, ptr noundef %10) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %11 = and i64 %3, 65535
  %12 = icmp eq i64 %11, 101
  %13 = select i1 %12, ptr @.str.79, ptr @.str.80
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %13) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef %15) #9
  br label %7

16:                                               ; preds = %2
  tail call fastcc void @pp_c_relational_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !112 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %17 [
    i16 66, label %6
    i16 63, label %6
    i16 64, label %6
  ]

5:                                                ; preds = %17, %6
  ret void

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call fastcc void @pp_c_additive_expression(ptr noundef %0, ptr noundef %8) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %9 = icmp eq i16 %4, 66
  %10 = icmp eq i16 %4, 63
  %11 = or i1 %9, %10
  %12 = select i1 %11, i32 43, i32 45
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %12) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  tail call void %14(ptr noundef %0, ptr noundef %16) #8
  br label %5

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  tail call void %19(ptr noundef %0, ptr noundef nonnull %1) #8
  br label %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_c_statement(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !63
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @pp_base_newline(ptr noundef nonnull %0) #8
  tail call void @pp_base_indent(ptr noundef nonnull %0) #8
  store i8 0, ptr %5, align 1, !tbaa !63
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !113
  %12 = tail call i32 @dump_generic_node(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %11, i32 noundef 0, i8 noundef zeroext 1) #8
  br label %13

13:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: optsize
declare void @pp_base_indent(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @dump_generic_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @pp_c_pretty_printer_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 !prof !114 {
  %2 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !115
  %3 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 3
  store ptr @pp_c_declaration, ptr %3, align 8, !tbaa !116
  %4 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 4
  store ptr @pp_c_declaration_specifiers, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 5
  store ptr @pp_c_declarator, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 9
  store ptr @pp_c_direct_declarator, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 8
  store ptr @pp_c_specifier_qualifier_list, ptr %7, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 6
  store ptr @pp_c_abstract_declarator, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  store ptr @pp_c_direct_abstract_declarator, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 10
  store ptr @pp_c_pointer, ptr %10, align 8, !tbaa !118
  %11 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 11
  store ptr @pp_c_parameter_type_list, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 12
  store ptr @pp_c_type_id, ptr %12, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 13
  store ptr @pp_c_type_specifier, ptr %13, align 8, !tbaa !119
  %14 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 14
  store ptr @pp_c_function_specifier, ptr %14, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 15
  store ptr @pp_c_storage_class_specifier, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 17
  store ptr @pp_c_statement, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 18
  store ptr @pp_c_constant, ptr %17, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 19
  store ptr @pp_c_id_expression, ptr %18, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 20
  store ptr @pp_c_primary_expression, ptr %19, align 8, !tbaa !78
  %20 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 21
  store ptr @pp_c_postfix_expression, ptr %20, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 22
  store ptr @pp_c_unary_expression, ptr %21, align 8, !tbaa !103
  %22 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  store ptr @pp_c_initializer, ptr %22, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  store ptr @pp_c_multiplicative_expression, ptr %23, align 8, !tbaa !81
  %24 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 24
  store ptr @pp_c_conditional_expression, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 25
  store ptr @pp_c_assignment_expression, ptr %25, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  store ptr @pp_c_expression, ptr %26, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pp_c_abstract_declarator(ptr noundef %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !121 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 10
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %13 [
    i16 15, label %11
    i16 20, label %11
  ]

11:                                               ; preds = %6, %6
  tail call void @pp_c_right_paren(ptr noundef %0) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !43
  br label %13

13:                                               ; preds = %11, %6, %2
  %14 = phi ptr [ %1, %2 ], [ %8, %6 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void %16(ptr noundef %0, ptr noundef %14) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pp_c_pointer(ptr noundef %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !122 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = icmp eq i32 %6, 2
  %8 = icmp eq i64 %4, 35
  %9 = or i1 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load i64, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i64 [ %3, %2 ], [ %13, %10 ]
  %16 = phi ptr [ %1, %2 ], [ %12, %10 ]
  %17 = trunc i64 %15 to i16
  switch i16 %17, label %39 [
    i16 10, label %18
    i16 12, label %18
    i16 132, label %33
  ]

18:                                               ; preds = %14, %14
  %19 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 10
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  tail call void @pp_c_pointer(ptr noundef %0, ptr noundef nonnull %20) #9
  %25 = load i64, ptr %16, align 8
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i64 [ %25, %24 ], [ %15, %18 ]
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @pp_c_star(ptr noundef %0) #9
  br label %32

31:                                               ; preds = %26
  tail call void @pp_c_ampersand(ptr noundef %0) #9
  br label %32

32:                                               ; preds = %31, %30
  tail call void @pp_c_type_qualifier_list(ptr noundef %0, ptr noundef nonnull %16) #9
  br label %43

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !116
  %36 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  tail call void %35(ptr noundef %0, ptr noundef %37) #8
  %38 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 1, ptr %38, align 1, !tbaa !63
  br label %43

39:                                               ; preds = %14
  %40 = and i64 %15, 65535
  %41 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %42, ptr noundef nonnull @.str.13) #8
  br label %43

43:                                               ; preds = %39, %33, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pp_c_multiplicative_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !123 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %16 [
    i16 65, label %5
    i16 67, label %5
    i16 71, label %5
  ]

5:                                                ; preds = %2, %2, %2
  %6 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  tail call void %7(ptr noundef %0, ptr noundef %9) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  switch i16 %4, label %12 [
    i16 65, label %10
    i16 67, label %11
  ]

10:                                               ; preds = %5
  tail call void @pp_c_star(ptr noundef nonnull %0) #9
  br label %13

11:                                               ; preds = %5
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 47) #8
  br label %13

12:                                               ; preds = %5
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 37) #8
  br label %13

13:                                               ; preds = %11, %12, %10
  tail call void @pp_c_whitespace(ptr noundef nonnull %0) #9
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  tail call void @pp_c_cast_expression(ptr noundef nonnull %0, ptr noundef %15) #9
  br label %17

16:                                               ; preds = %2
  tail call void @pp_c_cast_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %17

17:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pp_c_conditional_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !124 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 56
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %1, %6 ], [ %16, %8 ]
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef %11) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 63) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  tail call void %12(ptr noundef %0, ptr noundef %14) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 56
  br i1 %19, label %8, label %20

20:                                               ; preds = %8, %2
  %21 = phi ptr [ %1, %2 ], [ %16, %8 ]
  tail call void @pp_c_logical_or_expression(ptr noundef %0, ptr noundef nonnull %21) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pp_c_assignment_expression(ptr noundef %0, ptr noundef %1) #0 !prof !34 !PGOFuncName !125 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -53
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  tail call void @pp_c_unary_expression(ptr noundef %0, ptr noundef %10) #9
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  %11 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void @pp_c_expression(ptr noundef %0, ptr noundef %12) #9
  br label %14

13:                                               ; preds = %2
  tail call void @pp_c_conditional_expression(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %14

14:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_c_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load i1, ptr @print_c_tree.initialized, align 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i1 true, ptr @print_c_tree.initialized, align 1
  tail call void @pp_construct(ptr noundef nonnull @print_c_tree.pp_rec, ptr noundef null, i32 noundef 0) #8
  tail call void @pp_c_pretty_printer_init(ptr noundef nonnull @print_c_tree.pp_rec) #9
  store i8 1, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 0, i32 8), align 1, !tbaa !63
  br label %5

5:                                                ; preds = %4, %2
  %6 = load ptr, ptr @print_c_tree.pp_rec, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 4
  store ptr %0, ptr %7, align 8, !tbaa !126
  %8 = load ptr, ptr getelementptr inbounds (%struct.c_pretty_print_info, ptr @print_c_tree.pp_rec, i64 0, i32 17), align 8, !tbaa !64
  tail call void %8(ptr noundef nonnull @print_c_tree.pp_rec, ptr noundef %1) #8
  tail call void @pp_base_newline(ptr noundef nonnull @print_c_tree.pp_rec) #8
  tail call void @pp_base_flush(ptr noundef nonnull @print_c_tree.pp_rec) #8
  ret void
}

; Function Attrs: optsize
declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_c_tree(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !49
  tail call void @print_c_tree(ptr noundef %2, ptr noundef %0) #9
  %3 = load ptr, ptr @stderr, align 8, !tbaa !49
  %4 = tail call i32 @fputc(i32 noundef 10, ptr noundef %3) #9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pp_base_last_position_in_text(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_brace_enclosed_initializer_list(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !130 {
  tail call void @pp_c_left_brace(ptr noundef %0) #9
  tail call fastcc void @pp_c_initializer_list(ptr noundef %0, ptr noundef %1) #9
  tail call void @pp_c_right_brace(ptr noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_c_initializer_list(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 51
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_constructor, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void @pp_c_constructor_elts(ptr noundef %0, ptr noundef %12) #9
  br label %68

13:                                               ; preds = %2
  %14 = trunc i64 %5 to i16
  switch i16 %14, label %64 [
    i16 16, label %15
    i16 17, label %15
    i16 15, label %15
    i16 14, label %43
    i16 13, label %48
  ]

15:                                               ; preds = %13, %13, %13
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = and i64 %5, 65534
  %21 = icmp eq i64 %20, 16
  %22 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 16
  br label %23

23:                                               ; preds = %19, %40
  %24 = phi ptr [ %17, %19 ], [ %41, %40 ]
  %25 = getelementptr inbounds %struct.tree_list, ptr %24, i64 0, i32 1
  br i1 %21, label %26, label %28

26:                                               ; preds = %23
  tail call void @pp_c_dot(ptr noundef %0) #9
  %27 = load ptr, ptr %25, align 8, !tbaa !43
  tail call void @pp_c_primary_expression(ptr noundef %0, ptr noundef %27) #9
  br label %33

28:                                               ; preds = %23
  tail call void @pp_c_left_bracket(ptr noundef %0) #9
  %29 = load ptr, ptr %25, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @pp_c_constant(ptr noundef %0, ptr noundef nonnull %29) #9
  br label %32

32:                                               ; preds = %31, %28
  tail call void @pp_c_right_bracket(ptr noundef %0) #9
  br label %33

33:                                               ; preds = %32, %26
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #8
  tail call void @pp_c_whitespace(ptr noundef %0) #9
  %34 = load ptr, ptr %22, align 8, !tbaa !79
  %35 = getelementptr inbounds %struct.tree_list, ptr %24, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void %34(ptr noundef %0, ptr noundef %36) #8
  %37 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %68, label %40

40:                                               ; preds = %33
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32) #8
  %41 = load ptr, ptr %37, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %68, label %23, !llvm.loop !132

43:                                               ; preds = %13
  %44 = icmp eq i32 %8, 27
  br i1 %44, label %45, label %64

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.tree_vector, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  tail call void @pp_c_expression_list(ptr noundef %0, ptr noundef %47) #9
  br label %68

48:                                               ; preds = %13
  %49 = trunc i64 %6 to i16
  switch i16 %49, label %64 [
    i16 26, label %50
    i16 123, label %50
  ]

50:                                               ; preds = %48, %48
  %51 = and i64 %6, 65535
  %52 = icmp eq i64 %51, 26
  %53 = getelementptr inbounds %struct.c_pretty_print_info, ptr %0, i64 0, i32 26
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %56 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %57 = select i1 %52, ptr %55, ptr %56
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  tail call void %54(ptr noundef %0, ptr noundef %58) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #8
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #8
  %59 = load ptr, ptr %53, align 8, !tbaa !57
  %60 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %61 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %62 = select i1 %52, ptr %60, ptr %61
  %63 = load ptr, ptr %62, align 8, !tbaa !43
  tail call void %59(ptr noundef %0, ptr noundef %63) #8
  br label %68

64:                                               ; preds = %48, %13, %43
  %65 = and i64 %5, 65535
  %66 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @pp_verbatim(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %67, ptr noundef nonnull @.str.13) #8
  br label %68

68:                                               ; preds = %33, %40, %15, %64, %50, %45, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !prof !34 !PGOFuncName !133 {
  store ptr %0, ptr %1, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @real_zerop(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !41, i64 16}
!36 = !{!"c_pretty_print_info", !37, i64 0, !38, i64 56, !41, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256}
!37 = !{!"pretty_print_info", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !38, i64 40, !39, i64 48, !39, i64 49, !39, i64 50}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"", !41, i64 0, !41, i64 4}
!43 = !{!39, !39, i64 0}
!44 = !{!41, !41, i64 0}
!45 = !{!"c-pretty-print.c:pp_c_cv_qualifier"}
!46 = !{!36, !39, i64 50}
!47 = !{!36, !38, i64 0}
!48 = !{!36, !38, i64 200}
!49 = !{!38, !38, i64 0}
!50 = !{!36, !41, i64 64}
!51 = !{!36, !38, i64 80}
!52 = !{!36, !38, i64 96}
!53 = !{!36, !38, i64 88}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!36, !38, i64 104}
!57 = !{!36, !38, i64 256}
!58 = !{!36, !38, i64 168}
!59 = !{!36, !38, i64 160}
!60 = !{!36, !38, i64 136}
!61 = !{!36, !38, i64 120}
!62 = distinct !{!62, !55}
!63 = !{!36, !39, i64 49}
!64 = !{!36, !38, i64 184}
!65 = distinct !{!65, !55}
!66 = !{!"c-pretty-print.c:pp_c_char"}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !39, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{!"c-pretty-print.c:pp_c_bool_constant"}
!71 = !{!"c-pretty-print.c:pp_c_character_constant"}
!72 = !{!"c-pretty-print.c:pp_c_enumeration_constant"}
!73 = distinct !{!73, !55}
!74 = !{!"c-pretty-print.c:pp_c_integer_constant"}
!75 = !{!"c-pretty-print.c:pp_c_floating_constant"}
!76 = !{!"c-pretty-print.c:pp_c_fixed_constant"}
!77 = !{!"c-pretty-print.c:pp_c_compound_literal"}
!78 = !{!36, !38, i64 208}
!79 = !{!36, !38, i64 176}
!80 = !{!36, !38, i64 216}
!81 = !{!36, !38, i64 232}
!82 = !{!36, !38, i64 240}
!83 = !{!36, !38, i64 248}
!84 = !{!"c-pretty-print.c:pp_c_initializer"}
!85 = distinct !{!85, !55}
!86 = !{!36, !38, i64 144}
!87 = !{!"c-pretty-print.c:first_call_expr_arg"}
!88 = !{!"c-pretty-print.c:more_call_expr_args_p"}
!89 = !{!90, !41, i64 12}
!90 = !{!"call_expr_arg_iterator_d", !38, i64 0, !41, i64 8, !41, i64 12}
!91 = !{!90, !41, i64 8}
!92 = !{!"c-pretty-print.c:next_call_expr_arg"}
!93 = !{!90, !38, i64 0}
!94 = !{!"c-pretty-print.c:pp_c_complex_expr"}
!95 = distinct !{!95, !55}
!96 = !{!97, !38, i64 8}
!97 = !{!"constructor_elt_d", !38, i64 0, !38, i64 8}
!98 = distinct !{!98, !55}
!99 = !{!"c-pretty-print.c:VEC_constructor_elt_base_length"}
!100 = !{!101, !41, i64 0}
!101 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !39, i64 8}
!102 = !{!"c-pretty-print.c:VEC_constructor_elt_base_index"}
!103 = !{!36, !38, i64 224}
!104 = !{!"c-pretty-print.c:pp_c_type_cast"}
!105 = !{!"c-pretty-print.c:pp_c_logical_and_expression"}
!106 = !{!"c-pretty-print.c:pp_c_shift_expression"}
!107 = !{!"c-pretty-print.c:pp_c_relational_expression"}
!108 = !{!"c-pretty-print.c:pp_c_and_expression"}
!109 = !{!"c-pretty-print.c:pp_c_exclusive_or_expression"}
!110 = !{!"c-pretty-print.c:pp_c_inclusive_or_expression"}
!111 = !{!"c-pretty-print.c:pp_c_equality_expression"}
!112 = !{!"c-pretty-print.c:pp_c_additive_expression"}
!113 = !{!36, !41, i64 24}
!114 = !{!"function_entry_count", i64 1}
!115 = !{!36, !38, i64 56}
!116 = !{!36, !38, i64 72}
!117 = !{!36, !38, i64 112}
!118 = !{!36, !38, i64 128}
!119 = !{!36, !38, i64 152}
!120 = !{!36, !38, i64 192}
!121 = !{!"c-pretty-print.c:pp_c_abstract_declarator"}
!122 = !{!"c-pretty-print.c:pp_c_pointer"}
!123 = !{!"c-pretty-print.c:pp_c_multiplicative_expression"}
!124 = !{!"c-pretty-print.c:pp_c_conditional_expression"}
!125 = !{!"c-pretty-print.c:pp_c_assignment_expression"}
!126 = !{!127, !38, i64 192}
!127 = !{!"", !128, i64 0, !128, i64 88, !38, i64 176, !38, i64 184, !38, i64 192, !41, i64 200, !39, i64 204}
!128 = !{!"obstack", !129, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !129, i64 40, !41, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!129 = !{!"long", !39, i64 0}
!130 = !{!"c-pretty-print.c:pp_c_brace_enclosed_initializer_list"}
!131 = !{!"c-pretty-print.c:pp_c_initializer_list"}
!132 = distinct !{!132, !55}
!133 = !{!"c-pretty-print.c:init_call_expr_arg_iterator"}
