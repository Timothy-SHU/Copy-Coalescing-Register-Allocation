; ModuleID = 'cpp_expr.c'
source_filename = "cpp_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpp_operator = type { i8, i8 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cset_converter = type { ptr, ptr, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct.cpp_num = type { i64, i64, i8, i8 }
%struct.op = type { ptr, %struct.cpp_num, i32, i32 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.cpp_macro = type { ptr, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { ptr }

@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@_hex_value = external local_unnamed_addr constant [256 x i8], align 16
@.str = private unnamed_addr constant [34 x i8] c"too many decimal points in number\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"fixed-point constants are a GCC extension\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid digit \22%c\22 in binary constant\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid digit \22%c\22 in octal constant\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"invalid prefix \220b\22 for floating constant\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"no digits in hexadecimal floating constant\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"use of C99 hexadecimal floating constant\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"exponent has no digits\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"hexadecimal floating constants require an exponent\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"invalid suffix \22%.*s\22 on floating constant\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"traditional C rejects the \22%.*s\22 suffix\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"suffix for double constant is a GCC extension\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"invalid suffix \22%.*s\22 with hexadecimal floating constant\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"decimal float constants are a GCC extension\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"invalid suffix \22%.*s\22 on integer constant\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"use of C++0x long long integer constant\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"use of C99 long long integer constant\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"imaginary constants are a GCC extension\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"binary constants are a GCC extension\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"integer constant is too large for its type\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"integer constant is so large that it is unsigned\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"missing binary operator before token \22%s\22\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"token \22%s\22 is not valid in preprocessor expressions\00", align 1
@optab = internal unnamed_addr constant [29 x %struct.cpp_operator] [%struct.cpp_operator zeroinitializer, %struct.cpp_operator { i8 16, i8 1 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 14, i8 6 }, %struct.cpp_operator { i8 14, i8 6 }, %struct.cpp_operator { i8 15, i8 6 }, %struct.cpp_operator { i8 15, i8 6 }, %struct.cpp_operator { i8 15, i8 6 }, %struct.cpp_operator { i8 9, i8 6 }, %struct.cpp_operator { i8 7, i8 6 }, %struct.cpp_operator { i8 8, i8 6 }, %struct.cpp_operator { i8 13, i8 2 }, %struct.cpp_operator { i8 13, i8 2 }, %struct.cpp_operator { i8 16, i8 1 }, %struct.cpp_operator { i8 6, i8 2 }, %struct.cpp_operator { i8 5, i8 2 }, %struct.cpp_operator { i8 4, i8 0 }, %struct.cpp_operator { i8 4, i8 6 }, %struct.cpp_operator { i8 4, i8 2 }, %struct.cpp_operator { i8 1, i8 1 }, %struct.cpp_operator zeroinitializer, %struct.cpp_operator zeroinitializer, %struct.cpp_operator { i8 11, i8 2 }, %struct.cpp_operator { i8 11, i8 2 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 16, i8 1 }, %struct.cpp_operator { i8 16, i8 1 }], align 16
@.str.23 = private unnamed_addr constant [39 x i8] c"missing expression between '(' and ')'\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"%s with no expression\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"#if\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"#elif\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"operator '%s' has no right operand\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"operator '%s' has no left operand\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c" ':' without preceding '?'\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"unbalanced stack in %s\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"floating constant in preprocessor expression\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"imaginary number in preprocessor expression\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not defined\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"assertions are a GCC extension\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"assertions are a deprecated extension\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"missing ')' after \22defined\22\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"operator \22defined\22 requires an identifier\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"(\22%s\22 is an alternative token for \22%s\22 in C++)\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"this use of \22defined\22 may not be portable\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"impossible operator '%u'\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"missing ')' in expression\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"'?' without following ':'\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"integer overflow in preprocessor expression\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"missing '(' in expression\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"the left operand of \22%s\22 changes sign when promoted\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"the right operand of \22%s\22 changes sign when promoted\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"traditional C rejects the unary plus operator\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"comma operator in operand of #if\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"division by zero in #if\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @cpp_classify_number(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load i32, ptr %3, align 8, !tbaa !46
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %342, label %8, !prof !47

8:                                                ; preds = %2
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = load i8, ptr %5, align 1, !tbaa !46
  %12 = icmp eq i8 %11, 48
  br i1 %12, label %13, label %34, !prof !48

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %5, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !46
  switch i8 %15, label %34 [
    i8 120, label %16
    i8 88, label %16
    i8 98, label %27
    i8 66, label %27
  ], !prof !49

16:                                               ; preds = %13, %13
  %17 = getelementptr inbounds i8, ptr %5, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %34, label %20, !prof !50

20:                                               ; preds = %16
  %21 = zext i8 %18 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !51
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %34, !prof !50

26:                                               ; preds = %20
  switch i8 %15, label %34 [
    i8 98, label %27
    i8 66, label %27
  ]

27:                                               ; preds = %26, %13, %13, %26
  %28 = getelementptr inbounds i8, ptr %5, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !46
  %30 = and i8 %29, -2
  %31 = icmp ne i8 %30, 48
  %32 = select i1 %31, i32 8, i32 2
  %33 = select i1 %31, ptr %14, ptr %28
  br label %34

34:                                               ; preds = %27, %26, %13, %20, %16, %8
  %35 = phi i1 [ false, %8 ], [ true, %16 ], [ true, %20 ], [ false, %13 ], [ false, %26 ], [ false, %27 ]
  %36 = phi i1 [ true, %8 ], [ false, %16 ], [ false, %20 ], [ true, %13 ], [ true, %26 ], [ true, %27 ]
  %37 = phi i1 [ false, %8 ], [ false, %16 ], [ false, %20 ], [ true, %13 ], [ true, %26 ], [ %31, %27 ]
  %38 = phi i32 [ 10, %8 ], [ 16, %16 ], [ 16, %20 ], [ 8, %13 ], [ 8, %26 ], [ %32, %27 ]
  %39 = phi ptr [ %5, %8 ], [ %17, %16 ], [ %17, %20 ], [ %14, %13 ], [ %14, %26 ], [ %33, %27 ]
  br label %40

40:                                               ; preds = %77, %34
  %41 = phi i32 [ 0, %34 ], [ %78, %77 ]
  %42 = phi i32 [ 0, %34 ], [ %79, %77 ]
  %43 = phi i8 [ 0, %34 ], [ %80, %77 ]
  %44 = phi ptr [ %39, %34 ], [ %82, %77 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %44, align 1, !tbaa !46
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !51
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57, !prof !53

53:                                               ; preds = %40
  %54 = and i32 %50, 256
  %55 = icmp ne i32 %54, 0
  %56 = and i1 %35, %55
  br i1 %56, label %57, label %62, !prof !54

57:                                               ; preds = %53, %40
  %58 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %47
  %59 = load i8, ptr %58, align 1, !tbaa !46
  %60 = zext i8 %59 to i32
  %61 = tail call i32 @llvm.umax.i32(i32 %41, i32 %60)
  br label %77

62:                                               ; preds = %53
  %63 = icmp eq i8 %46, 46
  br i1 %63, label %64, label %68, !prof !55

64:                                               ; preds = %62
  %65 = icmp eq i32 %42, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %64
  %67 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #14
  br label %77

68:                                               ; preds = %62
  %69 = and i8 %46, -33
  %70 = icmp eq i8 %69, 69
  %71 = and i1 %36, %70
  br i1 %71, label %77, label %72, !prof !55

72:                                               ; preds = %68
  %73 = icmp eq i8 %69, 80
  %74 = and i1 %35, %73
  %75 = select i1 %74, i32 2, i32 %42, !prof !55
  %76 = select i1 %74, ptr %45, ptr %44, !prof !55
  br label %77

77:                                               ; preds = %72, %57, %64, %68, %66
  %78 = phi i32 [ %41, %66 ], [ %41, %68 ], [ %61, %57 ], [ %41, %64 ], [ %41, %72 ]
  %79 = phi i32 [ %42, %66 ], [ 2, %68 ], [ %42, %57 ], [ 1, %64 ], [ %75, %72 ]
  %80 = phi i8 [ %43, %66 ], [ %43, %68 ], [ 1, %57 ], [ %43, %64 ], [ %43, %72 ]
  %81 = phi i32 [ 6, %66 ], [ 2, %68 ], [ 0, %57 ], [ 0, %64 ], [ 2, %72 ]
  %82 = phi ptr [ %45, %66 ], [ %45, %68 ], [ %45, %57 ], [ %45, %64 ], [ %76, %72 ]
  switch i32 %81, label %342 [
    i32 0, label %40
    i32 2, label %83
  ], !prof !56, !llvm.loop !57

83:                                               ; preds = %77
  %84 = icmp eq i32 %79, 0
  %85 = select i1 %36, i1 %84, i1 false, !prof !59
  br i1 %85, label %86, label %101, !prof !59

86:                                               ; preds = %83
  %87 = ptrtoint ptr %10 to i64
  %88 = ptrtoint ptr %82 to i64
  %89 = sub i64 %87, %88
  %90 = tail call fastcc i32 @interpret_float_suffix(ptr noundef nonnull %82, i64 noundef %89)
  %91 = and i32 %90, 3145728
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93, !prof !60

93:                                               ; preds = %86
  %94 = or i32 %90, 2
  %95 = select i1 %37, i32 10, i32 %38
  %96 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %97 = load i8, ptr %96, align 1, !tbaa !61
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %313, label %99

99:                                               ; preds = %93
  %100 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.1) #14
  br label %313

101:                                              ; preds = %86, %83
  %102 = icmp ne i32 %79, 0
  %103 = and i1 %37, %102
  %104 = select i1 %103, i32 10, i32 %38, !prof !55
  %105 = icmp ult i32 %78, %104
  br i1 %105, label %113, label %106, !prof !77

106:                                              ; preds = %101
  %107 = icmp eq i32 %104, 2
  %108 = add nuw nsw i32 %78, 48
  br i1 %107, label %109, label %111

109:                                              ; preds = %106
  %110 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %108) #14
  br label %342

111:                                              ; preds = %106
  %112 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %108) #14
  br label %342

113:                                              ; preds = %101
  br i1 %102, label %114, label %220, !prof !55

114:                                              ; preds = %113
  %115 = icmp eq i32 %104, 2
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.4) #14
  br label %342

118:                                              ; preds = %114
  %119 = icmp ne i32 %104, 16
  %120 = icmp ne i8 %80, 0
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.5) #14
  br label %342

124:                                              ; preds = %118
  %125 = icmp eq i32 %104, 16
  br i1 %125, label %126, label %136

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %128 = load i8, ptr %127, align 1, !tbaa !61
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %132 = load i8, ptr %131, align 1, !tbaa !78
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.6) #14
  br label %136

136:                                              ; preds = %134, %130, %126, %124
  %137 = icmp eq i32 %79, 2
  br i1 %137, label %138, label %161

138:                                              ; preds = %136
  %139 = load i8, ptr %82, align 1, !tbaa !46
  switch i8 %139, label %142 [
    i8 43, label %140
    i8 45, label %140
  ]

140:                                              ; preds = %138, %138
  %141 = getelementptr inbounds i8, ptr %82, i64 1
  br label %142

142:                                              ; preds = %138, %140
  %143 = phi ptr [ %141, %140 ], [ %82, %138 ]
  %144 = load i8, ptr %143, align 1, !tbaa !46
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !51
  %148 = and i16 %147, 4
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.7) #14
  br label %342

152:                                              ; preds = %142, %152
  %153 = phi ptr [ %154, %152 ], [ %143, %142 ]
  %154 = getelementptr inbounds i8, ptr %153, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !46
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !51
  %159 = and i16 %158, 4
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %164, label %152, !llvm.loop !79

161:                                              ; preds = %136
  br i1 %125, label %162, label %164

162:                                              ; preds = %161
  %163 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.8) #14
  br label %342

164:                                              ; preds = %152, %161
  %165 = phi ptr [ %82, %161 ], [ %154, %152 ]
  %166 = ptrtoint ptr %10 to i64
  %167 = ptrtoint ptr %165 to i64
  %168 = sub i64 %166, %167
  %169 = tail call fastcc i32 @interpret_float_suffix(ptr noundef %165, i64 noundef %168)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = trunc i64 %168 to i32
  %173 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %172, ptr noundef %165) #14
  br label %342

174:                                              ; preds = %164
  %175 = icmp eq ptr %10, %165
  br i1 %175, label %186, label %176

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %178 = load i8, ptr %177, align 1, !tbaa !81
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = tail call i32 @cpp_sys_macro_p(ptr noundef %0) #14
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = trunc i64 %168 to i32
  %185 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %184, ptr noundef %165) #14
  br label %186

186:                                              ; preds = %183, %180, %176, %174
  %187 = icmp eq i32 %169, 32
  br i1 %187, label %188, label %194

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %190 = load i8, ptr %189, align 1, !tbaa !61
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.11) #14
  br label %194

194:                                              ; preds = %192, %188, %186
  %195 = and i32 %169, 16384
  %196 = icmp ne i32 %195, 0
  %197 = icmp ne i32 %104, 10
  %198 = and i1 %197, %196
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = trunc i64 %168 to i32
  %201 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %200, ptr noundef %165) #14
  br label %342

202:                                              ; preds = %194
  %203 = and i32 %169, 3145728
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %207 = load i8, ptr %206, align 1, !tbaa !61
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.1) #14
  br label %211

211:                                              ; preds = %209, %205, %202
  br i1 %196, label %212, label %218

212:                                              ; preds = %211
  %213 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %214 = load i8, ptr %213, align 1, !tbaa !61
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %212
  %217 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.13) #14
  br label %218

218:                                              ; preds = %216, %212, %211
  %219 = or i32 %169, 2
  br label %313

220:                                              ; preds = %113
  %221 = ptrtoint ptr %10 to i64
  %222 = ptrtoint ptr %82 to i64
  %223 = sub i64 %221, %222
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %249, label %225, !prof !82

225:                                              ; preds = %220, %244
  %226 = phi i64 [ %247, %244 ], [ 0, %220 ]
  %227 = phi i64 [ %246, %244 ], [ 0, %220 ]
  %228 = phi i64 [ %245, %244 ], [ 0, %220 ]
  %229 = phi i64 [ %230, %244 ], [ %223, %220 ]
  %230 = add i64 %229, -1
  %231 = getelementptr inbounds i8, ptr %82, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !46
  switch i8 %232, label %269 [
    i8 117, label %233
    i8 85, label %233
    i8 105, label %235
    i8 73, label %235
    i8 106, label %235
    i8 74, label %235
    i8 108, label %237
    i8 76, label %237
  ], !prof !83

233:                                              ; preds = %225, %225
  %234 = add i64 %228, 1
  br label %244

235:                                              ; preds = %225, %225, %225, %225
  %236 = add i64 %226, 1
  br label %244

237:                                              ; preds = %225, %225
  %238 = add i64 %227, 1
  %239 = icmp eq i64 %238, 2
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = getelementptr inbounds i8, ptr %82, i64 %229
  %242 = load i8, ptr %241, align 1, !tbaa !46
  %243 = icmp eq i8 %232, %242
  br i1 %243, label %244, label %269

244:                                              ; preds = %240, %237, %235, %233
  %245 = phi i64 [ %228, %240 ], [ %228, %237 ], [ %228, %235 ], [ %234, %233 ]
  %246 = phi i64 [ 2, %240 ], [ %238, %237 ], [ %227, %235 ], [ %227, %233 ]
  %247 = phi i64 [ %226, %240 ], [ %226, %237 ], [ %236, %235 ], [ %226, %233 ]
  %248 = icmp eq i64 %230, 0
  br i1 %248, label %249, label %225, !prof !84, !llvm.loop !85

249:                                              ; preds = %244, %220
  %250 = phi i64 [ 0, %220 ], [ %245, %244 ]
  %251 = phi i64 [ 0, %220 ], [ %246, %244 ]
  %252 = phi i64 [ 0, %220 ], [ %247, %244 ]
  %253 = icmp ugt i64 %251, 2
  %254 = icmp ugt i64 %250, 1
  %255 = select i1 %253, i1 true, i1 %254, !prof !55
  %256 = icmp ugt i64 %252, 1
  %257 = select i1 %255, i1 true, i1 %256, !prof !55
  br i1 %257, label %269, label %258, !prof !55

258:                                              ; preds = %249
  %259 = icmp eq i64 %252, 0
  %260 = select i1 %259, i32 0, i32 8192, !prof !77
  %261 = icmp eq i64 %250, 0
  %262 = select i1 %261, i32 0, i32 4096, !prof !82
  %263 = or disjoint i32 %260, %262
  %264 = icmp eq i64 %251, 0
  %265 = icmp eq i64 %251, 1
  %266 = select i1 %265, i32 32, i32 64, !prof !55
  %267 = select i1 %264, i32 16, i32 %266, !prof !77
  %268 = or disjoint i32 %263, %267
  br label %269

269:                                              ; preds = %240, %225, %249, %258
  %270 = phi i32 [ %268, %258 ], [ 0, %249 ], [ 0, %225 ], [ 0, %240 ]
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275, !prof !55

272:                                              ; preds = %269
  %273 = trunc i64 %223 to i32
  %274 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %273, ptr noundef nonnull %82) #14
  br label %342

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %277 = load i8, ptr %276, align 1, !tbaa !81
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %294, label %279, !prof !77

279:                                              ; preds = %275
  %280 = tail call i32 @cpp_sys_macro_p(ptr noundef %0) #14
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %279
  %283 = icmp ult i32 %270, 4096
  br i1 %283, label %284, label %291

284:                                              ; preds = %282
  %285 = and i32 %270, 240
  %286 = icmp eq i32 %285, 64
  br i1 %286, label %287, label %294

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 18
  %289 = load i8, ptr %288, align 8, !tbaa !86
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %287, %282
  %292 = trunc i64 %223 to i32
  %293 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %292, ptr noundef nonnull %82) #14
  br label %294

294:                                              ; preds = %284, %287, %291, %279, %275
  %295 = and i32 %270, 240
  %296 = icmp eq i32 %295, 64
  br i1 %296, label %297, label %311, !prof !55

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 18
  %299 = load i8, ptr %298, align 8, !tbaa !86
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %311, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %303 = load i8, ptr %302, align 1, !tbaa !78
  %304 = icmp eq i8 %303, 0
  %305 = select i1 %304, i32 2, i32 0
  %306 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %307 = load i8, ptr %306, align 8, !tbaa !87
  %308 = icmp eq i8 %307, 0
  %309 = select i1 %308, ptr @.str.16, ptr @.str.15
  %310 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef %305, ptr noundef nonnull %309) #14
  br label %311

311:                                              ; preds = %301, %297, %294
  %312 = or i32 %270, 1
  br label %313

313:                                              ; preds = %218, %311, %93, %99
  %314 = phi i32 [ %94, %99 ], [ %94, %93 ], [ %219, %218 ], [ %312, %311 ]
  %315 = phi i32 [ %95, %99 ], [ %95, %93 ], [ %104, %218 ], [ %104, %311 ]
  %316 = and i32 %314, 8192
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %324, label %318, !prof !77

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %320 = load i8, ptr %319, align 1, !tbaa !61
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.17) #14
  br label %324

324:                                              ; preds = %322, %318, %313
  %325 = icmp eq i32 %315, 2
  br i1 %325, label %326, label %332, !prof !55

326:                                              ; preds = %324
  %327 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %328 = load i8, ptr %327, align 1, !tbaa !61
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %326
  %331 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.18) #14
  br label %332

332:                                              ; preds = %330, %326, %324
  switch i32 %315, label %337 [
    i32 10, label %333
    i32 16, label %335
  ], !prof !88

333:                                              ; preds = %332
  %334 = or i32 %314, 256
  br label %342

335:                                              ; preds = %332
  %336 = or i32 %314, 512
  br label %342

337:                                              ; preds = %332
  br i1 %325, label %338, label %340

338:                                              ; preds = %337
  %339 = or i32 %314, 2048
  br label %342

340:                                              ; preds = %337
  %341 = or i32 %314, 1024
  br label %342

342:                                              ; preds = %77, %109, %111, %122, %150, %162, %333, %338, %340, %335, %2, %272, %199, %171, %116
  %343 = phi i32 [ 0, %116 ], [ 0, %171 ], [ 0, %199 ], [ 0, %272 ], [ 273, %2 ], [ %334, %333 ], [ %336, %335 ], [ %339, %338 ], [ %341, %340 ], [ 0, %162 ], [ 0, %150 ], [ 0, %122 ], [ 0, %111 ], [ 0, %109 ], [ 0, %77 ]
  ret i32 %343
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @interpret_float_suffix(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 !prof !89 !PGOFuncName !90 {
  %3 = icmp eq i64 %1, 2
  br i1 %3, label %4, label %25, !prof !91

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !46
  switch i8 %5, label %25 [
    i8 100, label %6
    i8 68, label %6
  ]

6:                                                ; preds = %4, %4
  %7 = icmp eq i8 %5, 68
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !46
  switch i8 %9, label %22 [
    i8 102, label %10
    i8 70, label %12
    i8 100, label %14
    i8 68, label %16
    i8 108, label %18
    i8 76, label %20
  ]

10:                                               ; preds = %6
  %11 = select i1 %7, i32 0, i32 16400
  br label %22

12:                                               ; preds = %6
  %13 = select i1 %7, i32 16400, i32 0
  br label %22

14:                                               ; preds = %6
  %15 = select i1 %7, i32 0, i32 16416
  br label %22

16:                                               ; preds = %6
  %17 = select i1 %7, i32 16416, i32 0
  br label %22

18:                                               ; preds = %6
  %19 = select i1 %7, i32 0, i32 16448
  br label %22

20:                                               ; preds = %6
  %21 = select i1 %7, i32 16448, i32 0
  br label %22

22:                                               ; preds = %6, %20, %18, %16, %14, %12, %10
  %23 = phi i32 [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ undef, %6 ]
  %24 = phi i1 [ false, %20 ], [ false, %18 ], [ false, %16 ], [ false, %14 ], [ false, %12 ], [ false, %10 ], [ true, %6 ]
  br i1 %24, label %25, label %147

25:                                               ; preds = %4, %22, %2
  %26 = getelementptr i8, ptr %0, i64 %1
  %27 = getelementptr i8, ptr %26, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !46
  switch i8 %28, label %31 [
    i8 107, label %29
    i8 75, label %29
    i8 114, label %30
    i8 82, label %30
  ], !prof !92

29:                                               ; preds = %25, %25
  br label %31

30:                                               ; preds = %25, %25
  br label %31

31:                                               ; preds = %25, %30, %29
  %32 = phi i1 [ true, %25 ], [ false, %30 ], [ false, %29 ]
  %33 = phi i64 [ 0, %25 ], [ 1048576, %30 ], [ 2097152, %29 ]
  br i1 %32, label %34, label %36, !prof !60

34:                                               ; preds = %31
  %35 = icmp eq i64 %1, 0
  br i1 %35, label %117, label %86, !prof !93

36:                                               ; preds = %31
  %37 = icmp eq i64 %1, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = trunc i64 %33 to i32
  br label %147

40:                                               ; preds = %36
  %41 = add i64 %1, -1
  %42 = load i8, ptr %0, align 1, !tbaa !46
  switch i8 %42, label %51 [
    i8 117, label %43
    i8 85, label %43
  ]

43:                                               ; preds = %40, %40
  %44 = or disjoint i64 %33, 4096
  %45 = icmp eq i64 %41, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = trunc i64 %44 to i32
  br label %147

48:                                               ; preds = %43
  %49 = add i64 %1, -2
  %50 = getelementptr inbounds i8, ptr %0, i64 1
  br label %51

51:                                               ; preds = %40, %48
  %52 = phi ptr [ %50, %48 ], [ %0, %40 ]
  %53 = phi i64 [ %49, %48 ], [ %41, %40 ]
  %54 = phi i64 [ %44, %48 ], [ %33, %40 ]
  %55 = load i8, ptr %52, align 1, !tbaa !46
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %56, -72
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 30)
  switch i32 %58, label %147 [
    i32 8, label %59
    i32 0, label %59
    i32 9, label %64
    i32 1, label %75
  ]

59:                                               ; preds = %51, %51
  %60 = icmp eq i64 %53, 1
  br i1 %60, label %61, label %147

61:                                               ; preds = %59
  %62 = trunc i64 %54 to i32
  %63 = or i32 %62, 16
  br label %147

64:                                               ; preds = %51
  switch i64 %53, label %147 [
    i64 1, label %65
    i64 2, label %68
  ]

65:                                               ; preds = %64
  %66 = trunc i64 %54 to i32
  %67 = or i32 %66, 32
  br label %147

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %52, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !46
  %71 = icmp eq i8 %70, 108
  br i1 %71, label %72, label %147

72:                                               ; preds = %68
  %73 = trunc i64 %54 to i32
  %74 = or i32 %73, 64
  br label %147

75:                                               ; preds = %51
  switch i64 %53, label %147 [
    i64 1, label %76
    i64 2, label %79
  ]

76:                                               ; preds = %75
  %77 = trunc i64 %54 to i32
  %78 = or i32 %77, 32
  br label %147

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, ptr %52, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !46
  %82 = icmp eq i8 %81, 76
  br i1 %82, label %83, label %147

83:                                               ; preds = %79
  %84 = trunc i64 %54 to i32
  %85 = or i32 %84, 64
  br label %147

86:                                               ; preds = %34, %109
  %87 = phi i64 [ %94, %109 ], [ %1, %34 ]
  %88 = phi i64 [ %115, %109 ], [ 0, %34 ]
  %89 = phi i64 [ %114, %109 ], [ 0, %34 ]
  %90 = phi i64 [ %113, %109 ], [ 0, %34 ]
  %91 = phi i64 [ %112, %109 ], [ 0, %34 ]
  %92 = phi i64 [ %111, %109 ], [ 0, %34 ]
  %93 = phi i64 [ %110, %109 ], [ 0, %34 ]
  %94 = add i64 %87, -1
  %95 = getelementptr inbounds i8, ptr %0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !46
  switch i8 %96, label %147 [
    i8 102, label %97
    i8 70, label %97
    i8 100, label %99
    i8 68, label %99
    i8 108, label %101
    i8 76, label %101
    i8 119, label %103
    i8 87, label %103
    i8 113, label %105
    i8 81, label %105
    i8 105, label %107
    i8 73, label %107
    i8 106, label %107
    i8 74, label %107
  ], !prof !94

97:                                               ; preds = %86, %86
  %98 = add i64 %93, 1
  br label %109

99:                                               ; preds = %86, %86
  %100 = add i64 %92, 1
  br label %109

101:                                              ; preds = %86, %86
  %102 = add i64 %91, 1
  br label %109

103:                                              ; preds = %86, %86
  %104 = add i64 %90, 1
  br label %109

105:                                              ; preds = %86, %86
  %106 = add i64 %89, 1
  br label %109

107:                                              ; preds = %86, %86, %86, %86
  %108 = add i64 %88, 1
  br label %109

109:                                              ; preds = %107, %105, %103, %101, %99, %97
  %110 = phi i64 [ %93, %107 ], [ %93, %105 ], [ %93, %103 ], [ %93, %101 ], [ %93, %99 ], [ %98, %97 ]
  %111 = phi i64 [ %92, %107 ], [ %92, %105 ], [ %92, %103 ], [ %92, %101 ], [ %100, %99 ], [ %92, %97 ]
  %112 = phi i64 [ %91, %107 ], [ %91, %105 ], [ %91, %103 ], [ %102, %101 ], [ %91, %99 ], [ %91, %97 ]
  %113 = phi i64 [ %90, %107 ], [ %90, %105 ], [ %104, %103 ], [ %90, %101 ], [ %90, %99 ], [ %90, %97 ]
  %114 = phi i64 [ %89, %107 ], [ %106, %105 ], [ %89, %103 ], [ %89, %101 ], [ %89, %99 ], [ %89, %97 ]
  %115 = phi i64 [ %108, %107 ], [ %88, %105 ], [ %88, %103 ], [ %88, %101 ], [ %88, %99 ], [ %88, %97 ]
  %116 = icmp eq i64 %94, 0
  br i1 %116, label %117, label %86, !prof !84, !llvm.loop !95

117:                                              ; preds = %109, %34
  %118 = phi i64 [ 0, %34 ], [ %110, %109 ]
  %119 = phi i64 [ 0, %34 ], [ %111, %109 ]
  %120 = phi i64 [ 0, %34 ], [ %112, %109 ]
  %121 = phi i64 [ 0, %34 ], [ %113, %109 ]
  %122 = phi i64 [ 0, %34 ], [ %114, %109 ]
  %123 = phi i64 [ 0, %34 ], [ %115, %109 ]
  %124 = add i64 %119, %118
  %125 = add i64 %124, %120
  %126 = add i64 %125, %121
  %127 = add i64 %126, %122
  %128 = icmp ugt i64 %127, 1
  %129 = icmp ugt i64 %123, 1
  %130 = select i1 %128, i1 true, i1 %129, !prof !96
  br i1 %130, label %147, label %131, !prof !96

131:                                              ; preds = %117
  %132 = icmp eq i64 %123, 0
  %133 = select i1 %132, i32 0, i32 8192, !prof !97
  %134 = icmp eq i64 %118, 0
  br i1 %134, label %135, label %144, !prof !97

135:                                              ; preds = %131
  %136 = icmp eq i64 %119, 0
  br i1 %136, label %137, label %144, !prof !97

137:                                              ; preds = %135
  %138 = icmp eq i64 %120, 0
  br i1 %138, label %139, label %144, !prof !97

139:                                              ; preds = %137
  %140 = icmp eq i64 %121, 0
  br i1 %140, label %141, label %144, !prof !97

141:                                              ; preds = %139
  %142 = icmp eq i64 %122, 0
  %143 = select i1 %142, i32 32768, i32 131072, !prof !97
  br label %144

144:                                              ; preds = %135, %141, %139, %137, %131
  %145 = phi i32 [ 16, %131 ], [ 32, %135 ], [ 64, %137 ], [ %143, %141 ], [ 65536, %139 ]
  %146 = or disjoint i32 %145, %133
  br label %147

147:                                              ; preds = %86, %59, %117, %68, %79, %51, %64, %75, %22, %144, %83, %76, %72, %65, %61, %46, %38
  %148 = phi i32 [ %39, %38 ], [ %47, %46 ], [ %78, %76 ], [ %85, %83 ], [ %67, %65 ], [ %74, %72 ], [ %63, %61 ], [ %146, %144 ], [ %23, %22 ], [ 0, %75 ], [ 0, %64 ], [ 0, %51 ], [ 0, %79 ], [ 0, %68 ], [ 0, %117 ], [ 0, %59 ], [ 0, %86 ]
  ret i32 %148
}

declare i32 @cpp_sys_macro_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cpp_interpret_integer(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 !prof !45 {
  %5 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %6 = lshr i32 %3, 12
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 %8, ptr %9, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %10, align 1, !tbaa !101
  %11 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %12 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load i32, ptr %11, align 8, !tbaa !46
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = icmp eq i32 %14, 1
  br i1 %17, label %18, label %22, !prof !47

18:                                               ; preds = %4
  %19 = load i8, ptr %13, align 1, !tbaa !46
  %20 = zext i8 %19 to i64
  %21 = add nsw i64 %20, -48
  store i64 %21, ptr %5, align 8, !tbaa !102
  br label %174

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %24 = load i64, ptr %23, align 8, !tbaa !103
  %25 = and i32 %3, 3840
  switch i32 %25, label %32 [
    i32 1024, label %26
    i32 512, label %28
    i32 2048, label %30
  ], !prof !104

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %13, i64 1
  br label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %13, i64 2
  br label %32

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, ptr %13, i64 2
  br label %32

32:                                               ; preds = %22, %28, %30, %26
  %33 = phi ptr [ %27, %26 ], [ %29, %28 ], [ %31, %30 ], [ %13, %22 ]
  %34 = phi i1 [ true, %26 ], [ false, %28 ], [ true, %30 ], [ true, %22 ]
  %35 = phi i1 [ false, %26 ], [ false, %28 ], [ false, %30 ], [ true, %22 ]
  %36 = phi i64 [ 3, %26 ], [ 4, %28 ], [ 1, %30 ], [ 3, %22 ]
  %37 = phi i64 [ 8, %26 ], [ 16, %28 ], [ 2, %30 ], [ 10, %22 ]
  %38 = load i64, ptr %5, align 8
  %39 = load i64, ptr %0, align 8
  %40 = icmp ult ptr %33, %16
  br i1 %40, label %41, label %144, !prof !105

41:                                               ; preds = %32
  %42 = icmp ult i64 %24, 64
  %43 = sub nuw nsw i64 64, %24
  %44 = lshr i64 -1, %43
  %45 = add i64 %44, 1
  %46 = select i1 %42, i64 %45, i64 0, !prof !55
  %47 = sub i64 %46, %37
  %48 = udiv i64 %47, %37
  %49 = add nuw i64 %48, 1
  br label %50

50:                                               ; preds = %41, %129
  %51 = phi i8 [ 0, %41 ], [ %134, %129 ]
  %52 = phi ptr [ %33, %41 ], [ %135, %129 ]
  %53 = phi i64 [ %49, %41 ], [ %133, %129 ]
  %54 = phi i64 [ undef, %41 ], [ %132, %129 ]
  %55 = phi i64 [ %38, %41 ], [ %131, %129 ]
  %56 = phi i64 [ %39, %41 ], [ %130, %129 ]
  %57 = load i8, ptr %52, align 1, !tbaa !46
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !51
  %61 = zext i16 %60 to i32
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68, !prof !106

64:                                               ; preds = %50
  %65 = and i32 %61, 256
  %66 = icmp eq i32 %65, 0
  %67 = or i1 %34, %66
  br i1 %67, label %137, label %68, !prof !107

68:                                               ; preds = %64, %50
  %69 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %58
  %70 = load i8, ptr %69, align 1, !tbaa !46
  %71 = icmp ult i64 %55, %53
  br i1 %71, label %72, label %76, !prof !108

72:                                               ; preds = %68
  %73 = mul i64 %55, %37
  %74 = zext i8 %70 to i64
  %75 = add i64 %73, %74
  br label %129

76:                                               ; preds = %68
  %77 = sub nuw nsw i64 64, %36
  %78 = load i8, ptr %9, align 8
  %79 = lshr i64 %56, %77
  %80 = icmp ne i64 %79, 0
  %81 = shl i64 %56, %36
  %82 = shl i64 %55, %36
  %83 = lshr i64 %55, %77
  %84 = or i64 %81, %83
  %85 = zext i8 %78 to i64
  %86 = and i64 %54, -65536
  %87 = or disjoint i64 %86, %85
  br i1 %35, label %88, label %91

88:                                               ; preds = %76
  %89 = shl i64 %55, 1
  %90 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %55, i64 1)
  br label %91

91:                                               ; preds = %88, %76
  %92 = phi i64 [ %90, %88 ], [ 0, %76 ]
  %93 = phi i64 [ %89, %88 ], [ 0, %76 ]
  %94 = icmp ugt i64 %24, 64
  %95 = shl nsw i64 -1, %24
  %96 = xor i64 %95, -1
  %97 = add i64 %24, -64
  %98 = icmp ult i64 %97, 64
  %99 = shl nsw i64 -1, %97
  %100 = xor i64 %99, -1
  %101 = select i1 %98, i64 %100, i64 -1
  %102 = icmp ugt i64 %24, 63
  %103 = select i1 %102, i64 -1, i64 %96
  %104 = zext i8 %70 to i64
  %105 = add i64 %93, %104
  %106 = icmp ult i64 %105, %93
  %107 = zext i1 %106 to i64
  %108 = add i64 %92, %107
  %109 = xor i64 %82, -1
  %110 = icmp ugt i64 %105, %109
  %111 = zext i1 %110 to i64
  %112 = add i64 %108, %111
  %113 = xor i64 %84, -1
  %114 = icmp ugt i64 %112, %113
  %115 = select i1 %114, i1 true, i1 %80
  %116 = add i64 %105, %82
  %117 = add i64 %112, %84
  %118 = select i1 %115, i64 256, i64 0
  %119 = and i64 %117, %101
  %120 = and i64 %116, %103
  %121 = select i1 %94, i64 %119, i64 0
  %122 = icmp eq i64 %120, %116
  %123 = icmp eq i64 %121, %117
  %124 = select i1 %122, i1 %123, i1 false
  %125 = select i1 %124, i64 %118, i64 256
  %126 = or disjoint i64 %87, %125
  store i64 %126, ptr %9, align 8, !tbaa.struct !109
  %127 = load i8, ptr %10, align 1, !tbaa !101
  %128 = or i8 %127, %51
  br label %129

129:                                              ; preds = %72, %91
  %130 = phi i64 [ %56, %72 ], [ %121, %91 ]
  %131 = phi i64 [ %75, %72 ], [ %120, %91 ]
  %132 = phi i64 [ %54, %72 ], [ %126, %91 ]
  %133 = phi i64 [ %53, %72 ], [ 0, %91 ]
  %134 = phi i8 [ %51, %72 ], [ %128, %91 ]
  %135 = getelementptr inbounds i8, ptr %52, i64 1
  %136 = icmp ult ptr %135, %16
  br i1 %136, label %50, label %137, !prof !110, !llvm.loop !111

137:                                              ; preds = %64, %129
  %138 = phi i64 [ %130, %129 ], [ %56, %64 ]
  %139 = phi i64 [ %131, %129 ], [ %55, %64 ]
  %140 = phi i8 [ %134, %129 ], [ %51, %64 ]
  %141 = icmp eq i8 %140, 0
  store i64 %139, ptr %5, align 8
  store i64 %138, ptr %0, align 8
  br i1 %141, label %145, label %142, !prof !77

142:                                              ; preds = %137
  %143 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.19) #14
  br label %174

144:                                              ; preds = %32
  store i64 %38, ptr %5, align 8
  store i64 %39, ptr %0, align 8
  br label %145

145:                                              ; preds = %144, %137
  %146 = load i8, ptr %9, align 8, !tbaa !98
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %174, !prof !82

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 36
  %150 = load i8, ptr %149, align 2, !tbaa !112
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %156, label %152, !prof !113

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2
  %154 = load i8, ptr %153, align 8, !tbaa !114
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %152, %148
  %157 = icmp ugt i64 %24, 64
  %158 = select i1 %157, i64 -65, i64 -1, !prof !115
  %159 = load i64, ptr %0, align 8
  %160 = load i64, ptr %5, align 8
  %161 = select i1 %157, i64 %159, i64 %160
  %162 = add i64 %24, %158
  %163 = shl nuw i64 1, %162
  %164 = and i64 %161, %163
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %174, label %166, !prof !113

166:                                              ; preds = %156
  br i1 %35, label %167, label %173

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 29
  %169 = load i8, ptr %168, align 1, !tbaa !78
  %170 = icmp eq i8 %169, 0
  %171 = select i1 %170, i32 0, i32 2
  %172 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef %171, ptr noundef nonnull @.str.20) #14
  br label %173

173:                                              ; preds = %167, %166
  store i8 1, ptr %9, align 8, !tbaa !98
  br label %174

174:                                              ; preds = %142, %173, %156, %152, %145, %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @_cpp_parse_expr(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #6 !prof !38 {
  %3 = alloca %struct.cpp_num, align 8
  %4 = alloca %struct.cpp_num, align 8
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca [6 x i8], align 2
  %9 = alloca [6 x i8], align 2
  %10 = alloca [6 x i8], align 2
  %11 = alloca %struct.cpp_token, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cpp_num, align 8
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 11
  store i32 0, ptr %17, align 4, !tbaa !117
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 27
  store ptr null, ptr %18, align 8, !tbaa !118
  %19 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  store i32 22, ptr %19, align 4, !tbaa !119
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %24 = getelementptr inbounds i8, ptr %14, i64 8
  %25 = getelementptr inbounds i8, ptr %14, i64 16
  %26 = getelementptr inbounds i8, ptr %14, i64 17
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 52
  br label %28

28:                                               ; preds = %1338, %2
  %29 = phi i8 [ 0, %2 ], [ %1334, %1338 ]
  %30 = phi i8 [ 1, %2 ], [ %1335, %1338 ]
  %31 = phi i32 [ 0, %2 ], [ %33, %1338 ]
  %32 = phi ptr [ %16, %2 ], [ %1336, %1338 ]
  %33 = add i32 %31, 1
  %34 = call ptr @cpp_get_token(ptr noundef %0) #14
  %35 = getelementptr inbounds %struct.cpp_token, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 4
  switch i8 %36, label %242 [
    i8 55, label %37
    i8 56, label %37
    i8 57, label %37
    i8 58, label %37
    i8 59, label %37
    i8 53, label %37
    i8 37, label %37
    i8 1, label %233
    i8 4, label %236
    i8 5, label %239
  ]

37:                                               ; preds = %28, %28, %28, %28, %28, %28, %28
  %38 = icmp eq i8 %30, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %34) #14
  %41 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %40) #14
  br label %1333

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14, !noalias !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14, !noalias !121
  store i32 0, ptr %13, align 4, !tbaa !43, !noalias !121
  switch i8 %36, label %225 [
    i8 55, label %44
    i8 57, label %55
    i8 56, label %55
    i8 58, label %55
    i8 59, label %55
    i8 53, label %78
    i8 37, label %206
  ]

44:                                               ; preds = %42
  %45 = call i32 @cpp_classify_number(ptr noundef %0, ptr noundef %34), !noalias !121
  store i32 %45, ptr %12, align 4, !tbaa !43, !noalias !121
  %46 = and i32 %45, 15
  switch i32 %46, label %226 [
    i32 2, label %47
    i32 1, label %49
  ]

47:                                               ; preds = %44
  %48 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.31) #14, !noalias !121
  br label %226

49:                                               ; preds = %44
  %50 = and i32 %45, 8192
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @cpp_interpret_integer(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %14, ptr noundef %0, ptr noundef %34, i32 noundef %45)
  br label %232

53:                                               ; preds = %49
  %54 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.32) #14, !noalias !121
  br label %226

55:                                               ; preds = %42, %42, %42, %42
  %56 = call i32 @cpp_interpret_charconst(ptr noundef %0, ptr noundef %34, ptr noundef nonnull %12, ptr noundef nonnull %13) #14, !noalias !121
  %57 = zext i32 %56 to i64
  %58 = load i32, ptr %13, align 4, !tbaa !43, !noalias !121
  %59 = icmp eq i32 %58, 0
  %60 = icmp slt i32 %56, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %226

62:                                               ; preds = %55
  %63 = or disjoint i64 %57, -4294967296
  %64 = load i64, ptr %23, align 8, !tbaa !103, !noalias !121
  %65 = icmp ugt i64 %64, 64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = add i64 %64, -64
  %68 = icmp ult i64 %67, 64
  br i1 %68, label %69, label %226

69:                                               ; preds = %66
  %70 = shl nsw i64 -1, %67
  %71 = xor i64 %70, -1
  br label %226

72:                                               ; preds = %62
  %73 = icmp eq i64 %64, 64
  %74 = shl nsw i64 -1, %64
  %75 = xor i64 %74, -1
  %76 = select i1 %73, i64 -1, i64 %75
  %77 = and i64 %76, %63
  br label %226

78:                                               ; preds = %42
  %79 = getelementptr inbounds %struct.cpp_token, ptr %34, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !46, !noalias !121
  %81 = load ptr, ptr %21, align 8, !tbaa !124, !noalias !121
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %83, label %183

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %85 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %86 = load ptr, ptr %84, align 8, !tbaa !128, !noalias !129
  %87 = load i8, ptr %85, align 8, !tbaa !130, !noalias !129
  %88 = add i8 %87, 1
  store i8 %88, ptr %85, align 8, !tbaa !130, !noalias !129
  %89 = call ptr @cpp_get_token(ptr noundef %0) #14, !noalias !129
  %90 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 1
  %91 = load i8, ptr %90, align 4, !noalias !129
  %92 = icmp eq i8 %91, 20
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = call ptr @cpp_get_token(ptr noundef %0) #14, !noalias !129
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi ptr [ %94, %93 ], [ %89, %83 ]
  %97 = getelementptr inbounds %struct.cpp_token, ptr %96, i64 0, i32 1
  %98 = load i8, ptr %97, align 4, !noalias !129
  %99 = icmp eq i8 %98, 53
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.cpp_token, ptr %96, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !46, !noalias !129
  br i1 %92, label %103, label %123

103:                                              ; preds = %100
  %104 = call ptr @cpp_get_token(ptr noundef %0) #14, !noalias !129
  %105 = getelementptr inbounds %struct.cpp_token, ptr %104, i64 0, i32 1
  %106 = load i8, ptr %105, align 4, !noalias !129
  %107 = icmp eq i8 %106, 21
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.36) #14, !noalias !129
  br label %123

110:                                              ; preds = %95
  %111 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.37) #14, !noalias !129
  %112 = getelementptr inbounds %struct.cpp_token, ptr %96, i64 0, i32 2
  %113 = load i16, ptr %112, align 2, !tbaa !131, !noalias !129
  %114 = and i16 %113, 16
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 0, i32 2
  %118 = getelementptr inbounds %struct.cpp_token, ptr %11, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14, !noalias !129
  store i16 0, ptr %117, align 2, !tbaa !131, !noalias !129
  %119 = load i8, ptr %97, align 4, !noalias !129
  store i8 %119, ptr %118, align 4, !noalias !129
  %120 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %96) #14, !noalias !129
  %121 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %11) #14, !noalias !129
  %122 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.38, ptr noundef %120, ptr noundef %121) #14, !noalias !129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14, !noalias !129
  br label %123

123:                                              ; preds = %116, %110, %108, %103, %100
  %124 = phi ptr [ null, %108 ], [ %102, %103 ], [ %102, %100 ], [ null, %116 ], [ null, %110 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %175, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %84, align 8, !tbaa !128, !noalias !129
  %128 = icmp eq ptr %127, %86
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %131 = load i8, ptr %130, align 1, !tbaa !61, !noalias !129
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.39) #14, !noalias !129
  br label %135

135:                                              ; preds = %133, %129, %126
  %136 = getelementptr inbounds %struct.cpp_hashnode, ptr %124, i64 0, i32 3
  %137 = load i16, ptr %136, align 2, !noalias !129
  %138 = and i16 %137, 319
  %139 = icmp eq i16 %138, 1
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.cpp_hashnode, ptr %124, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !46, !noalias !129
  %143 = getelementptr inbounds %struct.cpp_macro, ptr %142, i64 0, i32 5
  %144 = load i8, ptr %143, align 2, !noalias !129
  %145 = or i8 %144, 8
  store i8 %145, ptr %143, align 2, !noalias !129
  br label %146

146:                                              ; preds = %140, %135
  %147 = load i16, ptr %136, align 2, !noalias !129
  %148 = and i16 %147, 8192
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = or disjoint i16 %147, 8192
  store i16 %151, ptr %136, align 2, !noalias !129
  %152 = and i16 %147, 63
  %153 = icmp eq i16 %152, 1
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 13
  %156 = load ptr, ptr %155, align 8, !tbaa !132, !noalias !129
  %157 = icmp eq ptr %156, null
  br i1 %157, label %166, label %162

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 14
  %160 = load ptr, ptr %159, align 8, !tbaa !133, !noalias !129
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %158, %154
  %163 = phi ptr [ %156, %154 ], [ %160, %158 ]
  %164 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %165 = load i32, ptr %164, align 8, !tbaa !134, !noalias !129
  call void %163(ptr noundef %0, i32 noundef %165, ptr noundef nonnull %124) #14, !noalias !129
  br label %166

166:                                              ; preds = %162, %158, %154, %146
  %167 = getelementptr inbounds %struct.cpp_num, ptr %14, i64 0, i32 2
  %168 = getelementptr inbounds %struct.cpp_num, ptr %14, i64 0, i32 3
  store ptr %124, ptr %18, align 8, !tbaa !118, !noalias !129
  %169 = load i8, ptr %85, align 8, !tbaa !130, !noalias !129
  %170 = add i8 %169, -1
  store i8 %170, ptr %85, align 8, !tbaa !130, !noalias !129
  store i8 0, ptr %167, align 8, !tbaa !98, !alias.scope !129
  store i64 0, ptr %14, align 8, !tbaa !135, !alias.scope !129
  store i8 0, ptr %168, align 1, !tbaa !101, !alias.scope !129
  %171 = load i16, ptr %136, align 2, !noalias !129
  %172 = and i16 %171, 63
  %173 = icmp eq i16 %172, 1
  %174 = zext i1 %173 to i64
  br label %180

175:                                              ; preds = %123
  %176 = getelementptr inbounds %struct.cpp_num, ptr %14, i64 0, i32 2
  %177 = getelementptr inbounds %struct.cpp_num, ptr %14, i64 0, i32 3
  %178 = load i8, ptr %85, align 8, !tbaa !130, !noalias !129
  %179 = add i8 %178, -1
  store i8 %179, ptr %85, align 8, !tbaa !130, !noalias !129
  store i8 0, ptr %176, align 8, !tbaa !98, !alias.scope !129
  store i64 0, ptr %14, align 8, !tbaa !135, !alias.scope !129
  store i8 0, ptr %177, align 1, !tbaa !101, !alias.scope !129
  br label %180

180:                                              ; preds = %175, %166
  %181 = phi i64 [ %174, %166 ], [ 0, %175 ]
  %182 = getelementptr inbounds %struct.cpp_num, ptr %14, i64 0, i32 1
  store i64 %181, ptr %182, align 8, !tbaa !102, !alias.scope !129
  br label %232

183:                                              ; preds = %78
  %184 = load i8, ptr %22, align 8, !tbaa !87, !noalias !121
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !136, !noalias !121
  %189 = icmp eq ptr %80, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !137, !noalias !121
  %193 = icmp eq ptr %80, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190, %186
  %195 = zext i1 %189 to i64
  br label %226

196:                                              ; preds = %190, %183
  %197 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 27
  %198 = load i8, ptr %197, align 1, !tbaa !138, !noalias !121
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %226, label %200

200:                                              ; preds = %196
  %201 = load i32, ptr %17, align 4, !tbaa !117, !noalias !121
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %200
  %204 = load ptr, ptr %80, align 8, !tbaa !139, !noalias !121
  %205 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef %204) #14, !noalias !121
  br label %226

206:                                              ; preds = %42
  %207 = load i8, ptr %20, align 2, !tbaa !142, !noalias !121
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %211 = load i8, ptr %210, align 1, !tbaa !61, !noalias !121
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.34) #14, !noalias !121
  br label %221

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 12
  %217 = load i8, ptr %216, align 2, !tbaa !143, !noalias !121
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.35) #14, !noalias !121
  br label %221

221:                                              ; preds = %219, %215, %213, %206
  %222 = call i32 @_cpp_test_assertion(ptr noundef %0, ptr noundef nonnull %12) #14, !noalias !121
  %223 = load i32, ptr %12, align 4, !tbaa !43, !noalias !121
  %224 = zext i32 %223 to i64
  br label %226

225:                                              ; preds = %42
  call void @abort() #15, !noalias !121
  unreachable

226:                                              ; preds = %66, %69, %72, %221, %203, %200, %196, %194, %55, %53, %47, %44
  %227 = phi i64 [ %224, %221 ], [ 0, %196 ], [ 0, %203 ], [ 0, %200 ], [ %195, %194 ], [ %57, %55 ], [ 0, %44 ], [ 0, %53 ], [ 0, %47 ], [ %63, %69 ], [ %63, %66 ], [ %77, %72 ]
  %228 = phi i64 [ 0, %221 ], [ 0, %196 ], [ 0, %203 ], [ 0, %200 ], [ 0, %194 ], [ 0, %55 ], [ 0, %44 ], [ 0, %53 ], [ 0, %47 ], [ %71, %69 ], [ -1, %66 ], [ 0, %72 ]
  %229 = load i32, ptr %13, align 4, !tbaa !43, !noalias !121
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i8
  store i64 %228, ptr %14, align 8, !tbaa.struct !144, !alias.scope !121
  store i64 %227, ptr %24, align 8, !tbaa.struct !146, !alias.scope !121
  store i8 %231, ptr %25, align 8, !tbaa.struct !109, !alias.scope !121
  store i8 0, ptr %26, align 1, !tbaa.struct !147, !alias.scope !121
  br label %232

232:                                              ; preds = %52, %180, %226
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14, !noalias !121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14, !noalias !121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #14
  br label %1333, !llvm.loop !148

233:                                              ; preds = %28
  %234 = icmp eq i32 %31, 0
  %235 = zext i1 %234 to i8
  br label %249

236:                                              ; preds = %28
  %237 = icmp eq i8 %30, 0
  %238 = select i1 %237, i32 4, i32 27
  br label %249

239:                                              ; preds = %28
  %240 = icmp eq i8 %30, 0
  %241 = select i1 %240, i32 5, i32 28
  br label %249

242:                                              ; preds = %28
  %243 = zext i8 %36 to i32
  %244 = add i8 %36, -27
  %245 = icmp ult i8 %244, -26
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %34) #14
  %248 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef %247) #14
  br label %1333

249:                                              ; preds = %239, %236, %242, %233
  %250 = phi i8 [ %29, %242 ], [ %235, %233 ], [ %29, %236 ], [ %29, %239 ]
  %251 = phi i32 [ %243, %242 ], [ 1, %233 ], [ %238, %236 ], [ %241, %239 ]
  %252 = zext nneg i32 %251 to i64
  %253 = lshr i64 133152765, %252
  %254 = and i64 %253, 1
  %255 = icmp eq i64 %254, 0
  %256 = icmp eq i8 %30, 0
  br i1 %255, label %257, label %261

257:                                              ; preds = %249
  br i1 %256, label %258, label %293

258:                                              ; preds = %257
  %259 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %34) #14
  %260 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %259) #14
  br label %1333

261:                                              ; preds = %249
  br i1 %256, label %293, label %262

262:                                              ; preds = %261
  %263 = trunc i32 %251 to i8
  switch i8 %263, label %280 [
    i8 21, label %264
    i8 22, label %272
  ]

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 3
  %266 = load i32, ptr %265, align 4, !tbaa !119
  %267 = icmp eq i32 %266, 20
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.23) #14
  br label %1333

270:                                              ; preds = %264
  %271 = icmp eq i32 %251, 22
  br i1 %271, label %272, label %280

272:                                              ; preds = %262, %270
  %273 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 3
  %274 = load i32, ptr %273, align 4, !tbaa !119
  %275 = icmp eq i32 %274, 22
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = icmp eq i8 %1, 0
  %278 = select i1 %277, ptr @.str.26, ptr @.str.25
  %279 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef nonnull %278) #14
  br label %1333

280:                                              ; preds = %272, %270, %262
  %281 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 3
  %282 = load i32, ptr %281, align 4, !tbaa !119
  switch i32 %282, label %283 [
    i32 22, label %287
    i32 20, label %287
  ]

283:                                              ; preds = %280
  %284 = load ptr, ptr %32, align 8, !tbaa !149
  %285 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %284) #14
  %286 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.27, ptr noundef %285) #14
  br label %1333

287:                                              ; preds = %280, %280
  %288 = add nsw i32 %251, -21
  %289 = icmp ult i32 %288, 2
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %34) #14
  %292 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef %291) #14
  br label %1333

293:                                              ; preds = %261, %287, %257
  %294 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 3
  %295 = load i32, ptr %294, align 4, !tbaa !119
  %296 = add i32 %295, -29
  %297 = icmp ult i32 %296, -28
  br i1 %297, label %298, label %303

298:                                              ; preds = %388, %293
  %299 = phi ptr [ %32, %293 ], [ %341, %388 ]
  %300 = getelementptr inbounds %struct.op, ptr %299, i64 0, i32 3
  %301 = load i32, ptr %300, align 4, !tbaa !119
  %302 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %301) #14
  br label %1265

303:                                              ; preds = %293
  %304 = icmp eq i32 %251, 20
  br i1 %304, label %1265, label %305

305:                                              ; preds = %303
  %306 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %252
  %307 = load i8, ptr %306, align 2, !tbaa !150
  %308 = zext i8 %307 to i32
  %309 = lshr i64 126730236, %252
  %310 = trunc i64 %309 to i32
  %311 = and i32 %310, 1
  %312 = sub nsw i32 %308, %311
  %313 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 3
  %314 = load i32, ptr %313, align 4, !tbaa !119
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %315
  %317 = load i8, ptr %316, align 2, !tbaa !150
  %318 = zext i8 %317 to i32
  %319 = icmp ult i32 %312, %318
  br i1 %319, label %320, label %1260

320:                                              ; preds = %305
  %321 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 20
  %322 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %323 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %324 = getelementptr inbounds %struct.cpp_num, ptr %6, i64 0, i32 2
  %325 = getelementptr inbounds %struct.cpp_num, ptr %5, i64 0, i32 2
  %326 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %327 = getelementptr inbounds i8, ptr %6, i64 8
  %328 = getelementptr inbounds i8, ptr %5, i64 8
  %329 = getelementptr inbounds %struct.cpp_num, ptr %5, i64 0, i32 1
  %330 = getelementptr inbounds i8, ptr %6, i64 8
  %331 = getelementptr inbounds i8, ptr %6, i64 17
  %332 = getelementptr inbounds i8, ptr %6, i64 18
  %333 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %334 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %335 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %336 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %337 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  br label %338

338:                                              ; preds = %1163, %320
  %339 = phi i64 [ %315, %320 ], [ %1164, %1163 ]
  %340 = phi ptr [ %313, %320 ], [ %1165, %1163 ]
  %341 = phi ptr [ %32, %320 ], [ %1166, %1163 ]
  %342 = load i8, ptr %321, align 2, !tbaa !152
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %388, label %344

344:                                              ; preds = %338
  %345 = lshr i64 435941379, %339
  %346 = and i64 %345, 1
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %388

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %350 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 2
  %351 = load i8, ptr %350, align 8, !tbaa !153
  %352 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  %353 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  %354 = load i8, ptr %353, align 8, !tbaa !153
  %355 = icmp eq i8 %351, %354
  br i1 %355, label %388, label %356

356:                                              ; preds = %348
  %357 = icmp eq i8 %351, 0
  br i1 %357, label %369, label %358

358:                                              ; preds = %356
  %359 = load i64, ptr %322, align 8, !tbaa !103
  %360 = icmp ugt i64 %359, 64
  %361 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  %362 = select i1 %360, ptr %352, ptr %361
  %363 = select i1 %360, i64 -65, i64 -1
  %364 = load i64, ptr %362, align 1
  %365 = add i64 %359, %363
  %366 = shl nuw i64 1, %365
  %367 = and i64 %364, %366
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %388, label %380

369:                                              ; preds = %356
  %370 = load i64, ptr %323, align 8, !tbaa !103
  %371 = icmp ugt i64 %370, 64
  %372 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %373 = select i1 %371, ptr %349, ptr %372
  %374 = select i1 %371, i64 -65, i64 -1
  %375 = load i64, ptr %373, align 1
  %376 = add i64 %370, %374
  %377 = shl nuw i64 1, %376
  %378 = and i64 %375, %377
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %388, label %380

380:                                              ; preds = %369, %358
  %381 = phi i64 [ -1, %358 ], [ 0, %369 ]
  %382 = phi ptr [ @.str.45, %358 ], [ @.str.46, %369 ]
  %383 = getelementptr %struct.op, ptr %341, i64 %381, i32 2
  %384 = load i32, ptr %383, align 8, !tbaa !154
  %385 = load ptr, ptr %341, align 8, !tbaa !149
  %386 = call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %385) #14
  %387 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 0, i32 noundef %384, i32 noundef 0, ptr noundef nonnull %382, ptr noundef %386) #14
  br label %388

388:                                              ; preds = %380, %369, %358, %348, %344, %338
  %389 = load i32, ptr %340, align 4, !tbaa !119
  switch i32 %389, label %298 [
    i32 27, label %390
    i32 28, label %390
    i32 1, label %390
    i32 14, label %390
    i32 4, label %478
    i32 5, label %478
    i32 12, label %478
    i32 13, label %478
    i32 19, label %478
    i32 2, label %482
    i32 3, label %482
    i32 25, label %482
    i32 26, label %482
    i32 23, label %542
    i32 24, label %542
    i32 9, label %561
    i32 10, label %561
    i32 11, label %561
    i32 6, label %593
    i32 7, label %810
    i32 8, label %810
    i32 16, label %1128
    i32 15, label %1167
    i32 20, label %1193
    i32 18, label %1206
    i32 17, label %1234
  ]

390:                                              ; preds = %388, %388, %388, %388
  %391 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  %392 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %393 = load i64, ptr %392, align 1
  %394 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %395 = load i64, ptr %394, align 1
  %396 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 2
  %397 = load i64, ptr %396, align 1
  switch i32 %389, label %466 [
    i32 27, label %398
    i32 28, label %408
    i32 14, label %444
  ]

398:                                              ; preds = %390
  %399 = load i8, ptr %337, align 1, !tbaa !81, !noalias !155
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %398
  %402 = load i32, ptr %17, align 4, !tbaa !117, !noalias !155
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %401
  %405 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.47) #14, !noalias !155
  br label %406

406:                                              ; preds = %404, %401, %398
  %407 = and i64 %397, -65281
  br label %471

408:                                              ; preds = %390
  %409 = load i64, ptr %336, align 8, !tbaa !103, !noalias !155
  %410 = xor i64 %393, -1
  %411 = sub i64 0, %395
  %412 = icmp eq i64 %395, 0
  %413 = sub i64 0, %393
  %414 = select i1 %412, i64 %413, i64 %410
  %415 = icmp ugt i64 %409, 64
  br i1 %415, label %416, label %423

416:                                              ; preds = %408
  %417 = add i64 %409, -64
  %418 = icmp ult i64 %417, 64
  br i1 %418, label %419, label %429

419:                                              ; preds = %416
  %420 = shl nsw i64 -1, %417
  %421 = xor i64 %420, -1
  %422 = and i64 %414, %421
  br label %429

423:                                              ; preds = %408
  %424 = icmp eq i64 %409, 64
  %425 = shl nsw i64 -1, %409
  %426 = xor i64 %425, -1
  %427 = select i1 %424, i64 -1, i64 %426
  %428 = and i64 %427, %411
  br label %429

429:                                              ; preds = %423, %419, %416
  %430 = phi i64 [ %411, %419 ], [ %411, %416 ], [ %428, %423 ]
  %431 = phi i64 [ %422, %419 ], [ %414, %416 ], [ 0, %423 ]
  %432 = and i64 %397, 255
  %433 = icmp eq i64 %432, 0
  %434 = icmp eq i64 %430, %395
  %435 = select i1 %433, i1 %434, i1 false
  %436 = icmp eq i64 %431, %393
  %437 = select i1 %435, i1 %436, i1 false
  %438 = or i64 %431, %430
  %439 = icmp ne i64 %438, 0
  %440 = select i1 %437, i1 %439, i1 false
  %441 = select i1 %440, i64 256, i64 0
  %442 = and i64 %397, -65281
  %443 = or disjoint i64 %441, %442
  br label %471

444:                                              ; preds = %390
  %445 = xor i64 %393, -1
  %446 = xor i64 %395, -1
  %447 = load i64, ptr %335, align 8, !tbaa !103, !noalias !155
  %448 = icmp ugt i64 %447, 64
  br i1 %448, label %449, label %456

449:                                              ; preds = %444
  %450 = add i64 %447, -64
  %451 = icmp ult i64 %450, 64
  br i1 %451, label %452, label %462

452:                                              ; preds = %449
  %453 = shl nsw i64 -1, %450
  %454 = xor i64 %453, -1
  %455 = and i64 %454, %445
  br label %462

456:                                              ; preds = %444
  %457 = icmp eq i64 %447, 64
  %458 = shl nsw i64 -1, %447
  %459 = xor i64 %458, -1
  %460 = select i1 %457, i64 -1, i64 %459
  %461 = and i64 %460, %446
  br label %462

462:                                              ; preds = %456, %452, %449
  %463 = phi i64 [ %446, %452 ], [ %446, %449 ], [ %461, %456 ]
  %464 = phi i64 [ %455, %452 ], [ %445, %449 ], [ 0, %456 ]
  %465 = and i64 %397, -65281
  br label %471

466:                                              ; preds = %390
  %467 = or i64 %395, %393
  %468 = icmp eq i64 %467, 0
  %469 = zext i1 %468 to i64
  %470 = and i64 %397, -65536
  br label %471

471:                                              ; preds = %466, %462, %429, %406
  %472 = phi i64 [ %470, %466 ], [ %465, %462 ], [ %443, %429 ], [ %407, %406 ]
  %473 = phi i64 [ %469, %466 ], [ %463, %462 ], [ %430, %429 ], [ %395, %406 ]
  %474 = phi i64 [ 0, %466 ], [ %464, %462 ], [ %431, %429 ], [ %393, %406 ]
  store i64 %474, ptr %391, align 8, !tbaa.struct !144
  %475 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  store i64 %473, ptr %475, align 8, !tbaa.struct !146
  %476 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  store i64 %472, ptr %476, align 8, !tbaa.struct !109
  %477 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  br label %1239

478:                                              ; preds = %388, %388, %388, %388, %388
  %479 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  %480 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  call fastcc void @num_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef %0, ptr noundef byval(%struct.cpp_num) align 8 %479, ptr noundef nonnull byval(%struct.cpp_num) align 8 %480, i32 noundef %389)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %479, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  %481 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  br label %1239

482:                                              ; preds = %388, %388, %388, %388
  %483 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8)
  %484 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %485 = load i64, ptr %484, align 1
  %486 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %487 = load i64, ptr %486, align 1
  %488 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 2
  %489 = load i64, ptr %488, align 1
  %490 = load i64, ptr %483, align 1
  %491 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  %492 = load i64, ptr %491, align 1
  %493 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  %494 = load i8, ptr %493, align 1
  %495 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 3
  %496 = getelementptr i8, ptr %341, i64 -14
  %497 = icmp ne i8 %494, 0
  %498 = and i64 %489, 255
  %499 = icmp ne i64 %498, 0
  %500 = select i1 %497, i1 true, i1 %499
  br i1 %500, label %517, label %501

501:                                              ; preds = %482
  %502 = load i64, ptr %334, align 8, !tbaa !103, !noalias !158
  %503 = icmp ugt i64 %502, 64
  %504 = select i1 %503, i64 -65, i64 -1
  %505 = select i1 %503, i64 %490, i64 %492
  %506 = add i64 %502, %504
  %507 = shl nuw i64 1, %506
  %508 = and i64 %507, %505
  %509 = icmp eq i64 %508, 0
  %510 = select i1 %503, i64 -65, i64 -1
  %511 = select i1 %503, i64 %485, i64 %487
  %512 = add i64 %502, %510
  %513 = shl nuw i64 1, %512
  %514 = and i64 %513, %511
  %515 = icmp ne i64 %514, 0
  %516 = xor i1 %509, %515
  br i1 %516, label %517, label %523

517:                                              ; preds = %501, %482
  %518 = icmp ugt i64 %490, %485
  br i1 %518, label %523, label %519

519:                                              ; preds = %517
  %520 = icmp eq i64 %490, %485
  %521 = icmp uge i64 %492, %487
  %522 = select i1 %520, i1 %521, i1 false
  br label %523

523:                                              ; preds = %501, %519, %517
  %524 = phi i1 [ true, %517 ], [ %522, %519 ], [ %509, %501 ]
  switch i32 %389, label %532 [
    i32 25, label %538
    i32 3, label %525
    i32 2, label %527
  ]

525:                                              ; preds = %523
  %526 = xor i1 %524, true
  br label %538

527:                                              ; preds = %523
  %528 = icmp ne i64 %492, %487
  %529 = icmp ne i64 %490, %485
  %530 = select i1 %528, i1 true, i1 %529
  %531 = select i1 %524, i1 %530, i1 false
  br label %538

532:                                              ; preds = %523
  %533 = xor i1 %524, true
  %534 = icmp eq i64 %492, %487
  %535 = icmp eq i64 %490, %485
  %536 = select i1 %534, i1 %535, i1 false
  %537 = select i1 %533, i1 true, i1 %536
  br label %538

538:                                              ; preds = %523, %532, %527, %525
  %539 = phi i1 [ %537, %532 ], [ %531, %527 ], [ %526, %525 ], [ %524, %523 ]
  %540 = zext i1 %539 to i64
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %8, ptr noundef nonnull align 1 dereferenceable(6) %496, i64 6, i1 false)
  store i64 0, ptr %483, align 8, !tbaa.struct !144
  store i64 %540, ptr %491, align 8, !tbaa.struct !146
  store i8 0, ptr %493, align 8, !tbaa.struct !109
  store i8 0, ptr %495, align 1, !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %496, ptr noundef nonnull align 2 dereferenceable(6) %8, i64 6, i1 false), !tbaa.struct !161
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8)
  %541 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  br label %1239

542:                                              ; preds = %388, %388
  %543 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9)
  %544 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %545 = load i64, ptr %544, align 1
  %546 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %547 = load i64, ptr %546, align 1
  %548 = load i64, ptr %543, align 1
  %549 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  %550 = load i64, ptr %549, align 1
  %551 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  %552 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 3
  %553 = getelementptr i8, ptr %341, i64 -14
  %554 = icmp eq i64 %550, %547
  %555 = icmp eq i64 %548, %545
  %556 = select i1 %554, i1 %555, i1 false
  %557 = icmp eq i32 %389, 24
  %558 = xor i1 %557, %556
  %559 = zext i1 %558 to i64
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef nonnull align 1 dereferenceable(6) %553, i64 6, i1 false)
  store i64 0, ptr %543, align 8, !tbaa.struct !144
  store i64 %559, ptr %549, align 8, !tbaa.struct !146
  store i8 0, ptr %551, align 8, !tbaa.struct !109
  store i8 0, ptr %552, align 1, !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %553, ptr noundef nonnull align 2 dereferenceable(6) %9, i64 6, i1 false), !tbaa.struct !161
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9)
  %560 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  br label %1239

561:                                              ; preds = %388, %388, %388
  %562 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10)
  %563 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %564 = load i64, ptr %563, align 1
  %565 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %566 = load i64, ptr %565, align 1
  %567 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 2
  %568 = load i8, ptr %567, align 1
  %569 = load i64, ptr %562, align 1
  %570 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  %571 = load i64, ptr %570, align 1
  %572 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  %573 = load i8, ptr %572, align 1
  %574 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 3
  %575 = getelementptr i8, ptr %341, i64 -14
  %576 = icmp ne i8 %573, 0
  %577 = icmp ne i8 %568, 0
  %578 = select i1 %576, i1 true, i1 %577
  %579 = zext i1 %578 to i8
  switch i32 %389, label %586 [
    i32 9, label %580
    i32 10, label %583
  ]

580:                                              ; preds = %561
  %581 = and i64 %571, %566
  %582 = and i64 %569, %564
  br label %589

583:                                              ; preds = %561
  %584 = or i64 %571, %566
  %585 = or i64 %569, %564
  br label %589

586:                                              ; preds = %561
  %587 = xor i64 %571, %566
  %588 = xor i64 %569, %564
  br label %589

589:                                              ; preds = %586, %583, %580
  %590 = phi i64 [ %587, %586 ], [ %584, %583 ], [ %581, %580 ]
  %591 = phi i64 [ %588, %586 ], [ %585, %583 ], [ %582, %580 ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 1 dereferenceable(6) %575, i64 6, i1 false)
  store i64 %591, ptr %562, align 8, !tbaa.struct !144
  store i64 %590, ptr %570, align 8, !tbaa.struct !146
  store i8 %579, ptr %572, align 8, !tbaa.struct !109
  store i8 0, ptr %574, align 1, !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %575, ptr noundef nonnull align 2 dereferenceable(6) %10, i64 6, i1 false), !tbaa.struct !161
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10)
  %592 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  br label %1239

593:                                              ; preds = %388
  %594 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  %595 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %596 = load i64, ptr %595, align 1
  %597 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %598 = load i64, ptr %597, align 1
  %599 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 2
  %600 = load i8, ptr %599, align 1
  %601 = load i64, ptr %594, align 1
  %602 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  %603 = load i64, ptr %602, align 1
  %604 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  %605 = load i8, ptr %604, align 1
  %606 = icmp ne i8 %605, 0
  %607 = icmp ne i8 %600, 0
  %608 = select i1 %606, i1 true, i1 %607
  %609 = load i64, ptr %333, align 8, !tbaa !103, !noalias !162
  br i1 %608, label %667, label %610

610:                                              ; preds = %593
  %611 = icmp ugt i64 %609, 64
  %612 = select i1 %611, i64 -65, i64 -1
  %613 = select i1 %611, i64 %601, i64 %603
  %614 = add i64 %609, %612
  %615 = shl nuw i64 1, %614
  %616 = and i64 %615, %613
  %617 = icmp eq i64 %616, 0
  %618 = zext i1 %617 to i8
  br i1 %617, label %638, label %619

619:                                              ; preds = %610
  %620 = xor i64 %601, -1
  %621 = sub i64 0, %603
  %622 = icmp eq i64 %603, 0
  %623 = sub i64 0, %601
  %624 = select i1 %622, i64 %623, i64 %620
  br i1 %611, label %625, label %632

625:                                              ; preds = %619
  %626 = add i64 %609, -64
  %627 = icmp ult i64 %626, 64
  br i1 %627, label %628, label %638

628:                                              ; preds = %625
  %629 = shl nsw i64 -1, %626
  %630 = xor i64 %629, -1
  %631 = and i64 %624, %630
  br label %638

632:                                              ; preds = %619
  %633 = icmp eq i64 %609, 64
  %634 = shl nsw i64 -1, %609
  %635 = xor i64 %634, -1
  %636 = select i1 %633, i64 -1, i64 %635
  %637 = and i64 %636, %621
  br label %638

638:                                              ; preds = %625, %628, %632, %610
  %639 = phi i64 [ %601, %610 ], [ %631, %628 ], [ %624, %625 ], [ 0, %632 ]
  %640 = phi i64 [ %603, %610 ], [ %621, %628 ], [ %621, %625 ], [ %637, %632 ]
  %641 = phi i8 [ 0, %610 ], [ 1, %628 ], [ 1, %625 ], [ 1, %632 ]
  %642 = select i1 %611, i64 -65, i64 -1
  %643 = select i1 %611, i64 %596, i64 %598
  %644 = add i64 %609, %642
  %645 = shl nuw i64 1, %644
  %646 = and i64 %645, %643
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %667, label %648

648:                                              ; preds = %638
  %649 = xor i64 %596, -1
  %650 = sub i64 0, %598
  %651 = icmp eq i64 %598, 0
  %652 = sub i64 0, %596
  %653 = select i1 %651, i64 %652, i64 %649
  br i1 %611, label %654, label %661

654:                                              ; preds = %648
  %655 = add i64 %609, -64
  %656 = icmp ult i64 %655, 64
  br i1 %656, label %657, label %667

657:                                              ; preds = %654
  %658 = shl nsw i64 -1, %655
  %659 = xor i64 %658, -1
  %660 = and i64 %653, %659
  br label %667

661:                                              ; preds = %648
  %662 = icmp eq i64 %609, 64
  %663 = shl nsw i64 -1, %609
  %664 = xor i64 %663, -1
  %665 = select i1 %662, i64 -1, i64 %664
  %666 = and i64 %665, %650
  br label %667

667:                                              ; preds = %654, %657, %661, %638, %593
  %668 = phi i64 [ %601, %593 ], [ %639, %638 ], [ %639, %661 ], [ %639, %657 ], [ %639, %654 ]
  %669 = phi i64 [ %603, %593 ], [ %640, %638 ], [ %640, %661 ], [ %640, %657 ], [ %640, %654 ]
  %670 = phi i64 [ %596, %593 ], [ %596, %638 ], [ 0, %661 ], [ %660, %657 ], [ %653, %654 ]
  %671 = phi i64 [ %598, %593 ], [ %598, %638 ], [ %666, %661 ], [ %650, %657 ], [ %650, %654 ]
  %672 = phi i8 [ 0, %593 ], [ %641, %638 ], [ %618, %661 ], [ %618, %657 ], [ %618, %654 ]
  %673 = icmp ne i64 %668, 0
  %674 = icmp ne i64 %670, 0
  %675 = select i1 %673, i1 %674, i1 false
  %676 = and i64 %669, 4294967295
  %677 = and i64 %671, 4294967295
  %678 = mul nuw i64 %677, %676
  %679 = lshr i64 %669, 32
  %680 = lshr i64 %671, 32
  %681 = mul nuw i64 %680, %679
  %682 = mul nuw i64 %680, %676
  %683 = mul nuw i64 %677, %679
  %684 = shl i64 %682, 32
  %685 = add i64 %684, %678
  %686 = icmp ult i64 %685, %678
  %687 = zext i1 %686 to i64
  %688 = add i64 %682, %683
  %689 = shl i64 %688, 32
  %690 = add i64 %689, %678
  %691 = icmp ult i64 %690, %685
  %692 = zext i1 %691 to i64
  %693 = lshr i64 %682, 32
  %694 = lshr i64 %683, 32
  %695 = and i64 %668, 4294967295
  %696 = mul nuw i64 %677, %695
  %697 = lshr i64 %668, 32
  %698 = mul nuw i64 %680, %697
  %699 = mul nuw i64 %680, %695
  %700 = mul nuw i64 %677, %697
  %701 = shl i64 %699, 32
  %702 = add i64 %701, %696
  %703 = icmp ult i64 %702, %696
  %704 = zext i1 %703 to i64
  %705 = add i64 %699, %700
  %706 = shl i64 %705, 32
  %707 = add i64 %706, %696
  %708 = icmp ult i64 %707, %702
  %709 = zext i1 %708 to i64
  %710 = lshr i64 %699, 32
  %711 = add nuw i64 %710, %698
  %712 = add nuw i64 %711, %704
  %713 = add nuw i64 %712, %709
  %714 = lshr i64 %700, 32
  %715 = sub nsw i64 0, %714
  %716 = icmp ne i64 %713, %715
  %717 = and i64 %670, 4294967295
  %718 = mul nuw i64 %717, %676
  %719 = lshr i64 %670, 32
  %720 = mul nuw i64 %719, %679
  %721 = mul nuw i64 %719, %676
  %722 = mul nuw i64 %717, %679
  %723 = shl i64 %721, 32
  %724 = add i64 %723, %718
  %725 = icmp ult i64 %724, %718
  %726 = zext i1 %725 to i64
  %727 = add i64 %721, %722
  %728 = shl i64 %727, 32
  %729 = add i64 %728, %718
  %730 = icmp ult i64 %729, %724
  %731 = zext i1 %730 to i64
  %732 = lshr i64 %721, 32
  %733 = add nuw i64 %732, %720
  %734 = add nuw i64 %733, %726
  %735 = add nuw i64 %734, %731
  %736 = lshr i64 %722, 32
  %737 = add nuw i64 %693, %681
  %738 = add nuw i64 %737, %694
  %739 = add i64 %738, %729
  %740 = add i64 %739, %707
  %741 = add i64 %740, %687
  %742 = add i64 %741, %692
  %743 = sub nsw i64 0, %736
  %744 = icmp ne i64 %735, %743
  %745 = icmp ugt i64 %609, 64
  br i1 %745, label %746, label %753

746:                                              ; preds = %667
  %747 = add i64 %609, -64
  %748 = icmp ult i64 %747, 64
  br i1 %748, label %749, label %759

749:                                              ; preds = %746
  %750 = shl nsw i64 -1, %747
  %751 = xor i64 %750, -1
  %752 = and i64 %742, %751
  br label %759

753:                                              ; preds = %667
  %754 = icmp eq i64 %609, 64
  %755 = shl nsw i64 -1, %609
  %756 = xor i64 %755, -1
  %757 = select i1 %754, i64 -1, i64 %756
  %758 = and i64 %690, %757
  br label %759

759:                                              ; preds = %753, %749, %746
  %760 = phi i64 [ %752, %749 ], [ %742, %746 ], [ 0, %753 ]
  %761 = phi i64 [ %690, %749 ], [ %690, %746 ], [ %758, %753 ]
  %762 = icmp ne i64 %761, %690
  %763 = icmp ne i64 %760, %742
  %764 = icmp eq i8 %672, 0
  br i1 %764, label %784, label %765

765:                                              ; preds = %759
  %766 = xor i64 %760, -1
  %767 = sub i64 0, %761
  %768 = icmp eq i64 %761, 0
  %769 = sub i64 0, %760
  %770 = select i1 %768, i64 %769, i64 %766
  br i1 %745, label %771, label %778

771:                                              ; preds = %765
  %772 = add i64 %609, -64
  %773 = icmp ult i64 %772, 64
  br i1 %773, label %774, label %784

774:                                              ; preds = %771
  %775 = shl nsw i64 -1, %772
  %776 = xor i64 %775, -1
  %777 = and i64 %770, %776
  br label %784

778:                                              ; preds = %765
  %779 = icmp eq i64 %609, 64
  %780 = shl nsw i64 -1, %609
  %781 = xor i64 %780, -1
  %782 = select i1 %779, i64 -1, i64 %781
  %783 = and i64 %782, %767
  br label %784

784:                                              ; preds = %771, %774, %778, %759
  %785 = phi i64 [ %761, %759 ], [ %767, %774 ], [ %767, %771 ], [ %783, %778 ]
  %786 = phi i64 [ %760, %759 ], [ %777, %774 ], [ %770, %771 ], [ 0, %778 ]
  %787 = select i1 %608, i1 true, i1 %762
  %788 = select i1 %787, i1 true, i1 %763
  %789 = select i1 %788, i1 true, i1 %744
  %790 = select i1 %789, i1 true, i1 %716
  %791 = select i1 %790, i1 true, i1 %675
  %792 = xor i1 %608, true
  br i1 %791, label %804, label %793

793:                                              ; preds = %784
  %794 = select i1 %745, i64 -65, i64 -1
  %795 = select i1 %745, i64 %786, i64 %785
  %796 = add i64 %609, %794
  %797 = shl nuw i64 1, %796
  %798 = and i64 %795, %797
  %799 = icmp ne i64 %798, 0
  %800 = xor i1 %764, %799
  br i1 %800, label %804, label %801

801:                                              ; preds = %793
  %802 = or i64 %786, %785
  %803 = icmp ne i64 %802, 0
  br label %804

804:                                              ; preds = %801, %793, %784
  %805 = phi i1 [ %792, %784 ], [ false, %793 ], [ %803, %801 ]
  %806 = select i1 %805, i64 256, i64 0
  %807 = zext i1 %608 to i64
  %808 = or disjoint i64 %806, %807
  store i64 %786, ptr %594, align 8, !tbaa.struct !144
  store i64 %785, ptr %602, align 8, !tbaa.struct !146
  store i64 %808, ptr %604, align 8, !tbaa.struct !109
  %809 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  br label %1239

810:                                              ; preds = %388, %388
  %811 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  %812 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %813 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  %814 = load i32, ptr %813, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(24) %812, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(24) %811, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14, !noalias !165
  %815 = load i8, ptr %324, align 8, !tbaa !98, !noalias !165
  %816 = icmp ne i8 %815, 0
  %817 = load i8, ptr %325, align 8, !noalias !165
  %818 = icmp ne i8 %817, 0
  %819 = select i1 %816, i1 true, i1 %818
  %820 = zext i1 %819 to i8
  %821 = load i64, ptr %326, align 8, !tbaa !103, !noalias !165
  br i1 %819, label %919, label %822

822:                                              ; preds = %810
  %823 = icmp ugt i64 %821, 64
  %824 = load i64, ptr %327, align 8
  %825 = load i64, ptr %6, align 8
  %826 = select i1 %823, i64 -65, i64 -1
  %827 = select i1 %823, i64 %825, i64 %824
  %828 = add i64 %821, %826
  %829 = shl nuw i64 1, %828
  %830 = and i64 %827, %829
  %831 = icmp eq i64 %830, 0
  %832 = zext i1 %831 to i8
  br i1 %831, label %871, label %833

833:                                              ; preds = %822
  %834 = getelementptr inbounds i8, ptr %6, i64 8
  %835 = load i64, ptr %6, align 8, !noalias !165
  %836 = load i64, ptr %834, align 8, !noalias !165
  %837 = load i64, ptr %324, align 8, !noalias !165
  %838 = xor i64 %835, -1
  %839 = sub i64 0, %836
  %840 = icmp eq i64 %836, 0
  %841 = sub i64 0, %835
  %842 = select i1 %840, i64 %841, i64 %838
  br i1 %823, label %843, label %850

843:                                              ; preds = %833
  %844 = add i64 %821, -64
  %845 = icmp ult i64 %844, 64
  br i1 %845, label %846, label %856

846:                                              ; preds = %843
  %847 = shl nsw i64 -1, %844
  %848 = xor i64 %847, -1
  %849 = and i64 %842, %848
  br label %856

850:                                              ; preds = %833
  %851 = icmp eq i64 %821, 64
  %852 = shl nsw i64 -1, %821
  %853 = xor i64 %852, -1
  %854 = select i1 %851, i64 -1, i64 %853
  %855 = and i64 %854, %839
  br label %856

856:                                              ; preds = %850, %846, %843
  %857 = phi i64 [ %839, %846 ], [ %839, %843 ], [ %855, %850 ]
  %858 = phi i64 [ %849, %846 ], [ %842, %843 ], [ 0, %850 ]
  %859 = and i64 %837, 255
  %860 = icmp eq i64 %859, 0
  %861 = icmp eq i64 %857, %836
  %862 = select i1 %860, i1 %861, i1 false
  %863 = icmp eq i64 %858, %835
  %864 = select i1 %862, i1 %863, i1 false
  %865 = or i64 %858, %857
  %866 = icmp ne i64 %865, 0
  %867 = select i1 %864, i1 %866, i1 false
  %868 = select i1 %867, i64 256, i64 0
  %869 = and i64 %837, -65281
  %870 = or disjoint i64 %868, %869
  store i64 %858, ptr %6, align 8, !tbaa.struct !144, !noalias !165
  store i64 %857, ptr %834, align 8, !tbaa.struct !146, !noalias !165
  store i64 %870, ptr %324, align 8, !tbaa.struct !109, !noalias !165
  br label %871

871:                                              ; preds = %856, %822
  %872 = phi i8 [ 0, %822 ], [ 1, %856 ]
  %873 = load i64, ptr %328, align 8
  %874 = load i64, ptr %5, align 8
  %875 = select i1 %823, i64 -65, i64 -1
  %876 = select i1 %823, i64 %874, i64 %873
  %877 = add i64 %821, %875
  %878 = shl nuw i64 1, %877
  %879 = and i64 %876, %878
  %880 = icmp eq i64 %879, 0
  br i1 %880, label %919, label %881

881:                                              ; preds = %871
  %882 = getelementptr inbounds i8, ptr %5, i64 8
  %883 = load i64, ptr %5, align 8, !noalias !165
  %884 = load i64, ptr %882, align 8, !noalias !165
  %885 = load i64, ptr %325, align 8, !noalias !165
  %886 = xor i64 %883, -1
  %887 = sub i64 0, %884
  %888 = icmp eq i64 %884, 0
  %889 = sub i64 0, %883
  %890 = select i1 %888, i64 %889, i64 %886
  br i1 %823, label %891, label %898

891:                                              ; preds = %881
  %892 = add i64 %821, -64
  %893 = icmp ult i64 %892, 64
  br i1 %893, label %894, label %904

894:                                              ; preds = %891
  %895 = shl nsw i64 -1, %892
  %896 = xor i64 %895, -1
  %897 = and i64 %890, %896
  br label %904

898:                                              ; preds = %881
  %899 = icmp eq i64 %821, 64
  %900 = shl nsw i64 -1, %821
  %901 = xor i64 %900, -1
  %902 = select i1 %899, i64 -1, i64 %901
  %903 = and i64 %902, %887
  br label %904

904:                                              ; preds = %898, %894, %891
  %905 = phi i64 [ %887, %894 ], [ %887, %891 ], [ %903, %898 ]
  %906 = phi i64 [ %897, %894 ], [ %890, %891 ], [ 0, %898 ]
  %907 = and i64 %885, 255
  %908 = icmp eq i64 %907, 0
  %909 = icmp eq i64 %905, %884
  %910 = select i1 %908, i1 %909, i1 false
  %911 = icmp eq i64 %906, %883
  %912 = select i1 %910, i1 %911, i1 false
  %913 = or i64 %906, %905
  %914 = icmp ne i64 %913, 0
  %915 = select i1 %912, i1 %914, i1 false
  %916 = select i1 %915, i64 256, i64 0
  %917 = and i64 %885, -65281
  %918 = or disjoint i64 %916, %917
  store i64 %906, ptr %5, align 8, !tbaa.struct !144, !noalias !165
  store i64 %905, ptr %882, align 8, !tbaa.struct !146, !noalias !165
  store i64 %918, ptr %325, align 8, !tbaa.struct !109, !noalias !165
  br label %919

919:                                              ; preds = %904, %871, %810
  %920 = phi i8 [ 0, %810 ], [ %872, %871 ], [ %832, %904 ]
  %921 = phi i8 [ 0, %810 ], [ %872, %871 ], [ %872, %904 ]
  %922 = load i64, ptr %5, align 8, !tbaa !135, !noalias !165
  %923 = icmp eq i64 %922, 0
  br i1 %923, label %934, label %924

924:                                              ; preds = %919
  %925 = add i64 %821, -65
  %926 = shl nuw i64 1, %925
  br label %927

927:                                              ; preds = %927, %924
  %928 = phi i64 [ %821, %924 ], [ %930, %927 ]
  %929 = phi i64 [ %926, %924 ], [ %933, %927 ]
  %930 = add i64 %928, -1
  %931 = and i64 %929, %922
  %932 = icmp eq i64 %931, 0
  %933 = lshr i64 %929, 1
  br i1 %932, label %927, label %962, !llvm.loop !168

934:                                              ; preds = %919
  %935 = load i64, ptr %329, align 8, !tbaa !102, !noalias !165
  %936 = icmp eq i64 %935, 0
  br i1 %936, label %951, label %937

937:                                              ; preds = %934
  %938 = icmp ugt i64 %821, 64
  %939 = select i1 %938, i64 -65, i64 -1
  %940 = add i64 %939, %821
  %941 = shl nuw i64 1, %940
  %942 = and i64 %941, %935
  %943 = icmp eq i64 %942, 0
  br i1 %943, label %944, label %962

944:                                              ; preds = %937, %944
  %945 = phi i64 [ %948, %944 ], [ %941, %937 ]
  %946 = phi i64 [ %947, %944 ], [ %940, %937 ]
  %947 = add i64 %946, -1
  %948 = lshr i64 %945, 1
  %949 = and i64 %948, %935
  %950 = icmp eq i64 %949, 0
  br i1 %950, label %944, label %962, !llvm.loop !169

951:                                              ; preds = %934
  %952 = load i32, ptr %17, align 4, !tbaa !117, !noalias !165
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %956

954:                                              ; preds = %951
  %955 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %814, i32 noundef 0, ptr noundef nonnull @.str.49) #14, !noalias !165
  br label %956

956:                                              ; preds = %954, %951
  %957 = load i64, ptr %6, align 8, !tbaa.struct !144
  %958 = load i64, ptr %330, align 8, !tbaa.struct !146
  %959 = load i8, ptr %324, align 8, !tbaa.struct !109
  %960 = load i8, ptr %331, align 1, !tbaa.struct !147
  %961 = load i48, ptr %332, align 2, !tbaa.struct !161
  br label %1118

962:                                              ; preds = %927, %944, %937
  %963 = phi i64 [ %940, %937 ], [ %947, %944 ], [ %930, %927 ]
  %964 = getelementptr inbounds i8, ptr %3, i64 8
  %965 = getelementptr inbounds i8, ptr %3, i64 16
  %966 = getelementptr inbounds i8, ptr %6, i64 8
  store i8 1, ptr %325, align 8, !tbaa !98, !noalias !165
  store i8 1, ptr %324, align 8, !tbaa !98, !noalias !165
  %967 = xor i64 %963, -1
  %968 = add i64 %821, %967
  call fastcc void @num_lshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %3, ptr noundef nonnull byval(%struct.cpp_num) align 8 %5, i64 noundef %821, i64 noundef %968), !noalias !165
  %969 = icmp ugt i64 %821, 64
  %970 = add nsw i64 %821, -1
  %971 = shl nuw i64 1, %970
  %972 = add i64 %821, -65
  %973 = shl nuw i64 1, %972
  %974 = add nsw i64 %821, -1
  %975 = shl nuw i64 1, %974
  %976 = add i64 %821, -65
  %977 = shl nuw i64 1, %976
  br label %978

978:                                              ; preds = %1022, %962
  %979 = phi i64 [ 0, %962 ], [ %1019, %1022 ]
  %980 = phi i64 [ 0, %962 ], [ %1020, %1022 ]
  %981 = phi i64 [ %968, %962 ], [ %1023, %1022 ]
  %982 = load i64, ptr %3, align 8, !noalias !165
  %983 = load i64, ptr %964, align 8, !noalias !165
  %984 = load i8, ptr %965, align 8, !noalias !165
  %985 = load i64, ptr %6, align 8, !noalias !165
  %986 = load i64, ptr %966, align 8, !noalias !165
  %987 = load i8, ptr %324, align 8, !noalias !165
  %988 = icmp ne i8 %987, 0
  %989 = icmp ne i8 %984, 0
  %990 = select i1 %988, i1 true, i1 %989
  br i1 %990, label %1001, label %991

991:                                              ; preds = %978
  %992 = and i64 %985, %973
  %993 = and i64 %986, %971
  %994 = select i1 %969, i64 %992, i64 %993
  %995 = icmp eq i64 %994, 0
  %996 = and i64 %982, %977
  %997 = and i64 %983, %975
  %998 = select i1 %969, i64 %996, i64 %997
  %999 = icmp ne i64 %998, 0
  %1000 = xor i1 %995, %999
  br i1 %1000, label %1001, label %1007

1001:                                             ; preds = %991, %978
  %1002 = icmp ugt i64 %985, %982
  br i1 %1002, label %1009, label %1003

1003:                                             ; preds = %1001
  %1004 = icmp eq i64 %985, %982
  %1005 = icmp uge i64 %986, %983
  %1006 = select i1 %1004, i1 %1005, i1 false
  br label %1007

1007:                                             ; preds = %991, %1003
  %1008 = phi i1 [ %1006, %1003 ], [ %995, %991 ]
  br i1 %1008, label %1009, label %1018

1009:                                             ; preds = %1007, %1001
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14, !noalias !165
  call fastcc void @num_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %4, ptr noundef %0, ptr noundef nonnull byval(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i32 noundef 5), !noalias !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !144, !noalias !165
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14, !noalias !165
  %1010 = icmp ugt i64 %981, 63
  br i1 %1010, label %1011, label %1015

1011:                                             ; preds = %1009
  %1012 = add i64 %981, -64
  %1013 = shl nuw i64 1, %1012
  %1014 = or i64 %1013, %980
  br label %1018

1015:                                             ; preds = %1009
  %1016 = shl nuw i64 1, %981
  %1017 = or i64 %1016, %979
  br label %1018

1018:                                             ; preds = %1015, %1011, %1007
  %1019 = phi i64 [ %979, %1007 ], [ %979, %1011 ], [ %1017, %1015 ]
  %1020 = phi i64 [ %980, %1007 ], [ %1014, %1011 ], [ %980, %1015 ]
  %1021 = icmp eq i64 %981, 0
  br i1 %1021, label %1028, label %1022

1022:                                             ; preds = %1018
  %1023 = add i64 %981, -1
  %1024 = load i64, ptr %964, align 8, !tbaa !102, !noalias !165
  %1025 = load i64, ptr %3, align 8, !tbaa !135, !noalias !165
  %1026 = call i64 @llvm.fshl.i64(i64 %1025, i64 %1024, i64 63)
  store i64 %1026, ptr %964, align 8, !tbaa !102, !noalias !165
  %1027 = lshr i64 %1025, 1
  store i64 %1027, ptr %3, align 8, !tbaa !135, !noalias !165
  br label %978, !llvm.loop !170

1028:                                             ; preds = %1018
  %1029 = icmp eq i32 %389, 7
  br i1 %1029, label %1030, label %1069

1030:                                             ; preds = %1028
  br i1 %819, label %1118, label %1031

1031:                                             ; preds = %1030
  %1032 = icmp eq i8 %920, 0
  br i1 %1032, label %1053, label %1033

1033:                                             ; preds = %1031
  %1034 = xor i64 %1020, -1
  %1035 = sub i64 0, %1019
  %1036 = icmp eq i64 %1019, 0
  %1037 = sub i64 0, %1020
  %1038 = select i1 %1036, i64 %1037, i64 %1034
  %1039 = icmp ugt i64 %821, 64
  br i1 %1039, label %1040, label %1047

1040:                                             ; preds = %1033
  %1041 = add i64 %821, -64
  %1042 = icmp ult i64 %1041, 64
  br i1 %1042, label %1043, label %1053

1043:                                             ; preds = %1040
  %1044 = shl nsw i64 -1, %1041
  %1045 = xor i64 %1044, -1
  %1046 = and i64 %1038, %1045
  br label %1053

1047:                                             ; preds = %1033
  %1048 = icmp eq i64 %821, 64
  %1049 = shl nsw i64 -1, %821
  %1050 = xor i64 %1049, -1
  %1051 = select i1 %1048, i64 -1, i64 %1050
  %1052 = and i64 %1051, %1035
  br label %1053

1053:                                             ; preds = %1047, %1043, %1040, %1031
  %1054 = phi i8 [ %820, %1031 ], [ 0, %1047 ], [ 0, %1043 ], [ 0, %1040 ]
  %1055 = phi i64 [ %1019, %1031 ], [ %1052, %1047 ], [ %1035, %1043 ], [ %1035, %1040 ]
  %1056 = phi i64 [ %1020, %1031 ], [ 0, %1047 ], [ %1046, %1043 ], [ %1038, %1040 ]
  %1057 = icmp ugt i64 %821, 64
  %1058 = select i1 %1057, i64 -65, i64 -1
  %1059 = select i1 %1057, i64 %1056, i64 %1055
  %1060 = add i64 %821, %1058
  %1061 = shl nuw i64 1, %1060
  %1062 = and i64 %1059, %1061
  %1063 = or i64 %1056, %1055
  %1064 = icmp ne i64 %1063, 0
  %1065 = icmp eq i64 %1062, 0
  %1066 = xor i1 %1032, %1065
  %1067 = select i1 %1066, i1 %1064, i1 false
  %1068 = zext i1 %1067 to i8
  br label %1118

1069:                                             ; preds = %1028
  %1070 = getelementptr inbounds i8, ptr %6, i64 8
  %1071 = getelementptr inbounds i8, ptr %6, i64 17
  store i8 %820, ptr %324, align 8, !tbaa !98, !noalias !165
  store i8 0, ptr %1071, align 1, !tbaa !101, !noalias !165
  %1072 = icmp eq i8 %921, 0
  br i1 %1072, label %1111, label %1073

1073:                                             ; preds = %1069
  %1074 = load i64, ptr %6, align 8, !noalias !165
  %1075 = load i64, ptr %1070, align 8, !noalias !165
  %1076 = load i64, ptr %324, align 8, !noalias !165
  %1077 = xor i64 %1074, -1
  %1078 = sub i64 0, %1075
  %1079 = icmp eq i64 %1075, 0
  %1080 = sub i64 0, %1074
  %1081 = select i1 %1079, i64 %1080, i64 %1077
  %1082 = icmp ugt i64 %821, 64
  br i1 %1082, label %1083, label %1090

1083:                                             ; preds = %1073
  %1084 = add i64 %821, -64
  %1085 = icmp ult i64 %1084, 64
  br i1 %1085, label %1086, label %1096

1086:                                             ; preds = %1083
  %1087 = shl nsw i64 -1, %1084
  %1088 = xor i64 %1087, -1
  %1089 = and i64 %1081, %1088
  br label %1096

1090:                                             ; preds = %1073
  %1091 = icmp eq i64 %821, 64
  %1092 = shl nsw i64 -1, %821
  %1093 = xor i64 %1092, -1
  %1094 = select i1 %1091, i64 -1, i64 %1093
  %1095 = and i64 %1094, %1078
  br label %1096

1096:                                             ; preds = %1090, %1086, %1083
  %1097 = phi i64 [ %1078, %1086 ], [ %1078, %1083 ], [ %1095, %1090 ]
  %1098 = phi i64 [ %1089, %1086 ], [ %1081, %1083 ], [ 0, %1090 ]
  %1099 = and i64 %1076, 255
  %1100 = icmp eq i64 %1099, 0
  %1101 = icmp eq i64 %1097, %1075
  %1102 = select i1 %1100, i1 %1101, i1 false
  %1103 = icmp eq i64 %1098, %1074
  %1104 = select i1 %1102, i1 %1103, i1 false
  %1105 = or i64 %1098, %1097
  %1106 = icmp ne i64 %1105, 0
  %1107 = select i1 %1104, i1 %1106, i1 false
  %1108 = select i1 %1107, i64 256, i64 0
  %1109 = and i64 %1076, -65281
  %1110 = or disjoint i64 %1108, %1109
  store i64 %1098, ptr %6, align 8, !tbaa.struct !144, !noalias !165
  store i64 %1097, ptr %1070, align 8, !tbaa.struct !146, !noalias !165
  store i64 %1110, ptr %324, align 8, !tbaa.struct !109, !noalias !165
  br label %1111

1111:                                             ; preds = %1096, %1069
  %1112 = getelementptr inbounds i8, ptr %6, i64 18
  %1113 = load i64, ptr %6, align 8, !tbaa.struct !144
  %1114 = load i64, ptr %1070, align 8, !tbaa.struct !146
  %1115 = load i8, ptr %324, align 8, !tbaa.struct !109
  %1116 = load i8, ptr %1071, align 1, !tbaa.struct !147
  %1117 = load i48, ptr %1112, align 2, !tbaa.struct !161
  br label %1118

1118:                                             ; preds = %1111, %1053, %1030, %956
  %1119 = phi i48 [ %961, %956 ], [ %1117, %1111 ], [ 0, %1053 ], [ 0, %1030 ]
  %1120 = phi i8 [ %960, %956 ], [ %1116, %1111 ], [ %1068, %1053 ], [ 0, %1030 ]
  %1121 = phi i8 [ %959, %956 ], [ %1115, %1111 ], [ %1054, %1053 ], [ %820, %1030 ]
  %1122 = phi i64 [ %958, %956 ], [ %1114, %1111 ], [ %1055, %1053 ], [ %1019, %1030 ]
  %1123 = phi i64 [ %957, %956 ], [ %1113, %1111 ], [ %1056, %1053 ], [ %1020, %1030 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14, !noalias !165
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  store i64 %1123, ptr %811, align 8, !tbaa.struct !144
  %1124 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  store i64 %1122, ptr %1124, align 8, !tbaa.struct !146
  %1125 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  store i8 %1121, ptr %1125, align 8, !tbaa.struct !109
  %1126 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 3
  store i8 %1120, ptr %1126, align 1, !tbaa.struct !147
  %1127 = getelementptr i8, ptr %341, i64 -14
  store i48 %1119, ptr %1127, align 2, !tbaa.struct !161
  br label %1239

1128:                                             ; preds = %388
  %1129 = getelementptr inbounds %struct.op, ptr %341, i64 -1
  %1130 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  %1131 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  %1132 = load i64, ptr %1131, align 8, !tbaa !171
  %1133 = load i64, ptr %1130, align 8, !tbaa !172
  %1134 = or i64 %1133, %1132
  %1135 = icmp eq i64 %1134, 0
  br i1 %1135, label %1139, label %1136

1136:                                             ; preds = %1128
  %1137 = load i32, ptr %17, align 4, !tbaa !117
  %1138 = add i32 %1137, -1
  store i32 %1138, ptr %17, align 4, !tbaa !117
  br label %1146

1139:                                             ; preds = %1128
  %1140 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %1141 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %1142 = load i64, ptr %1141, align 8, !tbaa !171
  %1143 = load i64, ptr %1140, align 8, !tbaa !172
  %1144 = or i64 %1143, %1142
  %1145 = icmp ne i64 %1144, 0
  br label %1146

1146:                                             ; preds = %1136, %1139
  %1147 = phi i1 [ true, %1136 ], [ %1145, %1139 ]
  %1148 = zext i1 %1147 to i64
  store i64 %1148, ptr %1131, align 8, !tbaa !171
  store i64 0, ptr %1130, align 8, !tbaa !172
  %1149 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  store i8 0, ptr %1149, align 8, !tbaa !153
  %1150 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 3
  store i8 0, ptr %1150, align 1, !tbaa !173
  %1151 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  %1152 = load i32, ptr %1151, align 8, !tbaa !154
  %1153 = getelementptr %struct.op, ptr %341, i64 -1, i32 2
  store i32 %1152, ptr %1153, align 8, !tbaa !154
  br label %1154

1154:                                             ; preds = %1146, %1185, %1230
  %1155 = phi ptr [ %1207, %1230 ], [ %1168, %1185 ], [ %1129, %1146 ]
  %1156 = getelementptr inbounds %struct.op, ptr %1155, i64 0, i32 3
  %1157 = load i32, ptr %1156, align 4, !tbaa !119
  %1158 = zext i32 %1157 to i64
  %1159 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %1158
  %1160 = load i8, ptr %1159, align 2, !tbaa !150
  %1161 = zext i8 %1160 to i32
  %1162 = icmp ult i32 %312, %1161
  br i1 %1162, label %1163, label %1260

1163:                                             ; preds = %1154, %1252
  %1164 = phi i64 [ %1158, %1154 ], [ %1255, %1252 ]
  %1165 = phi ptr [ %1156, %1154 ], [ %1253, %1252 ]
  %1166 = phi ptr [ %1155, %1154 ], [ %1243, %1252 ]
  br label %338, !llvm.loop !174

1167:                                             ; preds = %388
  %1168 = getelementptr inbounds %struct.op, ptr %341, i64 -1
  %1169 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  %1170 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 1
  %1171 = load i64, ptr %1170, align 8, !tbaa !171
  %1172 = load i64, ptr %1169, align 8, !tbaa !172
  %1173 = or i64 %1172, %1171
  %1174 = icmp eq i64 %1173, 0
  br i1 %1174, label %1175, label %1178

1175:                                             ; preds = %1167
  %1176 = load i32, ptr %17, align 4, !tbaa !117
  %1177 = add i32 %1176, -1
  store i32 %1177, ptr %17, align 4, !tbaa !117
  br label %1185

1178:                                             ; preds = %1167
  %1179 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  %1180 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 1
  %1181 = load i64, ptr %1180, align 8, !tbaa !171
  %1182 = load i64, ptr %1179, align 8, !tbaa !172
  %1183 = or i64 %1182, %1181
  %1184 = icmp ne i64 %1183, 0
  br label %1185

1185:                                             ; preds = %1175, %1178
  %1186 = phi i1 [ false, %1175 ], [ %1184, %1178 ]
  %1187 = zext i1 %1186 to i64
  store i64 %1187, ptr %1170, align 8, !tbaa !171
  store i64 0, ptr %1169, align 8, !tbaa !172
  %1188 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  store i8 0, ptr %1188, align 8, !tbaa !153
  %1189 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 3
  store i8 0, ptr %1189, align 1, !tbaa !173
  %1190 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  %1191 = load i32, ptr %1190, align 8, !tbaa !154
  %1192 = getelementptr %struct.op, ptr %341, i64 -1, i32 2
  store i32 %1191, ptr %1192, align 8, !tbaa !154
  br label %1154

1193:                                             ; preds = %388
  %1194 = icmp eq i32 %251, 21
  br i1 %1194, label %1199, label %1195

1195:                                             ; preds = %1193
  %1196 = load ptr, ptr %341, align 8, !tbaa !149
  %1197 = load i32, ptr %1196, align 8, !tbaa !175
  %1198 = call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef %1197, i32 noundef 0, ptr noundef nonnull @.str.41) #14
  br label %1265

1199:                                             ; preds = %1193
  %1200 = getelementptr inbounds %struct.op, ptr %341, i64 -1
  %1201 = getelementptr %struct.op, ptr %341, i64 -1, i32 1
  %1202 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1201, ptr noundef nonnull align 8 dereferenceable(24) %1202, i64 24, i1 false), !tbaa.struct !144
  %1203 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 2
  %1204 = load i32, ptr %1203, align 8, !tbaa !154
  %1205 = getelementptr %struct.op, ptr %341, i64 -1, i32 2
  store i32 %1204, ptr %1205, align 8, !tbaa !154
  br label %1265

1206:                                             ; preds = %388
  %1207 = getelementptr inbounds %struct.op, ptr %341, i64 -2
  %1208 = getelementptr %struct.op, ptr %341, i64 -2, i32 1
  %1209 = getelementptr %struct.op, ptr %341, i64 -2, i32 1, i32 1
  %1210 = load i64, ptr %1209, align 8, !tbaa !171
  %1211 = load i64, ptr %1208, align 8, !tbaa !172
  %1212 = or i64 %1211, %1210
  %1213 = icmp eq i64 %1212, 0
  br i1 %1213, label %1217, label %1214

1214:                                             ; preds = %1206
  %1215 = load i32, ptr %17, align 4, !tbaa !117
  %1216 = add i32 %1215, -1
  store i32 %1216, ptr %17, align 4, !tbaa !117
  br label %1217

1217:                                             ; preds = %1206, %1214
  %1218 = phi i64 [ -1, %1214 ], [ 0, %1206 ]
  %1219 = getelementptr %struct.op, ptr %341, i64 %1218, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1208, ptr noundef nonnull align 8 dereferenceable(24) %1219, i64 24, i1 false)
  %1220 = getelementptr %struct.op, ptr %341, i64 %1218, i32 2
  %1221 = load i32, ptr %1220, align 8, !tbaa !154
  %1222 = getelementptr %struct.op, ptr %341, i64 -2, i32 2
  store i32 %1221, ptr %1222, align 8, !tbaa !154
  %1223 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 2
  %1224 = load i8, ptr %1223, align 8, !tbaa !153
  %1225 = icmp eq i8 %1224, 0
  br i1 %1225, label %1226, label %1230

1226:                                             ; preds = %1217
  %1227 = getelementptr inbounds %struct.op, ptr %341, i64 0, i32 1, i32 2
  %1228 = load i8, ptr %1227, align 8, !tbaa !153
  %1229 = icmp ne i8 %1228, 0
  br label %1230

1230:                                             ; preds = %1226, %1217
  %1231 = phi i1 [ true, %1217 ], [ %1229, %1226 ]
  %1232 = zext i1 %1231 to i8
  %1233 = getelementptr %struct.op, ptr %341, i64 -2, i32 1, i32 2
  store i8 %1232, ptr %1233, align 8, !tbaa !153
  br label %1154

1234:                                             ; preds = %388
  %1235 = and i32 %251, 254
  %1236 = icmp eq i32 %1235, 18
  br i1 %1236, label %1265, label %1237

1237:                                             ; preds = %1234
  %1238 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.42) #14
  br label %1265

1239:                                             ; preds = %1118, %804, %589, %542, %538, %478, %471
  %1240 = phi ptr [ %813, %1118 ], [ %809, %804 ], [ %592, %589 ], [ %560, %542 ], [ %541, %538 ], [ %481, %478 ], [ %477, %471 ]
  %1241 = load i32, ptr %1240, align 8, !tbaa !154
  %1242 = getelementptr %struct.op, ptr %341, i64 -1, i32 2
  store i32 %1241, ptr %1242, align 8, !tbaa !154
  %1243 = getelementptr inbounds %struct.op, ptr %341, i64 -1
  %1244 = getelementptr %struct.op, ptr %341, i64 -1, i32 1, i32 3
  %1245 = load i8, ptr %1244, align 1, !tbaa !173
  %1246 = icmp eq i8 %1245, 0
  br i1 %1246, label %1252, label %1247

1247:                                             ; preds = %1239
  %1248 = load i32, ptr %17, align 4, !tbaa !117
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1250, label %1252

1250:                                             ; preds = %1247
  %1251 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.43) #14
  br label %1252

1252:                                             ; preds = %1250, %1247, %1239
  %1253 = getelementptr %struct.op, ptr %341, i64 -1, i32 3
  %1254 = load i32, ptr %1253, align 4, !tbaa !119
  %1255 = zext i32 %1254 to i64
  %1256 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %1255
  %1257 = load i8, ptr %1256, align 2, !tbaa !150
  %1258 = zext i8 %1257 to i32
  %1259 = icmp ult i32 %312, %1258
  br i1 %1259, label %1163, label %1260

1260:                                             ; preds = %1252, %1154, %305
  %1261 = phi ptr [ %32, %305 ], [ %1243, %1252 ], [ %1155, %1154 ]
  %1262 = icmp eq i32 %251, 21
  br i1 %1262, label %1263, label %1265

1263:                                             ; preds = %1260
  %1264 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.44) #14
  br label %1265

1265:                                             ; preds = %298, %303, %1195, %1199, %1234, %1237, %1260, %1263
  %1266 = phi ptr [ null, %298 ], [ null, %1237 ], [ null, %1195 ], [ %1200, %1199 ], [ null, %1263 ], [ %32, %303 ], [ %341, %1234 ], [ %1261, %1260 ]
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1333, label %1268

1268:                                             ; preds = %1265
  %1269 = icmp eq i32 %251, 22
  br i1 %1269, label %1333, label %1270

1270:                                             ; preds = %1268
  %1271 = trunc i32 %251 to i8
  switch i8 %1271, label %1312 [
    i8 21, label %1333
    i8 16, label %1272
    i8 15, label %1282
    i8 17, label %1282
    i8 18, label %1292
  ], !llvm.loop !148

1272:                                             ; preds = %1270
  %1273 = getelementptr inbounds %struct.op, ptr %1266, i64 0, i32 1
  %1274 = getelementptr inbounds %struct.op, ptr %1266, i64 0, i32 1, i32 1
  %1275 = load i64, ptr %1274, align 8, !tbaa !171
  %1276 = load i64, ptr %1273, align 8, !tbaa !172
  %1277 = or i64 %1276, %1275
  %1278 = icmp eq i64 %1277, 0
  br i1 %1278, label %1312, label %1279

1279:                                             ; preds = %1272
  %1280 = load i32, ptr %17, align 4, !tbaa !117
  %1281 = add i32 %1280, 1
  br label %1310

1282:                                             ; preds = %1270, %1270
  %1283 = getelementptr inbounds %struct.op, ptr %1266, i64 0, i32 1
  %1284 = getelementptr inbounds %struct.op, ptr %1266, i64 0, i32 1, i32 1
  %1285 = load i64, ptr %1284, align 8, !tbaa !171
  %1286 = load i64, ptr %1283, align 8, !tbaa !172
  %1287 = or i64 %1286, %1285
  %1288 = icmp eq i64 %1287, 0
  br i1 %1288, label %1289, label %1312

1289:                                             ; preds = %1282
  %1290 = load i32, ptr %17, align 4, !tbaa !117
  %1291 = add i32 %1290, 1
  br label %1310

1292:                                             ; preds = %1270
  %1293 = getelementptr inbounds %struct.op, ptr %1266, i64 0, i32 3
  %1294 = load i32, ptr %1293, align 4, !tbaa !119
  %1295 = icmp eq i32 %1294, 17
  br i1 %1295, label %1298, label %1296

1296:                                             ; preds = %1292
  %1297 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.29) #14
  br label %1333

1298:                                             ; preds = %1292
  %1299 = getelementptr %struct.op, ptr %1266, i64 -1, i32 1
  %1300 = getelementptr %struct.op, ptr %1266, i64 -1, i32 1, i32 1
  %1301 = load i64, ptr %1300, align 8, !tbaa !171
  %1302 = load i64, ptr %1299, align 8, !tbaa !172
  %1303 = or i64 %1302, %1301
  %1304 = icmp eq i64 %1303, 0
  %1305 = load i32, ptr %17, align 4, !tbaa !117
  br i1 %1304, label %1308, label %1306

1306:                                             ; preds = %1298
  %1307 = add i32 %1305, 1
  br label %1310

1308:                                             ; preds = %1298
  %1309 = add i32 %1305, -1
  br label %1310

1310:                                             ; preds = %1279, %1289, %1306, %1308
  %1311 = phi i32 [ %1309, %1308 ], [ %1307, %1306 ], [ %1291, %1289 ], [ %1281, %1279 ]
  store i32 %1311, ptr %17, align 4, !tbaa !117
  br label %1312

1312:                                             ; preds = %1310, %1270, %1282, %1272
  %1313 = getelementptr inbounds %struct.op, ptr %1266, i64 1
  %1314 = load ptr, ptr %27, align 8, !tbaa !176
  %1315 = icmp eq ptr %1313, %1314
  br i1 %1315, label %1316, label %1328

1316:                                             ; preds = %1312
  %1317 = load ptr, ptr %15, align 8, !tbaa !116
  %1318 = ptrtoint ptr %1314 to i64
  %1319 = ptrtoint ptr %1317 to i64
  %1320 = sub i64 %1318, %1319
  %1321 = sdiv exact i64 %1320, 40
  %1322 = shl nsw i64 %1321, 1
  %1323 = add nsw i64 %1322, 20
  %1324 = mul i64 %1323, 40
  %1325 = call ptr @xrealloc(ptr noundef %1317, i64 noundef %1324) #14
  store ptr %1325, ptr %15, align 8, !tbaa !116
  %1326 = getelementptr inbounds %struct.op, ptr %1325, i64 %1323
  store ptr %1326, ptr %27, align 8, !tbaa !176
  %1327 = getelementptr inbounds i8, ptr %1325, i64 %1320
  br label %1328

1328:                                             ; preds = %1316, %1312
  %1329 = phi ptr [ %1327, %1316 ], [ %1313, %1312 ]
  %1330 = getelementptr inbounds %struct.op, ptr %1329, i64 0, i32 3
  store i32 %251, ptr %1330, align 4, !tbaa !119
  store ptr %34, ptr %1329, align 8, !tbaa !149
  %1331 = load i32, ptr %34, align 8, !tbaa !175
  %1332 = getelementptr inbounds %struct.op, ptr %1329, i64 0, i32 2
  store i32 %1331, ptr %1332, align 8, !tbaa !154
  br label %1333

1333:                                             ; preds = %1270, %1268, %1265, %1296, %290, %283, %276, %268, %258, %246, %39, %1328, %232
  %1334 = phi i8 [ %29, %246 ], [ %250, %1328 ], [ %250, %1296 ], [ %250, %258 ], [ %250, %268 ], [ %250, %276 ], [ %250, %283 ], [ %250, %290 ], [ %29, %232 ], [ %29, %39 ], [ %250, %1265 ], [ %250, %1268 ], [ %250, %1270 ]
  %1335 = phi i8 [ %30, %246 ], [ 1, %1328 ], [ %30, %1296 ], [ 0, %258 ], [ 1, %268 ], [ 1, %276 ], [ 1, %283 ], [ 1, %290 ], [ 0, %232 ], [ 0, %39 ], [ %30, %1265 ], [ %30, %1268 ], [ %30, %1270 ]
  %1336 = phi ptr [ %32, %246 ], [ %1329, %1328 ], [ %1266, %1296 ], [ %32, %258 ], [ %32, %268 ], [ %32, %276 ], [ %32, %283 ], [ %32, %290 ], [ %32, %232 ], [ %32, %39 ], [ null, %1265 ], [ %1266, %1268 ], [ %1266, %1270 ]
  %1337 = phi i32 [ 7, %246 ], [ 0, %1328 ], [ 7, %1296 ], [ 7, %258 ], [ 7, %268 ], [ 7, %276 ], [ 7, %283 ], [ 7, %290 ], [ 3, %232 ], [ 7, %39 ], [ 7, %1265 ], [ 2, %1268 ], [ 3, %1270 ]
  switch i32 %1337, label %1362 [
    i32 0, label %1338
    i32 3, label %1338
    i32 2, label %1339
  ]

1338:                                             ; preds = %1333, %1333
  br label %28, !llvm.loop !148

1339:                                             ; preds = %1333
  %1340 = load ptr, ptr %18, align 8, !tbaa !118
  %1341 = icmp eq ptr %1340, null
  br i1 %1341, label %1347, label %1342

1342:                                             ; preds = %1339
  %1343 = icmp ne i8 %1334, 0
  %1344 = icmp eq i32 %33, 3
  %1345 = select i1 %1343, i1 %1344, i1 false
  br i1 %1345, label %1347, label %1346

1346:                                             ; preds = %1342
  store ptr null, ptr %18, align 8, !tbaa !118
  br label %1347

1347:                                             ; preds = %1342, %1346, %1339
  %1348 = load ptr, ptr %15, align 8, !tbaa !116
  %1349 = icmp eq ptr %1336, %1348
  br i1 %1349, label %1354, label %1350

1350:                                             ; preds = %1347
  %1351 = icmp eq i8 %1, 0
  %1352 = select i1 %1351, ptr @.str.26, ptr @.str.25
  %1353 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.30, ptr noundef nonnull %1352) #14
  br label %1362

1354:                                             ; preds = %1347
  %1355 = getelementptr inbounds %struct.op, ptr %1336, i64 0, i32 1
  %1356 = getelementptr inbounds %struct.op, ptr %1336, i64 0, i32 1, i32 1
  %1357 = load i64, ptr %1356, align 8, !tbaa !171
  %1358 = load i64, ptr %1355, align 8, !tbaa !172
  %1359 = or i64 %1358, %1357
  %1360 = icmp ne i64 %1359, 0
  %1361 = zext i1 %1360 to i8
  br label %1362

1362:                                             ; preds = %1333, %1350, %1354
  %1363 = phi i8 [ %1361, %1354 ], [ 0, %1350 ], [ 0, %1333 ]
  ret i8 %1363
}

declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #1

declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_expand_op_stack(ptr nocapture noundef %0) local_unnamed_addr #6 !prof !177 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = shl nsw i64 %9, 1
  %11 = add nsw i64 %10, 20
  %12 = mul i64 %11, 40
  %13 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %12) #14
  store ptr %13, ptr %4, align 8, !tbaa !116
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 %11
  store ptr %14, ptr %2, align 8, !tbaa !176
  %15 = getelementptr inbounds i8, ptr %13, i64 %8
  ret ptr %15
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cpp_num_sign_extend(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) local_unnamed_addr #7 !prof !45 {
  %4 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !98
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %39, !prof !178

7:                                                ; preds = %3
  %8 = icmp ugt i64 %2, 64
  br i1 %8, label %9, label %23, !prof !179

9:                                                ; preds = %7
  %10 = and i64 %2, -64
  %11 = icmp eq i64 %10, 64
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i64, ptr %1, align 8, !tbaa !135
  %14 = add nsw i64 %2, -65
  %15 = shl nuw nsw i64 1, %14
  %16 = and i64 %13, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %12
  %19 = sub nuw nsw i64 128, %2
  %20 = lshr i64 -1, %19
  %21 = xor i64 %20, -1
  %22 = or i64 %13, %21
  br label %37

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !102
  %26 = add nsw i64 %2, -1
  %27 = shl nuw i64 1, %26
  %28 = and i64 %25, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30, !prof !180

30:                                               ; preds = %23
  %31 = icmp eq i64 %2, 64
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = sub nuw nsw i64 64, %2
  %34 = lshr i64 -1, %33
  %35 = xor i64 %34, -1
  %36 = or i64 %25, %35
  store i64 %36, ptr %24, align 8, !tbaa !102
  br label %37

37:                                               ; preds = %30, %32, %18
  %38 = phi i64 [ %22, %18 ], [ -1, %32 ], [ -1, %30 ]
  store i64 %38, ptr %1, align 8, !tbaa !135
  br label %39

39:                                               ; preds = %37, %12, %9, %23, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !144
  ret void
}

declare i32 @cpp_interpret_charconst(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cpp_test_assertion(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: cold nounwind uwtable
define internal fastcc void @num_binary_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef byval(%struct.cpp_num) align 8 %3, i32 noundef %4) unnamed_addr #6 !prof !38 {
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %11 = load i64, ptr %10, align 8, !tbaa !103
  switch i32 %4, label %105 [
    i32 13, label %12
    i32 12, label %12
    i32 5, label %39
    i32 4, label %40
  ]

12:                                               ; preds = %5, %5
  %13 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !98
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = icmp ugt i64 %11, 64
  %18 = select i1 %17, i64 0, i64 8
  %19 = getelementptr inbounds i8, ptr %3, i64 %18
  %20 = select i1 %17, i64 -65, i64 -1
  %21 = load i64, ptr %19, align 8
  %22 = add i64 %11, %20
  %23 = shl nuw i64 1, %22
  %24 = and i64 %21, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = icmp eq i32 %4, 13
  %28 = select i1 %27, i32 12, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  br label %29

29:                                               ; preds = %26, %16, %12
  %30 = phi i32 [ %4, %12 ], [ %4, %16 ], [ %28, %26 ]
  %31 = load i64, ptr %3, align 8, !tbaa !135
  %32 = icmp eq i64 %31, 0
  %33 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = select i1 %32, i64 %34, i64 -1
  %36 = icmp eq i32 %30, 13
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call fastcc void @num_lshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %11, i64 noundef %35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %120

38:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call fastcc void @num_rshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %8, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %11, i64 noundef %35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  br label %120

39:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  br label %40

40:                                               ; preds = %5, %39
  %41 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %44, %42
  %46 = load i64, ptr %2, align 8
  %47 = load i64, ptr %3, align 8
  %48 = add i64 %47, %46
  %49 = icmp ult i64 %45, %42
  %50 = zext i1 %49 to i64
  %51 = add i64 %48, %50
  %52 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %53 = load i8, ptr %52, align 8, !tbaa !98
  %54 = icmp ne i8 %53, 0
  %55 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %56 = load i8, ptr %55, align 8
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %54, i1 true, i1 %57
  %59 = zext i1 %58 to i8
  %60 = icmp ugt i64 %11, 64
  br i1 %60, label %61, label %68

61:                                               ; preds = %40
  %62 = add i64 %11, -64
  %63 = icmp ult i64 %62, 64
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = shl nsw i64 -1, %62
  %66 = xor i64 %65, -1
  %67 = and i64 %51, %66
  br label %74

68:                                               ; preds = %40
  %69 = icmp eq i64 %11, 64
  %70 = shl nsw i64 -1, %11
  %71 = xor i64 %70, -1
  %72 = select i1 %69, i64 -1, i64 %71
  %73 = and i64 %45, %72
  br label %74

74:                                               ; preds = %61, %64, %68
  %75 = phi i64 [ %67, %64 ], [ %51, %61 ], [ %73, %68 ]
  %76 = phi i64 [ %67, %64 ], [ %51, %61 ], [ 0, %68 ]
  %77 = phi i64 [ %45, %64 ], [ %45, %61 ], [ %73, %68 ]
  br i1 %58, label %100, label %78

78:                                               ; preds = %74
  %79 = select i1 %60, i64 -65, i64 -1
  %80 = select i1 %60, i64 %46, i64 %42
  %81 = add i64 %11, %79
  %82 = shl nuw i64 1, %81
  %83 = and i64 %80, %82
  %84 = icmp eq i64 %83, 0
  %85 = select i1 %60, i64 -65, i64 -1
  %86 = select i1 %60, i64 %47, i64 %44
  %87 = add i64 %11, %85
  %88 = shl nuw i64 1, %87
  %89 = and i64 %86, %88
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %84, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %78
  %93 = select i1 %60, i64 -65, i64 -1
  %94 = add i64 %11, %93
  %95 = shl nuw i64 1, %94
  %96 = and i64 %75, %95
  %97 = icmp eq i64 %96, 0
  %98 = xor i1 %84, %97
  %99 = zext i1 %98 to i8
  br label %100

100:                                              ; preds = %78, %92, %74
  %101 = phi i8 [ 0, %74 ], [ 0, %78 ], [ %99, %92 ]
  store i64 %76, ptr %0, align 8, !tbaa.struct !144
  %102 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %77, ptr %102, align 8, !tbaa.struct !146
  %103 = getelementptr inbounds i8, ptr %0, i64 16
  store i8 %59, ptr %103, align 8, !tbaa.struct !109
  %104 = getelementptr inbounds i8, ptr %0, i64 17
  store i8 %101, ptr %104, align 1, !tbaa.struct !147
  br label %121

105:                                              ; preds = %5
  %106 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 31
  %107 = load i8, ptr %106, align 1, !tbaa !61
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 29
  %111 = load i8, ptr %110, align 1, !tbaa !78
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %115 = load i32, ptr %114, align 4, !tbaa !117
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113, %109
  %118 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.48) #14
  br label %119

119:                                              ; preds = %117, %113, %105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !144
  br label %120

120:                                              ; preds = %37, %38, %119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !144
  br label %121

121:                                              ; preds = %120, %100
  ret void
}

declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_negate(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) unnamed_addr #9 !prof !38 {
  %4 = load i64, ptr %1, align 8
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = xor i64 %4, -1
  store i64 %7, ptr %1, align 8, !tbaa !135
  %8 = sub i64 0, %6
  store i64 %8, ptr %5, align 8, !tbaa !102
  %9 = icmp eq i64 %6, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = sub i64 0, %4
  store i64 %11, ptr %1, align 8, !tbaa !135
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i64, ptr %1, align 8
  %14 = icmp ugt i64 %2, 64
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = add i64 %2, -64
  %17 = icmp ult i64 %16, 64
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = shl nsw i64 -1, %16
  %20 = xor i64 %19, -1
  %21 = and i64 %13, %20
  br label %28

22:                                               ; preds = %12
  %23 = icmp eq i64 %2, 64
  %24 = shl nsw i64 -1, %2
  %25 = xor i64 %24, -1
  %26 = select i1 %23, i64 -1, i64 %25
  %27 = and i64 %26, %8
  br label %28

28:                                               ; preds = %15, %18, %22
  %29 = phi i64 [ %8, %18 ], [ %8, %15 ], [ %27, %22 ]
  %30 = phi i64 [ %21, %18 ], [ %13, %15 ], [ 0, %22 ]
  %31 = getelementptr inbounds i8, ptr %1, i64 16
  store i64 %30, ptr %1, align 8, !tbaa.struct !144
  store i64 %29, ptr %5, align 8, !tbaa.struct !146
  %32 = load i8, ptr %31, align 8, !tbaa !98
  %33 = icmp eq i8 %32, 0
  %34 = icmp eq i64 %29, %6
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp eq i64 %30, %4
  %37 = select i1 %35, i1 %36, i1 false
  %38 = or i64 %30, %29
  %39 = icmp ne i64 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %41, ptr %42, align 1, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !144
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_lshift(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 !prof !38 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = icmp ult i64 %3, %2
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !98
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !102
  %14 = load i64, ptr %1, align 8, !tbaa !135
  %15 = or i64 %14, %13
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i8 [ 0, %7 ], [ %17, %11 ]
  %20 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %19, ptr %20, align 1, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %73

21:                                               ; preds = %4
  %22 = load i64, ptr %1, align 8, !tbaa.struct !144
  %23 = getelementptr inbounds i8, ptr %1, i64 8
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds i8, ptr %1, i64 16
  %26 = icmp ugt i64 %3, 63
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = add i64 %3, -64
  store i64 %24, ptr %1, align 8, !tbaa !135
  store i64 0, ptr %23, align 8, !tbaa !102
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i64 [ %28, %27 ], [ %3, %21 ]
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i64, ptr %1, align 8, !tbaa !135
  %34 = shl i64 %33, %30
  %35 = load i64, ptr %23, align 8, !tbaa !102
  %36 = sub i64 64, %30
  %37 = lshr i64 %35, %36
  %38 = or i64 %37, %34
  store i64 %38, ptr %1, align 8, !tbaa !135
  %39 = shl i64 %35, %30
  store i64 %39, ptr %23, align 8, !tbaa !102
  br label %40

40:                                               ; preds = %32, %29
  %41 = load i64, ptr %1, align 8
  %42 = load i64, ptr %23, align 8
  %43 = icmp ugt i64 %2, 64
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = add i64 %2, -64
  %46 = icmp ult i64 %45, 64
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = shl nsw i64 -1, %45
  %49 = xor i64 %48, -1
  %50 = and i64 %41, %49
  br label %57

51:                                               ; preds = %40
  %52 = icmp eq i64 %2, 64
  %53 = shl nsw i64 -1, %2
  %54 = xor i64 %53, -1
  %55 = select i1 %52, i64 -1, i64 %54
  %56 = and i64 %42, %55
  br label %57

57:                                               ; preds = %44, %47, %51
  %58 = phi i64 [ %42, %47 ], [ %42, %44 ], [ %56, %51 ]
  %59 = phi i64 [ %50, %47 ], [ %41, %44 ], [ 0, %51 ]
  store i64 %59, ptr %1, align 8, !tbaa.struct !144
  store i64 %58, ptr %23, align 8, !tbaa.struct !146
  %60 = load i8, ptr %25, align 8, !tbaa !98
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %63, align 1, !tbaa !101
  br label %73

64:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call fastcc void @num_rshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3)
  %65 = load i64, ptr %5, align 8, !tbaa.struct !144
  %66 = getelementptr inbounds i8, ptr %5, i64 8
  %67 = load i64, ptr %66, align 8, !tbaa.struct !146
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %68 = icmp ne i64 %24, %67
  %69 = icmp ne i64 %22, %65
  %70 = select i1 %68, i1 true, i1 %69
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %71, ptr %72, align 1, !tbaa !101
  br label %73

73:                                               ; preds = %62, %64, %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !144
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_rshift(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 !prof !38 {
  %5 = getelementptr inbounds i8, ptr %1, i64 8
  %6 = getelementptr inbounds i8, ptr %1, i64 16
  %7 = icmp ugt i64 %2, 64
  %8 = select i1 %7, i64 -65, i64 -1
  %9 = load i64, ptr %1, align 8
  %10 = load i64, ptr %5, align 8
  %11 = select i1 %7, i64 %9, i64 %10
  %12 = add i64 %8, %2
  %13 = shl nuw i64 1, %12
  %14 = and i64 %11, %13
  %15 = icmp ne i64 %14, 0
  %16 = load i8, ptr %6, align 8, !tbaa !98
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i1 %15, i1 false
  %19 = sext i1 %18 to i64
  %20 = icmp ult i64 %3, %2
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i64 %19, ptr %5, align 8, !tbaa !102
  br label %53

22:                                               ; preds = %4
  %23 = icmp ult i64 %2, 64
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store i64 %19, ptr %1, align 8, !tbaa !135
  br label %29

25:                                               ; preds = %22
  %26 = icmp ult i64 %2, 128
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = add nsw i64 %2, -64
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi i64 [ %28, %27 ], [ %2, %24 ]
  %31 = phi ptr [ %1, %27 ], [ %5, %24 ]
  %32 = shl nsw i64 %19, %30
  %33 = load i64, ptr %31, align 8, !tbaa !145
  %34 = or i64 %33, %32
  store i64 %34, ptr %31, align 8, !tbaa !145
  br label %35

35:                                               ; preds = %29, %25
  %36 = icmp ugt i64 %3, 63
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = add i64 %3, -64
  %39 = load i64, ptr %1, align 8, !tbaa !135
  store i64 %39, ptr %5, align 8, !tbaa !102
  store i64 %19, ptr %1, align 8, !tbaa !135
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i64 [ %38, %37 ], [ %3, %35 ]
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %5, align 8, !tbaa !102
  %45 = lshr i64 %44, %41
  %46 = load i64, ptr %1, align 8, !tbaa !135
  %47 = sub i64 64, %41
  %48 = shl i64 %46, %47
  %49 = or i64 %48, %45
  store i64 %49, ptr %5, align 8, !tbaa !102
  %50 = lshr i64 %46, %41
  %51 = shl nsw i64 %19, %47
  %52 = or i64 %50, %51
  br label %53

53:                                               ; preds = %21, %43
  %54 = phi i64 [ %52, %43 ], [ %19, %21 ]
  store i64 %54, ptr %1, align 8, !tbaa !135
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i64, ptr %1, align 8
  %57 = load i64, ptr %5, align 8
  br i1 %7, label %58, label %65

58:                                               ; preds = %55
  %59 = add i64 %2, -64
  %60 = icmp ult i64 %59, 64
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = shl nsw i64 -1, %59
  %63 = xor i64 %62, -1
  %64 = and i64 %56, %63
  br label %71

65:                                               ; preds = %55
  %66 = icmp eq i64 %2, 64
  %67 = shl nsw i64 -1, %2
  %68 = xor i64 %67, -1
  %69 = select i1 %66, i64 -1, i64 %68
  %70 = and i64 %57, %69
  br label %71

71:                                               ; preds = %58, %61, %65
  %72 = phi i64 [ %64, %61 ], [ %56, %58 ], [ 0, %65 ]
  %73 = phi i64 [ %57, %61 ], [ %57, %58 ], [ %70, %65 ]
  store i64 %72, ptr %1, align 8, !tbaa.struct !144
  store i64 %73, ptr %5, align 8, !tbaa.struct !146
  %74 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %74, align 1, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !144
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @cpp_classify_number, ptr @interpret_float_suffix, i64 50143}
!36 = !{ptr @_cpp_expand_op_stack, ptr @xrealloc, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !41, i64 0}
!45 = !{!"function_entry_count", i64 125453}
!46 = !{!41, !41, i64 0}
!47 = !{!"branch_weights", i32 68090, i32 57363}
!48 = !{!"branch_weights", i32 7220, i32 50143}
!49 = !{!"branch_weights", i32 0, i32 21660, i32 0, i32 0, i32 0}
!50 = !{!"branch_weights", i32 0, i32 7220}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !41, i64 0}
!53 = !{!"branch_weights", i32 61051, i32 159491}
!54 = !{!"branch_weights", i32 3688, i32 57363}
!55 = !{!"branch_weights", i32 0, i32 57363}
!56 = !{!"branch_weights", i32 0, i32 163179, i32 57363}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"branch_weights", i32 50143, i32 7220}
!60 = !{!"branch_weights", i32 50143, i32 0}
!61 = !{!62, !41, i64 1077}
!62 = !{!"cpp_reader", !40, i64 0, !40, i64 8, !63, i64 16, !40, i64 40, !44, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !64, i64 80, !40, i64 136, !40, i64 144, !65, i64 152, !44, i64 176, !41, i64 180, !40, i64 184, !40, i64 192, !66, i64 200, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !68, i64 312, !41, i64 400, !41, i64 401, !40, i64 408, !40, i64 416, !41, i64 424, !40, i64 432, !69, i64 440, !40, i64 472, !44, i64 480, !44, i64 484, !40, i64 488, !44, i64 496, !70, i64 504, !70, i64 528, !70, i64 552, !70, i64 576, !70, i64 600, !40, i64 624, !40, i64 632, !65, i64 640, !65, i64 664, !40, i64 688, !68, i64 696, !68, i64 784, !40, i64 872, !71, i64 880, !40, i64 1016, !40, i64 1024, !40, i64 1032, !72, i64 1040, !74, i64 1168, !41, i64 1200, !75, i64 1208, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !44, i64 1272, !76, i64 1280, !40, i64 1296}
!63 = !{!"lexer_state", !41, i64 0, !41, i64 1, !41, i64 2, !41, i64 3, !41, i64 4, !41, i64 5, !41, i64 6, !41, i64 7, !41, i64 8, !41, i64 9, !41, i64 10, !44, i64 12, !41, i64 16, !41, i64 17}
!64 = !{!"cpp_context", !40, i64 0, !40, i64 8, !41, i64 16, !40, i64 32, !40, i64 40, !41, i64 48}
!65 = !{!"cpp_token", !44, i64 0, !44, i64 4, !52, i64 6, !41, i64 8}
!66 = !{!"cpp_dir", !40, i64 0, !40, i64 8, !44, i64 16, !41, i64 20, !41, i64 21, !40, i64 24, !40, i64 32, !40, i64 40, !67, i64 48, !67, i64 56}
!67 = !{!"long", !41, i64 0}
!68 = !{!"obstack", !67, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !67, i64 40, !44, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !44, i64 80, !44, i64 80, !44, i64 80}
!69 = !{!"tokenrun", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!70 = !{!"cset_converter", !40, i64 0, !40, i64 8, !44, i64 16}
!71 = !{!"cpp_callbacks", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128}
!72 = !{!"cpp_options", !44, i64 0, !44, i64 4, !41, i64 8, !41, i64 9, !41, i64 10, !41, i64 11, !41, i64 12, !41, i64 13, !41, i64 14, !41, i64 15, !41, i64 16, !41, i64 17, !41, i64 18, !41, i64 19, !41, i64 20, !41, i64 21, !41, i64 22, !41, i64 23, !41, i64 24, !41, i64 25, !41, i64 26, !41, i64 27, !41, i64 28, !41, i64 29, !41, i64 30, !41, i64 31, !41, i64 32, !41, i64 33, !41, i64 34, !41, i64 35, !41, i64 36, !41, i64 37, !41, i64 38, !41, i64 39, !41, i64 40, !41, i64 41, !41, i64 42, !40, i64 48, !40, i64 56, !40, i64 64, !44, i64 72, !41, i64 76, !41, i64 77, !73, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !41, i64 120, !41, i64 121, !41, i64 122, !41, i64 123, !41, i64 124}
!73 = !{!"", !44, i64 0, !41, i64 4, !41, i64 5, !41, i64 6, !41, i64 7}
!74 = !{!"spec_nodes", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!75 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !44, i64 24}
!76 = !{!"", !40, i64 0, !44, i64 8, !44, i64 12}
!77 = !{!"branch_weights", i32 57363, i32 0}
!78 = !{!62, !41, i64 1075}
!79 = distinct !{!79, !80, !58}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!62, !41, i64 1063}
!82 = !{!"branch_weights", i32 57293, i32 70}
!83 = !{!"branch_weights", i32 0, i32 70, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!84 = !{!"branch_weights", i32 70, i32 0}
!85 = distinct !{!85, !80, !58}
!86 = !{!62, !41, i64 1064}
!87 = !{!62, !41, i64 1048}
!88 = !{!"branch_weights", i32 0, i32 50143, i32 7220}
!89 = !{!"function_entry_count", i64 50143}
!90 = !{!"cpp_expr.c;interpret_float_suffix"}
!91 = !{!"branch_weights", i32 0, i32 50143}
!92 = !{!"branch_weights", i32 50143, i32 0, i32 0, i32 0, i32 0}
!93 = !{!"branch_weights", i32 50003, i32 70}
!94 = !{!"branch_weights", i32 70, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!95 = distinct !{!95, !80, !58}
!96 = !{!"branch_weights", i32 0, i32 50073}
!97 = !{!"branch_weights", i32 50073, i32 0}
!98 = !{!99, !41, i64 16}
!99 = !{!"cpp_num", !100, i64 0, !100, i64 8, !41, i64 16, !41, i64 17}
!100 = !{!"long long", !41, i64 0}
!101 = !{!99, !41, i64 17}
!102 = !{!99, !100, i64 8}
!103 = !{!62, !67, i64 1128}
!104 = !{!"branch_weights", i32 50143, i32 0, i32 7220, i32 0}
!105 = !{!"branch_weights", i32 57292, i32 1}
!106 = !{!"branch_weights", i32 3758, i32 159491}
!107 = !{!"branch_weights", i32 70, i32 3688}
!108 = !{!"branch_weights", i32 163179, i32 0}
!109 = !{i64 0, i64 1, !46, i64 1, i64 1, !46}
!110 = !{!"branch_weights", i32 105957, i32 57292}
!111 = distinct !{!111, !80, !58}
!112 = !{!62, !41, i64 1082}
!113 = !{!"branch_weights", i32 57293, i32 0}
!114 = !{!62, !41, i64 16}
!115 = !{!"branch_weights", i32 0, i32 57293}
!116 = !{!62, !40, i64 1024}
!117 = !{!62, !44, i64 28}
!118 = !{!62, !40, i64 416}
!119 = !{!120, !44, i64 36}
!120 = !{!"op", !40, i64 0, !99, i64 8, !44, i64 32, !44, i64 36}
!121 = !{!122}
!122 = distinct !{!122, !123, !"eval_token: argument 0"}
!123 = distinct !{!123, !"eval_token"}
!124 = !{!62, !40, i64 1168}
!125 = !{!126}
!126 = distinct !{!126, !127, !"parse_defined: argument 0"}
!127 = distinct !{!127, !"parse_defined"}
!128 = !{!62, !40, i64 136}
!129 = !{!126, !122}
!130 = !{!62, !41, i64 24}
!131 = !{!65, !52, i64 6}
!132 = !{!62, !40, i64 984}
!133 = !{!62, !40, i64 992}
!134 = !{!62, !44, i64 48}
!135 = !{!99, !100, i64 0}
!136 = !{!62, !40, i64 1176}
!137 = !{!62, !40, i64 1184}
!138 = !{!62, !41, i64 1073}
!139 = !{!140, !40, i64 0}
!140 = !{!"cpp_hashnode", !141, i64 0, !44, i64 16, !44, i64 16, !41, i64 17, !44, i64 18, !44, i64 18, !41, i64 24}
!141 = !{!"ht_identifier", !40, i64 0, !44, i64 8, !44, i64 12}
!142 = !{!62, !41, i64 18}
!143 = !{!62, !41, i64 1058}
!144 = !{i64 0, i64 8, !145, i64 8, i64 8, !145, i64 16, i64 1, !46, i64 17, i64 1, !46}
!145 = !{!100, !100, i64 0}
!146 = !{i64 0, i64 8, !145, i64 8, i64 1, !46, i64 9, i64 1, !46}
!147 = !{i64 0, i64 1, !46}
!148 = distinct !{!148, !58}
!149 = !{!120, !40, i64 0}
!150 = !{!151, !41, i64 0}
!151 = !{!"cpp_operator", !41, i64 0, !41, i64 1}
!152 = !{!62, !41, i64 1066}
!153 = !{!120, !41, i64 24}
!154 = !{!120, !44, i64 32}
!155 = !{!156}
!156 = distinct !{!156, !157, !"num_unary_op: argument 0"}
!157 = distinct !{!157, !"num_unary_op"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"num_inequality_op: argument 0"}
!160 = distinct !{!160, !"num_inequality_op"}
!161 = !{}
!162 = !{!163}
!163 = distinct !{!163, !164, !"num_mul: argument 0"}
!164 = distinct !{!164, !"num_mul"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"num_div_op: argument 0"}
!167 = distinct !{!167, !"num_div_op"}
!168 = distinct !{!168, !58}
!169 = distinct !{!169, !58}
!170 = distinct !{!170, !58}
!171 = !{!120, !100, i64 16}
!172 = !{!120, !100, i64 8}
!173 = !{!120, !41, i64 25}
!174 = distinct !{!174, !80, !58}
!175 = !{!65, !44, i64 0}
!176 = !{!62, !40, i64 1032}
!177 = !{!"function_entry_count", i64 1}
!178 = !{!"branch_weights", i32 125383, i32 70}
!179 = !{!"branch_weights", i32 0, i32 125383}
!180 = !{!"branch_weights", i32 125383, i32 0}
