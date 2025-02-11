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
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.pragma_entry = type { ptr, ptr, i8, i8, i8, i8, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.def_pragma_macro = type { ptr, ptr, ptr }
%struct.answer = type { ptr, i32, [1 x %struct.cpp_token] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.if_stack = type { ptr, i32, ptr, i8, i8, i32 }
%struct.cpp_macro = type { ptr, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { ptr }
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct._cpp_buff = type { ptr, ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @_cpp_handle_directive(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 9
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 10
  %6 = load i8, ptr %5, align 2, !tbaa !26
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 0, ptr %9, align 8, !tbaa !27
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %14 = load i8, ptr %13, align 1, !tbaa !28
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str) #17
  br label %18

18:                                               ; preds = %16, %12
  store i8 0, ptr %3, align 1, !tbaa !5
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 0, ptr %19, align 8, !tbaa !27
  br label %20

20:                                               ; preds = %18, %10
  tail call fastcc void @start_directive(ptr noundef nonnull %0) #18
  %21 = tail call ptr @_cpp_lex_token(ptr noundef nonnull %0) #17
  %22 = getelementptr inbounds %struct.cpp_token, ptr %21, i64 0, i32 1
  %23 = load i8, ptr %22, align 4
  switch i8 %23, label %90 [
    i8 53, label %24
    i8 55, label %35
    i8 22, label %101
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpp_token, ptr %21, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = getelementptr inbounds %struct.cpp_hashnode, ptr %26, i64 0, i32 1
  %28 = load i8, ptr %27, align 8
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %90, label %31

31:                                               ; preds = %24
  %32 = lshr i8 %28, 1
  %33 = zext nneg i8 %32 to i64
  %34 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %33
  br label %53

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !30
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %101, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %41 = load i8, ptr %40, align 1, !tbaa !28
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %45 = load i8, ptr %44, align 2, !tbaa !31
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %49 = load i8, ptr %48, align 2, !tbaa !32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1) #17
  br label %53

53:                                               ; preds = %31, %43, %47, %51, %39
  %54 = phi ptr [ @linemarker_dir, %39 ], [ @linemarker_dir, %51 ], [ @linemarker_dir, %47 ], [ @linemarker_dir, %43 ], [ %34, %31 ]
  %55 = getelementptr inbounds %struct.directive, ptr %54, i64 0, i32 4
  %56 = load i8, ptr %55, align 1, !tbaa !33
  %57 = and i8 %56, 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 0, ptr %60, align 8, !tbaa !35
  br label %61

61:                                               ; preds = %59, %53
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %63 = load i8, ptr %62, align 2, !tbaa !31
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %67 = load i8, ptr %66, align 4, !tbaa !36
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = icmp ne i32 %1, 0
  %71 = and i8 %56, 8
  %72 = icmp eq i8 %71, 0
  %73 = or i1 %70, %72
  br i1 %73, label %101, label %74

74:                                               ; preds = %69, %65
  %75 = and i8 %56, 4
  %76 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 %75, ptr %76, align 1, !tbaa !37
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 1
  store i8 %75, ptr %77, align 1, !tbaa !38
  br label %82

78:                                               ; preds = %61
  %79 = and i8 %56, 4
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 %79, ptr %80, align 1, !tbaa !37
  %81 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 1
  store i8 %79, ptr %81, align 1, !tbaa !38
  tail call fastcc void @directive_diagnostics(ptr noundef nonnull %0, ptr noundef nonnull %54, i32 noundef %1) #18
  br label %82

82:                                               ; preds = %74, %78
  %83 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %84 = load i8, ptr %83, align 2, !tbaa !32
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %82
  %87 = and i8 %56, 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr null, ptr %54
  br label %101

90:                                               ; preds = %20, %24
  %91 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !30
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %96 = load i8, ptr %95, align 2, !tbaa !32
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef nonnull %21) #17
  %100 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef %99) #17
  br label %101

101:                                              ; preds = %20, %35, %90, %69, %86, %94, %98, %82
  %102 = phi ptr [ %89, %86 ], [ %54, %82 ], [ null, %94 ], [ null, %98 ], [ null, %69 ], [ null, %90 ], [ null, %35 ], [ null, %20 ]
  %103 = phi i1 [ false, %86 ], [ false, %82 ], [ false, %94 ], [ false, %98 ], [ true, %69 ], [ true, %90 ], [ true, %35 ], [ false, %20 ]
  %104 = phi i32 [ 1, %86 ], [ 1, %82 ], [ 1, %94 ], [ 1, %98 ], [ 0, %69 ], [ 0, %90 ], [ 0, %35 ], [ 1, %20 ]
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  store ptr %102, ptr %105, align 8, !tbaa !39
  %106 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %107 = load i8, ptr %106, align 2, !tbaa !40
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  tail call fastcc void @prepare_directive_trad(ptr noundef nonnull %0) #18
  br label %110

110:                                              ; preds = %109, %101
  %111 = icmp eq ptr %102, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %105, align 8, !tbaa !39
  %114 = load ptr, ptr %113, align 8, !tbaa !41
  tail call void %114(ptr noundef nonnull %0) #17
  br label %117

115:                                              ; preds = %110
  br i1 %103, label %116, label %117

116:                                              ; preds = %115
  tail call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef 1) #17
  br label %117

117:                                              ; preds = %115, %116, %112
  tail call fastcc void @end_directive(ptr noundef nonnull %0, i32 noundef %104) #18
  br i1 %11, label %124, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %120 = load i8, ptr %119, align 8, !tbaa !42
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  store i8 2, ptr %3, align 1, !tbaa !5
  %123 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %123, align 8, !tbaa !27
  br label %124

124:                                              ; preds = %122, %118, %117
  br i1 %7, label %127, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %126, align 8, !tbaa !27
  br label %127

127:                                              ; preds = %125, %124
  ret i32 %104
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @start_directive(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  store i8 1, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 0, ptr %3, align 1, !tbaa !44
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 72, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.line_maps, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  store i32 %8, ptr %9, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare ptr @_cpp_lex_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @directive_diagnostics(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %5 = load i8, ptr %4, align 2, !tbaa !32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.directive, ptr %1, i64 0, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !49
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = icmp eq ptr %1, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 15)
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %15 = load i8, ptr %14, align 2, !tbaa !50
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13, %11
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %19 = load i8, ptr %18, align 1, !tbaa !28
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.directive, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef %23) #17
  br label %44

25:                                               ; preds = %17, %7
  %26 = getelementptr inbounds %struct.directive, ptr %1, i64 0, i32 4
  %27 = load i8, ptr %26, align 1, !tbaa !33
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = icmp eq ptr %1, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 15)
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 4
  %34 = load i8, ptr %33, align 2, !tbaa !50
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32, %25
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 12
  %38 = load i8, ptr %37, align 2, !tbaa !52
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.directive, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !51
  %43 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef %42) #17
  br label %44

44:                                               ; preds = %13, %21, %40, %36, %32, %30, %3
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %46 = load i8, ptr %45, align 1, !tbaa !53
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %44
  %49 = icmp eq ptr %1, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 9)
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.63) #17
  br label %67

52:                                               ; preds = %48
  %53 = icmp eq i32 %2, 0
  %54 = getelementptr inbounds %struct.directive, ptr %1, i64 0, i32 3
  %55 = load i8, ptr %54, align 2, !tbaa !49
  %56 = icmp eq i8 %55, 0
  br i1 %53, label %62, label %57

57:                                               ; preds = %52
  br i1 %56, label %58, label %67

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.directive, ptr %1, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !51
  %61 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef %60) #17
  br label %67

62:                                               ; preds = %52
  br i1 %56, label %67, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.directive, ptr %1, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !51
  %66 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.65, ptr noundef %65) #17
  br label %67

67:                                               ; preds = %57, %50, %62, %63, %58, %44
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_directive_trad(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, @dtable
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %3, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.directive, ptr %3, i64 0, i32 4
  %9 = load i8, ptr %8, align 1, !tbaa !33
  %10 = and i8 %9, 16
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi i1 [ true, %5 ], [ %11, %7 ]
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %15 = load i8, ptr %14, align 2, !tbaa !32
  %16 = icmp eq ptr %3, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 4)
  %17 = icmp eq ptr %3, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 9)
  %18 = select i1 %16, i1 true, i1 %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  store i8 %19, ptr %20, align 4, !tbaa !54
  br i1 %18, label %21, label %22

21:                                               ; preds = %12
  store i8 0, ptr %14, align 2, !tbaa !32
  br label %22

22:                                               ; preds = %21, %12
  br i1 %13, label %30, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %25 = load i8, ptr %24, align 8, !tbaa !27
  %26 = add i8 %25, 1
  store i8 %26, ptr %24, align 8, !tbaa !27
  %27 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef nonnull %0, ptr noundef null) #17
  %28 = load i8, ptr %24, align 8, !tbaa !27
  %29 = add i8 %28, -1
  store i8 %29, ptr %24, align 8, !tbaa !27
  br label %32

30:                                               ; preds = %22
  %31 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef nonnull %0, ptr noundef null) #17
  br label %32

32:                                               ; preds = %30, %23
  store i8 %15, ptr %14, align 2, !tbaa !32
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %34 to i64
  %39 = sub i64 %37, %38
  tail call void @_cpp_overlay_buffer(ptr noundef nonnull %0, ptr noundef %34, i64 noundef %39) #17
  br label %40

40:                                               ; preds = %32, %1
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %42 = load i8, ptr %41, align 8, !tbaa !27
  %43 = add i8 %42, 1
  store i8 %43, ptr %41, align 8, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @_cpp_backup_tokens(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @end_directive(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  %4 = load i8, ptr %3, align 8, !tbaa !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %8 = load i8, ptr %7, align 2, !tbaa !40
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !27
  %13 = add i8 %12, -1
  store i8 %13, ptr %11, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, @dtable
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  tail call void @_cpp_remove_overlay(ptr noundef nonnull %0) #17
  br label %30

18:                                               ; preds = %6
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  tail call fastcc void @skip_rest_of_line(ptr noundef nonnull %0) #18
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 33
  %22 = load i32, ptr %21, align 4, !tbaa !57
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  store ptr %25, ptr %26, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 30, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  store ptr %28, ptr %29, align 8, !tbaa !60
  br label %30

30:                                               ; preds = %17, %10, %20, %24, %18, %2
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %33 = load i8, ptr %32, align 1, !tbaa !61
  %34 = icmp eq i8 %33, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 %35, ptr %36, align 1, !tbaa !44
  store i8 0, ptr %31, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  store i8 0, ptr %37, align 4, !tbaa !54
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 0, ptr %38, align 1, !tbaa !37
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  store ptr null, ptr %39, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_undef_all(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @undefine_macros, ptr noundef null) #17
  ret void
}

; Function Attrs: optsize
declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @undefine_macros(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #4 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, -10688
  store i16 %6, ptr %4, align 2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_do_file_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call ptr @linemap_add(ptr noundef %7, i32 noundef %1, i32 noundef %4, ptr noundef %2, i32 noundef %3) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.line_map, ptr %8, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = tail call i32 @linemap_line_start(ptr noundef %11, i32 noundef %13, i32 noundef 127) #17
  br label %15

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef nonnull %0, ptr noundef %8) #17
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: optsize
declare ptr @linemap_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_register_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.3) #17
  br label %15

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pragma_entry, ptr %10, i64 0, i32 5
  store i8 %4, ptr %13, align 1, !tbaa !65
  %14 = getelementptr inbounds %struct.pragma_entry, ptr %10, i64 0, i32 6
  store ptr %3, ptr %14, align 8, !tbaa !29
  br label %15

15:                                               ; preds = %9, %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %6 = icmp eq ptr %1, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %9) #17
  %11 = load ptr, ptr %5, align 8, !tbaa !67
  %12 = tail call fastcc ptr @lookup_pragma_entry(ptr noundef %11, ptr noundef %10) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @new_pragma_entry(ptr noundef nonnull %0, ptr noundef nonnull %5) #18
  %16 = getelementptr inbounds %struct.pragma_entry, ptr %15, i64 0, i32 1
  store ptr %10, ptr %16, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.pragma_entry, ptr %15, i64 0, i32 2
  store i8 1, ptr %17, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.pragma_entry, ptr %15, i64 0, i32 5
  store i8 %3, ptr %18, align 1, !tbaa !65
  br label %29

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.pragma_entry, ptr %12, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !69
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pragma_entry, ptr %12, i64 0, i32 5
  %25 = load i8, ptr %24, align 1, !tbaa !65
  %26 = icmp eq i8 %25, %3
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.66, ptr noundef nonnull %1) #17
  br label %60

29:                                               ; preds = %23, %14
  %30 = phi ptr [ %12, %23 ], [ %15, %14 ]
  %31 = getelementptr inbounds %struct.pragma_entry, ptr %30, i64 0, i32 6
  br label %36

32:                                               ; preds = %4
  %33 = icmp eq i8 %3, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.67, ptr noundef %2) #17
  br label %60

36:                                               ; preds = %32, %29
  %37 = phi ptr [ %31, %29 ], [ %5, %32 ]
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %39 = trunc i64 %38 to i32
  %40 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %2, i32 noundef %39) #17
  %41 = load ptr, ptr %37, align 8, !tbaa !67
  %42 = tail call fastcc ptr @lookup_pragma_entry(ptr noundef %41, ptr noundef %40) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = tail call fastcc ptr @new_pragma_entry(ptr noundef %0, ptr noundef nonnull %37) #18
  %46 = getelementptr inbounds %struct.pragma_entry, ptr %45, i64 0, i32 1
  store ptr %40, ptr %46, align 8, !tbaa !68
  br label %60

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.pragma_entry, ptr %42, i64 0, i32 2
  %49 = load i8, ptr %48, align 8, !tbaa !69
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47, %19
  %52 = phi ptr [ %40, %47 ], [ %10, %19 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef %53) #17
  br label %60

55:                                               ; preds = %47
  br i1 %6, label %58, label %56

56:                                               ; preds = %55
  %57 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.69, ptr noundef nonnull %1, ptr noundef %2) #17
  br label %60

58:                                               ; preds = %55
  %59 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.70, ptr noundef %2) #17
  br label %60

60:                                               ; preds = %51, %58, %56, %44, %34, %27
  %61 = phi ptr [ null, %27 ], [ %45, %44 ], [ null, %34 ], [ null, %56 ], [ null, %58 ], [ null, %51 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_register_deferred_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 4
  store i8 1, ptr %10, align 2, !tbaa !73
  %11 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 5
  store i8 %4, ptr %11, align 1, !tbaa !65
  %12 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 6
  store i32 %3, ptr %12, align 8, !tbaa !29
  br label %13

13:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_init_internal_pragmas(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @register_pragma_internal(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @do_pragma_once) #18
  tail call fastcc void @register_pragma_internal(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @do_pragma_push_macro) #18
  tail call fastcc void @register_pragma_internal(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @do_pragma_pop_macro) #18
  tail call fastcc void @register_pragma_internal(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @do_pragma_poison) #18
  tail call fastcc void @register_pragma_internal(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef nonnull @do_pragma_system_header) #18
  tail call fastcc void @register_pragma_internal(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, ptr noundef nonnull @do_pragma_dependency) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_pragma_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #18
  %6 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 3
  store i8 1, ptr %6, align 1, !tbaa !74
  %7 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 6
  store ptr %3, ptr %7, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_pragma_once(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @cpp_in_primary_file(ptr noundef %0) #18, !range !75
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.71) #17
  br label %6

6:                                                ; preds = %4, %1
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  tail call void @_cpp_mark_file_once_only(ptr noundef nonnull %0, ptr noundef %9) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_pragma_push_macro(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @get__Pragma_string(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.cpp_token, ptr %6, i64 -1
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @.str.72) #17
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0) #18
  tail call fastcc void @skip_rest_of_line(ptr noundef %0) #18
  br label %55

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !29
  %13 = add i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  %16 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %17, align 1, !tbaa !29
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
  %29 = phi ptr [ %39, %36 ], [ %22, %10 ]
  %30 = load i8, ptr %29, align 1, !tbaa !29
  %31 = icmp eq i8 %30, 92
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %29, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !29
  switch i8 %34, label %36 [
    i8 92, label %35
    i8 34, label %35
  ]

35:                                               ; preds = %32, %32
  br label %36

36:                                               ; preds = %32, %35, %27
  %37 = phi i8 [ %34, %35 ], [ %30, %27 ], [ 92, %32 ]
  %38 = phi ptr [ %33, %35 ], [ %29, %27 ], [ %29, %32 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %37, ptr %28, align 1, !tbaa !29
  %41 = icmp ult ptr %39, %25
  br i1 %41, label %27, label %42, !llvm.loop !80

42:                                               ; preds = %36, %10
  %43 = phi ptr [ %15, %10 ], [ %40, %36 ]
  store i8 0, ptr %43, align 1, !tbaa !29
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0) #18
  tail call fastcc void @skip_rest_of_line(ptr noundef %0) #18
  %44 = tail call ptr @xmalloc(i64 noundef 24) #17
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #19
  %46 = add i64 %45, 1
  %47 = tail call ptr @xmalloc(i64 noundef %46) #17
  %48 = getelementptr inbounds %struct.def_pragma_macro, ptr %44, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !82
  %49 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %15) #17
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  %51 = load ptr, ptr %50, align 8, !tbaa !84
  store ptr %51, ptr %44, align 8, !tbaa !85
  %52 = load ptr, ptr %48, align 8, !tbaa !82
  %53 = tail call ptr @cpp_push_definition(ptr noundef %0, ptr noundef %52) #18
  %54 = getelementptr inbounds %struct.def_pragma_macro, ptr %44, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !86
  store ptr %44, ptr %50, align 8, !tbaa !84
  br label %55

55:                                               ; preds = %42, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_pragma_pop_macro(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = tail call fastcc ptr @get__Pragma_string(ptr noundef %0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 -1
  %10 = load i32, ptr %9, align 8, !tbaa !79
  %11 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %10, i32 noundef 0, ptr noundef nonnull @.str.73) #17
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  tail call fastcc void @skip_rest_of_line(ptr noundef nonnull %0) #18
  br label %72

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = add i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  %18 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %19, align 1, !tbaa !29
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
  %31 = phi ptr [ %41, %38 ], [ %24, %12 ]
  %32 = load i8, ptr %31, align 1, !tbaa !29
  %33 = icmp eq i8 %32, 92
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !29
  switch i8 %36, label %38 [
    i8 92, label %37
    i8 34, label %37
  ]

37:                                               ; preds = %34, %34
  br label %38

38:                                               ; preds = %34, %37, %29
  %39 = phi i8 [ %36, %37 ], [ %32, %29 ], [ 92, %34 ]
  %40 = phi ptr [ %35, %37 ], [ %31, %29 ], [ %31, %34 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %39, ptr %30, align 1, !tbaa !29
  %43 = icmp ult ptr %41, %27
  br i1 %43, label %29, label %44, !llvm.loop !87

44:                                               ; preds = %38, %12
  %45 = phi ptr [ %17, %12 ], [ %42, %38 ]
  store i8 0, ptr %45, align 1, !tbaa !29
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0) #18
  tail call fastcc void @skip_rest_of_line(ptr noundef %0) #18
  %46 = icmp eq ptr %3, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.def_pragma_macro, ptr %3, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !82
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %17) #19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %68

52:                                               ; preds = %68
  %53 = getelementptr inbounds %struct.def_pragma_macro, ptr %70, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !82
  %55 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %17) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68, !llvm.loop !88

57:                                               ; preds = %52, %47
  %58 = phi ptr [ %3, %47 ], [ %70, %52 ]
  %59 = phi ptr [ null, %47 ], [ %69, %52 ]
  %60 = phi ptr [ %49, %47 ], [ %54, %52 ]
  %61 = getelementptr inbounds %struct.def_pragma_macro, ptr %58, i64 0, i32 1
  %62 = icmp eq ptr %59, null
  %63 = load ptr, ptr %58, align 8, !tbaa !85
  %64 = select i1 %62, ptr %2, ptr %59
  store ptr %63, ptr %64, align 8, !tbaa !67
  %65 = getelementptr inbounds %struct.def_pragma_macro, ptr %58, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %60, ptr noundef %66) #18
  %67 = load ptr, ptr %61, align 8, !tbaa !82
  tail call void @free(ptr noundef %67) #17
  tail call void @free(ptr noundef nonnull %58) #17
  br label %72

68:                                               ; preds = %47, %52
  %69 = phi ptr [ %70, %52 ], [ %3, %47 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !85
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %52, !llvm.loop !88

72:                                               ; preds = %68, %44, %57, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_pragma_poison(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 7
  store i8 1, ptr %2, align 1, !tbaa !89
  br label %3

3:                                                ; preds = %25, %1
  %4 = tail call ptr @_cpp_lex_token(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 1
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %7 [
    i8 22, label %26
    i8 53, label %9
  ]

7:                                                ; preds = %3
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.74) #17
  br label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !29
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
  %20 = load ptr, ptr %11, align 8, !tbaa !70
  %21 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef %20) #17
  br label %22

22:                                               ; preds = %19, %16
  tail call void @_cpp_free_definition(ptr noundef nonnull %11) #17
  %23 = load i16, ptr %12, align 2
  %24 = or i16 %23, 640
  store i16 %24, ptr %12, align 2
  br label %25

25:                                               ; preds = %22, %9
  br label %3

26:                                               ; preds = %3, %7
  store i8 0, ptr %2, align 1, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_pragma_system_header(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @cpp_in_primary_file(ptr noundef %0) #18, !range !75
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.76) #17
  br label %7

6:                                                ; preds = %1
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0) #18
  tail call fastcc void @skip_rest_of_line(ptr noundef %0) #18
  tail call void @cpp_make_system_header(ptr noundef %0, i32 noundef 1, i32 noundef 0) #17
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_pragma_dependency(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = call fastcc ptr @parse_include(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %3) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4, !tbaa !90
  %8 = tail call i32 @_cpp_compare_file_date(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7) #17
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull %4) #17
  br label %21

12:                                               ; preds = %6
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.78, ptr noundef nonnull %4) #17
  %16 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %17 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 22
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #17
  tail call fastcc void @do_diagnostic(ptr noundef %0, i32 noundef 0, i32 noundef 0) #18
  br label %21

21:                                               ; preds = %12, %20, %14, %10
  tail call void @free(ptr noundef nonnull %4) #17
  br label %22

22:                                               ; preds = %1, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @_cpp_save_pragma_names(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = tail call fastcc i32 @count_registered_pragmas(ptr noundef %3) #18
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @xmalloc(i64 noundef %6) #17
  %8 = load ptr, ptr %2, align 8, !tbaa !91
  %9 = tail call fastcc ptr @save_registered_pragmas(ptr noundef %8, ptr noundef %7) #18
  ret ptr %7
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_registered_pragmas(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %14
  %4 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %5 = phi ptr [ %17, %14 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !69
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = tail call fastcc i32 @count_registered_pragmas(ptr noundef %11) #18
  %13 = add nsw i32 %12, %4
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %13, %9 ], [ %4, %3 ]
  %16 = add nsw i32 %15, 1
  %17 = load ptr, ptr %5, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !93

19:                                               ; preds = %14, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %14 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @save_registered_pragmas(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2, %14
  %5 = phi ptr [ %25, %14 ], [ %1, %2 ]
  %6 = phi ptr [ %26, %14 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.pragma_entry, ptr %6, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !69
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pragma_entry, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = tail call fastcc ptr @save_registered_pragmas(ptr noundef %12, ptr noundef %5) #18
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi ptr [ %13, %10 ], [ %5, %4 ]
  %16 = getelementptr inbounds %struct.pragma_entry, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.ht_identifier, ptr %17, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !94
  %21 = zext i32 %20 to i64
  %22 = add i32 %20, 1
  %23 = zext i32 %22 to i64
  %24 = tail call ptr @xmemdup(ptr noundef %18, i64 noundef %21, i64 noundef %23) #17
  %25 = getelementptr inbounds ptr, ptr %15, i64 1
  store ptr %24, ptr %15, align 8, !tbaa !67
  %26 = load ptr, ptr %6, align 8, !tbaa !92
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %4, !llvm.loop !95

28:                                               ; preds = %14, %2
  %29 = phi ptr [ %1, %2 ], [ %25, %14 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_restore_pragma_names(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc ptr @restore_registered_pragmas(ptr noundef %0, ptr noundef %4, ptr noundef %1) #18
  tail call void @free(ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @restore_registered_pragmas(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3, %15
  %6 = phi ptr [ %23, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %24, %15 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !69
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = tail call fastcc ptr @restore_registered_pragmas(ptr noundef %0, ptr noundef %13, ptr noundef %6) #18
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi ptr [ %14, %11 ], [ %6, %5 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #19
  %19 = trunc i64 %18 to i32
  %20 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %17, i32 noundef %19) #17
  %21 = getelementptr inbounds %struct.pragma_entry, ptr %7, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !68
  %22 = load ptr, ptr %16, align 8, !tbaa !67
  tail call void @free(ptr noundef %22) #17
  %23 = getelementptr inbounds ptr, ptr %16, i64 1
  %24 = load ptr, ptr %7, align 8, !tbaa !92
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %5, !llvm.loop !96

26:                                               ; preds = %15, %3
  %27 = phi ptr [ %2, %3 ], [ %23, %15 ]
  ret ptr %27
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @_cpp_do__Pragma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get__Pragma_string(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 72, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  tail call fastcc void @destringize_and_run(ptr noundef nonnull %0, ptr noundef nonnull %6) #18
  br label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11) #17
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ 1, %5 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get__Pragma_string(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_token_no_padding(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 22
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #17
  %7 = load i8, ptr %3, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i8 [ %7, %6 ], [ %4, %1 ]
  %10 = icmp eq i8 %9, 20
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @get_token_no_padding(ptr noundef %0) #18
  %13 = getelementptr inbounds %struct.cpp_token, ptr %12, i64 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 22
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #17
  %17 = load i8, ptr %13, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i8 [ %17, %16 ], [ %14, %11 ]
  %20 = add i8 %19, -61
  %21 = icmp ult i8 %20, 5
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @get_token_no_padding(ptr noundef %0) #18
  %24 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 22
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #17
  %28 = load i8, ptr %24, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i8 [ %28, %27 ], [ %25, %22 ]
  %31 = icmp eq i8 %30, 21
  %32 = select i1 %31, ptr %12, ptr null
  br label %33

33:                                               ; preds = %18, %29, %8
  %34 = phi ptr [ null, %8 ], [ null, %18 ], [ %32, %29 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @destringize_and_run(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8, !tbaa !97
  %4 = add i32 %3, -1
  %5 = zext i32 %4 to i64
  %6 = alloca i8, i64 %5, align 16
  %7 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = load i8, ptr %8, align 1, !tbaa !29
  %11 = icmp eq i8 %10, 76
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = zext i32 %3 to i64
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = getelementptr inbounds i8, ptr %15, i64 -1
  %17 = icmp ult ptr %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2, %27
  %19 = phi ptr [ %30, %27 ], [ %13, %2 ]
  %20 = phi ptr [ %31, %27 ], [ %6, %2 ]
  %21 = load i8, ptr %19, align 1, !tbaa !29
  %22 = icmp eq i8 %21, 92
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %19, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !29
  switch i8 %25, label %27 [
    i8 92, label %26
    i8 34, label %26
  ]

26:                                               ; preds = %23, %23
  br label %27

27:                                               ; preds = %23, %26, %18
  %28 = phi i8 [ %25, %26 ], [ %21, %18 ], [ 92, %23 ]
  %29 = phi ptr [ %24, %26 ], [ %19, %18 ], [ %19, %23 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %28, ptr %20, align 1, !tbaa !29
  %32 = icmp ult ptr %30, %16
  br i1 %32, label %18, label %33, !llvm.loop !100

33:                                               ; preds = %27, %2
  %34 = phi ptr [ %6, %2 ], [ %31, %27 ]
  store i8 10, ptr %34, align 1, !tbaa !29
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = tail call ptr @xmalloc(i64 noundef 56) #17
  store ptr %41, ptr %35, align 8, !tbaa !101
  %42 = getelementptr inbounds %struct.cpp_context, ptr %41, i64 0, i32 4
  store ptr null, ptr %42, align 8, !tbaa !102
  %43 = ptrtoint ptr %34 to i64
  %44 = ptrtoint ptr %6 to i64
  %45 = sub i64 %43, %44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %46 = call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef nonnull %6, i64 noundef %45, i32 noundef 1) #18
  %47 = load ptr, ptr %0, align 8, !tbaa !76
  %48 = getelementptr inbounds %struct.cpp_buffer, ptr %47, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !103
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.cpp_buffer, ptr %49, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !77
  %54 = getelementptr inbounds %struct.cpp_buffer, ptr %47, i64 0, i32 10
  store ptr %53, ptr %54, align 8, !tbaa !77
  br label %55

55:                                               ; preds = %51, %33
  call fastcc void @start_directive(ptr noundef nonnull %0) #18
  call void @_cpp_clean_line(ptr noundef nonnull %0) #17
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  store ptr getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 11), ptr %56, align 8, !tbaa !39
  call void @do_pragma(ptr noundef nonnull %0) #18
  call fastcc void @end_directive(ptr noundef nonnull %0, i32 noundef 1) #18
  store ptr %57, ptr %56, align 8, !tbaa !39
  %58 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = icmp eq i8 %60, 70
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  %63 = call ptr @xmalloc(i64 noundef 1200) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(24) %58, i64 24, i1 false), !tbaa.struct !104
  br label %64

64:                                               ; preds = %76, %62
  %65 = phi i64 [ %81, %76 ], [ 1, %62 ]
  %66 = phi ptr [ %77, %76 ], [ %63, %62 ]
  %67 = phi i32 [ %78, %76 ], [ 50, %62 ]
  %68 = zext i32 %67 to i64
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = mul nsw i32 %67, 3
  %72 = sdiv i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, 24
  %75 = call ptr @xrealloc(ptr noundef nonnull %66, i64 noundef %74) #17
  br label %76

76:                                               ; preds = %70, %64
  %77 = phi ptr [ %75, %70 ], [ %66, %64 ]
  %78 = phi i32 [ %72, %70 ], [ %67, %64 ]
  %79 = getelementptr inbounds %struct.cpp_token, ptr %77, i64 %65
  %80 = call ptr @cpp_get_token(ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %80, i64 24, i1 false), !tbaa.struct !104
  %81 = add nuw i64 %65, 1
  %82 = getelementptr inbounds %struct.cpp_token, ptr %77, i64 %65, i32 2
  %83 = load i16, ptr %82, align 2, !tbaa !106
  %84 = or i16 %83, 32
  store i16 %84, ptr %82, align 2, !tbaa !106
  %85 = getelementptr inbounds %struct.cpp_token, ptr %77, i64 %65, i32 1
  %86 = load i8, ptr %85, align 4
  %87 = icmp eq i8 %86, 71
  br i1 %87, label %95, label %64, !llvm.loop !107

88:                                               ; preds = %55
  %89 = call ptr @xmalloc(i64 noundef 24) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef nonnull align 8 dereferenceable(24) %58, i64 24, i1 false), !tbaa.struct !104
  %90 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  %91 = load ptr, ptr %90, align 8, !tbaa !108
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %37, align 8, !tbaa !60
  call void %91(ptr noundef nonnull %0, ptr noundef %94, i32 noundef 0) #17
  br label %97

95:                                               ; preds = %76
  %96 = trunc i64 %81 to i32
  br label %97

97:                                               ; preds = %95, %88, %93
  %98 = phi ptr [ %89, %93 ], [ %89, %88 ], [ %77, %95 ]
  %99 = phi i32 [ 1, %93 ], [ 1, %88 ], [ %96, %95 ]
  %100 = load ptr, ptr %0, align 8, !tbaa !76
  %101 = getelementptr inbounds %struct.cpp_buffer, ptr %100, i64 0, i32 10
  store ptr null, ptr %101, align 8, !tbaa !77
  call void @_cpp_pop_buffer(ptr noundef nonnull %0) #18
  %102 = load ptr, ptr %35, align 8, !tbaa !101
  call void @free(ptr noundef %102) #17
  store ptr %36, ptr %35, align 8, !tbaa !101
  store ptr %38, ptr %37, align 8, !tbaa !60
  store ptr %40, ptr %39, align 8, !tbaa !58
  call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %98, i32 noundef %99) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @_cpp_test_assertion(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = call fastcc ptr @parse_assertion(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4) #18
  store i32 0, ptr %1, align 4, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_hashnode, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 63
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @find_answer(ptr noundef nonnull %4, ptr noundef nonnull %12) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %11, %14, %6
  %20 = phi i32 [ 0, %6 ], [ 1, %11 ], [ %18, %14 ]
  store i32 %20, ptr %1, align 4, !tbaa !90
  br label %28

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = getelementptr %struct.cpp_token, ptr %23, i64 -1, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 22
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef 1) #17
  br label %28

28:                                               ; preds = %21, %27, %19
  %29 = zext i1 %5 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_assertion(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %5 = load i8, ptr %4, align 8, !tbaa !27
  %6 = add i8 %5, 1
  store i8 %6, ptr %4, align 8, !tbaa !27
  store ptr null, ptr %1, align 8, !tbaa !67
  %7 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %12 [
    i8 22, label %10
    i8 53, label %15
  ]

10:                                               ; preds = %3
  %11 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.79) #17
  br label %31

12:                                               ; preds = %3
  %13 = load i32, ptr %7, align 8, !tbaa !79
  %14 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @.str.80) #17
  br label %31

15:                                               ; preds = %3
  %16 = load i32, ptr %7, align 8, !tbaa !79
  %17 = tail call fastcc i32 @parse_answer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %16) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.ht_identifier, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !94
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i8 35, ptr %26, align 16, !tbaa !29
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load ptr, ptr %21, align 8, !tbaa !70
  %29 = zext i32 %23 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr align 1 %28, i64 %29, i1 false)
  %30 = call ptr @cpp_lookup(ptr noundef nonnull %0, ptr noundef nonnull %26, i32 noundef %24) #17
  br label %31

31:                                               ; preds = %12, %19, %15, %10
  %32 = phi ptr [ null, %10 ], [ null, %12 ], [ %30, %19 ], [ null, %15 ]
  %33 = load i8, ptr %4, align 8, !tbaa !27
  %34 = add i8 %33, -1
  store i8 %34, ptr %4, align 8, !tbaa !27
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_answer(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %34
  %9 = phi ptr [ %4, %6 ], [ %36, %34 ]
  %10 = phi ptr [ %3, %6 ], [ %35, %34 ]
  %11 = getelementptr inbounds %struct.answer, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !109
  %13 = load i32, ptr %7, align 8, !tbaa !109
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %15, %24
  %18 = phi i64 [ %25, %24 ], [ 0, %15 ]
  %19 = getelementptr inbounds %struct.answer, ptr %9, i64 0, i32 2, i64 %18
  %20 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %18
  %21 = tail call i32 @_cpp_equiv_tokens(ptr noundef nonnull %19, ptr noundef nonnull %20) #17
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %11, align 8, !tbaa !109
  br i1 %22, label %28, label %24

24:                                               ; preds = %17
  %25 = add nuw nsw i64 %18, 1
  %26 = zext i32 %23 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %17, label %28, !llvm.loop !111

28:                                               ; preds = %24, %17
  %29 = phi i64 [ %25, %24 ], [ %18, %17 ]
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %23, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 8, !tbaa !67
  br label %34

34:                                               ; preds = %32, %8
  %35 = phi ptr [ %33, %32 ], [ %9, %8 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !67
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %8, !llvm.loop !112

38:                                               ; preds = %15, %34, %28, %2
  %39 = phi ptr [ %3, %2 ], [ %10, %15 ], [ %10, %28 ], [ %35, %34 ]
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_define(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %4 = add i64 %3, 3
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %1, i64 %3, i1 false)
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 61) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds i8, ptr %5, i64 %11
  store i8 32, ptr %12, align 1, !tbaa !29
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 32, ptr %14, align 1, !tbaa !29
  %15 = add i64 %3, 2
  %16 = getelementptr i8, ptr %14, i64 1
  store i8 49, ptr %16, align 1, !tbaa !29
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %3, %8 ], [ %15, %13 ]
  %19 = getelementptr inbounds i8, ptr %5, i64 %18
  store i8 10, ptr %19, align 1, !tbaa !29
  call fastcc void @run_directive(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, i64 noundef %18) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @run_directive(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef %2, i64 noundef %3, i32 noundef 1) #18
  tail call fastcc void @start_directive(ptr noundef %0) #18
  tail call void @_cpp_clean_line(ptr noundef %0) #17
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  store ptr %7, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %10 = load i8, ptr %9, align 2, !tbaa !40
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  tail call fastcc void @prepare_directive_trad(ptr noundef nonnull %0) #18
  %13 = load ptr, ptr %8, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ %7, %4 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  tail call void %16(ptr noundef nonnull %0) #17
  tail call fastcc void @end_directive(ptr noundef nonnull %0, i32 noundef 1) #18
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_define_formatted(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vasprintf(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #17
  call void @llvm.va_end(ptr nonnull %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !67
  call void @cpp_define(ptr noundef %0, ptr noundef %6) #18
  %7 = load ptr, ptr %3, align 8, !tbaa !67
  call void @free(ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: optsize
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_define_builtin(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %4 = add i64 %3, 1
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %1, i64 %3, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 10, ptr %6, align 1, !tbaa !29
  call fastcc void @run_directive(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, i64 noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_undef(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %4 = add i64 %3, 1
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %1, i64 %3, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 10, ptr %6, align 1, !tbaa !29
  call fastcc void @run_directive(ptr noundef %0, i32 noundef 7, ptr noundef nonnull %5, i64 noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_push_definition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %1) #17
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
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  br label %13

13:                                               ; preds = %2, %5, %10
  %14 = phi ptr [ %12, %10 ], [ null, %5 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @_cpp_lex_identifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_pop_definition(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef nonnull %0) #17
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.cpp_hashnode, ptr %4, i64 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 63
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  tail call void %18(ptr noundef nonnull %0, i32 noundef %22, ptr noundef nonnull %4) #17
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %25 = load i8, ptr %24, align 2, !tbaa !115
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @_cpp_warn_if_unused_macro(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef null) #17
  br label %29

29:                                               ; preds = %23, %27, %11
  %30 = load i16, ptr %12, align 2
  %31 = and i16 %30, 63
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_cpp_free_definition(ptr noundef nonnull %4) #17
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
  store ptr %2, ptr %40, align 8, !tbaa !29
  %41 = load ptr, ptr %4, align 8, !tbaa !70
  %42 = tail call fastcc i32 @ustrncmp(ptr noundef %41) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = or i16 %38, 1025
  store i16 %45, ptr %12, align 2
  br label %46

46:                                               ; preds = %44, %36
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !116
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !48
  tail call void %48(ptr noundef nonnull %0, i32 noundef %52, ptr noundef nonnull %4) #17
  br label %53

53:                                               ; preds = %34, %50, %46, %3
  ret void
}

; Function Attrs: optsize
declare i32 @_cpp_warn_if_unused_macro(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_free_definition(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrncmp(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.12, i64 noundef 7) #19
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_assert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @handle_assertion(ptr noundef %0, ptr noundef %1, i32 noundef 16) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_assertion(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 61) #19
  %6 = add i64 %4, 2
  %7 = alloca i8, i64 %6, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr align 1 %1, i64 %4, i1 false)
  %8 = icmp eq ptr %5, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = ptrtoint ptr %5 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  store i8 40, ptr %13, align 1, !tbaa !29
  %14 = add i64 %4, 1
  %15 = getelementptr inbounds i8, ptr %7, i64 %4
  store i8 41, ptr %15, align 1, !tbaa !29
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i64 [ %14, %9 ], [ %4, %3 ]
  %18 = getelementptr inbounds i8, ptr %7, i64 %17
  store i8 10, ptr %18, align 1, !tbaa !29
  call fastcc void @run_directive(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7, i64 noundef %17) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_unassert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @handle_assertion(ptr noundef %0, ptr noundef %1, i32 noundef 17) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @cpp_get_options(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @cpp_get_callbacks(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @cpp_set_callbacks(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false), !tbaa.struct !117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_get_deps(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @deps_init() #17
  store ptr %6, ptr %2, align 8, !tbaa !118
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @deps_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_push_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 192, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 192
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  tail call void @_obstack_newchunk(ptr noundef nonnull %15, i32 noundef 192) #17
  %16 = load i64, ptr %5, align 8, !tbaa !119
  %17 = load ptr, ptr %8, align 8, !tbaa !121
  br label %18

18:                                               ; preds = %4, %14
  %19 = phi ptr [ %9, %4 ], [ %17, %14 ]
  %20 = phi i64 [ 192, %4 ], [ %16, %14 ]
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 10
  %27 = load i8, ptr %26, align 8
  %28 = or i8 %27, 2
  store i8 %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %18, %25
  %30 = ptrtoint ptr %23 to i64
  store i64 %30, ptr %5, align 8, !tbaa !119
  %31 = ptrtoint ptr %21 to i64
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !123
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %31
  %36 = xor i32 %33, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to ptr
  store ptr %39, ptr %8, align 8, !tbaa !121
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !124
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %38, %42
  %44 = load ptr, ptr %6, align 8, !tbaa !120
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %45, %42
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  store ptr %44, ptr %8, align 8, !tbaa !121
  br label %49

49:                                               ; preds = %29, %48
  %50 = phi ptr [ %39, %29 ], [ %44, %48 ]
  store ptr %50, ptr %22, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %23, i8 0, i64 192, i1 false)
  %51 = getelementptr inbounds %struct.cpp_buffer, ptr %23, i64 0, i32 3
  store ptr %1, ptr %51, align 8, !tbaa !125
  %52 = getelementptr inbounds %struct.cpp_buffer, ptr %23, i64 0, i32 2
  store ptr %1, ptr %52, align 8, !tbaa !126
  %53 = getelementptr inbounds i8, ptr %1, i64 %2
  %54 = getelementptr inbounds %struct.cpp_buffer, ptr %23, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !127
  %55 = getelementptr inbounds %struct.cpp_buffer, ptr %23, i64 0, i32 14
  %56 = trunc i32 %3 to i8
  %57 = shl i8 %56, 1
  %58 = and i8 %57, 2
  store i8 %58, ptr %55, align 1
  %59 = load ptr, ptr %0, align 8, !tbaa !76
  %60 = getelementptr inbounds %struct.cpp_buffer, ptr %23, i64 0, i32 9
  store ptr %59, ptr %60, align 8, !tbaa !103
  %61 = getelementptr inbounds %struct.cpp_buffer, ptr %23, i64 0, i32 13
  store i8 1, ptr %61, align 8, !tbaa !128
  store ptr %23, ptr %0, align 8, !tbaa !76
  ret ptr %23
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_pop_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.if_stack, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.if_stack, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !131
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %16) #17
  %18 = load ptr, ptr %9, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !132

20:                                               ; preds = %8, %1
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 0, ptr %21, align 2, !tbaa !32
  %22 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  store ptr %23, ptr %0, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  tail call void @free(ptr noundef %25) #17
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = ptrtoint ptr %2 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 %31, ptr %32, align 8, !tbaa !119
  %33 = icmp sgt i64 %31, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !120
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %30
  %39 = icmp slt i64 %31, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %28, i64 %31
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !122
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  store ptr %41, ptr %43, align 8, !tbaa !121
  br label %46

44:                                               ; preds = %34, %20
  %45 = getelementptr inbounds i8, ptr %28, i64 %31
  tail call void @obstack_free(ptr noundef nonnull %26, ptr noundef %45) #17
  br label %46

46:                                               ; preds = %44, %40
  %47 = icmp eq ptr %4, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  tail call void @_cpp_pop_file_buffer(ptr noundef nonnull %0, ptr noundef nonnull %4) #17
  tail call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #18
  br label %49

49:                                               ; preds = %48, %46
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_pop_file_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_init_directives(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %14, %2 ]
  %4 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds [19 x %struct.directive], ptr @dtable, i64 0, i64 %3, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !134
  %8 = zext i16 %7 to i32
  %9 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %5, i32 noundef %8) #17
  %10 = getelementptr inbounds %struct.cpp_hashnode, ptr %9, i64 0, i32 1
  %11 = trunc i64 %3 to i8
  %12 = shl nuw nsw i8 %11, 1
  %13 = or disjoint i8 %12, 1
  store i8 %13, ptr %10, align 8
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 19
  br i1 %15, label %16, label %2, !llvm.loop !135

16:                                               ; preds = %2
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_define(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext 1) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %6 = load i8, ptr %5, align 4, !tbaa !136
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 %8, ptr %9, align 1, !tbaa !44
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void %11(ptr noundef nonnull %0) #17
  br label %14

14:                                               ; preds = %13, %4
  %15 = tail call zeroext i8 @_cpp_create_definition(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !48
  tail call void %19(ptr noundef nonnull %0, i32 noundef %23, ptr noundef nonnull %2) #17
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_include(ptr noundef %0) #0 {
  tail call fastcc void @do_include_common(ptr noundef %0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_endif(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.43) #17
  br label %50

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 4
  %10 = load i8, ptr %9, align 1, !tbaa !138
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 19
  %14 = load i8, ptr %13, align 1, !tbaa !139
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = load ptr, ptr %4, align 8, !tbaa !140
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !141
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 1, ptr %25, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  store ptr %22, ptr %26, align 8, !tbaa !142
  br label %27

27:                                               ; preds = %24, %20, %17
  store ptr %18, ptr %3, align 8, !tbaa !137
  %28 = load i8, ptr %9, align 1, !tbaa !138
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 %28, ptr %29, align 2, !tbaa !32
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !124
  %33 = ptrtoint ptr %4 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 %35, ptr %36, align 8, !tbaa !119
  %37 = icmp sgt i64 %35, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !120
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %34
  %43 = icmp slt i64 %35, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, ptr %32, i64 %35
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !122
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  store ptr %45, ptr %47, align 8, !tbaa !121
  br label %50

48:                                               ; preds = %38, %27
  %49 = getelementptr inbounds i8, ptr %32, i64 %35
  tail call void @obstack_free(ptr noundef nonnull %30, ptr noundef %49) #17
  br label %50

50:                                               ; preds = %44, %48, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_ifdef(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %3 = load i8, ptr %2, align 2, !tbaa !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @lex_macro_node(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 63
  %12 = icmp ne i16 %11, 1
  %13 = zext i1 %12 to i32
  %14 = and i16 %10, 319
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = or i8 %20, 8
  store i8 %21, ptr %19, align 2
  %22 = load i16, ptr %9, align 2
  br label %23

23:                                               ; preds = %16, %8
  %24 = phi i16 [ %22, %16 ], [ %10, %8 ]
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = or disjoint i16 %24, 8192
  store i16 %28, ptr %9, align 2
  %29 = and i16 %24, 63
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !143
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %39

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !144
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %31
  %40 = phi ptr [ %33, %31 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !48
  tail call void %40(ptr noundef nonnull %0, i32 noundef %42, ptr noundef nonnull %6) #17
  br label %43

43:                                               ; preds = %39, %31, %35, %23
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !145
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !48
  tail call void %45(ptr noundef nonnull %0, i32 noundef %49, ptr noundef nonnull %6) #17
  br label %50

50:                                               ; preds = %47, %43
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %51

51:                                               ; preds = %5, %50, %1
  %52 = phi i32 [ 1, %1 ], [ %13, %50 ], [ 1, %5 ]
  tail call fastcc void @push_conditional(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 3, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_if(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %3 = load i8, ptr %2, align 2, !tbaa !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @_cpp_parse_expr(ptr noundef nonnull %0, i8 noundef zeroext 1) #17
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 1, %1 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  tail call fastcc void @push_conditional(ptr noundef nonnull %0, i32 noundef %10, i32 noundef 4, ptr noundef %12) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_else(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.44) #17
  br label %30

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !131
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.45) #17
  %14 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !129
  %16 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %15, i32 noundef 0, ptr noundef nonnull @.str.46) #17
  br label %17

17:                                               ; preds = %12, %8
  store i32 5, ptr %9, align 4, !tbaa !131
  %18 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 3
  %19 = load i8, ptr %18, align 8, !tbaa !147
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 %19, ptr %20, align 2, !tbaa !32
  store i8 1, ptr %18, align 8, !tbaa !147
  %21 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !141
  %22 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 4
  %23 = load i8, ptr %22, align 1, !tbaa !138
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 19
  %27 = load i8, ptr %26, align 1, !tbaa !139
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %30

30:                                               ; preds = %17, %25, %29, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_ifndef(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %3 = load i8, ptr %2, align 2, !tbaa !32
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %51

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @lex_macro_node(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 63
  %12 = icmp eq i16 %11, 1
  %13 = zext i1 %12 to i32
  %14 = and i16 %10, 319
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpp_hashnode, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %18, i64 0, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = or i8 %20, 8
  store i8 %21, ptr %19, align 2
  %22 = load i16, ptr %9, align 2
  br label %23

23:                                               ; preds = %16, %8
  %24 = phi i16 [ %22, %16 ], [ %10, %8 ]
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = or disjoint i16 %24, 8192
  store i16 %28, ptr %9, align 2
  %29 = and i16 %24, 63
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !143
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %39

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !144
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %31
  %40 = phi ptr [ %33, %31 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !48
  tail call void %40(ptr noundef nonnull %0, i32 noundef %42, ptr noundef nonnull %6) #17
  br label %43

43:                                               ; preds = %39, %31, %35, %23
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !145
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !48
  tail call void %45(ptr noundef nonnull %0, i32 noundef %49, ptr noundef nonnull %6) #17
  br label %50

50:                                               ; preds = %47, %43
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %51

51:                                               ; preds = %5, %50, %1
  %52 = phi i32 [ 1, %1 ], [ %13, %50 ], [ 1, %5 ]
  %53 = phi ptr [ null, %1 ], [ %6, %50 ], [ null, %5 ]
  tail call fastcc void @push_conditional(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 6, ptr noundef %53) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_undef(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext 1) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6(ptr noundef nonnull %0) #17
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !48
  tail call void %11(ptr noundef nonnull %0, i32 noundef %15, ptr noundef nonnull %2) #17
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
  %25 = load ptr, ptr %2, align 8, !tbaa !70
  %26 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef %25) #17
  br label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 28
  %29 = load i8, ptr %28, align 2, !tbaa !115
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @_cpp_warn_if_unused_macro(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null) #17
  br label %33

33:                                               ; preds = %31, %27
  tail call void @_cpp_free_definition(ptr noundef nonnull %2) #17
  br label %34

34:                                               ; preds = %16, %33, %1
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_line(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca %struct.cpp_string, align 8
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.line_maps, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !149
  %10 = add i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.line_map, ptr %7, i64 %11
  %13 = getelementptr inbounds %struct.line_map, ptr %7, i64 %11, i32 5
  %14 = load i8, ptr %13, align 1, !tbaa !150
  %15 = load ptr, ptr %12, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %17 = load i8, ptr %16, align 1, !tbaa !152
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 32767, i32 2147483647
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  %20 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %21 = getelementptr inbounds %struct.cpp_token, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 4
  switch i8 %22, label %33 [
    i8 55, label %23
    i8 22, label %31
  ]

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.cpp_token, ptr %20, i64 0, i32 3
  %25 = getelementptr inbounds %struct.cpp_token, ptr %20, i64 0, i32 3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = load i32, ptr %24, align 8, !tbaa !29
  %28 = zext i32 %27 to i64
  %29 = call fastcc zeroext i8 @strtolinenum(ptr noundef %26, i64 noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !153
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %33

31:                                               ; preds = %1
  %32 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.48) #17
  br label %72

33:                                               ; preds = %1, %23
  %34 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef nonnull %20) #17
  %35 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef %34) #17
  br label %72

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %38 = load i8, ptr %37, align 1, !tbaa !28
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 4, !tbaa !90
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = icmp ugt i32 %41, %19
  %45 = load i8, ptr %3, align 1
  %46 = icmp ne i8 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %51, label %54

48:                                               ; preds = %36
  %49 = load i8, ptr %3, align 1, !tbaa !29
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48, %40, %43
  %52 = phi i32 [ 2, %43 ], [ 2, %40 ], [ 0, %48 ]
  %53 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef %52, ptr noundef nonnull @.str.50) #17
  br label %54

54:                                               ; preds = %51, %43, %48
  %55 = tail call ptr @cpp_get_token(ptr noundef nonnull %0) #17
  %56 = getelementptr inbounds %struct.cpp_token, ptr %55, i64 0, i32 1
  %57 = load i8, ptr %56, align 4
  switch i8 %57, label %65 [
    i8 61, label %58
    i8 22, label %68
  ]

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %59 = getelementptr inbounds %struct.cpp_token, ptr %55, i64 0, i32 3
  %60 = call zeroext i8 @cpp_interpret_string_notranslate(ptr noundef nonnull %0, ptr noundef nonnull %59, i64 noundef 1, ptr noundef nonnull %4, i32 noundef 61) #17
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = select i1 %61, ptr %15, ptr %63
  call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %68

65:                                               ; preds = %54
  %66 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef nonnull %55) #17
  %67 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef %66) #17
  br label %72

68:                                               ; preds = %54, %58
  %69 = phi ptr [ %64, %58 ], [ %15, %54 ]
  call fastcc void @skip_rest_of_line(ptr noundef nonnull %0) #18
  %70 = load i32, ptr %2, align 4, !tbaa !90
  %71 = zext i8 %14 to i32
  call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %69, i32 noundef %70, i32 noundef %71) #18
  br label %72

72:                                               ; preds = %31, %33, %68, %65
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_elif(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct.cpp_buffer, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.52) #17
  br label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !131
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.53) #17
  %14 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !129
  %16 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %15, i32 noundef 0, ptr noundef nonnull @.str.46) #17
  br label %17

17:                                               ; preds = %12, %8
  store i32 9, ptr %9, align 4, !tbaa !131
  %18 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 4
  %19 = load i8, ptr %18, align 1, !tbaa !138
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  store i8 0, ptr %22, align 2, !tbaa !32
  %23 = tail call zeroext i8 @_cpp_parse_expr(ptr noundef nonnull %0, i8 noundef zeroext 0) #17
  %24 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 3
  %25 = load i8, ptr %24, align 8, !tbaa !147
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i8 1, ptr %22, align 2, !tbaa !32
  br label %31

28:                                               ; preds = %21
  %29 = icmp eq i8 %23, 0
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %22, align 2, !tbaa !32
  store i8 %23, ptr %24, align 8, !tbaa !147
  br label %31

31:                                               ; preds = %27, %28, %17
  %32 = getelementptr inbounds %struct.if_stack, ptr %4, i64 0, i32 2
  store ptr null, ptr %32, align 8, !tbaa !141
  br label %33

33:                                               ; preds = %31, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_error(ptr noundef %0) #0 {
  tail call fastcc void @do_diagnostic(ptr noundef %0, i32 noundef 3, i32 noundef 1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_pragma(ptr noundef %0) #0 {
  %2 = alloca %struct.cpp_token, align 8
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2)
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !27
  %7 = add i8 %6, 1
  store i8 %7, ptr %5, align 8, !tbaa !27
  %8 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !104
  %9 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 53
  br i1 %11, label %12, label %95

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.cpp_token, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  %17 = tail call fastcc ptr @lookup_pragma_entry(ptr noundef %14, ptr noundef %16) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %95, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.pragma_entry, ptr %17, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !69
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pragma_entry, ptr %17, i64 0, i32 5
  %25 = load i8, ptr %24, align 1, !tbaa !65
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i8, ptr %5, align 8, !tbaa !27
  %29 = add i8 %28, -1
  store i8 %29, ptr %5, align 8, !tbaa !27
  br label %30

30:                                               ; preds = %27, %23
  %31 = tail call ptr @cpp_get_token(ptr noundef nonnull %0) #17
  %32 = getelementptr inbounds %struct.cpp_token, ptr %31, i64 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 53
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.pragma_entry, ptr %17, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.cpp_token, ptr %31, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = tail call fastcc ptr @lookup_pragma_entry(ptr noundef %37, ptr noundef %39) #18
  br label %41

41:                                               ; preds = %30, %35
  %42 = phi ptr [ %40, %35 ], [ null, %30 ]
  br i1 %26, label %46, label %43

43:                                               ; preds = %41
  %44 = load i8, ptr %5, align 8, !tbaa !27
  %45 = add i8 %44, 1
  store i8 %45, ptr %5, align 8, !tbaa !27
  br label %46

46:                                               ; preds = %41, %43
  %47 = icmp eq ptr %42, null
  br i1 %47, label %91, label %48

48:                                               ; preds = %19, %46
  %49 = phi ptr [ %42, %46 ], [ %17, %19 ]
  %50 = getelementptr inbounds %struct.pragma_entry, ptr %49, i64 0, i32 4
  %51 = load i8, ptr %50, align 2, !tbaa !73
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %4, align 8, !tbaa !79
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11
  store i32 %54, ptr %55, align 8, !tbaa !154
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 1
  store i8 70, ptr %56, align 4
  %57 = getelementptr inbounds %struct.cpp_token, ptr %4, i64 0, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !106
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 2
  store i16 %58, ptr %59, align 2, !tbaa !155
  %60 = getelementptr inbounds %struct.pragma_entry, ptr %49, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !29
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 11, i32 3
  store i32 %61, ptr %62, align 8, !tbaa !29
  %63 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 12
  store i8 1, ptr %63, align 8, !tbaa !42
  %64 = getelementptr inbounds %struct.pragma_entry, ptr %49, i64 0, i32 5
  %65 = load i8, ptr %64, align 1, !tbaa !65
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 13
  store i8 %65, ptr %66, align 1, !tbaa !156
  %67 = icmp eq i8 %65, 0
  br i1 %67, label %68, label %122

68:                                               ; preds = %53
  %69 = load i8, ptr %5, align 8, !tbaa !27
  %70 = add i8 %69, 1
  store i8 %70, ptr %5, align 8, !tbaa !27
  br label %122

71:                                               ; preds = %48
  %72 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49
  %73 = load ptr, ptr %72, align 8, !tbaa !108
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void %73(ptr noundef nonnull %0, ptr noundef %4, i32 noundef 0) #17
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.pragma_entry, ptr %49, i64 0, i32 5
  %78 = load i8, ptr %77, align 1, !tbaa !65
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i8, ptr %5, align 8, !tbaa !27
  %82 = add i8 %81, -1
  store i8 %82, ptr %5, align 8, !tbaa !27
  br label %83

83:                                               ; preds = %80, %76
  %84 = getelementptr inbounds %struct.pragma_entry, ptr %49, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !29
  tail call void %85(ptr noundef nonnull %0) #17
  %86 = load i8, ptr %77, align 1, !tbaa !65
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %83
  %89 = load i8, ptr %5, align 8, !tbaa !27
  %90 = add i8 %89, 1
  store i8 %90, ptr %5, align 8, !tbaa !27
  br label %122

91:                                               ; preds = %46
  %92 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !157
  %94 = icmp eq ptr %93, null
  br i1 %94, label %122, label %99

95:                                               ; preds = %1, %12
  %96 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !157
  %98 = icmp eq ptr %97, null
  br i1 %98, label %122, label %105

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !101
  %102 = getelementptr inbounds %struct.cpp_context, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !158
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %95, %99
  %106 = phi i32 [ 2, %99 ], [ 1, %95 ]
  %107 = phi ptr [ %92, %99 ], [ %96, %95 ]
  tail call void @_cpp_backup_tokens(ptr noundef nonnull %0, i32 noundef %106) #17
  br label %117

108:                                              ; preds = %99
  %109 = tail call ptr @xmalloc(i64 noundef 48) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %109, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !104
  %110 = getelementptr inbounds %struct.cpp_token, ptr %109, i64 0, i32 2
  %111 = load i16, ptr %110, align 2, !tbaa !106
  %112 = or i16 %111, 32
  store i16 %112, ptr %110, align 2, !tbaa !106
  %113 = getelementptr inbounds %struct.cpp_token, ptr %109, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %113, ptr noundef nonnull align 8 dereferenceable(24) %31, i64 24, i1 false), !tbaa.struct !104
  %114 = getelementptr inbounds %struct.cpp_token, ptr %109, i64 1, i32 2
  %115 = load i16, ptr %114, align 2, !tbaa !106
  %116 = or i16 %115, 32
  store i16 %116, ptr %114, align 2, !tbaa !106
  tail call void @_cpp_push_token_context(ptr noundef nonnull %0, ptr noundef null, ptr noundef %109, i32 noundef 2) #17
  br label %117

117:                                              ; preds = %108, %105
  %118 = phi ptr [ %92, %108 ], [ %107, %105 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !157
  %120 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !48
  tail call void %119(ptr noundef nonnull %0, i32 noundef %121) #17
  br label %122

122:                                              ; preds = %95, %91, %117, %68, %53, %88, %83
  %123 = load i8, ptr %5, align 8, !tbaa !27
  %124 = add i8 %123, -1
  store i8 %124, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_warning(ptr noundef %0) #0 {
  tail call fastcc void @do_diagnostic(ptr noundef %0, i32 noundef 1, i32 noundef 1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_include_next(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @cpp_in_primary_file(ptr noundef %0) #18, !range !75
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.55) #17
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ 1, %1 ]
  tail call fastcc void @do_include_common(ptr noundef %0, i32 noundef %7) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_ident(ptr noundef %0) #0 {
  %2 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 61
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.directive, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.56, ptr noundef %10) #17
  br label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  tail call void %14(ptr noundef nonnull %0, i32 noundef %18, ptr noundef nonnull %19) #17
  br label %20

20:                                               ; preds = %12, %16, %6
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_import(ptr noundef %0) #0 {
  tail call fastcc void @do_include_common(ptr noundef %0, i32 noundef 2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_assert(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = call fastcc ptr @parse_assertion(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 16) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !67
  store ptr null, ptr %6, align 8, !tbaa !160
  %7 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 63
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %22

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @find_answer(ptr noundef nonnull %3, ptr noundef nonnull %6) #18
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !tbaa !70
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull %17) #17
  br label %48

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  store ptr %21, ptr %6, align 8, !tbaa !160
  br label %22

22:                                               ; preds = %19, %5
  %23 = getelementptr inbounds %struct.answer, ptr %6, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  %27 = mul nuw nsw i64 %26, 24
  %28 = add nuw nsw i64 %27, 40
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %30 = load ptr, ptr %29, align 8, !tbaa !161
  %31 = getelementptr inbounds %struct.ht, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !162
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %22
  %35 = tail call ptr %32(i64 noundef %28) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %35, ptr noundef nonnull align 8 dereferenceable(1) %6, i64 %28, i1 false)
  br label %42

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !164
  %39 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !165
  %41 = getelementptr inbounds i8, ptr %40, i64 %28
  store ptr %41, ptr %39, align 8, !tbaa !165
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi ptr [ %6, %36 ], [ %35, %34 ]
  %44 = load i16, ptr %7, align 2
  %45 = and i16 %44, -64
  %46 = or disjoint i16 %45, 2
  store i16 %46, ptr %7, align 2
  %47 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 4
  store ptr %43, ptr %47, align 8, !tbaa !29
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %48

48:                                               ; preds = %1, %42, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_unassert(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = call fastcc ptr @parse_assertion(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 17) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 63
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @find_answer(ptr noundef nonnull %3, ptr noundef nonnull %11) #18
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !160
  store ptr %18, ptr %14, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.cpp_hashnode, ptr %3, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i16, ptr %6, align 2
  %25 = and i16 %24, -64
  store i16 %25, ptr %6, align 2
  br label %26

26:                                               ; preds = %23, %19
  tail call fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext 0) #18
  br label %28

27:                                               ; preds = %10
  tail call void @_cpp_free_definition(ptr noundef nonnull %3) #17
  br label %28

28:                                               ; preds = %26, %27, %5, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_macro_node(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call ptr @_cpp_lex_token(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 53
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %13 = load ptr, ptr %12, align 8, !tbaa !167
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.33) #17
  br label %22

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.cpp_hashnode, ptr %9, i64 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, 128
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17, %15
  br label %43

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  %25 = load i16, ptr %24, align 2, !tbaa !106
  %26 = and i16 %25, 16
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !29
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.34, ptr noundef %31) #17
  br label %43

33:                                               ; preds = %23
  %34 = icmp eq i8 %5, 22
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.directive, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !51
  %40 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.35, ptr noundef %39) #17
  br label %43

41:                                               ; preds = %33
  %42 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.36) #17
  br label %43

43:                                               ; preds = %35, %41, %28, %22, %17
  %44 = phi ptr [ %9, %17 ], [ null, %22 ], [ null, %28 ], [ null, %41 ], [ null, %35 ]
  ret ptr %44
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_create_definition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_include_common(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !61
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 5
  store i8 %9, ptr %10, align 1, !tbaa !44
  %11 = call fastcc ptr @parse_include(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %54

16:                                               ; preds = %2
  %17 = load i8, ptr %11, align 1, !tbaa !29
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, ptr %5, align 4, !tbaa !90
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.directive, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef %24) #17
  call void @free(ptr noundef nonnull %11) #17
  %26 = load ptr, ptr %4, align 8, !tbaa !67
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %54

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.line_maps, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !168
  %33 = icmp ugt i32 %32, 199
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.38) #17
  br label %51

36:                                               ; preds = %28
  call fastcc void @skip_rest_of_line(ptr noundef nonnull %0) #18
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !169
  %39 = icmp eq ptr %38, null
  %40 = load i32, ptr %3, align 4, !tbaa !90
  br i1 %39, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = getelementptr inbounds %struct.directive, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = load ptr, ptr %4, align 8, !tbaa !67
  call void %38(ptr noundef nonnull %0, i32 noundef %43, ptr noundef %47, ptr noundef nonnull %11, i32 noundef %40, ptr noundef %48) #17
  br label %49

49:                                               ; preds = %41, %36
  %50 = call zeroext i8 @_cpp_stack_include(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %40, i32 noundef %1) #17
  br label %51

51:                                               ; preds = %49, %34
  call void @free(ptr noundef nonnull %11) #17
  %52 = load ptr, ptr %4, align 8, !tbaa !67
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %19, %13
  %55 = phi ptr [ %14, %13 ], [ %26, %19 ], [ %52, %51 ]
  call void @free(ptr noundef nonnull %55) #17
  br label %56

56:                                               ; preds = %54, %51, %19, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_include(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @get_token_no_padding(ptr noundef %0) #18
  %6 = load i32, ptr %5, align 8, !tbaa !79
  store i32 %6, ptr %3, align 4, !tbaa !90
  %7 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 0, i32 1
  %8 = load i8, ptr %7, align 4
  switch i8 %8, label %35 [
    i8 61, label %9
    i8 67, label %14
    i8 3, label %33
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 0, i32 3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = load i8, ptr %11, align 1, !tbaa !29
  %13 = icmp eq i8 %12, 82
  br i1 %13, label %35, label %14

14:                                               ; preds = %4, %9
  %15 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !29
  %17 = add i32 %16, -1
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xmalloc(i64 noundef %18) #17
  %20 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 0, i32 3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load i32, ptr %15, align 8, !tbaa !29
  %24 = add i32 %23, -2
  %25 = zext i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr nonnull align 1 %22, i64 %25, i1 false)
  %26 = load i32, ptr %15, align 8, !tbaa !29
  %27 = add i32 %26, -2
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %19, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !29
  %30 = load i8, ptr %7, align 4
  %31 = icmp eq i8 %30, 67
  %32 = zext i1 %31 to i32
  br label %45

33:                                               ; preds = %4
  %34 = tail call fastcc ptr @glue_header_name(ptr noundef %0) #18
  br label %45

35:                                               ; preds = %4, %9
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = icmp eq ptr %37, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 11)
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.directive, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !51
  br label %42

42:                                               ; preds = %35, %39
  %43 = phi ptr [ %41, %39 ], [ @.str.39, %35 ]
  %44 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.40, ptr noundef %43) #17
  br label %60

45:                                               ; preds = %33, %14
  %46 = phi i32 [ 1, %33 ], [ %32, %14 ]
  %47 = phi ptr [ %34, %33 ], [ %19, %14 ]
  store i32 %46, ptr %1, align 4, !tbaa !90
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  %50 = icmp eq ptr %49, getelementptr inbounds ([19 x %struct.directive], ptr @dtable, i64 0, i64 11)
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = icmp eq ptr %2, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %55 = load i8, ptr %54, align 1, !tbaa !61
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %51
  tail call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 1) #18
  br label %60

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @check_eol_return_comments(ptr noundef nonnull %0) #18
  store ptr %59, ptr %2, align 8, !tbaa !67
  br label %60

60:                                               ; preds = %45, %58, %57, %42
  %61 = phi ptr [ null, %42 ], [ %47, %57 ], [ %47, %58 ], [ %47, %45 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skip_rest_of_line(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = getelementptr inbounds %struct.cpp_context, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1, %7
  tail call void @_cpp_pop_context(ptr noundef nonnull %0) #17
  %8 = load ptr, ptr %2, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.cpp_context, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !170

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = getelementptr %struct.cpp_token, ptr %14, i64 -1, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 22
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %18
  %19 = tail call ptr @_cpp_lex_token(ptr noundef %0) #17
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 22
  br i1 %22, label %23, label %18, !llvm.loop !171

23:                                               ; preds = %18, %12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_stack_include(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_token_no_padding(ptr noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 72
  br i1 %6, label %2, label %7

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @glue_header_name(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 1024) #17
  br label %3

3:                                                ; preds = %32, %1
  %4 = phi ptr [ %2, %1 ], [ %23, %32 ]
  %5 = phi i64 [ 0, %1 ], [ %38, %32 ]
  %6 = phi i64 [ 1024, %1 ], [ %24, %32 ]
  %7 = tail call fastcc ptr @get_token_no_padding(ptr noundef %0) #18
  %8 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 1
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %12 [
    i8 2, label %39
    i8 22, label %10
  ]

10:                                               ; preds = %3
  %11 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.41) #17
  br label %39

12:                                               ; preds = %3
  %13 = tail call i32 @cpp_token_len(ptr noundef nonnull %7) #17
  %14 = add i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = add i64 %5, %15
  %17 = icmp ugt i64 %16, %6
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = add i64 %6, %15
  %20 = shl i64 %19, 1
  %21 = tail call ptr @xrealloc(ptr noundef %4, i64 noundef %20) #17
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi ptr [ %21, %18 ], [ %4, %12 ]
  %24 = phi i64 [ %20, %18 ], [ %6, %12 ]
  %25 = getelementptr inbounds %struct.cpp_token, ptr %7, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !106
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = add i64 %5, 1
  %31 = getelementptr inbounds i8, ptr %23, i64 %5
  store i8 32, ptr %31, align 1, !tbaa !29
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i64 [ %30, %29 ], [ %5, %22 ]
  %34 = getelementptr inbounds i8, ptr %23, i64 %33
  %35 = tail call ptr @cpp_spell_token(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %34, i8 noundef zeroext 1) #17
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %23 to i64
  %38 = sub i64 %36, %37
  br label %3

39:                                               ; preds = %3, %10
  %40 = getelementptr inbounds i8, ptr %4, i64 %5
  store i8 0, ptr %40, align 1, !tbaa !29
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_eol(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr %struct.cpp_token, ptr %4, i64 -1, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 22
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %1, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @cpp_get_token(ptr noundef nonnull %0) #17
  br label %14

12:                                               ; preds = %8
  %13 = tail call ptr @_cpp_lex_token(ptr noundef nonnull %0) #17
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.cpp_token, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 22
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.directive, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.42, ptr noundef %23) #17
  br label %25

25:                                               ; preds = %19, %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @check_eol_return_comments(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 64) #17
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr %struct.cpp_token, ptr %4, i64 -1, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 22
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  br label %10

10:                                               ; preds = %30, %8
  %11 = phi i64 [ %31, %30 ], [ 8, %8 ]
  %12 = phi ptr [ %32, %30 ], [ %2, %8 ]
  %13 = phi i64 [ %24, %30 ], [ 0, %8 ]
  br label %14

14:                                               ; preds = %10, %18
  %15 = tail call ptr @_cpp_lex_token(ptr noundef %0) #17
  %16 = getelementptr inbounds %struct.cpp_token, ptr %15, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  switch i8 %17, label %18 [
    i8 22, label %34
    i8 68, label %23
  ]

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.directive, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.42, ptr noundef %21) #17
  br label %14

23:                                               ; preds = %14
  %24 = add i64 %13, 1
  %25 = icmp ult i64 %24, %11
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = shl i64 %11, 1
  %28 = shl i64 %11, 4
  %29 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %28) #17
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i64 [ %27, %26 ], [ %11, %23 ]
  %32 = phi ptr [ %29, %26 ], [ %12, %23 ]
  %33 = getelementptr inbounds ptr, ptr %32, i64 %13
  store ptr %15, ptr %33, align 8, !tbaa !67
  br label %10

34:                                               ; preds = %14, %1
  %35 = phi ptr [ %2, %1 ], [ %12, %14 ]
  %36 = phi i64 [ 0, %1 ], [ %13, %14 ]
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  store ptr null, ptr %37, align 8, !tbaa !67
  ret ptr %35
}

; Function Attrs: optsize
declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @cpp_token_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_spell_token(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_pop_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_conditional(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 5
  store i64 32, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 32
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47
  tail call void @_obstack_newchunk(ptr noundef nonnull %16, i32 noundef 32) #17
  %17 = load i64, ptr %6, align 8, !tbaa !119
  %18 = load ptr, ptr %9, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %4, %15
  %20 = phi ptr [ %10, %4 ], [ %18, %15 ]
  %21 = phi i64 [ 32, %4 ], [ %17, %15 ]
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 10
  %28 = load i8, ptr %27, align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %19, %26
  %31 = ptrtoint ptr %24 to i64
  store i64 %31, ptr %6, align 8, !tbaa !119
  %32 = ptrtoint ptr %22 to i64
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !123
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %32
  %37 = xor i32 %34, -1
  %38 = sext i32 %37 to i64
  %39 = and i64 %36, %38
  %40 = inttoptr i64 %39 to ptr
  store ptr %40, ptr %9, align 8, !tbaa !121
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 47, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %39, %43
  %45 = load ptr, ptr %7, align 8, !tbaa !120
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %46, %43
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store ptr %45, ptr %9, align 8, !tbaa !121
  br label %50

50:                                               ; preds = %30, %49
  %51 = phi ptr [ %40, %30 ], [ %45, %49 ]
  store ptr %51, ptr %23, align 8, !tbaa !122
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct.if_stack, ptr %24, i64 0, i32 1
  store i32 %53, ptr %54, align 8, !tbaa !129
  %55 = getelementptr inbounds %struct.cpp_buffer, ptr %5, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  store ptr %56, ptr %24, align 8, !tbaa !140
  %57 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %58 = load i8, ptr %57, align 2, !tbaa !32
  %59 = icmp ne i8 %58, 0
  %60 = icmp eq i32 %1, 0
  %61 = or i1 %60, %59
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.if_stack, ptr %24, i64 0, i32 3
  store i8 %62, ptr %63, align 8, !tbaa !147
  %64 = getelementptr inbounds %struct.if_stack, ptr %24, i64 0, i32 4
  store i8 %58, ptr %64, align 1, !tbaa !138
  %65 = getelementptr inbounds %struct.if_stack, ptr %24, i64 0, i32 5
  store i32 %2, ptr %65, align 4, !tbaa !131
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %67 = load i8, ptr %66, align 8, !tbaa !35
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  %71 = load ptr, ptr %70, align 8, !tbaa !142
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69, %50
  br label %74

74:                                               ; preds = %69, %73
  %75 = phi ptr [ null, %73 ], [ %3, %69 ]
  %76 = getelementptr inbounds %struct.if_stack, ptr %24, i64 0, i32 2
  store ptr %75, ptr %76, align 8, !tbaa !141
  %77 = trunc i32 %1 to i8
  store i8 %77, ptr %57, align 2, !tbaa !32
  store ptr %24, ptr %55, align 8, !tbaa !137
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_parse_expr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @strtolinenum(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #13 {
  store i8 0, ptr %3, align 1, !tbaa !29
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %4, %25
  %7 = phi i64 [ %10, %25 ], [ %1, %4 ]
  %8 = phi i32 [ %22, %25 ], [ 0, %4 ]
  %9 = phi ptr [ %11, %25 ], [ %0, %4 ]
  %10 = add i64 %7, -1
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = load i8, ptr %9, align 1, !tbaa !29
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !105
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %6
  %19 = zext i8 %12 to i32
  %20 = mul i32 %8, 10
  %21 = add i32 %20, -48
  %22 = add i32 %21, %19
  %23 = icmp ult i32 %22, %8
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8 1, ptr %3, align 1, !tbaa !29
  br label %25

25:                                               ; preds = %24, %18
  %26 = icmp eq i64 %10, 0
  br i1 %26, label %27, label %6, !llvm.loop !172

27:                                               ; preds = %25, %4
  %28 = phi i32 [ 0, %4 ], [ %22, %25 ]
  store i32 %28, ptr %2, align 4, !tbaa !90
  br label %29

29:                                               ; preds = %6, %27
  %30 = phi i8 [ 0, %27 ], [ 1, %6 ]
  ret i8 %30
}

; Function Attrs: optsize
declare zeroext i8 @cpp_interpret_string_notranslate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_diagnostic(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 -1
  %7 = load i32, ptr %6, align 8, !tbaa !79
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.directive, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !27
  %18 = add i8 %17, 1
  store i8 %18, ptr %16, align 8, !tbaa !27
  %19 = tail call ptr @cpp_output_line_to_string(ptr noundef nonnull %0, ptr noundef %15) #17
  %20 = load i8, ptr %16, align 8, !tbaa !27
  %21 = add i8 %20, -1
  store i8 %21, ptr %16, align 8, !tbaa !27
  %22 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %7, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef %19) #17
  tail call void @free(ptr noundef %19) #17
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_output_line_to_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @lookup_pragma_entry(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #14 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.pragma_entry, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !173

12:                                               ; preds = %4, %9, %2
  %13 = phi ptr [ null, %2 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @_cpp_push_token_context(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @cpp_in_primary_file(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.line_maps, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !168
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_linemarker(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca %struct.cpp_string, align 8
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.line_maps, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !149
  %10 = add i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.line_map, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %14 = getelementptr inbounds %struct.line_map, ptr %7, i64 %11, i32 5
  %15 = load i8, ptr %14, align 1, !tbaa !150
  %16 = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #17
  %17 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %18 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 55
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 0, i32 3
  %23 = getelementptr inbounds %struct.cpp_token, ptr %17, i64 0, i32 3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = load i32, ptr %22, align 8, !tbaa !29
  %26 = zext i32 %25 to i64
  %27 = call fastcc zeroext i8 @strtolinenum(ptr noundef %24, i64 noundef %26, ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !153
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21, %1
  %30 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef nonnull %17) #17
  %31 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.59, ptr noundef %30) #17
  br label %73

32:                                               ; preds = %21
  %33 = tail call ptr @cpp_get_token(ptr noundef nonnull %0) #17
  %34 = getelementptr inbounds %struct.cpp_token, ptr %33, i64 0, i32 1
  %35 = load i8, ptr %34, align 4
  switch i8 %35, label %61 [
    i8 61, label %36
    i8 22, label %64
  ]

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.cpp_token, ptr %33, i64 0, i32 3
  %38 = call zeroext i8 @cpp_interpret_string_notranslate(ptr noundef nonnull %0, ptr noundef nonnull %37, i64 noundef 1, ptr noundef nonnull %4, i32 noundef 61) #17
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = select i1 %39, ptr %13, ptr %41
  %43 = call fastcc i32 @read_flag(ptr noundef nonnull %0, i32 noundef 0) #18, !range !174
  switch i32 %43, label %48 [
    i32 1, label %44
    i32 2, label %45
  ]

44:                                               ; preds = %36
  call void @_cpp_fake_include(ptr noundef nonnull %0, ptr noundef %42) #17
  br label %45

45:                                               ; preds = %36, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %36 ]
  %47 = call fastcc i32 @read_flag(ptr noundef nonnull %0, i32 noundef %43) #18, !range !174
  br label %48

48:                                               ; preds = %45, %36
  %49 = phi i32 [ 3, %36 ], [ %46, %45 ]
  %50 = phi i32 [ %43, %36 ], [ %47, %45 ]
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = call fastcc i32 @read_flag(ptr noundef nonnull %0, i32 noundef 3) #18, !range !174
  %54 = icmp eq i32 %53, 4
  %55 = select i1 %54, i32 2, i32 1
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ 0, %48 ], [ %55, %52 ]
  %58 = trunc i32 %57 to i8
  %59 = load ptr, ptr %0, align 8, !tbaa !76
  %60 = getelementptr inbounds %struct.cpp_buffer, ptr %59, i64 0, i32 15
  store i8 %58, ptr %60, align 2, !tbaa !175
  call fastcc void @check_eol(ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %64

61:                                               ; preds = %32
  %62 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef nonnull %33) #17
  %63 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef %62) #17
  br label %73

64:                                               ; preds = %32, %56
  %65 = phi ptr [ %42, %56 ], [ %13, %32 ]
  %66 = phi i32 [ %57, %56 ], [ %16, %32 ]
  %67 = phi i32 [ %49, %56 ], [ 3, %32 ]
  call fastcc void @skip_rest_of_line(ptr noundef nonnull %0) #18
  %68 = load ptr, ptr %5, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct.line_maps, ptr %68, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !176
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 8, !tbaa !176
  %72 = load i32, ptr %2, align 4, !tbaa !90
  call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef %67, ptr noundef %65, i32 noundef %72, i32 noundef %66) #18
  br label %73

73:                                               ; preds = %64, %61, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @read_flag(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @_cpp_lex_token(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %27 [
    i8 55, label %6
    i8 22, label %30
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = load i8, ptr %12, align 1, !tbaa !29
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
  br i1 %26, label %30, label %27

27:                                               ; preds = %2, %6, %23, %19, %10
  %28 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %3) #17
  %29 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.60, ptr noundef %28) #17
  br label %30

30:                                               ; preds = %2, %27, %23
  %31 = phi i32 [ %15, %23 ], [ 0, %27 ], [ 0, %2 ]
  ret i32 %31
}

; Function Attrs: optsize
declare void @_cpp_fake_include(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @_cpp_scan_out_logical_line(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_overlay_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_remove_overlay(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_pragma_entry(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @_cpp_aligned_alloc(ptr noundef %0, i64 noundef 32) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %4 = load ptr, ptr %1, align 8, !tbaa !67
  store ptr %4, ptr %3, align 8, !tbaa !92
  store ptr %3, ptr %1, align 8, !tbaa !67
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @_cpp_aligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmemdup(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_mark_file_once_only(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @cpp_make_system_header(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @_cpp_compare_file_date(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_cpp_clean_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @parse_answer(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.cpp_token, ptr %5, i64 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 20
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  br label %17

11:                                               ; preds = %4
  switch i32 %2, label %15 [
    i32 4, label %12
    i32 17, label %13
  ]

12:                                               ; preds = %11
  tail call void @_cpp_backup_tokens(ptr noundef %0, i32 noundef 1) #17
  br label %60

13:                                               ; preds = %11
  %14 = icmp eq i8 %7, 22
  br i1 %14, label %60, label %15

15:                                               ; preds = %11, %13
  %16 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %3, i32 noundef 0, ptr noundef nonnull @.str.81) #17
  br label %60

17:                                               ; preds = %9, %49
  %18 = phi i32 [ %50, %49 ], [ 0, %9 ]
  %19 = tail call ptr @cpp_get_token(ptr noundef %0) #17
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  switch i8 %21, label %24 [
    i8 21, label %51
    i8 22, label %22
  ]

22:                                               ; preds = %17
  %23 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.82) #17
  br label %60

24:                                               ; preds = %17
  %25 = zext i32 %18 to i64
  %26 = mul nuw nsw i64 %25, 24
  %27 = add nuw nsw i64 %26, 40
  %28 = load ptr, ptr %10, align 8, !tbaa !164
  %29 = getelementptr inbounds %struct._cpp_buff, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  %31 = getelementptr inbounds %struct._cpp_buff, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !165
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = icmp ult i64 %35, %27
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %10, i64 noundef 40) #17
  %38 = load ptr, ptr %10, align 8, !tbaa !164
  %39 = getelementptr inbounds %struct._cpp_buff, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !165
  br label %41

41:                                               ; preds = %37, %24
  %42 = phi ptr [ %40, %37 ], [ %32, %24 ]
  %43 = getelementptr inbounds %struct.answer, ptr %42, i64 0, i32 2, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !104
  %44 = icmp eq i32 %18, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.answer, ptr %42, i64 0, i32 2, i64 %25, i32 2
  %47 = load i16, ptr %46, align 2, !tbaa !106
  %48 = and i16 %47, -2
  store i16 %48, ptr %46, align 2, !tbaa !106
  br label %49

49:                                               ; preds = %45, %41
  %50 = add i32 %18, 1
  br label %17

51:                                               ; preds = %17
  %52 = icmp eq i32 %18, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.83) #17
  br label %60

55:                                               ; preds = %51
  %56 = load ptr, ptr %10, align 8, !tbaa !164
  %57 = getelementptr inbounds %struct._cpp_buff, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !165
  %59 = getelementptr inbounds %struct.answer, ptr %58, i64 0, i32 1
  store i32 %18, ptr %59, align 8, !tbaa !109
  store ptr null, ptr %58, align 8, !tbaa !160
  store ptr %58, ptr %1, align 8, !tbaa !67
  br label %60

60:                                               ; preds = %22, %13, %55, %53, %15, %12
  %61 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 1, %53 ], [ 0, %55 ], [ 0, %13 ], [ 1, %22 ]
  ret i32 %61
}

; Function Attrs: optsize
declare void @_cpp_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @_cpp_equiv_tokens(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 25}
!6 = !{!"cpp_reader", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !7, i64 136, !7, i64 144, !13, i64 152, !11, i64 176, !8, i64 180, !7, i64 184, !7, i64 192, !15, i64 200, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !17, i64 312, !8, i64 400, !8, i64 401, !7, i64 408, !7, i64 416, !8, i64 424, !7, i64 432, !18, i64 440, !7, i64 472, !11, i64 480, !11, i64 484, !7, i64 488, !11, i64 496, !19, i64 504, !19, i64 528, !19, i64 552, !19, i64 576, !19, i64 600, !7, i64 624, !7, i64 632, !13, i64 640, !13, i64 664, !7, i64 688, !17, i64 696, !17, i64 784, !7, i64 872, !20, i64 880, !7, i64 1016, !7, i64 1024, !7, i64 1032, !21, i64 1040, !23, i64 1168, !8, i64 1200, !24, i64 1208, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !11, i64 1272, !25, i64 1280, !7, i64 1296}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"lexer_state", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10, !11, i64 12, !8, i64 16, !8, i64 17}
!11 = !{!"int", !8, i64 0}
!12 = !{!"cpp_context", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 32, !7, i64 40, !8, i64 48}
!13 = !{!"cpp_token", !11, i64 0, !11, i64 4, !14, i64 6, !8, i64 8}
!14 = !{!"short", !8, i64 0}
!15 = !{!"cpp_dir", !7, i64 0, !7, i64 8, !11, i64 16, !8, i64 20, !8, i64 21, !7, i64 24, !7, i64 32, !7, i64 40, !16, i64 48, !16, i64 56}
!16 = !{!"long", !8, i64 0}
!17 = !{!"obstack", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !11, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !11, i64 80, !11, i64 80, !11, i64 80}
!18 = !{!"tokenrun", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!19 = !{!"cset_converter", !7, i64 0, !7, i64 8, !11, i64 16}
!20 = !{!"cpp_callbacks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!21 = !{!"cpp_options", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 22, !8, i64 23, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !7, i64 48, !7, i64 56, !7, i64 64, !11, i64 72, !8, i64 76, !8, i64 77, !22, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123, !8, i64 124}
!22 = !{!"", !11, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!23 = !{!"spec_nodes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!24 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24}
!25 = !{!"", !7, i64 0, !11, i64 8, !11, i64 12}
!26 = !{!6, !8, i64 26}
!27 = !{!6, !8, i64 24}
!28 = !{!6, !8, i64 1077}
!29 = !{!8, !8, i64 0}
!30 = !{!6, !11, i64 1044}
!31 = !{!6, !8, i64 1078}
!32 = !{!6, !8, i64 18}
!33 = !{!34, !8, i64 19}
!34 = !{!"directive", !7, i64 0, !7, i64 8, !14, i64 16, !8, i64 18, !8, i64 19}
!35 = !{!6, !8, i64 424}
!36 = !{!6, !8, i64 1164}
!37 = !{!6, !8, i64 19}
!38 = !{!6, !8, i64 17}
!39 = !{!6, !7, i64 144}
!40 = !{!6, !8, i64 1082}
!41 = !{!34, !7, i64 0}
!42 = !{!6, !8, i64 32}
!43 = !{!6, !8, i64 16}
!44 = !{!6, !8, i64 21}
!45 = !{!6, !7, i64 40}
!46 = !{!47, !11, i64 36}
!47 = !{!"line_maps", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !8, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !7, i64 48}
!48 = !{!6, !11, i64 48}
!49 = !{!34, !8, i64 18}
!50 = !{!6, !8, i64 1050}
!51 = !{!34, !7, i64 8}
!52 = !{!6, !8, i64 1058}
!53 = !{!6, !8, i64 1063}
!54 = !{!6, !8, i64 20}
!55 = !{!6, !7, i64 1208}
!56 = !{!6, !7, i64 1224}
!57 = !{!6, !11, i64 484}
!58 = !{!6, !7, i64 472}
!59 = !{!6, !7, i64 456}
!60 = !{!6, !7, i64 432}
!61 = !{!6, !8, i64 1051}
!62 = !{!63, !11, i64 8}
!63 = !{!"line_map", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !8, i64 21, !11, i64 22}
!64 = !{!6, !7, i64 888}
!65 = !{!66, !8, i64 19}
!66 = !{!"pragma_entry", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !8, i64 24}
!67 = !{!7, !7, i64 0}
!68 = !{!66, !7, i64 8}
!69 = !{!66, !8, i64 16}
!70 = !{!71, !7, i64 0}
!71 = !{!"cpp_hashnode", !72, i64 0, !11, i64 16, !11, i64 16, !8, i64 17, !11, i64 18, !11, i64 18, !8, i64 24}
!72 = !{!"ht_identifier", !7, i64 0, !11, i64 8, !11, i64 12}
!73 = !{!66, !8, i64 18}
!74 = !{!66, !8, i64 17}
!75 = !{i32 0, i32 2}
!76 = !{!6, !7, i64 0}
!77 = !{!78, !7, i64 72}
!78 = !{!"cpp_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !8, i64 96, !11, i64 97, !11, i64 97, !11, i64 97, !8, i64 98, !15, i64 104, !19, i64 168}
!79 = !{!13, !11, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!83, !7, i64 8}
!83 = !{!"def_pragma_macro", !7, i64 0, !7, i64 8, !7, i64 16}
!84 = !{!6, !7, i64 1296}
!85 = !{!83, !7, i64 0}
!86 = !{!83, !7, i64 16}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !81}
!89 = !{!6, !8, i64 23}
!90 = !{!11, !11, i64 0}
!91 = !{!6, !7, i64 872}
!92 = !{!66, !7, i64 0}
!93 = distinct !{!93, !81}
!94 = !{!71, !11, i64 8}
!95 = distinct !{!95, !81}
!96 = distinct !{!96, !81}
!97 = !{!98, !11, i64 0}
!98 = !{!"cpp_string", !11, i64 0, !7, i64 8}
!99 = !{!98, !7, i64 8}
!100 = distinct !{!100, !81}
!101 = !{!6, !7, i64 136}
!102 = !{!12, !7, i64 40}
!103 = !{!78, !7, i64 64}
!104 = !{i64 0, i64 4, !90, i64 4, i64 4, !90, i64 6, i64 2, !105, i64 8, i64 8, !67, i64 8, i64 8, !67, i64 8, i64 4, !90, i64 16, i64 8, !67, i64 8, i64 4, !90, i64 8, i64 4, !90, i64 8, i64 4, !90}
!105 = !{!14, !14, i64 0}
!106 = !{!13, !14, i64 6}
!107 = distinct !{!107, !81}
!108 = !{!6, !7, i64 880}
!109 = !{!110, !11, i64 8}
!110 = !{!"answer", !7, i64 0, !11, i64 8, !8, i64 16}
!111 = distinct !{!111, !81}
!112 = distinct !{!112, !81}
!113 = !{!6, !7, i64 1000}
!114 = !{!6, !7, i64 920}
!115 = !{!6, !8, i64 1074}
!116 = !{!6, !7, i64 912}
!117 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 8, !67, i64 32, i64 8, !67, i64 40, i64 8, !67, i64 48, i64 8, !67, i64 56, i64 8, !67, i64 64, i64 8, !67, i64 72, i64 8, !67, i64 80, i64 8, !67, i64 88, i64 8, !67, i64 96, i64 8, !67, i64 104, i64 8, !67, i64 112, i64 8, !67, i64 120, i64 8, !67, i64 128, i64 8, !67}
!118 = !{!6, !7, i64 688}
!119 = !{!6, !16, i64 824}
!120 = !{!6, !7, i64 816}
!121 = !{!6, !7, i64 808}
!122 = !{!6, !7, i64 800}
!123 = !{!6, !11, i64 832}
!124 = !{!6, !7, i64 792}
!125 = !{!78, !7, i64 24}
!126 = !{!78, !7, i64 16}
!127 = !{!78, !7, i64 32}
!128 = !{!78, !8, i64 96}
!129 = !{!130, !11, i64 8}
!130 = !{!"if_stack", !7, i64 0, !11, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !11, i64 28}
!131 = !{!130, !11, i64 28}
!132 = distinct !{!132, !81}
!133 = !{!78, !7, i64 40}
!134 = !{!34, !14, i64 16}
!135 = distinct !{!135, !81}
!136 = !{!6, !8, i64 1052}
!137 = !{!78, !7, i64 88}
!138 = !{!130, !8, i64 25}
!139 = !{!6, !8, i64 1065}
!140 = !{!130, !7, i64 0}
!141 = !{!130, !7, i64 16}
!142 = !{!6, !7, i64 408}
!143 = !{!6, !7, i64 984}
!144 = !{!6, !7, i64 992}
!145 = !{!6, !7, i64 1008}
!146 = !{!6, !7, i64 416}
!147 = !{!130, !8, i64 24}
!148 = !{!47, !7, i64 0}
!149 = !{!47, !11, i64 12}
!150 = !{!63, !8, i64 21}
!151 = !{!63, !7, i64 0}
!152 = !{!6, !8, i64 1075}
!153 = !{i8 0, i8 2}
!154 = !{!6, !11, i64 152}
!155 = !{!6, !14, i64 158}
!156 = !{!6, !8, i64 33}
!157 = !{!6, !7, i64 936}
!158 = !{!12, !7, i64 8}
!159 = !{!6, !7, i64 928}
!160 = !{!110, !7, i64 0}
!161 = !{!6, !7, i64 1016}
!162 = !{!163, !7, i64 104}
!163 = !{!"ht", !17, i64 0, !7, i64 88, !7, i64 96, !7, i64 104, !11, i64 112, !11, i64 116, !7, i64 120, !11, i64 128, !11, i64 132, !8, i64 136}
!164 = !{!6, !7, i64 56}
!165 = !{!166, !7, i64 16}
!166 = !{!"_cpp_buff", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!167 = !{!6, !7, i64 1168}
!168 = !{!47, !11, i64 24}
!169 = !{!6, !7, i64 904}
!170 = distinct !{!170, !81}
!171 = distinct !{!171, !81}
!172 = distinct !{!172, !81}
!173 = distinct !{!173, !81}
!174 = !{i32 -48, i32 208}
!175 = !{!78, !8, i64 98}
!176 = !{!47, !11, i64 32}
!177 = !{!166, !7, i64 24}
