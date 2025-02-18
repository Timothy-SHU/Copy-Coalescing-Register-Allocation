; ModuleID = 'cpp_directives.c'
source_filename = "cpp_directives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.directive = type { ptr, ptr, i16, i8, i8 }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cset_converter = type { ptr, ptr, i32 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.pragma_entry = type { ptr, ptr, i8, i8, i8, i8, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.def_pragma_macro = type { ptr, ptr, ptr }
%struct._cpp_buff = type { ptr, ptr, ptr, ptr }
%struct.answer = type { ptr, i32, [1 x %struct.cpp_token] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.if_stack = type { ptr, i32, ptr, i8, i8, i32 }
%struct.cpp_macro = type { ptr, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { ptr }
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }

@.str = private unnamed_addr constant [61 x i8] c"embedding a directive within macro arguments is not portable\00", align 1
@dtable = internal constant [19 x %struct.directive] [%struct.directive { ptr @do_define, ptr @.str.14, i16 6, i8 0, i8 8 }, %struct.directive { ptr @do_include, ptr @.str.15, i16 7, i8 0, i8 20 }, %struct.directive { ptr @do_endif, ptr @.str.16, i16 5, i8 0, i8 1 }, %struct.directive { ptr @do_ifdef, ptr @.str.17, i16 5, i8 0, i8 3 }, %struct.directive { ptr @do_if, ptr @.str.18, i16 2, i8 0, i8 19 }, %struct.directive { ptr @do_else, ptr @.str.19, i16 4, i8 0, i8 1 }, %struct.directive { ptr @do_ifndef, ptr @.str.20, i16 6, i8 0, i8 3 }, %struct.directive { ptr @do_undef, ptr @.str.21, i16 5, i8 0, i8 8 }, %struct.directive { ptr @do_line, ptr @.str.22, i16 4, i8 0, i8 16 }, %struct.directive { ptr @do_elif, ptr @.str.23, i16 4, i8 1, i8 17 }, %struct.directive { ptr @do_error, ptr @.str.24, i16 5, i8 1, i8 0 }, %struct.directive { ptr @do_pragma, ptr @.str.25, i16 6, i8 1, i8 8 }, %struct.directive { ptr @do_warning, ptr @.str.26, i16 7, i8 2, i8 0 }, %struct.directive { ptr @do_include_next, ptr @.str.27, i16 12, i8 2, i8 20 }, %struct.directive { ptr @do_ident, ptr @.str.28, i16 5, i8 2, i8 8 }, %struct.directive { ptr @do_import, ptr @.str.29, i16 6, i8 2, i8 20 }, %struct.directive { ptr @do_assert, ptr @.str.30, i16 6, i8 2, i8 32 }, %struct.directive { ptr @do_unassert, ptr @.str.31, i16 8, i8 2, i8 32 }, %struct.directive { ptr @do_ident, ptr @.str.32, i16 4, i8 2, i8 8 }], align 16
@linemarker_dir = internal constant %struct.directive { ptr @do_linemarker, ptr @.str.58, i16 1, i8 0, i8 8 }, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"style of line directive is a GCC extension\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid preprocessing directive #%s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"registering pragma with NULL handler\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"push_macro\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"pop_macro\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"poison\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"system_header\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"dependency\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"_Pragma takes a parenthesized string literal\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"__STDC_\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"unterminated #%s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"include_next\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"unassert\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"sccs\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"\22defined\22 cannot be used as a macro name\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"\22%s\22 cannot be used as a macro name as it is an operator in C++\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"no macro name given in #%s directive\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"macro names must be identifiers\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"empty filename in #%s\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"#include nested too deeply\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"pragma dependency\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"#%s expects \22FILENAME\22 or <FILENAME>\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"missing terminating > character\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"extra tokens at end of #%s directive\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"#endif without #if\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"#else without #if\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"#else after #else\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"the conditional began here\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"undefining \22%s\22\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"unexpected end of file after #line\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"\22%s\22 after #line is not a positive integer\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"line number out of range\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"\22%s\22 is not a valid filename\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.52 = private unnamed_addr constant [18 x i8] c"#elif without #if\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"#elif after #else\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"#include_next in primary source file\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"invalid #%s directive\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"\22%s\22 re-asserted\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"\22%s\22 after # is not a positive integer\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"invalid flag \22%s\22 in line directive\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"#%s is a GCC extension\00", align 1
@.str.62 = private unnamed_addr constant [34 x i8] c"#%s is a deprecated GCC extension\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"suggest not using #elif in traditional C\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"traditional C ignores #%s with the # indented\00", align 1
@.str.65 = private unnamed_addr constant [57 x i8] c"suggest hiding #%s from traditional C with an indented #\00", align 1
@.str.66 = private unnamed_addr constant [69 x i8] c"registering pragmas in namespace \22%s\22 with mismatched name expansion\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"registering pragma \22%s\22 with name expansion and no namespace\00", align 1
@.str.68 = private unnamed_addr constant [57 x i8] c"registering \22%s\22 as both a pragma and a pragma namespace\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"#pragma %s %s is already registered\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"#pragma %s is already registered\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"#pragma once in main file\00", align 1
@.str.72 = private unnamed_addr constant [37 x i8] c"invalid #pragma push_macro directive\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"invalid #pragma pop_macro directive\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"invalid #pragma GCC poison directive\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"poisoning existing macro \22%s\22\00", align 1
@.str.76 = private unnamed_addr constant [51 x i8] c"#pragma system_header ignored outside include file\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"cannot find source file %s\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"current file is older than %s\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"assertion without predicate\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"predicate must be an identifier\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"missing '(' after predicate\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"missing ')' to complete answer\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"predicate's answer is empty\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !75 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !75 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @_cpp_handle_directive(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !75 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %4 = load i8, ptr %3, align 1, !tbaa !82
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 10
  %6 = load i8, ptr %5, align 2, !tbaa !99
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 0, ptr %9, align 8, !tbaa !100
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str) #15
  br label %18

18:                                               ; preds = %16, %12
  store i8 0, ptr %3, align 1, !tbaa !82
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 0, ptr %19, align 8, !tbaa !100
  br label %20

20:                                               ; preds = %18, %10
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  store i8 1, ptr %21, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 0, ptr %22, align 1, !tbaa !103
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 72, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = getelementptr inbounds %struct.line_maps, ptr %25, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !105
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !107
  %29 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  %30 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 4
  switch i8 %31, label %61 [
    i8 53, label %32
    i8 55, label %43
  ]

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !108
  %35 = getelementptr inbounds %struct.cpp_hashnode, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %32
  %40 = lshr i8 %36, 1
  %41 = zext nneg i8 %40 to i64
  %42 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %41
  br label %61

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !109
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %49 = load i8, ptr %48, align 1, !tbaa !101
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %53 = load i8, ptr %52, align 2, !tbaa !110
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %57 = load i8, ptr %56, align 2, !tbaa !111
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.1) #15
  br label %61

61:                                               ; preds = %20, %43, %59, %55, %51, %47, %32, %39
  %62 = phi ptr [ %42, %39 ], [ null, %32 ], [ @linemarker_dir, %51 ], [ @linemarker_dir, %55 ], [ @linemarker_dir, %59 ], [ @linemarker_dir, %47 ], [ null, %43 ], [ null, %20 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %163, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.directive, ptr %62, i64 0, i32 4
  %66 = load i8, ptr %65, align 1, !tbaa !112
  %67 = and i8 %66, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 0, ptr %70, align 8, !tbaa !114
  br label %71

71:                                               ; preds = %69, %64
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %73 = load i8, ptr %72, align 2, !tbaa !110
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %77 = load i8, ptr %76, align 4, !tbaa !115
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = icmp ne i32 %1, 0
  %81 = and i8 %66, 8
  %82 = icmp eq i8 %81, 0
  %83 = or i1 %80, %82
  br i1 %83, label %177, label %84

84:                                               ; preds = %79, %75
  %85 = and i8 %66, 4
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 %85, ptr %86, align 1, !tbaa !116
  %87 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 1
  store i8 %85, ptr %87, align 1, !tbaa !117
  br i1 %74, label %92, label %154

88:                                               ; preds = %71
  %89 = and i8 %66, 4
  %90 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 %89, ptr %90, align 1, !tbaa !116
  %91 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 1
  store i8 %89, ptr %91, align 1, !tbaa !117
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %94 = load i8, ptr %93, align 2, !tbaa !111
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.directive, ptr %62, i64 0, i32 3
  %98 = load i8, ptr %97, align 2, !tbaa !118
  %99 = icmp eq i8 %98, 2
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = icmp eq ptr %62, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 15)
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %104 = load i8, ptr %103, align 2, !tbaa !119
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102, %100
  %107 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %108 = load i8, ptr %107, align 1, !tbaa !101
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.directive, ptr %62, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !120
  %113 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef %112) #15
  br label %131

114:                                              ; preds = %106, %102, %96
  %115 = and i8 %66, 32
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = icmp eq ptr %62, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 15)
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %121 = load i8, ptr %120, align 2, !tbaa !119
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %119, %114
  %124 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 12
  %125 = load i8, ptr %124, align 2, !tbaa !121
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.directive, ptr %62, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !120
  %130 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef %129) #15
  br label %131

131:                                              ; preds = %127, %123, %119, %117, %110, %92
  %132 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %133 = load i8, ptr %132, align 1, !tbaa !122
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %131
  %136 = icmp eq ptr %62, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 9)
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.63) #15
  br label %154

139:                                              ; preds = %135
  %140 = icmp eq i32 %1, 0
  %141 = getelementptr inbounds %struct.directive, ptr %62, i64 0, i32 3
  %142 = load i8, ptr %141, align 2, !tbaa !118
  %143 = icmp eq i8 %142, 0
  br i1 %140, label %149, label %144

144:                                              ; preds = %139
  br i1 %143, label %145, label %154

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.directive, ptr %62, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !120
  %148 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef %147) #15
  br label %154

149:                                              ; preds = %139
  br i1 %143, label %154, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.directive, ptr %62, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !120
  %153 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.65, ptr noundef %152) #15
  br label %154

154:                                              ; preds = %150, %149, %145, %144, %137, %131, %84
  %155 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %156 = load i8, ptr %155, align 2, !tbaa !111
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %154
  %159 = load i8, ptr %65, align 1, !tbaa !112
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  %162 = select i1 %161, ptr null, ptr %62
  br label %177

163:                                              ; preds = %61
  %164 = load i8, ptr %30, align 4
  %165 = icmp eq i8 %164, 22
  br i1 %165, label %177, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !109
  %169 = icmp eq i32 %168, 9
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %172 = load i8, ptr %171, align 2, !tbaa !111
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %29) #15
  %176 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef %175) #15
  br label %177

177:                                              ; preds = %166, %79, %158, %163, %170, %174, %154
  %178 = phi ptr [ %162, %158 ], [ %62, %154 ], [ null, %163 ], [ null, %170 ], [ null, %174 ], [ null, %79 ], [ null, %166 ]
  %179 = phi i1 [ false, %158 ], [ false, %154 ], [ false, %163 ], [ false, %170 ], [ false, %174 ], [ true, %79 ], [ true, %166 ]
  %180 = phi i32 [ 1, %158 ], [ 1, %154 ], [ 1, %163 ], [ 1, %170 ], [ 1, %174 ], [ 0, %79 ], [ 0, %166 ]
  %181 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  store ptr %178, ptr %181, align 8, !tbaa !123
  %182 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %183 = load i8, ptr %182, align 2, !tbaa !124
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  tail call fastcc void @prepare_directive_trad(ptr noundef %0)
  br label %186

186:                                              ; preds = %185, %177
  %187 = icmp eq ptr %178, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = load ptr, ptr %181, align 8, !tbaa !123
  %190 = load ptr, ptr %189, align 8, !tbaa !125
  tail call void %190(ptr noundef %0) #15
  br label %193

191:                                              ; preds = %186
  br i1 %179, label %192, label %193

192:                                              ; preds = %191
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  br label %193

193:                                              ; preds = %191, %192, %188
  tail call fastcc void @end_directive(ptr noundef %0, i32 noundef %180)
  br i1 %11, label %200, label %194

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %196 = load i8, ptr %195, align 8, !tbaa !126
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  store i8 2, ptr %3, align 1, !tbaa !82
  %199 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %199, align 8, !tbaa !100
  br label %200

200:                                              ; preds = %198, %194, %193
  br i1 %7, label %203, label %201

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %202, align 8, !tbaa !100
  br label %203

203:                                              ; preds = %201, %200
  ret i32 %180
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @_cpp_lex_token(ptr noundef) local_unnamed_addr #1

declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @prepare_directive_trad(ptr noundef %0) unnamed_addr #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = icmp eq ptr %3, @dtable
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %3, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.directive, ptr %3, i64 0, i32 4
  %9 = load i8, ptr %8, align 1, !tbaa !112
  %10 = and i8 %9, 16
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi i1 [ true, %5 ], [ %11, %7 ]
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %15 = load i8, ptr %14, align 2, !tbaa !111
  %16 = icmp eq ptr %3, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 4)
  %17 = icmp eq ptr %3, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 9)
  %18 = select i1 %16, i1 true, i1 %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  store i8 %19, ptr %20, align 4, !tbaa !127
  br i1 %18, label %21, label %22

21:                                               ; preds = %12
  store i8 0, ptr %14, align 2, !tbaa !111
  br label %22

22:                                               ; preds = %21, %12
  br i1 %13, label %30, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %25 = load i8, ptr %24, align 8, !tbaa !100
  %26 = add i8 %25, 1
  store i8 %26, ptr %24, align 8, !tbaa !100
  %27 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef %0, ptr noundef null) #15
  %28 = load i8, ptr %24, align 8, !tbaa !100
  %29 = add i8 %28, -1
  store i8 %29, ptr %24, align 8, !tbaa !100
  br label %32

30:                                               ; preds = %22
  %31 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef %0, ptr noundef null) #15
  br label %32

32:                                               ; preds = %30, %23
  store i8 %15, ptr %14, align 2, !tbaa !111
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %34 to i64
  %39 = sub i64 %37, %38
  tail call void @_cpp_overlay_buffer(ptr noundef %0, ptr noundef %34, i64 noundef %39) #15
  br label %40

40:                                               ; preds = %32, %1
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %42 = load i8, ptr %41, align 8, !tbaa !100
  %43 = add i8 %42, 1
  store i8 %43, ptr %41, align 8, !tbaa !100
  ret void
}

declare void @_cpp_backup_tokens(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @end_directive(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !130 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %4 = load i8, ptr %3, align 8, !tbaa !126
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %51, !prof !132

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %8 = load i8, ptr %7, align 2, !tbaa !124
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10, !prof !132

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !100
  %13 = add i8 %12, -1
  store i8 %13, ptr %11, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = icmp eq ptr %15, @dtable
  br i1 %16, label %51, label %17

17:                                               ; preds = %10
  tail call void @_cpp_remove_overlay(ptr noundef %0) #15
  br label %51

18:                                               ; preds = %6
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %51, label %20, !prof !133

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = getelementptr inbounds %struct.cpp_context, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !135
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !136

26:                                               ; preds = %20, %26
  tail call void @_cpp_pop_context(ptr noundef %0) #15
  %27 = load ptr, ptr %21, align 8, !tbaa !134
  %28 = getelementptr inbounds %struct.cpp_context, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !prof !136, !llvm.loop !137

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  %34 = getelementptr %struct.cpp_token, ptr %33, i64 -1, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 22
  br i1 %36, label %42, label %37, !prof !141

37:                                               ; preds = %31, %37
  %38 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  %39 = getelementptr inbounds %struct.cpp_token, ptr %38, i64 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 22
  br i1 %41, label %42, label %37, !prof !142, !llvm.loop !143

42:                                               ; preds = %37, %31
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %44 = load i32, ptr %43, align 4, !tbaa !144
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51, !prof !132

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  store ptr %47, ptr %48, align 8, !tbaa !145
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !146
  store ptr %50, ptr %32, align 8, !tbaa !140
  br label %51

51:                                               ; preds = %17, %10, %42, %46, %18, %2
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %54 = load i8, ptr %53, align 1, !tbaa !147
  %55 = icmp eq i8 %54, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 %56, ptr %57, align 1, !tbaa !103
  store i8 0, ptr %52, align 8, !tbaa !102
  %58 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  store i8 0, ptr %58, align 4, !tbaa !127
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 0, ptr %59, align 1, !tbaa !116
  %60 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  store ptr null, ptr %60, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_undef_all(ptr noundef %0) local_unnamed_addr #2 !prof !75 {
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @undefine_macros, ptr noundef null) #15
  ret void
}

declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @undefine_macros(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #5 !prof !75 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, -10688
  store i16 %6, ptr %4, align 2
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_do_file_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 !prof !148 {
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = tail call ptr @linemap_add(ptr noundef %7, i32 noundef %1, i32 noundef %4, ptr noundef %2, i32 noundef %3) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !149

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !104
  %12 = getelementptr inbounds %struct.line_map, ptr %8, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !150
  %14 = tail call i32 @linemap_line_start(ptr noundef %11, i32 noundef %13, i32 noundef 127) #15
  br label %15

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !153

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0, ptr noundef %8) #15, !prof !154
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_register_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #2 !prof !75 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.3) #15
  br label %15

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pragma_entry, ptr %10, i64 0, i32 5
  store i8 %4, ptr %13, align 1, !tbaa !155
  %14 = getelementptr inbounds %struct.pragma_entry, ptr %10, i64 0, i32 6
  store ptr %3, ptr %14, align 8, !tbaa !108
  br label %15

15:                                               ; preds = %9, %12, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !prof !157 !PGOFuncName !158 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %6 = icmp eq ptr %1, null
  br i1 %6, label %38, label %7, !prof !159

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %9) #15
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %5, %7 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !160

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pragma_entry, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !161
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %25, label %11, !prof !162, !llvm.loop !163

19:                                               ; preds = %11
  %20 = tail call ptr @_cpp_aligned_alloc(ptr noundef %0, i64 noundef 32) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  %21 = load ptr, ptr %5, align 8, !tbaa !76
  store ptr %21, ptr %20, align 8, !tbaa !164
  store ptr %20, ptr %5, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.pragma_entry, ptr %20, i64 0, i32 1
  store ptr %10, ptr %22, align 8, !tbaa !161
  %23 = getelementptr inbounds %struct.pragma_entry, ptr %20, i64 0, i32 2
  store i8 1, ptr %23, align 8, !tbaa !165
  %24 = getelementptr inbounds %struct.pragma_entry, ptr %20, i64 0, i32 5
  store i8 %3, ptr %24, align 1, !tbaa !155
  br label %35

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.pragma_entry, ptr %13, i64 0, i32 2
  %27 = load i8, ptr %26, align 8, !tbaa !165
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %63, label %29, !prof !166

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pragma_entry, ptr %13, i64 0, i32 5
  %31 = load i8, ptr %30, align 1, !tbaa !155
  %32 = icmp eq i8 %31, %3
  br i1 %32, label %35, label %33, !prof !167

33:                                               ; preds = %29
  %34 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.66, ptr noundef nonnull %1) #15
  br label %72

35:                                               ; preds = %29, %19
  %36 = phi ptr [ %13, %29 ], [ %20, %19 ]
  %37 = getelementptr inbounds %struct.pragma_entry, ptr %36, i64 0, i32 6
  br label %42

38:                                               ; preds = %4
  %39 = icmp eq i8 %3, 0
  br i1 %39, label %42, label %40, !prof !168

40:                                               ; preds = %38
  %41 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.67, ptr noundef %2) #15
  br label %72

42:                                               ; preds = %38, %35
  %43 = phi ptr [ %37, %35 ], [ %5, %38 ]
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %45 = trunc i64 %44 to i32
  %46 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %2, i32 noundef %45) #15
  br label %47

47:                                               ; preds = %51, %42
  %48 = phi ptr [ %43, %42 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51, !prof !169

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.pragma_entry, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !161
  %54 = icmp eq ptr %53, %46
  br i1 %54, label %59, label %47, !prof !170, !llvm.loop !163

55:                                               ; preds = %47
  %56 = tail call ptr @_cpp_aligned_alloc(ptr noundef %0, i64 noundef 32) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %56, i8 0, i64 32, i1 false)
  %57 = load ptr, ptr %43, align 8, !tbaa !76
  store ptr %57, ptr %56, align 8, !tbaa !164
  store ptr %56, ptr %43, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct.pragma_entry, ptr %56, i64 0, i32 1
  store ptr %46, ptr %58, align 8, !tbaa !161
  br label %72

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.pragma_entry, ptr %49, i64 0, i32 2
  %61 = load i8, ptr %60, align 8, !tbaa !165
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %25
  %64 = phi ptr [ %46, %59 ], [ %10, %25 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !171
  %66 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef %65) #15
  br label %72

67:                                               ; preds = %59
  br i1 %6, label %70, label %68

68:                                               ; preds = %67
  %69 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.69, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %72

70:                                               ; preds = %67
  %71 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.70, ptr noundef %2) #15
  br label %72

72:                                               ; preds = %63, %70, %68, %55, %40, %33
  %73 = phi ptr [ null, %33 ], [ %56, %55 ], [ null, %40 ], [ null, %68 ], [ null, %70 ], [ null, %63 ]
  ret ptr %73
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_register_deferred_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #2 !prof !174 {
  %7 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !175

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 4
  store i8 1, ptr %10, align 2, !tbaa !176
  %11 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 5
  store i8 %4, ptr %11, align 1, !tbaa !155
  %12 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 6
  store i32 %3, ptr %12, align 8, !tbaa !108
  br label %13

13:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_init_internal_pragmas(ptr noundef %0) local_unnamed_addr #2 !prof !177 {
  %2 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.4, i8 noundef zeroext 0)
  %3 = getelementptr inbounds %struct.pragma_entry, ptr %2, i64 0, i32 3
  store i8 1, ptr %3, align 1, !tbaa !178
  %4 = getelementptr inbounds %struct.pragma_entry, ptr %2, i64 0, i32 6
  store ptr @do_pragma_once, ptr %4, align 8, !tbaa !108
  %5 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 0)
  %6 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 3
  store i8 1, ptr %6, align 1, !tbaa !178
  %7 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 6
  store ptr @do_pragma_push_macro, ptr %7, align 8, !tbaa !108
  %8 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 0)
  %9 = getelementptr inbounds %struct.pragma_entry, ptr %8, i64 0, i32 3
  store i8 1, ptr %9, align 1, !tbaa !178
  %10 = getelementptr inbounds %struct.pragma_entry, ptr %8, i64 0, i32 6
  store ptr @do_pragma_pop_macro, ptr %10, align 8, !tbaa !108
  %11 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i8 noundef zeroext 0)
  %12 = getelementptr inbounds %struct.pragma_entry, ptr %11, i64 0, i32 3
  store i8 1, ptr %12, align 1, !tbaa !178
  %13 = getelementptr inbounds %struct.pragma_entry, ptr %11, i64 0, i32 6
  store ptr @do_pragma_poison, ptr %13, align 8, !tbaa !108
  %14 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i8 noundef zeroext 0)
  %15 = getelementptr inbounds %struct.pragma_entry, ptr %14, i64 0, i32 3
  store i8 1, ptr %15, align 1, !tbaa !178
  %16 = getelementptr inbounds %struct.pragma_entry, ptr %14, i64 0, i32 6
  store ptr @do_pragma_system_header, ptr %16, align 8, !tbaa !108
  %17 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i8 noundef zeroext 0)
  %18 = getelementptr inbounds %struct.pragma_entry, ptr %17, i64 0, i32 3
  store i8 1, ptr %18, align 1, !tbaa !178
  %19 = getelementptr inbounds %struct.pragma_entry, ptr %17, i64 0, i32 6
  store ptr @do_pragma_dependency, ptr %19, align 8, !tbaa !108
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_pragma_once(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.line_maps, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !179
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.71) #15
  br label %9

9:                                                ; preds = %7, %1
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  %10 = load ptr, ptr %0, align 8, !tbaa !180
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  tail call void @_cpp_mark_file_once_only(ptr noundef nonnull %0, ptr noundef %12) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_pragma_push_macro(ptr noundef %0) #2 !prof !75 {
  %2 = tail call fastcc ptr @get__Pragma_string(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 -1
  %8 = load i32, ptr %7, align 8, !tbaa !183
  %9 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @.str.72) #15
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  tail call fastcc void @skip_rest_of_line(ptr noundef %0)
  br label %66

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !108
  %13 = add i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  %16 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %17, align 1, !tbaa !108
  %20 = icmp eq i8 %19, 76
  %21 = zext i1 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = zext i32 %12 to i64
  %24 = getelementptr inbounds i8, ptr %17, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  %26 = icmp ult ptr %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %10, %36
  %28 = phi ptr [ %40, %36 ], [ %15, %10 ]
  %29 = phi ptr [ %38, %36 ], [ %22, %10 ]
  %30 = load i8, ptr %29, align 1, !tbaa !108
  %31 = icmp eq i8 %30, 92
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %29, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !108
  switch i8 %34, label %36 [
    i8 92, label %35
    i8 34, label %35
  ]

35:                                               ; preds = %32, %32
  br label %36

36:                                               ; preds = %32, %35, %27
  %37 = phi ptr [ %33, %35 ], [ %29, %27 ], [ %29, %32 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  %39 = load i8, ptr %37, align 1, !tbaa !108
  %40 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %39, ptr %28, align 1, !tbaa !108
  %41 = icmp ult ptr %38, %25
  br i1 %41, label %27, label %42, !llvm.loop !184

42:                                               ; preds = %36, %10
  %43 = phi ptr [ %15, %10 ], [ %40, %36 ]
  store i8 0, ptr %43, align 1, !tbaa !108
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  tail call fastcc void @skip_rest_of_line(ptr noundef %0)
  %44 = tail call ptr @xmalloc(i64 noundef 24) #15
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #16
  %46 = add i64 %45, 1
  %47 = tail call ptr @xmalloc(i64 noundef %46) #15
  %48 = getelementptr inbounds %struct.def_pragma_macro, ptr %44, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !185
  %49 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %15) #15
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  %51 = load ptr, ptr %50, align 8, !tbaa !187
  store ptr %51, ptr %44, align 8, !tbaa !188
  %52 = load ptr, ptr %48, align 8, !tbaa !185
  %53 = tail call ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %52) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.cpp_hashnode, ptr %53, i64 0, i32 3
  %57 = load i16, ptr %56, align 2
  %58 = and i16 %57, 63
  %59 = icmp eq i16 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.cpp_hashnode, ptr %53, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !108
  br label %63

63:                                               ; preds = %42, %55, %60
  %64 = phi ptr [ %62, %60 ], [ null, %55 ], [ null, %42 ]
  %65 = getelementptr inbounds %struct.def_pragma_macro, ptr %44, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !189
  store ptr %44, ptr %50, align 8, !tbaa !187
  br label %66

66:                                               ; preds = %63, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_pragma_pop_macro(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = tail call fastcc ptr @get__Pragma_string(ptr noundef %0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 -1
  %10 = load i32, ptr %9, align 8, !tbaa !183
  %11 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %10, i32 noundef 0, ptr noundef nonnull @.str.73) #15
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  tail call fastcc void @skip_rest_of_line(ptr noundef %0)
  br label %72

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = add i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  %18 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %19, align 1, !tbaa !108
  %22 = icmp eq i8 %21, 76
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = zext i32 %14 to i64
  %26 = getelementptr inbounds i8, ptr %19, i64 %25
  %27 = getelementptr inbounds i8, ptr %26, i64 -1
  %28 = icmp ult ptr %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %12, %38
  %30 = phi ptr [ %42, %38 ], [ %17, %12 ]
  %31 = phi ptr [ %40, %38 ], [ %24, %12 ]
  %32 = load i8, ptr %31, align 1, !tbaa !108
  %33 = icmp eq i8 %32, 92
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !108
  switch i8 %36, label %38 [
    i8 92, label %37
    i8 34, label %37
  ]

37:                                               ; preds = %34, %34
  br label %38

38:                                               ; preds = %34, %37, %29
  %39 = phi ptr [ %35, %37 ], [ %31, %29 ], [ %31, %34 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  %41 = load i8, ptr %39, align 1, !tbaa !108
  %42 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %41, ptr %30, align 1, !tbaa !108
  %43 = icmp ult ptr %40, %27
  br i1 %43, label %29, label %44, !llvm.loop !190

44:                                               ; preds = %38, %12
  %45 = phi ptr [ %17, %12 ], [ %42, %38 ]
  store i8 0, ptr %45, align 1, !tbaa !108
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  tail call fastcc void @skip_rest_of_line(ptr noundef %0)
  %46 = icmp eq ptr %3, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.def_pragma_macro, ptr %3, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !185
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %17) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %68

52:                                               ; preds = %68
  %53 = getelementptr inbounds %struct.def_pragma_macro, ptr %70, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !185
  %55 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %17) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68, !llvm.loop !191

57:                                               ; preds = %52, %47
  %58 = phi ptr [ %3, %47 ], [ %70, %52 ]
  %59 = phi ptr [ null, %47 ], [ %69, %52 ]
  %60 = phi ptr [ %49, %47 ], [ %54, %52 ]
  %61 = getelementptr inbounds %struct.def_pragma_macro, ptr %58, i64 0, i32 1
  %62 = icmp eq ptr %59, null
  %63 = load ptr, ptr %58, align 8, !tbaa !188
  %64 = select i1 %62, ptr %2, ptr %59
  store ptr %63, ptr %64, align 8, !tbaa !76
  %65 = getelementptr inbounds %struct.def_pragma_macro, ptr %58, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !189
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %60, ptr noundef %66)
  %67 = load ptr, ptr %61, align 8, !tbaa !185
  tail call void @free(ptr noundef %67) #15
  tail call void @free(ptr noundef %58) #15
  br label %72

68:                                               ; preds = %47, %52
  %69 = phi ptr [ %70, %52 ], [ %3, %47 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !188
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %52, !llvm.loop !191

72:                                               ; preds = %68, %44, %57, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_pragma_poison(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  store i8 1, ptr %2, align 1, !tbaa !192
  br label %3

3:                                                ; preds = %25, %1
  %4 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %7 [
    i8 22, label %26
    i8 53, label %9
  ]

7:                                                ; preds = %3
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.74) #15
  br label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.cpp_hashnode, ptr %11, i64 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = and i16 %13, 63
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr %11, align 8, !tbaa !171
  %21 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef %20) #15
  br label %22

22:                                               ; preds = %19, %16
  tail call void @_cpp_free_definition(ptr noundef %11) #15
  %23 = load i16, ptr %12, align 2
  %24 = or i16 %23, 640
  store i16 %24, ptr %12, align 2
  br label %25

25:                                               ; preds = %22, %9
  br label %3, !llvm.loop !193

26:                                               ; preds = %3, %7
  store i8 0, ptr %2, align 1, !tbaa !192
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_pragma_system_header(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.line_maps, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !179
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.76) #15
  br label %10

9:                                                ; preds = %1
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  tail call fastcc void @skip_rest_of_line(ptr noundef %0)
  tail call void @cpp_make_system_header(ptr noundef %0, i32 noundef 1, i32 noundef 0) #15
  br label %10

10:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_pragma_dependency(ptr noundef %0) #2 !prof !75 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call fastcc ptr @parse_include(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4, !tbaa !80
  %8 = tail call i32 @_cpp_compare_file_date(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull %4) #15
  br label %21

12:                                               ; preds = %6
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.78, ptr noundef nonnull %4) #15
  %16 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %17 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 22
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  tail call fastcc void @do_diagnostic(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %21

21:                                               ; preds = %12, %20, %14, %10
  tail call void @free(ptr noundef %4) #15
  br label %22

22:                                               ; preds = %1, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @_cpp_save_pragma_names(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  %4 = tail call fastcc i32 @count_registered_pragmas(ptr noundef %3)
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @xmalloc(i64 noundef %6) #15
  %8 = load ptr, ptr %2, align 8, !tbaa !194
  %9 = tail call fastcc ptr @save_registered_pragmas(ptr noundef %8, ptr noundef %7)
  ret ptr %7
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_registered_pragmas(ptr noundef readonly %0) unnamed_addr #6 !prof !75 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %14
  %4 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %5 = phi ptr [ %17, %14 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !165
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = tail call fastcc i32 @count_registered_pragmas(ptr noundef %11)
  %13 = add nsw i32 %12, %4
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %13, %9 ], [ %4, %3 ]
  %16 = add nsw i32 %15, 1
  %17 = load ptr, ptr %5, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !195

19:                                               ; preds = %14, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %14 ]
  ret i32 %20
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @save_registered_pragmas(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #2 !prof !75 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2, %14
  %5 = phi ptr [ %25, %14 ], [ %1, %2 ]
  %6 = phi ptr [ %26, %14 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.pragma_entry, ptr %6, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !165
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pragma_entry, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = tail call fastcc ptr @save_registered_pragmas(ptr noundef %12, ptr noundef %5)
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi ptr [ %13, %10 ], [ %5, %4 ]
  %16 = getelementptr inbounds %struct.pragma_entry, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !161
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !196
  %21 = zext i32 %20 to i64
  %22 = add i32 %20, 1
  %23 = zext i32 %22 to i64
  %24 = tail call ptr @xmemdup(ptr noundef %18, i64 noundef %21, i64 noundef %23) #15
  %25 = getelementptr inbounds ptr, ptr %15, i64 1
  store ptr %24, ptr %15, align 8, !tbaa !76
  %26 = load ptr, ptr %6, align 8, !tbaa !164
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %4, !llvm.loop !197

28:                                               ; preds = %14, %2
  %29 = phi ptr [ %1, %2 ], [ %25, %14 ]
  ret ptr %29
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_restore_pragma_names(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !75 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = tail call fastcc ptr @restore_registered_pragmas(ptr noundef %0, ptr noundef %4, ptr noundef %1)
  tail call void @free(ptr noundef %1) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @restore_registered_pragmas(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !75 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3, %15
  %6 = phi ptr [ %23, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %24, %15 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !165
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = tail call fastcc ptr @restore_registered_pragmas(ptr noundef %0, ptr noundef %13, ptr noundef %6)
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %14, %11 ], [ %6, %5 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #16
  %19 = trunc i64 %18 to i32
  %20 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %17, i32 noundef %19) #15
  %21 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !161
  %22 = load ptr, ptr %16, align 8, !tbaa !76
  tail call void @free(ptr noundef %22) #15
  %23 = getelementptr inbounds ptr, ptr %16, i64 1
  %24 = load ptr, ptr %7, align 8, !tbaa !164
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %5, !llvm.loop !198

26:                                               ; preds = %15, %3
  %27 = phi ptr [ %2, %3 ], [ %23, %15 ]
  ret ptr %27
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @_cpp_do__Pragma(ptr noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = tail call fastcc ptr @get__Pragma_string(ptr noundef %0)
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 72, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  tail call fastcc void @destringize_and_run(ptr noundef %0, ptr noundef nonnull %6)
  br label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.11) #15
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ 1, %5 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get__Pragma_string(ptr noundef %0) unnamed_addr #2 !prof !75 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ undef, %1 ], [ %8, %2 ]
  %4 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 72
  %8 = select i1 %7, ptr %3, ptr %4
  br i1 %7, label %2, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 22
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i8, ptr %10, align 4
  %16 = icmp eq i8 %15, 20
  br i1 %16, label %17, label %49

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %23, %17 ], [ undef, %14 ]
  %19 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 72
  %23 = select i1 %22, ptr %18, ptr %19
  br i1 %22, label %17, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 22
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i8, ptr %25, align 4
  %31 = add i8 %30, -61
  %32 = icmp ult i8 %31, 5
  br i1 %32, label %33, label %49

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %39, %33 ], [ undef, %29 ]
  %35 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %36 = getelementptr inbounds %struct.cpp_token, ptr %35, i64 0, i32 1
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 72
  %39 = select i1 %38, ptr %34, ptr %35
  br i1 %38, label %33, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.cpp_token, ptr %39, i64 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 22
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i8, ptr %41, align 4
  %47 = icmp eq i8 %46, 21
  %48 = select i1 %47, ptr %23, ptr null
  br label %49

49:                                               ; preds = %29, %45, %14
  %50 = phi ptr [ null, %14 ], [ null, %29 ], [ %48, %45 ]
  ret ptr %50
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @destringize_and_run(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !75 {
  %3 = load i32, ptr %1, align 8, !tbaa !199
  %4 = add i32 %3, -1
  %5 = zext i32 %4 to i64
  %6 = alloca i8, i64 %5, align 16
  %7 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !201
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = load i8, ptr %8, align 1, !tbaa !108
  %11 = icmp eq i8 %10, 76
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = zext i32 %3 to i64
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = getelementptr inbounds i8, ptr %15, i64 -1
  %17 = icmp ult ptr %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2, %27
  %19 = phi ptr [ %29, %27 ], [ %13, %2 ]
  %20 = phi ptr [ %31, %27 ], [ %6, %2 ]
  %21 = load i8, ptr %19, align 1, !tbaa !108
  %22 = icmp eq i8 %21, 92
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %19, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !108
  switch i8 %25, label %27 [
    i8 92, label %26
    i8 34, label %26
  ]

26:                                               ; preds = %23, %23
  br label %27

27:                                               ; preds = %23, %26, %18
  %28 = phi ptr [ %24, %26 ], [ %19, %18 ], [ %19, %23 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !108
  %31 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %30, ptr %20, align 1, !tbaa !108
  %32 = icmp ult ptr %29, %16
  br i1 %32, label %18, label %33, !llvm.loop !202

33:                                               ; preds = %27, %2
  %34 = phi ptr [ %6, %2 ], [ %31, %27 ]
  store i8 10, ptr %34, align 1, !tbaa !108
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !134
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %38 = load ptr, ptr %37, align 8, !tbaa !140
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %40 = load ptr, ptr %39, align 8, !tbaa !145
  %41 = tail call ptr @xmalloc(i64 noundef 56) #15
  store ptr %41, ptr %35, align 8, !tbaa !134
  %42 = getelementptr inbounds %struct.cpp_context, ptr %41, i64 0, i32 4
  store ptr null, ptr %42, align 8, !tbaa !203
  %43 = ptrtoint ptr %34 to i64
  %44 = ptrtoint ptr %6 to i64
  %45 = sub i64 %43, %44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %46 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %45, i32 noundef 1)
  %47 = load ptr, ptr %0, align 8, !tbaa !180
  %48 = getelementptr inbounds %struct.cpp_buffer, ptr %47, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !204
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.cpp_buffer, ptr %49, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !181
  %54 = getelementptr inbounds %struct.cpp_buffer, ptr %47, i64 0, i32 10
  store ptr %53, ptr %54, align 8, !tbaa !181
  br label %55

55:                                               ; preds = %51, %33
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  store i8 1, ptr %56, align 8, !tbaa !102
  %57 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 0, ptr %57, align 1, !tbaa !103
  %58 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 72, ptr %58, align 4
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !104
  %61 = getelementptr inbounds %struct.line_maps, ptr %60, i64 0, i32 8
  %62 = load i32, ptr %61, align 4, !tbaa !105
  %63 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  store i32 %62, ptr %63, align 8, !tbaa !107
  call void @_cpp_clean_line(ptr noundef nonnull %0) #15
  %64 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !123
  store ptr getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 11), ptr %64, align 8, !tbaa !123
  call void @do_pragma(ptr noundef nonnull %0)
  call fastcc void @end_directive(ptr noundef nonnull %0, i32 noundef 1)
  store ptr %65, ptr %64, align 8, !tbaa !123
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  %67 = load i8, ptr %58, align 4
  %68 = icmp eq i8 %67, 70
  br i1 %68, label %69, label %95

69:                                               ; preds = %55
  %70 = call ptr @xmalloc(i64 noundef 1200) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(24) %66, i64 24, i1 false), !tbaa.struct !205
  br label %71

71:                                               ; preds = %83, %69
  %72 = phi i64 [ %88, %83 ], [ 1, %69 ]
  %73 = phi ptr [ %84, %83 ], [ %70, %69 ]
  %74 = phi i32 [ %85, %83 ], [ 50, %69 ]
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = mul nsw i32 %74, 3
  %79 = sdiv i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, 24
  %82 = call ptr @xrealloc(ptr noundef %73, i64 noundef %81) #15
  br label %83

83:                                               ; preds = %71, %77
  %84 = phi ptr [ %82, %77 ], [ %73, %71 ]
  %85 = phi i32 [ %79, %77 ], [ %74, %71 ]
  %86 = getelementptr inbounds %struct.cpp_token, ptr %84, i64 %72
  %87 = call ptr @cpp_get_token(ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %86, ptr noundef nonnull align 8 dereferenceable(24) %87, i64 24, i1 false), !tbaa.struct !205
  %88 = add nuw i64 %72, 1
  %89 = getelementptr inbounds %struct.cpp_token, ptr %84, i64 %72, i32 2
  %90 = load i16, ptr %89, align 2, !tbaa !207
  %91 = or i16 %90, 32
  store i16 %91, ptr %89, align 2, !tbaa !207
  %92 = getelementptr inbounds %struct.cpp_token, ptr %84, i64 %72, i32 1
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, 71
  br i1 %94, label %102, label %71, !llvm.loop !208

95:                                               ; preds = %55
  %96 = call ptr @xmalloc(i64 noundef 24) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(24) %66, i64 24, i1 false), !tbaa.struct !205
  %97 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  %98 = load ptr, ptr %97, align 8, !tbaa !209
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %37, align 8, !tbaa !140
  call void %98(ptr noundef nonnull %0, ptr noundef %101, i32 noundef 0) #15
  br label %104

102:                                              ; preds = %83
  %103 = trunc i64 %88 to i32
  br label %104

104:                                              ; preds = %102, %95, %100
  %105 = phi ptr [ %96, %100 ], [ %96, %95 ], [ %84, %102 ]
  %106 = phi i32 [ 1, %100 ], [ 1, %95 ], [ %103, %102 ]
  %107 = load ptr, ptr %0, align 8, !tbaa !180
  %108 = getelementptr inbounds %struct.cpp_buffer, ptr %107, i64 0, i32 10
  store ptr null, ptr %108, align 8, !tbaa !181
  call void @_cpp_pop_buffer(ptr noundef nonnull %0)
  %109 = load ptr, ptr %35, align 8, !tbaa !134
  call void @free(ptr noundef %109) #15
  store ptr %36, ptr %35, align 8, !tbaa !134
  store ptr %38, ptr %37, align 8, !tbaa !140
  store ptr %40, ptr %39, align 8, !tbaa !145
  call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef null, ptr noundef %105, i32 noundef %106) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @_cpp_test_assertion(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 !prof !75 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = call fastcc ptr @parse_assertion(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4)
  store i32 0, ptr %1, align 4, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_hashnode, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 63
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @find_answer(ptr noundef nonnull %4, ptr noundef nonnull %12)
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %11, %14, %6
  %20 = phi i32 [ 0, %6 ], [ 1, %11 ], [ %18, %14 ]
  store i32 %20, ptr %1, align 4, !tbaa !80
  br label %28

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %23 = load ptr, ptr %22, align 8, !tbaa !140
  %24 = getelementptr %struct.cpp_token, ptr %23, i64 -1, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 22
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  br label %28

28:                                               ; preds = %21, %27, %19
  %29 = zext i1 %5 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %29
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @parse_assertion(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #2 !prof !210 !PGOFuncName !211 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %5 = load i8, ptr %4, align 8, !tbaa !100
  %6 = add i8 %5, 1
  store i8 %6, ptr %4, align 8, !tbaa !100
  store ptr null, ptr %1, align 8, !tbaa !76
  %7 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %12 [
    i8 22, label %10
    i8 53, label %15
  ], !prof !212

10:                                               ; preds = %3
  %11 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.79) #15
  br label %85

12:                                               ; preds = %3
  %13 = load i32, ptr %7, align 8, !tbaa !183
  %14 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @.str.80) #15
  br label %85

15:                                               ; preds = %3
  %16 = load i32, ptr %7, align 8, !tbaa !183
  %17 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %18 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 20
  br i1 %20, label %27, label %21, !prof !213

21:                                               ; preds = %15
  switch i32 %2, label %25 [
    i32 4, label %22
    i32 17, label %23
  ]

22:                                               ; preds = %21
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  br label %73

23:                                               ; preds = %21
  %24 = icmp eq i8 %19, 22
  br i1 %24, label %73, label %25

25:                                               ; preds = %23, %21
  %26 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %16, i32 noundef 0, ptr noundef nonnull @.str.81) #15
  br label %85

27:                                               ; preds = %15, %61
  %28 = phi i32 [ %62, %61 ], [ 0, %15 ]
  %29 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %30 = getelementptr inbounds %struct.cpp_token, ptr %29, i64 0, i32 1
  %31 = load i8, ptr %30, align 4
  switch i8 %31, label %34 [
    i8 21, label %59
    i8 22, label %32
  ], !prof !214

32:                                               ; preds = %27
  %33 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.82) #15
  br label %59

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %36 = zext i32 %28 to i64
  %37 = mul nuw nsw i64 %36, 24
  %38 = add nuw nsw i64 %37, 40
  %39 = load ptr, ptr %35, align 8, !tbaa !215
  %40 = getelementptr inbounds %struct._cpp_buff, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !216
  %42 = getelementptr inbounds %struct._cpp_buff, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !218
  %44 = ptrtoint ptr %41 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp ult i64 %46, %38
  br i1 %47, label %48, label %49, !prof !219

48:                                               ; preds = %34
  tail call void @_cpp_extend_buff(ptr noundef %0, ptr noundef nonnull %35, i64 noundef 40) #15
  br label %49

49:                                               ; preds = %48, %34
  %50 = load ptr, ptr %35, align 8, !tbaa !215
  %51 = getelementptr inbounds %struct._cpp_buff, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !218
  %53 = getelementptr inbounds %struct.answer, ptr %52, i64 0, i32 2, i64 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false), !tbaa.struct !205
  %54 = icmp eq i32 %28, 0
  br i1 %54, label %55, label %59, !prof !213

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.answer, ptr %52, i64 0, i32 2, i64 %36, i32 2
  %57 = load i16, ptr %56, align 2, !tbaa !207
  %58 = and i16 %57, -2
  store i16 %58, ptr %56, align 2, !tbaa !207
  br label %59

59:                                               ; preds = %55, %49, %32, %27
  %60 = phi i32 [ 1, %32 ], [ 2, %27 ], [ 0, %55 ], [ 0, %49 ]
  switch i32 %60, label %85 [
    i32 0, label %61
    i32 2, label %63
  ], !prof !220

61:                                               ; preds = %59
  %62 = add i32 %28, 1
  br label %27, !llvm.loop !221

63:                                               ; preds = %59
  %64 = icmp eq i32 %28, 0
  br i1 %64, label %65, label %67, !prof !219

65:                                               ; preds = %63
  %66 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.83) #15
  br label %85

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !215
  %70 = getelementptr inbounds %struct._cpp_buff, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !218
  %72 = getelementptr inbounds %struct.answer, ptr %71, i64 0, i32 1
  store i32 %28, ptr %72, align 8, !tbaa !222
  store ptr null, ptr %71, align 8, !tbaa !224
  store ptr %71, ptr %1, align 8, !tbaa !76
  br label %73

73:                                               ; preds = %23, %67, %22
  %74 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !108
  %76 = getelementptr inbounds %struct.ht_identifier, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !196
  %78 = add i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = alloca i8, i64 %79, align 16
  store i8 35, ptr %80, align 16, !tbaa !108
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  %82 = load ptr, ptr %75, align 8, !tbaa !171
  %83 = zext i32 %77 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %81, ptr align 1 %82, i64 %83, i1 false), !prof !225
  %84 = call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull %80, i32 noundef %78) #15
  br label %85

85:                                               ; preds = %59, %65, %25, %12, %73, %10
  %86 = phi ptr [ null, %10 ], [ null, %12 ], [ %84, %73 ], [ null, %25 ], [ null, %65 ], [ null, %59 ]
  %87 = load i8, ptr %4, align 8, !tbaa !100
  %88 = add i8 %87, -1
  store i8 %88, ptr %4, align 8, !tbaa !100
  ret ptr %86
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @find_answer(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #2 !prof !226 !PGOFuncName !227 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6, !prof !228

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %36
  %9 = phi ptr [ %4, %6 ], [ %38, %36 ]
  %10 = phi ptr [ %3, %6 ], [ %37, %36 ]
  %11 = getelementptr inbounds %struct.answer, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !222
  %13 = load i32, ptr %7, align 8, !tbaa !222
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %36, !prof !229

15:                                               ; preds = %8
  %16 = load i32, ptr %11, align 8, !tbaa !222
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18, !prof !230

18:                                               ; preds = %15, %24
  %19 = phi i64 [ %25, %24 ], [ 0, %15 ]
  %20 = getelementptr inbounds %struct.answer, ptr %9, i64 0, i32 2, i64 %19
  %21 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %19
  %22 = tail call i32 @_cpp_equiv_tokens(ptr noundef nonnull %20, ptr noundef nonnull %21) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !prof !229

24:                                               ; preds = %18
  %25 = add nuw nsw i64 %19, 1
  %26 = load i32, ptr %11, align 8, !tbaa !222
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %18, label %29, !prof !229, !llvm.loop !231

29:                                               ; preds = %18, %24
  %30 = phi i64 [ %25, %24 ], [ %19, %18 ]
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %29, %15
  %33 = phi i32 [ 0, %15 ], [ %31, %29 ]
  %34 = load i32, ptr %11, align 8, !tbaa !222
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36, !prof !153

36:                                               ; preds = %32, %8
  %37 = load ptr, ptr %10, align 8, !tbaa !76
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %8, !prof !232, !llvm.loop !233

40:                                               ; preds = %36, %32, %2
  %41 = phi ptr [ %3, %2 ], [ %37, %36 ], [ %10, %32 ]
  ret ptr %41
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_define(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !234 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %4 = add i64 %3, 3
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %1, i64 %3, i1 false), !prof !235
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 61) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !236

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds i8, ptr %5, i64 %11
  store i8 32, ptr %12, align 1, !tbaa !108
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 32, ptr %14, align 1, !tbaa !108
  %15 = add i64 %3, 2
  %16 = getelementptr i8, ptr %14, i64 1
  store i8 49, ptr %16, align 1, !tbaa !108
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %3, %8 ], [ %15, %13 ]
  %19 = getelementptr inbounds i8, ptr %5, i64 %18
  store i8 10, ptr %19, align 1, !tbaa !108
  call fastcc void @run_directive(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, i64 noundef %18)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @run_directive(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 !prof !130 !PGOFuncName !237 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 192, ptr %5, align 8, !tbaa !238
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 192
  br i1 %13, label %14, label %16, !prof !241

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  tail call void @_obstack_newchunk(ptr noundef nonnull %15, i32 noundef 192) #15
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i64, ptr %5, align 8, !tbaa !238
  %18 = load ptr, ptr %8, align 8, !tbaa !240
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  store ptr %19, ptr %8, align 8, !tbaa !240
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !242
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %27, !prof !241

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 10
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = ptrtoint ptr %21 to i64
  store i64 %28, ptr %5, align 8, !tbaa !238
  %29 = ptrtoint ptr %19 to i64
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !243
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %29
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr %8, align 8, !tbaa !240
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !244
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %36, %40
  %42 = load ptr, ptr %6, align 8, !tbaa !239
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %43, %40
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47, !prof !241

46:                                               ; preds = %27
  store ptr %42, ptr %8, align 8, !tbaa !240
  br label %47

47:                                               ; preds = %27, %46
  %48 = load ptr, ptr %8, align 8, !tbaa !240
  store ptr %48, ptr %20, align 8, !tbaa !242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %21, i8 0, i64 192, i1 false)
  %49 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 3
  store ptr %2, ptr %49, align 8, !tbaa !245
  %50 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 2
  store ptr %2, ptr %50, align 8, !tbaa !246
  %51 = getelementptr inbounds i8, ptr %2, i64 %3
  %52 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 4
  store ptr %51, ptr %52, align 8, !tbaa !247
  %53 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 14
  %54 = load i8, ptr %53, align 1
  %55 = or i8 %54, 2
  store i8 %55, ptr %53, align 1
  %56 = load ptr, ptr %0, align 8, !tbaa !180
  %57 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 9
  store ptr %56, ptr %57, align 8, !tbaa !204
  %58 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 13
  store i8 1, ptr %58, align 8, !tbaa !248
  store ptr %21, ptr %0, align 8, !tbaa !180
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  store i8 1, ptr %59, align 8, !tbaa !102
  %60 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 0, ptr %60, align 1, !tbaa !103
  %61 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 72, ptr %61, align 4
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !104
  %64 = getelementptr inbounds %struct.line_maps, ptr %63, i64 0, i32 8
  %65 = load i32, ptr %64, align 4, !tbaa !105
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  store i32 %65, ptr %66, align 8, !tbaa !107
  tail call void @_cpp_clean_line(ptr noundef nonnull %0) #15
  %67 = zext nneg i32 %1 to i64
  %68 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  store ptr %68, ptr %69, align 8, !tbaa !123
  %70 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %71 = load i8, ptr %70, align 2, !tbaa !124
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73, !prof !132

73:                                               ; preds = %47
  tail call fastcc void @prepare_directive_trad(ptr noundef nonnull %0)
  br label %74

74:                                               ; preds = %73, %47
  %75 = load ptr, ptr %69, align 8, !tbaa !123
  %76 = load ptr, ptr %75, align 8, !tbaa !125
  tail call void %76(ptr noundef nonnull %0) #15, !prof !249
  tail call fastcc void @end_directive(ptr noundef nonnull %0, i32 noundef 1)
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_define_formatted(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #2 !prof !148 {
  %3 = alloca ptr, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr null, ptr %3, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vasprintf(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #15
  call void @llvm.va_end(ptr %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !76
  call void @cpp_define(ptr noundef %0, ptr noundef %6)
  %7 = load ptr, ptr %3, align 8, !tbaa !76
  call void @free(ptr noundef %7) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_define_builtin(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !226 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %4 = add i64 %3, 1
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %1, i64 %3, i1 false), !prof !250
  %6 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 10, ptr %6, align 1, !tbaa !108
  call fastcc void @run_directive(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, i64 noundef %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_undef(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !75 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %4 = add i64 %3, 1
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %1, i64 %3, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 10, ptr %6, align 1, !tbaa !108
  call fastcc void @run_directive(ptr noundef %0, i32 noundef 7, ptr noundef nonnull %5, i64 noundef %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_push_definition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !75 {
  %3 = tail call ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 63
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  br label %13

13:                                               ; preds = %2, %5, %10
  %14 = phi ptr [ %12, %10 ], [ null, %5 ], [ null, %2 ]
  ret ptr %14
}

declare ptr @_cpp_lex_identifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_pop_definition(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !75 {
  %4 = tail call ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.cpp_hashnode, ptr %4, i64 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 63
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !252
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !107
  tail call void %18(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %4) #15
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %25 = load i8, ptr %24, align 2, !tbaa !253
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @_cpp_warn_if_unused_macro(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null) #15
  br label %29

29:                                               ; preds = %23, %27, %11
  %30 = load i16, ptr %12, align 2
  %31 = and i16 %30, 63
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_cpp_free_definition(ptr noundef nonnull %4) #15
  br label %34

34:                                               ; preds = %33, %29
  %35 = icmp eq ptr %2, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %34
  %37 = load i16, ptr %12, align 2
  %38 = and i16 %37, -64
  %39 = or disjoint i16 %38, 1
  store i16 %39, ptr %12, align 2
  %40 = getelementptr inbounds %struct.cpp_hashnode, ptr %4, i64 0, i32 4
  store ptr %2, ptr %40, align 8, !tbaa !108
  %41 = load ptr, ptr %4, align 8, !tbaa !171
  %42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(8) @.str.12, i64 noundef 7) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = or i16 %38, 1025
  store i16 %45, ptr %12, align 2
  br label %46

46:                                               ; preds = %44, %36
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !254
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !107
  tail call void %48(ptr noundef %0, i32 noundef %52, ptr noundef nonnull %4) #15
  br label %53

53:                                               ; preds = %34, %50, %46, %3
  ret void
}

declare i32 @_cpp_warn_if_unused_macro(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cpp_free_definition(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_assert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !210 {
  tail call fastcc void @handle_assertion(ptr noundef %0, ptr noundef %1, i32 noundef 16)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @handle_assertion(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !210 !PGOFuncName !255 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 61) #16
  %6 = add i64 %4, 2
  %7 = alloca i8, i64 %6, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr align 1 %1, i64 %4, i1 false), !prof !256
  %8 = icmp eq ptr %5, null
  br i1 %8, label %16, label %9, !prof !219

9:                                                ; preds = %3
  %10 = ptrtoint ptr %5 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  store i8 40, ptr %13, align 1, !tbaa !108
  %14 = add i64 %4, 1
  %15 = getelementptr inbounds i8, ptr %7, i64 %4
  store i8 41, ptr %15, align 1, !tbaa !108
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i64 [ %14, %9 ], [ %4, %3 ]
  %18 = getelementptr inbounds i8, ptr %7, i64 %17
  store i8 10, ptr %18, align 1, !tbaa !108
  call fastcc void @run_directive(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7, i64 noundef %17)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_unassert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !75 {
  tail call fastcc void @handle_assertion(ptr noundef %0, ptr noundef %1, i32 noundef 17)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @cpp_get_options(ptr noundef readnone %0) local_unnamed_addr #11 !prof !257 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @cpp_get_callbacks(ptr noundef readnone %0) local_unnamed_addr #12 !prof !210 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cpp_set_callbacks(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !75 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false), !tbaa.struct !258
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cpp_get_deps(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @deps_init() #15
  store ptr %6, ptr %2, align 8, !tbaa !259
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !259
  ret ptr %8
}

declare ptr @deps_init() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @cpp_push_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 !prof !177 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 192, ptr %5, align 8, !tbaa !238
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !240
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 192
  br i1 %13, label %14, label %16, !prof !241

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  tail call void @_obstack_newchunk(ptr noundef nonnull %15, i32 noundef 192) #15
  br label %16

16:                                               ; preds = %4, %14
  %17 = load i64, ptr %5, align 8, !tbaa !238
  %18 = load ptr, ptr %8, align 8, !tbaa !240
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  store ptr %19, ptr %8, align 8, !tbaa !240
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !242
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %27, !prof !241

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 10
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, 2
  store i8 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %16, %23
  %28 = ptrtoint ptr %21 to i64
  store i64 %28, ptr %5, align 8, !tbaa !238
  %29 = ptrtoint ptr %19 to i64
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !243
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %29
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  store ptr %37, ptr %8, align 8, !tbaa !240
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !244
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %36, %40
  %42 = load ptr, ptr %6, align 8, !tbaa !239
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %43, %40
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47, !prof !241

46:                                               ; preds = %27
  store ptr %42, ptr %8, align 8, !tbaa !240
  br label %47

47:                                               ; preds = %27, %46
  %48 = load ptr, ptr %8, align 8, !tbaa !240
  store ptr %48, ptr %20, align 8, !tbaa !242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %21, i8 0, i64 192, i1 false)
  %49 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 3
  store ptr %1, ptr %49, align 8, !tbaa !245
  %50 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 2
  store ptr %1, ptr %50, align 8, !tbaa !246
  %51 = getelementptr inbounds i8, ptr %1, i64 %2
  %52 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 4
  store ptr %51, ptr %52, align 8, !tbaa !247
  %53 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 14
  %54 = trunc i32 %3 to i8
  %55 = load i8, ptr %53, align 1
  %56 = shl i8 %54, 1
  %57 = and i8 %56, 2
  %58 = and i8 %55, -3
  %59 = or disjoint i8 %58, %57
  store i8 %59, ptr %53, align 1
  %60 = load ptr, ptr %0, align 8, !tbaa !180
  %61 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 9
  store ptr %60, ptr %61, align 8, !tbaa !204
  %62 = getelementptr inbounds %struct.cpp_buffer, ptr %21, i64 0, i32 13
  store i8 1, ptr %62, align 8, !tbaa !248
  store ptr %21, ptr %0, align 8, !tbaa !180
  ret ptr %21
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_pop_buffer(ptr noundef %0) local_unnamed_addr #4 !prof !260 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !136

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.if_stack, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !261
  %12 = getelementptr inbounds %struct.if_stack, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !263
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !120
  %17 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %16) #15
  %18 = load ptr, ptr %9, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !prof !136, !llvm.loop !264

20:                                               ; preds = %8, %1
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 0, ptr %21, align 2, !tbaa !111
  %22 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  store ptr %23, ptr %0, align 8, !tbaa !180
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !265
  tail call void @free(ptr noundef %25) #15
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !244
  %29 = ptrtoint ptr %2 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 %31, ptr %32, align 8, !tbaa !238
  %33 = icmp sgt i64 %31, 0
  br i1 %33, label %34, label %44, !prof !266

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !239
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %30
  %39 = icmp slt i64 %31, %38
  br i1 %39, label %40, label %44, !prof !266

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %28, i64 %31
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !242
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  store ptr %41, ptr %43, align 8, !tbaa !240
  br label %46

44:                                               ; preds = %34, %20
  %45 = getelementptr inbounds i8, ptr %28, i64 %31
  tail call void @obstack_free(ptr noundef nonnull %26, ptr noundef %45) #15
  br label %46

46:                                               ; preds = %44, %40
  %47 = icmp eq ptr %4, null
  br i1 %47, label %49, label %48, !prof !267

48:                                               ; preds = %46
  tail call void @_cpp_pop_file_buffer(ptr noundef nonnull %0, ptr noundef nonnull %4) #15
  tail call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %49

49:                                               ; preds = %48, %46
  ret void
}

declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cpp_pop_file_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_init_directives(ptr noundef %0) local_unnamed_addr #2 !prof !177 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %14, %2 ]
  %4 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %3, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !268
  %8 = zext i16 %7 to i32
  %9 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %5, i32 noundef %8) #15
  %10 = getelementptr inbounds %struct.cpp_hashnode, ptr %9, i64 0, i32 1
  %11 = trunc i64 %3 to i8
  %12 = shl nuw nsw i8 %11, 1
  %13 = or disjoint i8 %12, 1
  store i8 %13, ptr %10, align 8
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 19
  br i1 %15, label %16, label %2, !prof !269, !llvm.loop !270

16:                                               ; preds = %2
  ret void
}

declare ptr @cpp_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @do_define(ptr noundef %0) #4 !prof !271 !PGOFuncName !272 {
  %2 = tail call fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext 1)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4, !prof !273

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %6 = load i8, ptr %5, align 4, !tbaa !274
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 %8, ptr %9, align 1, !tbaa !103
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !251
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !275

13:                                               ; preds = %4
  tail call void %11(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %13, %4
  %15 = tail call zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr noundef nonnull %2) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17, !prof !273

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !254
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !275

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !107
  tail call void %19(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %2) #15
  br label %24

24:                                               ; preds = %17, %21, %14
  %25 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, -8193
  store i16 %27, ptr %25, align 2
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_include(ptr noundef %0) #2 !prof !75 {
  tail call fastcc void @do_include_common(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_endif(ptr noundef %0) #2 !prof !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.43) #15
  br label %50

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 4
  %10 = load i8, ptr %9, align 1, !tbaa !277
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 19
  %14 = load i8, ptr %13, align 1, !tbaa !278
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0)
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = load ptr, ptr %4, align 8, !tbaa !279
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !280
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 1, ptr %25, align 8, !tbaa !114
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  store ptr %22, ptr %26, align 8, !tbaa !281
  br label %27

27:                                               ; preds = %24, %20, %17
  store ptr %18, ptr %3, align 8, !tbaa !276
  %28 = load i8, ptr %9, align 1, !tbaa !277
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 %28, ptr %29, align 2, !tbaa !111
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !244
  %33 = ptrtoint ptr %4 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 %35, ptr %36, align 8, !tbaa !238
  %37 = icmp sgt i64 %35, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !239
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %34
  %43 = icmp slt i64 %35, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, ptr %32, i64 %35
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !242
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  store ptr %45, ptr %47, align 8, !tbaa !240
  br label %50

48:                                               ; preds = %38, %27
  %49 = getelementptr inbounds i8, ptr %32, i64 %35
  tail call void @obstack_free(ptr noundef nonnull %30, ptr noundef %49) #15
  br label %50

50:                                               ; preds = %44, %48, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_ifdef(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %3 = load i8, ptr %2, align 2, !tbaa !111
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext 0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 63
  %12 = icmp ne i16 %11, 1
  %13 = zext i1 %12 to i32
  %14 = and i16 %10, 319
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = or i8 %20, 8
  store i8 %21, ptr %19, align 2
  br label %22

22:                                               ; preds = %16, %8
  %23 = load i16, ptr %9, align 2
  %24 = and i16 %23, 8192
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = or disjoint i16 %23, 8192
  store i16 %27, ptr %9, align 2
  %28 = and i16 %23, 63
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !282
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %38

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !283
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %32, %30 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !107
  tail call void %39(ptr noundef %0, i32 noundef %41, ptr noundef nonnull %6) #15
  br label %42

42:                                               ; preds = %38, %30, %34, %22
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !284
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !107
  tail call void %44(ptr noundef %0, i32 noundef %48, ptr noundef nonnull %6) #15
  br label %49

49:                                               ; preds = %46, %42
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  br label %50

50:                                               ; preds = %5, %49, %1
  %51 = phi i32 [ 1, %1 ], [ %13, %49 ], [ 1, %5 ]
  tail call fastcc void @push_conditional(ptr noundef %0, i32 noundef %51, i32 noundef 3, ptr noundef null)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_if(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %3 = load i8, ptr %2, align 2, !tbaa !111
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @_cpp_parse_expr(ptr noundef %0, i8 noundef zeroext 1) #15
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 1, %1 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !285
  tail call fastcc void @push_conditional(ptr noundef %0, i32 noundef %10, i32 noundef 4, ptr noundef %12)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_else(ptr noundef %0) #2 !prof !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.44) #15
  br label %30

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !263
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.45) #15
  %14 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !261
  %16 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %15, i32 noundef 0, ptr noundef nonnull @.str.46) #15
  br label %17

17:                                               ; preds = %12, %8
  store i32 5, ptr %9, align 4, !tbaa !263
  %18 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 3
  %19 = load i8, ptr %18, align 8, !tbaa !286
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 %19, ptr %20, align 2, !tbaa !111
  store i8 1, ptr %18, align 8, !tbaa !286
  %21 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !280
  %22 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 4
  %23 = load i8, ptr %22, align 1, !tbaa !277
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 19
  %27 = load i8, ptr %26, align 1, !tbaa !278
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0)
  br label %30

30:                                               ; preds = %17, %25, %29, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_ifndef(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %3 = load i8, ptr %2, align 2, !tbaa !111
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext 0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 63
  %12 = icmp eq i16 %11, 1
  %13 = zext i1 %12 to i32
  %14 = and i16 %10, 319
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = or i8 %20, 8
  store i8 %21, ptr %19, align 2
  br label %22

22:                                               ; preds = %16, %8
  %23 = load i16, ptr %9, align 2
  %24 = and i16 %23, 8192
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = or disjoint i16 %23, 8192
  store i16 %27, ptr %9, align 2
  %28 = and i16 %23, 63
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !282
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %38

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !283
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %30
  %39 = phi ptr [ %32, %30 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !107
  tail call void %39(ptr noundef %0, i32 noundef %41, ptr noundef nonnull %6) #15
  br label %42

42:                                               ; preds = %38, %30, %34, %22
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !284
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !107
  tail call void %44(ptr noundef %0, i32 noundef %48, ptr noundef nonnull %6) #15
  br label %49

49:                                               ; preds = %46, %42
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  br label %50

50:                                               ; preds = %5, %49, %1
  %51 = phi i32 [ 1, %1 ], [ %13, %49 ], [ 1, %5 ]
  %52 = phi ptr [ null, %1 ], [ %6, %49 ], [ null, %5 ]
  tail call fastcc void @push_conditional(ptr noundef %0, i32 noundef %51, i32 noundef 6, ptr noundef %52)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_undef(ptr noundef %0) #2 !prof !75 {
  %2 = tail call fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext 1)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !107
  tail call void %11(ptr noundef %0, i32 noundef %15, ptr noundef nonnull %2) #15
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 63
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = and i16 %18, 1024
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8, !tbaa !171
  %26 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef %25) #15
  br label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %29 = load i8, ptr %28, align 2, !tbaa !253
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @_cpp_warn_if_unused_macro(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null) #15
  br label %33

33:                                               ; preds = %31, %27
  tail call void @_cpp_free_definition(ptr noundef nonnull %2) #15
  br label %34

34:                                               ; preds = %16, %33, %1
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_line(ptr noundef %0) #2 !prof !75 {
  %2 = alloca %struct.cpp_string, align 8
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  %6 = getelementptr inbounds %struct.line_maps, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !288
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.line_map, ptr %5, i64 %9
  %11 = getelementptr inbounds %struct.line_map, ptr %5, i64 %9, i32 5
  %12 = load i8, ptr %11, align 1, !tbaa !289
  %13 = load ptr, ptr %10, align 8, !tbaa !290
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %15 = load i8, ptr %14, align 1, !tbaa !291
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 32767, i32 2147483647
  %18 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %19 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 1
  %20 = load i8, ptr %19, align 4
  switch i8 %20, label %66 [
    i8 55, label %21
    i8 22, label %64
  ]

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !108
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cpp_token, ptr %18, i64 0, i32 3, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  %28 = load i8, ptr %27, align 1, !tbaa !108
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !206
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %25
  %35 = zext i32 %23 to i64
  br label %44

36:                                               ; preds = %44
  %37 = getelementptr inbounds i8, ptr %47, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !108
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !206
  %42 = and i16 %41, 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %58, label %44, !llvm.loop !292

44:                                               ; preds = %34, %36
  %45 = phi i8 [ %28, %34 ], [ %38, %36 ]
  %46 = phi i8 [ 0, %34 ], [ %56, %36 ]
  %47 = phi ptr [ %27, %34 ], [ %37, %36 ]
  %48 = phi i32 [ 0, %34 ], [ %54, %36 ]
  %49 = phi i64 [ %35, %34 ], [ %50, %36 ]
  %50 = add nsw i64 %49, -1
  %51 = zext i8 %45 to i32
  %52 = mul i32 %48, 10
  %53 = add i32 %52, -48
  %54 = add i32 %53, %51
  %55 = icmp ult i32 %54, %48
  %56 = select i1 %55, i8 1, i8 %46
  %57 = icmp eq i64 %50, 0
  br i1 %57, label %69, label %36, !llvm.loop !292

58:                                               ; preds = %36, %25
  %59 = phi i1 [ %24, %25 ], [ %57, %36 ]
  %60 = phi i32 [ 0, %25 ], [ %54, %36 ]
  %61 = phi i8 [ 0, %25 ], [ %56, %36 ]
  br i1 %59, label %69, label %62

62:                                               ; preds = %58
  %63 = icmp eq i8 %20, 22
  br i1 %63, label %64, label %66

64:                                               ; preds = %1, %62
  %65 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.48) #15
  br label %103

66:                                               ; preds = %1, %62
  %67 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %18) #15
  %68 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef %67) #15
  br label %103

69:                                               ; preds = %44, %21, %58
  %70 = phi i8 [ %61, %58 ], [ 0, %21 ], [ %56, %44 ]
  %71 = phi i32 [ %60, %58 ], [ 0, %21 ], [ %54, %44 ]
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %73 = load i8, ptr %72, align 1, !tbaa !101
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = icmp eq i32 %71, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %75
  %78 = icmp ugt i32 %71, %17
  %79 = icmp ne i8 %70, 0
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %77, %69
  %82 = icmp eq i8 %70, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %81, %75, %77
  %84 = phi i32 [ 2, %77 ], [ 2, %75 ], [ 0, %81 ]
  %85 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef %84, ptr noundef nonnull @.str.50) #15
  br label %86

86:                                               ; preds = %83, %81
  %87 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %88 = getelementptr inbounds %struct.cpp_token, ptr %87, i64 0, i32 1
  %89 = load i8, ptr %88, align 4
  switch i8 %89, label %97 [
    i8 61, label %90
    i8 22, label %100
  ]

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %91 = getelementptr inbounds %struct.cpp_token, ptr %87, i64 0, i32 3
  %92 = call zeroext i8 @cpp_interpret_string_notranslate(ptr noundef %0, ptr noundef nonnull %91, i64 noundef 1, ptr noundef nonnull %2, i32 noundef 61) #15
  %93 = icmp eq i8 %92, 0
  %94 = getelementptr inbounds %struct.cpp_string, ptr %2, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = select i1 %93, ptr %13, ptr %95
  call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %100

97:                                               ; preds = %86
  %98 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %87) #15
  %99 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef %98) #15
  br label %103

100:                                              ; preds = %86, %90
  %101 = phi ptr [ %96, %90 ], [ %13, %86 ]
  call fastcc void @skip_rest_of_line(ptr noundef %0)
  %102 = zext i8 %12 to i32
  call void @_cpp_do_file_change(ptr noundef %0, i32 noundef 3, ptr noundef %101, i32 noundef %71, i32 noundef %102)
  br label %103

103:                                              ; preds = %64, %66, %100, %97
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_elif(ptr noundef %0) #2 !prof !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.52) #15
  br label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !263
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.53) #15
  %14 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !261
  %16 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %15, i32 noundef 0, ptr noundef nonnull @.str.46) #15
  br label %17

17:                                               ; preds = %12, %8
  store i32 9, ptr %9, align 4, !tbaa !263
  %18 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 4
  %19 = load i8, ptr %18, align 1, !tbaa !277
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 0, ptr %22, align 2, !tbaa !111
  %23 = tail call zeroext i8 @_cpp_parse_expr(ptr noundef nonnull %0, i8 noundef zeroext 0) #15
  %24 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 3
  %25 = load i8, ptr %24, align 8, !tbaa !286
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i8 1, ptr %22, align 2, !tbaa !111
  br label %31

28:                                               ; preds = %21
  %29 = icmp eq i8 %23, 0
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %22, align 2, !tbaa !111
  store i8 %23, ptr %24, align 8, !tbaa !286
  br label %31

31:                                               ; preds = %27, %28, %17
  %32 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 2
  store ptr null, ptr %32, align 8, !tbaa !280
  br label %33

33:                                               ; preds = %31, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_error(ptr noundef %0) #2 !prof !75 {
  tail call fastcc void @do_diagnostic(ptr noundef %0, i32 noundef 3, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_pragma(ptr noundef %0) #2 !prof !75 {
  %2 = alloca %struct.cpp_token, align 8
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = add i8 %6, 1
  store i8 %7, ptr %5, align 8, !tbaa !100
  %8 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !205
  %9 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 53
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %14 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  br label %16

16:                                               ; preds = %20, %12
  %17 = phi ptr [ %13, %12 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pragma_entry, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !161
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %24, label %16, !llvm.loop !163

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pragma_entry, ptr %18, i64 0, i32 2
  %26 = load i8, ptr %25, align 8, !tbaa !165
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pragma_entry, ptr %18, i64 0, i32 5
  %30 = load i8, ptr %29, align 1, !tbaa !155
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr %5, align 8, !tbaa !100
  %34 = add i8 %33, -1
  store i8 %34, ptr %5, align 8, !tbaa !100
  br label %35

35:                                               ; preds = %32, %28
  %36 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %37 = getelementptr inbounds %struct.cpp_token, ptr %36, i64 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 53
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.pragma_entry, ptr %18, i64 0, i32 6
  %42 = getelementptr inbounds %struct.cpp_token, ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !108
  br label %44

44:                                               ; preds = %48, %40
  %45 = phi ptr [ %41, %40 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !108
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pragma_entry, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !161
  %51 = icmp eq ptr %50, %43
  br i1 %51, label %52, label %44, !llvm.loop !163

52:                                               ; preds = %48, %44, %35
  %53 = phi ptr [ null, %35 ], [ %46, %44 ], [ %46, %48 ]
  br i1 %31, label %57, label %54

54:                                               ; preds = %52
  %55 = load i8, ptr %5, align 8, !tbaa !100
  %56 = add i8 %55, 1
  store i8 %56, ptr %5, align 8, !tbaa !100
  br label %57

57:                                               ; preds = %16, %52, %54, %24, %1
  %58 = phi i1 [ true, %24 ], [ true, %1 ], [ false, %54 ], [ false, %52 ], [ true, %16 ]
  %59 = phi i32 [ 1, %24 ], [ 1, %1 ], [ 2, %54 ], [ 2, %52 ], [ 1, %16 ]
  %60 = phi ptr [ %8, %24 ], [ %8, %1 ], [ %36, %54 ], [ %36, %52 ], [ %8, %16 ]
  %61 = phi ptr [ %18, %24 ], [ null, %1 ], [ %53, %54 ], [ %53, %52 ], [ null, %16 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %105, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.pragma_entry, ptr %61, i64 0, i32 4
  %65 = load i8, ptr %64, align 2, !tbaa !176
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %4, align 8, !tbaa !183
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  store i32 %68, ptr %69, align 8, !tbaa !293
  %70 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 70, ptr %70, align 4
  %71 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 2
  %72 = load i16, ptr %71, align 2, !tbaa !207
  %73 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 2
  store i16 %72, ptr %73, align 2, !tbaa !294
  %74 = getelementptr inbounds %struct.pragma_entry, ptr %61, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !108
  %76 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 3
  store i32 %75, ptr %76, align 8, !tbaa !108
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  store i8 1, ptr %77, align 8, !tbaa !126
  %78 = getelementptr inbounds %struct.pragma_entry, ptr %61, i64 0, i32 5
  %79 = load i8, ptr %78, align 1, !tbaa !155
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 13
  store i8 %79, ptr %80, align 1, !tbaa !295
  %81 = icmp eq i8 %79, 0
  br i1 %81, label %82, label %130

82:                                               ; preds = %67
  %83 = load i8, ptr %5, align 8, !tbaa !100
  %84 = add i8 %83, 1
  store i8 %84, ptr %5, align 8, !tbaa !100
  br label %130

85:                                               ; preds = %63
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  %87 = load ptr, ptr %86, align 8, !tbaa !209
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void %87(ptr noundef %0, ptr noundef %4, i32 noundef 0) #15
  br label %90

90:                                               ; preds = %89, %85
  %91 = getelementptr inbounds %struct.pragma_entry, ptr %61, i64 0, i32 5
  %92 = load i8, ptr %91, align 1, !tbaa !155
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i8, ptr %5, align 8, !tbaa !100
  %96 = add i8 %95, -1
  store i8 %96, ptr %5, align 8, !tbaa !100
  br label %97

97:                                               ; preds = %94, %90
  %98 = getelementptr inbounds %struct.pragma_entry, ptr %61, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !108
  tail call void %99(ptr noundef %0) #15
  %100 = load i8, ptr %91, align 1, !tbaa !155
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %97
  %103 = load i8, ptr %5, align 8, !tbaa !100
  %104 = add i8 %103, 1
  store i8 %104, ptr %5, align 8, !tbaa !100
  br label %130

105:                                              ; preds = %57
  %106 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !296
  %108 = icmp eq ptr %107, null
  br i1 %108, label %130, label %109

109:                                              ; preds = %105
  br i1 %58, label %116, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !134
  %113 = getelementptr inbounds %struct.cpp_context, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !135
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %110, %109
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef %59) #15
  br label %126

117:                                              ; preds = %110
  %118 = tail call ptr @xmalloc(i64 noundef 48) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %118, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !205
  %119 = getelementptr inbounds %struct.cpp_token, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 2, !tbaa !207
  %121 = or i16 %120, 32
  store i16 %121, ptr %119, align 2, !tbaa !207
  %122 = getelementptr inbounds %struct.cpp_token, ptr %118, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %122, ptr noundef nonnull align 8 dereferenceable(24) %60, i64 24, i1 false), !tbaa.struct !205
  %123 = getelementptr inbounds %struct.cpp_token, ptr %118, i64 1, i32 2
  %124 = load i16, ptr %123, align 2, !tbaa !207
  %125 = or i16 %124, 32
  store i16 %125, ptr %123, align 2, !tbaa !207
  tail call void @_cpp_push_token_context(ptr noundef %0, ptr noundef null, ptr noundef %118, i32 noundef 2) #15
  br label %126

126:                                              ; preds = %117, %116
  %127 = load ptr, ptr %106, align 8, !tbaa !296
  %128 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %129 = load i32, ptr %128, align 8, !tbaa !107
  tail call void %127(ptr noundef %0, i32 noundef %129) #15
  br label %130

130:                                              ; preds = %105, %126, %82, %67, %102, %97
  %131 = load i8, ptr %5, align 8, !tbaa !100
  %132 = add i8 %131, -1
  store i8 %132, ptr %5, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_warning(ptr noundef %0) #2 !prof !75 {
  tail call fastcc void @do_diagnostic(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_include_next(ptr noundef %0) #2 !prof !75 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.line_maps, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !179
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.55) #15
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ 0, %7 ], [ 1, %1 ]
  tail call fastcc void @do_include_common(ptr noundef %0, i32 noundef %10)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_ident(ptr noundef %0) #2 !prof !75 {
  %2 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 61
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.directive, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.56, ptr noundef %10) #15
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !297
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  tail call void %14(ptr noundef %0, i32 noundef %18, ptr noundef nonnull %19) #15
  br label %20

20:                                               ; preds = %12, %16, %6
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_import(ptr noundef %0) #2 !prof !75 {
  tail call fastcc void @do_include_common(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_assert(ptr noundef %0) #2 !prof !210 !PGOFuncName !298 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = call fastcc ptr @parse_assertion(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 16)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5, !prof !219

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !76
  store ptr null, ptr %6, align 8, !tbaa !224
  %7 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 63
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %22, !prof !299

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @find_answer(ptr noundef nonnull %3, ptr noundef nonnull %6)
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !300

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !tbaa !171
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull %17) #15
  br label %48

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  store ptr %21, ptr %6, align 8, !tbaa !224
  br label %22

22:                                               ; preds = %19, %5
  %23 = getelementptr inbounds %struct.answer, ptr %6, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !222
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  %27 = mul nuw nsw i64 %26, 24
  %28 = add nuw nsw i64 %27, 40
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !301
  %31 = getelementptr inbounds %struct.ht, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !302
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !219

34:                                               ; preds = %22
  %35 = tail call ptr %32(i64 noundef %28) #15, !prof !304
  store ptr %35, ptr %2, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %35, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %28, i1 false), !prof !305
  br label %42

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !215
  %39 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !218
  %41 = getelementptr inbounds i8, ptr %40, i64 %28
  store ptr %41, ptr %39, align 8, !tbaa !218
  br label %42

42:                                               ; preds = %36, %34
  %43 = load i16, ptr %7, align 2
  %44 = and i16 %43, -64
  %45 = or disjoint i16 %44, 2
  store i16 %45, ptr %7, align 2
  %46 = load ptr, ptr %2, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 4
  store ptr %46, ptr %47, align 8, !tbaa !108
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  br label %48

48:                                               ; preds = %1, %42, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @do_unassert(ptr noundef %0) #2 !prof !75 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = call fastcc ptr @parse_assertion(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 17)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 63
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @find_answer(ptr noundef nonnull %3, ptr noundef nonnull %11)
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !224
  store ptr %18, ptr %14, align 8, !tbaa !76
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i16, ptr %6, align 2
  %25 = and i16 %24, -64
  store i16 %25, ptr %6, align 2
  br label %26

26:                                               ; preds = %23, %19
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0)
  br label %28

27:                                               ; preds = %10
  tail call void @_cpp_free_definition(ptr noundef nonnull %3) #15
  br label %28

28:                                               ; preds = %26, %27, %5, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !271 !PGOFuncName !306 {
  %3 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 53
  br i1 %6, label %7, label %23, !prof !275

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %17, label %11, !prof !273

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %13 = load ptr, ptr %12, align 8, !tbaa !307
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %17, !prof !273

15:                                               ; preds = %11
  %16 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.33) #15
  br label %22

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.cpp_hashnode, ptr %9, i64 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, 128
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %43, label %22, !prof !275

22:                                               ; preds = %17, %15
  br label %43

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  %25 = load i16, ptr %24, align 2, !tbaa !207
  %26 = and i16 %25, 16
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = load ptr, ptr %30, align 8, !tbaa !171
  %32 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.34, ptr noundef %31) #15
  br label %43

33:                                               ; preds = %23
  %34 = icmp eq i8 %5, 22
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !123
  %38 = getelementptr inbounds %struct.directive, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !120
  %40 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.35, ptr noundef %39) #15
  br label %43

41:                                               ; preds = %33
  %42 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.36) #15
  br label %43

43:                                               ; preds = %35, %41, %28, %22, %17
  %44 = phi ptr [ %9, %17 ], [ null, %22 ], [ null, %28 ], [ null, %41 ], [ null, %35 ]
  ret ptr %44
}

declare zeroext i8 @_cpp_create_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_include_common(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !75 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !147
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 %9, ptr %10, align 1, !tbaa !103
  %11 = call fastcc ptr @parse_include(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %55

16:                                               ; preds = %2
  %17 = load i8, ptr %11, align 1, !tbaa !108
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, ptr %5, align 4, !tbaa !80
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = getelementptr inbounds %struct.directive, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef %24) #15
  call void @free(ptr noundef %11) #15
  %26 = load ptr, ptr %4, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %57, label %55

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  %31 = getelementptr inbounds %struct.line_maps, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !179
  %33 = icmp ugt i32 %32, 199
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.38) #15
  br label %52

36:                                               ; preds = %28
  call fastcc void @skip_rest_of_line(ptr noundef %0)
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !308
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !107
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !123
  %45 = getelementptr inbounds %struct.directive, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !120
  %47 = load i32, ptr %3, align 4, !tbaa !80
  %48 = load ptr, ptr %4, align 8, !tbaa !76
  call void %38(ptr noundef %0, i32 noundef %42, ptr noundef %46, ptr noundef nonnull %11, i32 noundef %47, ptr noundef %48) #15
  br label %49

49:                                               ; preds = %40, %36
  %50 = load i32, ptr %3, align 4, !tbaa !80
  %51 = call zeroext i8 @_cpp_stack_include(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %50, i32 noundef %1) #15
  br label %52

52:                                               ; preds = %49, %34
  call void @free(ptr noundef %11) #15
  %53 = load ptr, ptr %4, align 8, !tbaa !76
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %19, %13
  %56 = phi ptr [ %14, %13 ], [ %26, %19 ], [ %53, %52 ]
  call void @free(ptr noundef %56) #15
  br label %57

57:                                               ; preds = %55, %52, %19, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @parse_include(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 !prof !75 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ undef, %4 ], [ %11, %5 ]
  %7 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 72
  %11 = select i1 %10, ptr %6, ptr %7
  br i1 %10, label %5, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %11, align 8, !tbaa !183
  store i32 %13, ptr %3, align 4, !tbaa !80
  %14 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  switch i8 %15, label %88 [
    i8 61, label %16
    i8 67, label %22
    i8 3, label %41
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 0, i32 3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = load i8, ptr %18, align 1, !tbaa !108
  %20 = icmp eq i8 %19, 82
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  switch i8 %15, label %88 [
    i8 67, label %22
    i8 3, label %41
  ]

22:                                               ; preds = %12, %16, %21
  %23 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !108
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  %27 = tail call ptr @xmalloc(i64 noundef %26) #15
  %28 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 0, i32 3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i32, ptr %23, align 8, !tbaa !108
  %32 = add i32 %31, -2
  %33 = zext i32 %32 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr nonnull align 1 %30, i64 %33, i1 false)
  %34 = load i32, ptr %23, align 8, !tbaa !108
  %35 = add i32 %34, -2
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %27, i64 %36
  store i8 0, ptr %37, align 1, !tbaa !108
  %38 = load i8, ptr %14, align 4
  %39 = icmp eq i8 %38, 67
  %40 = zext i1 %39 to i32
  br label %98

41:                                               ; preds = %12, %21
  %42 = tail call ptr @xmalloc(i64 noundef 1024) #15
  br label %43

43:                                               ; preds = %79, %41
  %44 = phi ptr [ %42, %41 ], [ %70, %79 ]
  %45 = phi i64 [ 0, %41 ], [ %85, %79 ]
  %46 = phi i64 [ 1024, %41 ], [ %71, %79 ]
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi ptr [ undef, %43 ], [ %53, %47 ]
  %49 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %50 = getelementptr inbounds %struct.cpp_token, ptr %49, i64 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 72
  %53 = select i1 %52, ptr %48, ptr %49
  br i1 %52, label %47, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.cpp_token, ptr %53, i64 0, i32 1
  %56 = load i8, ptr %55, align 4
  switch i8 %56, label %59 [
    i8 2, label %86
    i8 22, label %57
  ]

57:                                               ; preds = %54
  %58 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.41) #15
  br label %86

59:                                               ; preds = %54
  %60 = tail call i32 @cpp_token_len(ptr noundef %53) #15
  %61 = add i32 %60, 2
  %62 = zext i32 %61 to i64
  %63 = add i64 %45, %62
  %64 = icmp ugt i64 %63, %46
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = add i64 %46, %62
  %67 = shl i64 %66, 1
  %68 = tail call ptr @xrealloc(ptr noundef %44, i64 noundef %67) #15
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi ptr [ %68, %65 ], [ %44, %59 ]
  %71 = phi i64 [ %67, %65 ], [ %46, %59 ]
  %72 = getelementptr inbounds %struct.cpp_token, ptr %53, i64 0, i32 2
  %73 = load i16, ptr %72, align 2, !tbaa !207
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = add i64 %45, 1
  %78 = getelementptr inbounds i8, ptr %70, i64 %45
  store i8 32, ptr %78, align 1, !tbaa !108
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i64 [ %77, %76 ], [ %45, %69 ]
  %81 = getelementptr inbounds i8, ptr %70, i64 %80
  %82 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef %53, ptr noundef %81, i8 noundef zeroext 1) #15
  %83 = ptrtoint ptr %82 to i64
  %84 = ptrtoint ptr %70 to i64
  %85 = sub i64 %83, %84
  br label %43, !llvm.loop !309

86:                                               ; preds = %54, %57
  %87 = getelementptr inbounds i8, ptr %44, i64 %45
  store i8 0, ptr %87, align 1, !tbaa !108
  br label %98

88:                                               ; preds = %12, %21
  %89 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %90 = load ptr, ptr %89, align 8, !tbaa !123
  %91 = icmp eq ptr %90, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 11)
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.directive, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !120
  br label %95

95:                                               ; preds = %88, %92
  %96 = phi ptr [ %94, %92 ], [ @.str.39, %88 ]
  %97 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.40, ptr noundef %96) #15
  br label %150

98:                                               ; preds = %86, %22
  %99 = phi i32 [ 1, %86 ], [ %40, %22 ]
  %100 = phi ptr [ %44, %86 ], [ %27, %22 ]
  store i32 %99, ptr %1, align 4, !tbaa !80
  %101 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !123
  %103 = icmp eq ptr %102, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 11)
  br i1 %103, label %150, label %104

104:                                              ; preds = %98
  %105 = icmp eq ptr %2, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %108 = load i8, ptr %107, align 1, !tbaa !147
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106, %104
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 1)
  br label %150

111:                                              ; preds = %106
  %112 = tail call ptr @xmalloc(i64 noundef 64) #15
  %113 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %114 = load ptr, ptr %113, align 8, !tbaa !140
  %115 = getelementptr %struct.cpp_token, ptr %114, i64 -1, i32 1
  %116 = load i8, ptr %115, align 4
  %117 = icmp eq i8 %116, 22
  br i1 %117, label %146, label %118

118:                                              ; preds = %111, %141
  %119 = phi i64 [ %142, %141 ], [ 8, %111 ]
  %120 = phi ptr [ %143, %141 ], [ %112, %111 ]
  %121 = phi i64 [ %144, %141 ], [ 0, %111 ]
  %122 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  %123 = getelementptr inbounds %struct.cpp_token, ptr %122, i64 0, i32 1
  %124 = load i8, ptr %123, align 4
  switch i8 %124, label %125 [
    i8 22, label %141
    i8 68, label %130
  ]

125:                                              ; preds = %118
  %126 = load ptr, ptr %101, align 8, !tbaa !123
  %127 = getelementptr inbounds %struct.directive, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !120
  %129 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.42, ptr noundef %128) #15
  br label %141

130:                                              ; preds = %118
  %131 = add i64 %121, 1
  %132 = icmp ult i64 %131, %119
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = shl i64 %119, 1
  %135 = shl i64 %119, 4
  %136 = tail call ptr @xrealloc(ptr noundef %120, i64 noundef %135) #15
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i64 [ %134, %133 ], [ %119, %130 ]
  %139 = phi ptr [ %136, %133 ], [ %120, %130 ]
  %140 = getelementptr inbounds ptr, ptr %139, i64 %121
  store ptr %122, ptr %140, align 8, !tbaa !76
  br label %141

141:                                              ; preds = %118, %137, %125
  %142 = phi i64 [ %119, %125 ], [ %138, %137 ], [ %119, %118 ]
  %143 = phi ptr [ %120, %125 ], [ %139, %137 ], [ %120, %118 ]
  %144 = phi i64 [ %121, %125 ], [ %131, %137 ], [ %121, %118 ]
  %145 = phi i1 [ true, %125 ], [ true, %137 ], [ false, %118 ]
  br i1 %145, label %118, label %146

146:                                              ; preds = %141, %111
  %147 = phi ptr [ %112, %111 ], [ %143, %141 ]
  %148 = phi i64 [ 0, %111 ], [ %144, %141 ]
  %149 = getelementptr inbounds ptr, ptr %147, i64 %148
  store ptr null, ptr %149, align 8, !tbaa !76
  store ptr %147, ptr %2, align 8, !tbaa !76
  br label %150

150:                                              ; preds = %98, %146, %110, %95
  %151 = phi ptr [ null, %95 ], [ %100, %110 ], [ %100, %146 ], [ %100, %98 ]
  ret ptr %151
}

; Function Attrs: nounwind uwtable
define internal fastcc void @skip_rest_of_line(ptr noundef %0) unnamed_addr #4 !prof !75 !PGOFuncName !310 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !136

7:                                                ; preds = %1, %7
  tail call void @_cpp_pop_context(ptr noundef %0) #15
  %8 = load ptr, ptr %2, align 8, !tbaa !134
  %9 = getelementptr inbounds %struct.cpp_context, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !prof !136, !llvm.loop !137

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = getelementptr %struct.cpp_token, ptr %14, i64 -1, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 22
  br i1 %17, label %23, label %18, !prof !141

18:                                               ; preds = %12, %18
  %19 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 22
  br i1 %22, label %23, label %18, !prof !142, !llvm.loop !143

23:                                               ; preds = %18, %12
  ret void
}

declare zeroext i8 @_cpp_stack_include(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 !prof !210 !PGOFuncName !311 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = getelementptr %struct.cpp_token, ptr %4, i64 -1, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 22
  br i1 %7, label %25, label %8, !prof !219

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %12, label %10, !prof !213

10:                                               ; preds = %8
  %11 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  br label %14

12:                                               ; preds = %8
  %13 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.cpp_token, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 22
  br i1 %18, label %25, label %19, !prof !213

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !123
  %22 = getelementptr inbounds %struct.directive, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !120
  %24 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.42, ptr noundef %23) #15
  br label %25

25:                                               ; preds = %19, %14, %2
  ret void
}

declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #1

declare i32 @cpp_token_len(ptr noundef) local_unnamed_addr #1

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cpp_spell_token(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @_cpp_pop_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @push_conditional(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 !prof !75 {
  %5 = load ptr, ptr %0, align 8, !tbaa !180
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 32, ptr %6, align 8, !tbaa !238
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !239
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !240
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 32
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  tail call void @_obstack_newchunk(ptr noundef nonnull %16, i32 noundef 32) #15
  br label %17

17:                                               ; preds = %4, %15
  %18 = load i64, ptr %6, align 8, !tbaa !238
  %19 = load ptr, ptr %9, align 8, !tbaa !240
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %20, ptr %9, align 8, !tbaa !240
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !242
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 10
  %26 = load i8, ptr %25, align 8
  %27 = or i8 %26, 2
  store i8 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %17, %24
  %29 = ptrtoint ptr %22 to i64
  store i64 %29, ptr %6, align 8, !tbaa !238
  %30 = ptrtoint ptr %20 to i64
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !243
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %30
  %35 = xor i32 %32, -1
  %36 = sext i32 %35 to i64
  %37 = and i64 %34, %36
  %38 = inttoptr i64 %37 to ptr
  store ptr %38, ptr %9, align 8, !tbaa !240
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !244
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %37, %41
  %43 = load ptr, ptr %7, align 8, !tbaa !239
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %44, %41
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  store ptr %43, ptr %9, align 8, !tbaa !240
  br label %48

48:                                               ; preds = %28, %47
  %49 = load ptr, ptr %9, align 8, !tbaa !240
  store ptr %49, ptr %21, align 8, !tbaa !242
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !107
  %52 = getelementptr inbounds %struct.if_stack, ptr %22, i64 0, i32 1
  store i32 %51, ptr %52, align 8, !tbaa !261
  %53 = getelementptr inbounds %struct.cpp_buffer, ptr %5, i64 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !276
  store ptr %54, ptr %22, align 8, !tbaa !279
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %56 = load i8, ptr %55, align 2, !tbaa !111
  %57 = icmp ne i8 %56, 0
  %58 = icmp eq i32 %1, 0
  %59 = or i1 %58, %57
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.if_stack, ptr %22, i64 0, i32 3
  store i8 %60, ptr %61, align 8, !tbaa !286
  %62 = getelementptr inbounds %struct.if_stack, ptr %22, i64 0, i32 4
  store i8 %56, ptr %62, align 1, !tbaa !277
  %63 = getelementptr inbounds %struct.if_stack, ptr %22, i64 0, i32 5
  store i32 %2, ptr %63, align 4, !tbaa !263
  %64 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %65 = load i8, ptr %64, align 8, !tbaa !114
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  %69 = load ptr, ptr %68, align 8, !tbaa !281
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %48
  br label %72

72:                                               ; preds = %67, %71
  %73 = phi ptr [ null, %71 ], [ %3, %67 ]
  %74 = getelementptr inbounds %struct.if_stack, ptr %22, i64 0, i32 2
  store ptr %73, ptr %74, align 8, !tbaa !280
  %75 = trunc i32 %1 to i8
  store i8 %75, ptr %55, align 2, !tbaa !111
  store ptr %22, ptr %53, align 8, !tbaa !276
  ret void
}

declare zeroext i8 @_cpp_parse_expr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @cpp_interpret_string_notranslate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_diagnostic(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !75 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 -1
  %7 = load i32, ptr %6, align 8, !tbaa !183
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.directive, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !100
  %18 = add i8 %17, 1
  store i8 %18, ptr %16, align 8, !tbaa !100
  %19 = tail call ptr @cpp_output_line_to_string(ptr noundef %0, ptr noundef %15) #15
  %20 = load i8, ptr %16, align 8, !tbaa !100
  %21 = add i8 %20, -1
  store i8 %21, ptr %16, align 8, !tbaa !100
  %22 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef %19) #15
  tail call void @free(ptr noundef %19) #15
  ret void
}

declare ptr @cpp_output_line_to_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cpp_push_token_context(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal void @do_linemarker(ptr noundef %0) #2 !prof !75 {
  %2 = alloca %struct.cpp_string, align 8
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  %6 = getelementptr inbounds %struct.line_maps, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !288
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.line_map, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !290
  %12 = getelementptr inbounds %struct.line_map, ptr %5, i64 %9, i32 5
  %13 = load i8, ptr %12, align 1, !tbaa !289
  %14 = zext i8 %13 to i32
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #15
  %15 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %16 = getelementptr inbounds %struct.cpp_token, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 55
  br i1 %18, label %19, label %56

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.cpp_token, ptr %15, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !108
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cpp_token, ptr %15, i64 0, i32 3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !108
  %26 = load i8, ptr %25, align 1, !tbaa !108
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !206
  %30 = and i16 %29, 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %23
  %33 = zext i32 %21 to i64
  br label %42

34:                                               ; preds = %42
  %35 = getelementptr inbounds i8, ptr %44, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !108
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !206
  %40 = and i16 %39, 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %42, !llvm.loop !292

42:                                               ; preds = %32, %34
  %43 = phi i8 [ %26, %32 ], [ %36, %34 ]
  %44 = phi ptr [ %25, %32 ], [ %35, %34 ]
  %45 = phi i32 [ 0, %32 ], [ %51, %34 ]
  %46 = phi i64 [ %33, %32 ], [ %47, %34 ]
  %47 = add nsw i64 %46, -1
  %48 = zext i8 %43 to i32
  %49 = mul i32 %45, 10
  %50 = add i32 %49, -48
  %51 = add i32 %50, %48
  %52 = icmp eq i64 %47, 0
  br i1 %52, label %59, label %34, !llvm.loop !292

53:                                               ; preds = %34, %23
  %54 = phi i1 [ %22, %23 ], [ %52, %34 ]
  %55 = phi i32 [ 0, %23 ], [ %51, %34 ]
  br i1 %54, label %59, label %56

56:                                               ; preds = %53, %1
  %57 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %15) #15
  %58 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.59, ptr noundef %57) #15
  br label %101

59:                                               ; preds = %42, %19, %53
  %60 = phi i32 [ %55, %53 ], [ 0, %19 ], [ %51, %42 ]
  %61 = tail call ptr @cpp_get_token(ptr noundef %0) #15
  %62 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 1
  %63 = load i8, ptr %62, align 4
  switch i8 %63, label %90 [
    i8 61, label %64
    i8 22, label %93
  ]

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %65 = getelementptr inbounds %struct.cpp_token, ptr %61, i64 0, i32 3
  %66 = call zeroext i8 @cpp_interpret_string_notranslate(ptr noundef %0, ptr noundef nonnull %65, i64 noundef 1, ptr noundef nonnull %2, i32 noundef 61) #15
  %67 = icmp eq i8 %66, 0
  %68 = getelementptr inbounds %struct.cpp_string, ptr %2, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr %11, ptr %69
  %71 = call fastcc i32 @read_flag(ptr noundef %0, i32 noundef 0), !range !312
  switch i32 %71, label %77 [
    i32 1, label %72
    i32 2, label %73
  ]

72:                                               ; preds = %64
  call void @_cpp_fake_include(ptr noundef %0, ptr noundef %70) #15
  br label %73

73:                                               ; preds = %64, %72
  %74 = phi i32 [ 1, %72 ], [ %71, %64 ]
  %75 = phi i32 [ 0, %72 ], [ 1, %64 ]
  %76 = call fastcc i32 @read_flag(ptr noundef %0, i32 noundef %74), !range !312
  br label %77

77:                                               ; preds = %73, %64
  %78 = phi i32 [ 3, %64 ], [ %75, %73 ]
  %79 = phi i32 [ %71, %64 ], [ %76, %73 ]
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = call fastcc i32 @read_flag(ptr noundef %0, i32 noundef 3), !range !312
  %83 = icmp eq i32 %82, 4
  %84 = select i1 %83, i32 2, i32 1
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i32 [ 0, %77 ], [ %84, %81 ]
  %87 = trunc i32 %86 to i8
  %88 = load ptr, ptr %0, align 8, !tbaa !180
  %89 = getelementptr inbounds %struct.cpp_buffer, ptr %88, i64 0, i32 15
  store i8 %87, ptr %89, align 2, !tbaa !313
  call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %93

90:                                               ; preds = %59
  %91 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %61) #15
  %92 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef %91) #15
  br label %101

93:                                               ; preds = %59, %85
  %94 = phi ptr [ %70, %85 ], [ %11, %59 ]
  %95 = phi i32 [ %86, %85 ], [ %14, %59 ]
  %96 = phi i32 [ %78, %85 ], [ 3, %59 ]
  call fastcc void @skip_rest_of_line(ptr noundef %0)
  %97 = load ptr, ptr %3, align 8, !tbaa !104
  %98 = getelementptr inbounds %struct.line_maps, ptr %97, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !314
  %100 = add i32 %99, -1
  store i32 %100, ptr %98, align 8, !tbaa !314
  call void @_cpp_do_file_change(ptr noundef %0, i32 noundef %96, ptr noundef %94, i32 noundef %60, i32 noundef %95)
  br label %101

101:                                              ; preds = %93, %90, %56
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @read_flag(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !75 {
  %3 = tail call ptr @_cpp_lex_token(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %29 [
    i8 55, label %6
    i8 22, label %32
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !108
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = load i8, ptr %12, align 1, !tbaa !108
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -48
  %16 = icmp ugt i32 %15, %1
  %17 = icmp ult i32 %15, 5
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = icmp ne i32 %15, 4
  %21 = icmp eq i32 %1, 3
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = icmp ne i32 %15, 2
  %25 = icmp eq i32 %1, 0
  %26 = or i1 %25, %24
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %10, %19, %6
  %28 = icmp eq i8 %5, 22
  br i1 %28, label %32, label %29

29:                                               ; preds = %2, %27
  %30 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %3) #15
  %31 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.60, ptr noundef %30) #15
  br label %32

32:                                               ; preds = %2, %27, %29, %23
  %33 = phi i32 [ %15, %23 ], [ 0, %29 ], [ 0, %27 ], [ 0, %2 ]
  ret i32 %33
}

declare void @_cpp_fake_include(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_scan_out_logical_line(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cpp_overlay_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_cpp_remove_overlay(ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_aligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @xmemdup(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_cpp_mark_file_once_only(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare void @cpp_make_system_header(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_cpp_compare_file_date(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_cpp_clean_line(ptr noundef) local_unnamed_addr #1

declare void @_cpp_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_cpp_equiv_tokens(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!74}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!35 = !{ptr @end_directive, ptr @_cpp_lex_token, i64 187}
!36 = !{ptr @_cpp_do_file_change, ptr @linemap_add, i64 3}
!37 = !{ptr @_cpp_do_file_change, ptr @linemap_line_start, i64 2}
!38 = !{ptr @register_pragma_1, ptr @strlen, i64 32}
!39 = !{ptr @register_pragma_1, ptr @cpp_lookup, i64 32}
!40 = !{ptr @register_pragma_1, ptr @_cpp_aligned_alloc, i64 22}
!41 = !{ptr @cpp_register_deferred_pragma, ptr @register_pragma_1, i64 14}
!42 = !{ptr @_cpp_init_internal_pragmas, ptr @register_pragma_1, i64 6}
!43 = !{ptr @parse_assertion, ptr @cpp_get_token, i64 20}
!44 = !{ptr @parse_assertion, ptr @cpp_lookup, i64 5}
!45 = !{ptr @find_answer, ptr @_cpp_equiv_tokens, i64 3}
!46 = !{ptr @cpp_define, ptr @strlen, i64 187}
!47 = !{ptr @cpp_define, ptr @strchr, i64 187}
!48 = !{ptr @cpp_define, ptr @run_directive, i64 187}
!49 = !{ptr @run_directive, ptr @_cpp_clean_line, i64 194}
!50 = !{ptr @run_directive, ptr @do_define, i64 189}
!51 = !{ptr @run_directive, ptr @do_assert, i64 5}
!52 = !{ptr @run_directive, ptr @end_directive, i64 194}
!53 = !{ptr @run_directive, ptr @_cpp_pop_buffer, i64 194}
!54 = !{ptr @cpp_define_formatted, ptr @vasprintf, i64 3}
!55 = !{ptr @cpp_define_formatted, ptr @cpp_define, i64 3}
!56 = !{ptr @cpp_define_formatted, ptr @free, i64 3}
!57 = !{ptr @_cpp_define_builtin, ptr @strlen, i64 2}
!58 = !{ptr @_cpp_define_builtin, ptr @run_directive, i64 2}
!59 = !{ptr @cpp_assert, ptr @handle_assertion, i64 5}
!60 = !{ptr @handle_assertion, ptr @strlen, i64 5}
!61 = !{ptr @handle_assertion, ptr @strchr, i64 5}
!62 = !{ptr @handle_assertion, ptr @run_directive, i64 5}
!63 = !{ptr @_cpp_pop_buffer, ptr @free, i64 195}
!64 = !{ptr @_cpp_pop_buffer, ptr @_cpp_pop_file_buffer, i64 1}
!65 = !{ptr @_cpp_pop_buffer, ptr @_cpp_do_file_change, i64 1}
!66 = !{ptr @_cpp_init_directives, ptr @cpp_lookup, i64 19}
!67 = !{ptr @do_define, ptr @lex_macro_node, i64 189}
!68 = !{ptr @do_define, ptr @_cpp_create_definition, i64 189}
!69 = !{ptr @do_assert, ptr @parse_assertion, i64 5}
!70 = !{ptr @do_assert, ptr @find_answer, i64 2}
!71 = !{ptr @do_assert, ptr @check_eol, i64 5}
!72 = !{ptr @lex_macro_node, ptr @_cpp_lex_token, i64 189}
!73 = !{ptr @check_eol, ptr @_cpp_lex_token, i64 5}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !81, i64 0}
!81 = !{!"int", !78, i64 0}
!82 = !{!83, !78, i64 25}
!83 = !{!"cpp_reader", !77, i64 0, !77, i64 8, !84, i64 16, !77, i64 40, !81, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !85, i64 80, !77, i64 136, !77, i64 144, !86, i64 152, !81, i64 176, !78, i64 180, !77, i64 184, !77, i64 192, !88, i64 200, !77, i64 264, !77, i64 272, !77, i64 280, !77, i64 288, !77, i64 296, !77, i64 304, !90, i64 312, !78, i64 400, !78, i64 401, !77, i64 408, !77, i64 416, !78, i64 424, !77, i64 432, !91, i64 440, !77, i64 472, !81, i64 480, !81, i64 484, !77, i64 488, !81, i64 496, !92, i64 504, !92, i64 528, !92, i64 552, !92, i64 576, !92, i64 600, !77, i64 624, !77, i64 632, !86, i64 640, !86, i64 664, !77, i64 688, !90, i64 696, !90, i64 784, !77, i64 872, !93, i64 880, !77, i64 1016, !77, i64 1024, !77, i64 1032, !94, i64 1040, !96, i64 1168, !78, i64 1200, !97, i64 1208, !77, i64 1240, !77, i64 1248, !77, i64 1256, !77, i64 1264, !81, i64 1272, !98, i64 1280, !77, i64 1296}
!84 = !{!"lexer_state", !78, i64 0, !78, i64 1, !78, i64 2, !78, i64 3, !78, i64 4, !78, i64 5, !78, i64 6, !78, i64 7, !78, i64 8, !78, i64 9, !78, i64 10, !81, i64 12, !78, i64 16, !78, i64 17}
!85 = !{!"cpp_context", !77, i64 0, !77, i64 8, !78, i64 16, !77, i64 32, !77, i64 40, !78, i64 48}
!86 = !{!"cpp_token", !81, i64 0, !81, i64 4, !87, i64 6, !78, i64 8}
!87 = !{!"short", !78, i64 0}
!88 = !{!"cpp_dir", !77, i64 0, !77, i64 8, !81, i64 16, !78, i64 20, !78, i64 21, !77, i64 24, !77, i64 32, !77, i64 40, !89, i64 48, !89, i64 56}
!89 = !{!"long", !78, i64 0}
!90 = !{!"obstack", !89, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !89, i64 40, !81, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !81, i64 80, !81, i64 80, !81, i64 80}
!91 = !{!"tokenrun", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!92 = !{!"cset_converter", !77, i64 0, !77, i64 8, !81, i64 16}
!93 = !{!"cpp_callbacks", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128}
!94 = !{!"cpp_options", !81, i64 0, !81, i64 4, !78, i64 8, !78, i64 9, !78, i64 10, !78, i64 11, !78, i64 12, !78, i64 13, !78, i64 14, !78, i64 15, !78, i64 16, !78, i64 17, !78, i64 18, !78, i64 19, !78, i64 20, !78, i64 21, !78, i64 22, !78, i64 23, !78, i64 24, !78, i64 25, !78, i64 26, !78, i64 27, !78, i64 28, !78, i64 29, !78, i64 30, !78, i64 31, !78, i64 32, !78, i64 33, !78, i64 34, !78, i64 35, !78, i64 36, !78, i64 37, !78, i64 38, !78, i64 39, !78, i64 40, !78, i64 41, !78, i64 42, !77, i64 48, !77, i64 56, !77, i64 64, !81, i64 72, !78, i64 76, !78, i64 77, !95, i64 80, !89, i64 88, !89, i64 96, !89, i64 104, !89, i64 112, !78, i64 120, !78, i64 121, !78, i64 122, !78, i64 123, !78, i64 124}
!95 = !{!"", !81, i64 0, !78, i64 4, !78, i64 5, !78, i64 6, !78, i64 7}
!96 = !{!"spec_nodes", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!97 = !{!"", !77, i64 0, !77, i64 8, !77, i64 16, !81, i64 24}
!98 = !{!"", !77, i64 0, !81, i64 8, !81, i64 12}
!99 = !{!83, !78, i64 26}
!100 = !{!83, !78, i64 24}
!101 = !{!83, !78, i64 1077}
!102 = !{!83, !78, i64 16}
!103 = !{!83, !78, i64 21}
!104 = !{!83, !77, i64 40}
!105 = !{!106, !81, i64 36}
!106 = !{!"line_maps", !77, i64 0, !81, i64 8, !81, i64 12, !81, i64 16, !81, i64 20, !81, i64 24, !78, i64 28, !81, i64 32, !81, i64 36, !81, i64 40, !77, i64 48}
!107 = !{!83, !81, i64 48}
!108 = !{!78, !78, i64 0}
!109 = !{!83, !81, i64 1044}
!110 = !{!83, !78, i64 1078}
!111 = !{!83, !78, i64 18}
!112 = !{!113, !78, i64 19}
!113 = !{!"directive", !77, i64 0, !77, i64 8, !87, i64 16, !78, i64 18, !78, i64 19}
!114 = !{!83, !78, i64 424}
!115 = !{!83, !78, i64 1164}
!116 = !{!83, !78, i64 19}
!117 = !{!83, !78, i64 17}
!118 = !{!113, !78, i64 18}
!119 = !{!83, !78, i64 1050}
!120 = !{!113, !77, i64 8}
!121 = !{!83, !78, i64 1058}
!122 = !{!83, !78, i64 1063}
!123 = !{!83, !77, i64 144}
!124 = !{!83, !78, i64 1082}
!125 = !{!113, !77, i64 0}
!126 = !{!83, !78, i64 32}
!127 = !{!83, !78, i64 20}
!128 = !{!83, !77, i64 1208}
!129 = !{!83, !77, i64 1224}
!130 = !{!"function_entry_count", i64 194}
!131 = !{!"cpp_directives.c;end_directive"}
!132 = !{!"branch_weights", i32 194, i32 0}
!133 = !{!"branch_weights", i32 0, i32 194}
!134 = !{!83, !77, i64 136}
!135 = !{!85, !77, i64 8}
!136 = !{!"branch_weights", i32 1, i32 0}
!137 = distinct !{!137, !138, !139}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !{!83, !77, i64 432}
!141 = !{!"branch_weights", i32 7, i32 187}
!142 = !{!"branch_weights", i32 187, i32 0}
!143 = distinct !{!143, !138, !139}
!144 = !{!83, !81, i64 484}
!145 = !{!83, !77, i64 472}
!146 = !{!83, !77, i64 456}
!147 = !{!83, !78, i64 1051}
!148 = !{!"function_entry_count", i64 3}
!149 = !{!"branch_weights", i32 1, i32 2}
!150 = !{!151, !81, i64 8}
!151 = !{!"line_map", !77, i64 0, !81, i64 8, !81, i64 12, !81, i64 16, !81, i64 20, !78, i64 21, !81, i64 22}
!152 = !{!83, !77, i64 888}
!153 = !{!"branch_weights", i32 0, i32 3}
!154 = !{!"VP", i32 0, i64 3, i64 -1861973734227536076, i64 3}
!155 = !{!156, !78, i64 19}
!156 = !{!"pragma_entry", !77, i64 0, !77, i64 8, !78, i64 16, !78, i64 17, !78, i64 18, !78, i64 19, !78, i64 24}
!157 = !{!"function_entry_count", i64 20}
!158 = !{!"cpp_directives.c;register_pragma_1"}
!159 = !{!"branch_weights", i32 8, i32 12}
!160 = !{!"branch_weights", i32 2, i32 33}
!161 = !{!156, !77, i64 8}
!162 = !{!"branch_weights", i32 10, i32 23}
!163 = distinct !{!163, !138, !139}
!164 = !{!156, !77, i64 0}
!165 = !{!156, !78, i64 16}
!166 = !{!"branch_weights", i32 0, i32 10}
!167 = !{!"branch_weights", i32 10, i32 0}
!168 = !{!"branch_weights", i32 8, i32 0}
!169 = !{!"branch_weights", i32 20, i32 91}
!170 = !{!"branch_weights", i32 0, i32 91}
!171 = !{!172, !77, i64 0}
!172 = !{!"cpp_hashnode", !173, i64 0, !81, i64 16, !81, i64 16, !78, i64 17, !81, i64 18, !81, i64 18, !78, i64 24}
!173 = !{!"ht_identifier", !77, i64 0, !81, i64 8, !81, i64 12}
!174 = !{!"function_entry_count", i64 14}
!175 = !{!"branch_weights", i32 0, i32 14}
!176 = !{!156, !78, i64 18}
!177 = !{!"function_entry_count", i64 1}
!178 = !{!156, !78, i64 17}
!179 = !{!106, !81, i64 24}
!180 = !{!83, !77, i64 0}
!181 = !{!182, !77, i64 72}
!182 = !{!"cpp_buffer", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !81, i64 48, !81, i64 52, !81, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !78, i64 96, !81, i64 97, !81, i64 97, !81, i64 97, !78, i64 98, !88, i64 104, !92, i64 168}
!183 = !{!86, !81, i64 0}
!184 = distinct !{!184, !138, !139}
!185 = !{!186, !77, i64 8}
!186 = !{!"def_pragma_macro", !77, i64 0, !77, i64 8, !77, i64 16}
!187 = !{!83, !77, i64 1296}
!188 = !{!186, !77, i64 0}
!189 = !{!186, !77, i64 16}
!190 = distinct !{!190, !138, !139}
!191 = distinct !{!191, !138, !139}
!192 = !{!83, !78, i64 23}
!193 = distinct !{!193, !139}
!194 = !{!83, !77, i64 872}
!195 = distinct !{!195, !138, !139}
!196 = !{!172, !81, i64 8}
!197 = distinct !{!197, !138, !139}
!198 = distinct !{!198, !138, !139}
!199 = !{!200, !81, i64 0}
!200 = !{!"cpp_string", !81, i64 0, !77, i64 8}
!201 = !{!200, !77, i64 8}
!202 = distinct !{!202, !138, !139}
!203 = !{!85, !77, i64 40}
!204 = !{!182, !77, i64 64}
!205 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 6, i64 2, !206, i64 8, i64 8, !76, i64 8, i64 8, !76, i64 8, i64 4, !80, i64 16, i64 8, !76, i64 8, i64 4, !80, i64 8, i64 4, !80, i64 8, i64 4, !80}
!206 = !{!87, !87, i64 0}
!207 = !{!86, !87, i64 6}
!208 = distinct !{!208, !138, !139}
!209 = !{!83, !77, i64 880}
!210 = !{!"function_entry_count", i64 5}
!211 = !{!"cpp_directives.c;parse_assertion"}
!212 = !{!"branch_weights", i32 0, i32 0, i32 5}
!213 = !{!"branch_weights", i32 5, i32 0}
!214 = !{!"branch_weights", i32 5, i32 5, i32 0}
!215 = !{!83, !77, i64 56}
!216 = !{!217, !77, i64 24}
!217 = !{!"_cpp_buff", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!218 = !{!217, !77, i64 16}
!219 = !{!"branch_weights", i32 0, i32 5}
!220 = !{!"branch_weights", i32 0, i32 5, i32 5}
!221 = distinct !{!221, !139}
!222 = !{!223, !81, i64 8}
!223 = !{!"answer", !77, i64 0, !81, i64 8, !78, i64 16}
!224 = !{!223, !77, i64 0}
!225 = !{!"VP", i32 1, i64 5, i64 6, i64 3, i64 3, i64 1, i64 7, i64 1}
!226 = !{!"function_entry_count", i64 2}
!227 = !{!"cpp_directives.c;find_answer"}
!228 = !{!"branch_weights", i32 1, i32 127}
!229 = !{!"branch_weights", i32 3, i32 0}
!230 = !{!"branch_weights", i32 0, i32 1}
!231 = distinct !{!231, !138, !139}
!232 = !{!"branch_weights", i32 127, i32 65}
!233 = distinct !{!233, !138, !139}
!234 = !{!"function_entry_count", i64 187}
!235 = !{!"VP", i32 1, i64 187, i64 17, i64 117, i64 33, i64 41, i64 9, i64 15, i64 16, i64 3}
!236 = !{!"branch_weights", i32 15, i32 172}
!237 = !{!"cpp_directives.c;run_directive"}
!238 = !{!83, !89, i64 824}
!239 = !{!83, !77, i64 816}
!240 = !{!83, !77, i64 808}
!241 = !{!"branch_weights", i32 0, i32 195}
!242 = !{!83, !77, i64 800}
!243 = !{!83, !81, i64 832}
!244 = !{!83, !77, i64 792}
!245 = !{!182, !77, i64 24}
!246 = !{!182, !77, i64 16}
!247 = !{!182, !77, i64 32}
!248 = !{!182, !78, i64 96}
!249 = !{!"VP", i32 0, i64 194, i64 -2195644996795394523, i64 189, i64 -8999695981046621903, i64 5}
!250 = !{!"VP", i32 1, i64 2, i64 9, i64 1, i64 17, i64 1}
!251 = !{!83, !77, i64 1000}
!252 = !{!83, !77, i64 920}
!253 = !{!83, !78, i64 1074}
!254 = !{!83, !77, i64 912}
!255 = !{!"cpp_directives.c;handle_assertion"}
!256 = !{!"VP", i32 1, i64 5, i64 9, i64 4, i64 8, i64 1}
!257 = !{!"function_entry_count", i64 125456}
!258 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76, i64 24, i64 8, !76, i64 32, i64 8, !76, i64 40, i64 8, !76, i64 48, i64 8, !76, i64 56, i64 8, !76, i64 64, i64 8, !76, i64 72, i64 8, !76, i64 80, i64 8, !76, i64 88, i64 8, !76, i64 96, i64 8, !76, i64 104, i64 8, !76, i64 112, i64 8, !76, i64 120, i64 8, !76, i64 128, i64 8, !76}
!259 = !{!83, !77, i64 688}
!260 = !{!"function_entry_count", i64 195}
!261 = !{!262, !81, i64 8}
!262 = !{!"if_stack", !77, i64 0, !81, i64 8, !77, i64 16, !78, i64 24, !78, i64 25, !81, i64 28}
!263 = !{!262, !81, i64 28}
!264 = distinct !{!264, !138, !139}
!265 = !{!182, !77, i64 40}
!266 = !{!"branch_weights", i32 195, i32 0}
!267 = !{!"branch_weights", i32 194, i32 1}
!268 = !{!113, !87, i64 16}
!269 = !{!"branch_weights", i32 1, i32 18}
!270 = distinct !{!270, !138, !139}
!271 = !{!"function_entry_count", i64 189}
!272 = !{!"cpp_directives.c;do_define"}
!273 = !{!"branch_weights", i32 0, i32 189}
!274 = !{!83, !78, i64 1052}
!275 = !{!"branch_weights", i32 189, i32 0}
!276 = !{!182, !77, i64 88}
!277 = !{!262, !78, i64 25}
!278 = !{!83, !78, i64 1065}
!279 = !{!262, !77, i64 0}
!280 = !{!262, !77, i64 16}
!281 = !{!83, !77, i64 408}
!282 = !{!83, !77, i64 984}
!283 = !{!83, !77, i64 992}
!284 = !{!83, !77, i64 1008}
!285 = !{!83, !77, i64 416}
!286 = !{!262, !78, i64 24}
!287 = !{!106, !77, i64 0}
!288 = !{!106, !81, i64 12}
!289 = !{!151, !78, i64 21}
!290 = !{!151, !77, i64 0}
!291 = !{!83, !78, i64 1075}
!292 = distinct !{!292, !138, !139}
!293 = !{!83, !81, i64 152}
!294 = !{!83, !87, i64 158}
!295 = !{!83, !78, i64 33}
!296 = !{!83, !77, i64 936}
!297 = !{!83, !77, i64 928}
!298 = !{!"cpp_directives.c;do_assert"}
!299 = !{!"branch_weights", i32 2, i32 3}
!300 = !{!"branch_weights", i32 2, i32 0}
!301 = !{!83, !77, i64 1016}
!302 = !{!303, !77, i64 104}
!303 = !{!"ht", !90, i64 0, !77, i64 88, !77, i64 96, !77, i64 104, !81, i64 112, !81, i64 116, !77, i64 120, !81, i64 128, !81, i64 132, !78, i64 136}
!304 = !{!"VP", i32 0, i64 5, i64 440498917606777698, i64 5}
!305 = !{!"VP", i32 1, i64 5, i64 33, i64 5}
!306 = !{!"cpp_directives.c;lex_macro_node"}
!307 = !{!83, !77, i64 1168}
!308 = !{!83, !77, i64 904}
!309 = distinct !{!309, !139}
!310 = !{!"cpp_directives.c;skip_rest_of_line"}
!311 = !{!"cpp_directives.c;check_eol"}
!312 = !{i32 -48, i32 208}
!313 = !{!182, !78, i64 98}
!314 = !{!106, !81, i64 32}
