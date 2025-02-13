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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cpp_classify_number(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !44 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load i32, ptr %3, align 8, !tbaa !45
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %291, label %8, !prof !48

8:                                                ; preds = %2
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = load i8, ptr %5, align 1, !tbaa !45
  %12 = icmp eq i8 %11, 48
  br i1 %12, label %13, label %34, !prof !49

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %5, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !45
  switch i8 %15, label %34 [
    i8 120, label %16
    i8 88, label %16
    i8 98, label %28
    i8 66, label %28
  ], !prof !50

16:                                               ; preds = %13, %13
  %17 = getelementptr inbounds i8, ptr %5, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %34, label %20, !prof !51

20:                                               ; preds = %16
  %21 = zext i8 %18 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !52
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %34, !prof !51

26:                                               ; preds = %20
  %27 = icmp eq i8 %15, 98
  br i1 %27, label %28, label %34

28:                                               ; preds = %26, %13, %13
  %29 = getelementptr inbounds i8, ptr %5, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !45
  %31 = and i8 %30, -2
  %32 = icmp eq i8 %31, 48
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %26, %13, %28, %16, %20, %33, %8
  %35 = phi i1 [ false, %33 ], [ false, %8 ], [ true, %20 ], [ true, %16 ], [ false, %26 ], [ false, %28 ], [ false, %13 ]
  %36 = phi i1 [ true, %33 ], [ true, %8 ], [ false, %20 ], [ false, %16 ], [ true, %26 ], [ true, %28 ], [ true, %13 ]
  %37 = phi i1 [ true, %33 ], [ false, %8 ], [ false, %20 ], [ false, %16 ], [ false, %26 ], [ false, %28 ], [ false, %13 ]
  %38 = phi i1 [ true, %33 ], [ false, %8 ], [ true, %20 ], [ true, %16 ], [ false, %26 ], [ false, %28 ], [ false, %13 ]
  %39 = phi i32 [ 2, %33 ], [ 10, %8 ], [ 16, %20 ], [ 16, %16 ], [ 10, %26 ], [ 10, %28 ], [ 10, %13 ]
  %40 = phi i32 [ 2, %33 ], [ 10, %8 ], [ 16, %20 ], [ 16, %16 ], [ 8, %26 ], [ 8, %28 ], [ 8, %13 ]
  %41 = phi ptr [ %29, %33 ], [ %5, %8 ], [ %17, %20 ], [ %17, %16 ], [ %14, %26 ], [ %14, %28 ], [ %14, %13 ]
  br label %42

42:                                               ; preds = %62, %34
  %43 = phi i32 [ %66, %62 ], [ 0, %34 ]
  %44 = phi i32 [ %48, %62 ], [ 0, %34 ]
  %45 = phi i1 [ true, %62 ], [ false, %34 ]
  %46 = phi ptr [ %50, %62 ], [ %41, %34 ]
  br label %47

47:                                               ; preds = %42, %69
  %48 = phi i32 [ 1, %69 ], [ %44, %42 ]
  %49 = phi ptr [ %50, %69 ], [ %46, %42 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %49, align 1, !tbaa !45
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !52
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62, !prof !54

58:                                               ; preds = %47
  %59 = and i32 %55, 256
  %60 = icmp ne i32 %59, 0
  %61 = and i1 %35, %60
  br i1 %61, label %62, label %67, !prof !55

62:                                               ; preds = %58, %47
  %63 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %52
  %64 = load i8, ptr %63, align 1, !tbaa !45
  %65 = zext i8 %64 to i32
  %66 = tail call i32 @llvm.umax.i32(i32 %43, i32 %65)
  br label %42

67:                                               ; preds = %58
  %68 = icmp eq i8 %51, 46
  br i1 %68, label %69, label %73, !prof !56

69:                                               ; preds = %67
  %70 = icmp eq i32 %48, 0
  br i1 %70, label %47, label %71

71:                                               ; preds = %69
  %72 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #13
  br label %291

73:                                               ; preds = %67
  %74 = and i8 %51, -33
  %75 = icmp eq i8 %74, 69
  %76 = and i1 %36, %75
  br i1 %76, label %106, label %77, !prof !57

77:                                               ; preds = %73
  %78 = icmp eq i8 %74, 80
  %79 = and i1 %35, %78
  %80 = select i1 %79, ptr %50, ptr %49, !prof !58
  %81 = icmp eq i32 %48, 0
  %82 = xor i1 %79, true
  %83 = select i1 %82, i1 %81, i1 false
  %84 = select i1 %36, i1 %83, i1 false
  br i1 %84, label %85, label %99, !prof !59

85:                                               ; preds = %77
  %86 = ptrtoint ptr %10 to i64
  %87 = ptrtoint ptr %80 to i64
  %88 = sub i64 %86, %87
  %89 = tail call fastcc i32 @interpret_float_suffix(ptr noundef nonnull %80, i64 noundef %88) #14
  %90 = and i32 %89, 3145728
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92, !prof !60

92:                                               ; preds = %85
  %93 = or i32 %89, 2
  %94 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %95 = load i8, ptr %94, align 1, !tbaa !61
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %265, label %97

97:                                               ; preds = %92
  %98 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1) #13
  br label %265

99:                                               ; preds = %77
  br i1 %83, label %102, label %104, !prof !79

100:                                              ; preds = %85
  %101 = icmp ult i32 %43, %40
  br i1 %101, label %218, label %108, !prof !80

102:                                              ; preds = %99
  %103 = icmp ult i32 %43, %40
  br i1 %103, label %218, label %108, !prof !80

104:                                              ; preds = %99
  %105 = icmp ult i32 %43, %39
  br i1 %105, label %116, label %108, !prof !80

106:                                              ; preds = %73
  %107 = icmp ult i32 %43, %39
  br i1 %107, label %116, label %108, !prof !80

108:                                              ; preds = %102, %104, %106, %100
  %109 = phi i32 [ %39, %106 ], [ %40, %100 ], [ %39, %104 ], [ %40, %102 ]
  %110 = icmp eq i32 %109, 2
  %111 = add nuw nsw i32 %43, 48
  br i1 %110, label %112, label %114

112:                                              ; preds = %108
  %113 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %111) #13
  br label %291

114:                                              ; preds = %108
  %115 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %111) #13
  br label %291

116:                                              ; preds = %104, %106
  %117 = phi i1 [ true, %106 ], [ %79, %104 ]
  %118 = phi ptr [ %50, %106 ], [ %80, %104 ]
  br i1 %37, label %119, label %121

119:                                              ; preds = %116
  %120 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.4) #13
  br label %291

121:                                              ; preds = %116
  %122 = or i1 %36, %45
  br i1 %122, label %125, label %123

123:                                              ; preds = %121
  %124 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.5) #13
  br label %291

125:                                              ; preds = %121
  br i1 %35, label %126, label %137

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %128 = load i8, ptr %127, align 1, !tbaa !61
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %132 = load i8, ptr %131, align 1, !tbaa !81
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.6) #13
  br label %136

136:                                              ; preds = %134, %130, %126
  br i1 %117, label %138, label %162

137:                                              ; preds = %125
  br i1 %117, label %138, label %164

138:                                              ; preds = %137, %136
  %139 = load i8, ptr %118, align 1, !tbaa !45
  switch i8 %139, label %143 [
    i8 43, label %140
    i8 45, label %140
  ]

140:                                              ; preds = %138, %138
  %141 = getelementptr inbounds i8, ptr %118, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !45
  br label %143

143:                                              ; preds = %138, %140
  %144 = phi i8 [ %142, %140 ], [ %139, %138 ]
  %145 = phi ptr [ %141, %140 ], [ %118, %138 ]
  %146 = zext i8 %144 to i64
  %147 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !52
  %149 = and i16 %148, 4
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.7) #13
  br label %291

153:                                              ; preds = %143, %153
  %154 = phi ptr [ %155, %153 ], [ %145, %143 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !45
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %157
  %159 = load i16, ptr %158, align 2, !tbaa !52
  %160 = and i16 %159, 4
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %164, label %153, !llvm.loop !82

162:                                              ; preds = %136
  %163 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.8) #13
  br label %291

164:                                              ; preds = %153, %137
  %165 = phi ptr [ %118, %137 ], [ %155, %153 ]
  %166 = ptrtoint ptr %10 to i64
  %167 = ptrtoint ptr %165 to i64
  %168 = sub i64 %166, %167
  %169 = tail call fastcc i32 @interpret_float_suffix(ptr noundef nonnull %165, i64 noundef %168) #14
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = trunc i64 %168 to i32
  %173 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %172, ptr noundef nonnull %165) #13
  br label %291

174:                                              ; preds = %164
  %175 = icmp eq ptr %10, %165
  br i1 %175, label %186, label %176

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %178 = load i8, ptr %177, align 1, !tbaa !84
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = tail call i32 @cpp_sys_macro_p(ptr noundef nonnull %0) #13
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = trunc i64 %168 to i32
  %185 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %184, ptr noundef nonnull %165) #13
  br label %186

186:                                              ; preds = %183, %180, %176, %174
  %187 = icmp eq i32 %169, 32
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %190 = load i8, ptr %189, align 1, !tbaa !61
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %216, label %213

192:                                              ; preds = %186
  %193 = and i32 %169, 16384
  %194 = icmp ne i32 %193, 0
  %195 = and i1 %38, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = trunc i64 %168 to i32
  %198 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %197, ptr noundef nonnull %165) #13
  br label %291

199:                                              ; preds = %192
  %200 = and i32 %169, 3145728
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %204 = load i8, ptr %203, align 1, !tbaa !61
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1) #13
  br i1 %194, label %209, label %216

208:                                              ; preds = %202, %199
  br i1 %194, label %209, label %216

209:                                              ; preds = %206, %208
  %210 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %211 = load i8, ptr %210, align 1, !tbaa !61
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %209, %188
  %214 = phi ptr [ @.str.11, %188 ], [ @.str.13, %209 ]
  %215 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %214) #13
  br label %216

216:                                              ; preds = %213, %188, %206, %209, %208
  %217 = or i32 %169, 2
  br label %265

218:                                              ; preds = %100, %102
  %219 = ptrtoint ptr %10 to i64
  %220 = ptrtoint ptr %80 to i64
  %221 = sub i64 %219, %220
  %222 = tail call fastcc i32 @interpret_int_suffix(ptr noundef nonnull %80, i64 noundef %221) #14, !range !85
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227, !prof !56

224:                                              ; preds = %218
  %225 = trunc i64 %221 to i32
  %226 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %225, ptr noundef nonnull %80) #13
  br label %291

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %229 = load i8, ptr %228, align 1, !tbaa !84
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %246, label %231, !prof !80

231:                                              ; preds = %227
  %232 = tail call i32 @cpp_sys_macro_p(ptr noundef nonnull %0) #13
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %231
  %235 = icmp ult i32 %222, 4096
  br i1 %235, label %236, label %243

236:                                              ; preds = %234
  %237 = and i32 %222, 240
  %238 = icmp eq i32 %237, 64
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 18
  %241 = load i8, ptr %240, align 8, !tbaa !86
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %239, %234
  %244 = trunc i64 %221 to i32
  %245 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %244, ptr noundef nonnull %80) #13
  br label %246

246:                                              ; preds = %236, %239, %243, %231, %227
  %247 = and i32 %222, 240
  %248 = icmp eq i32 %247, 64
  br i1 %248, label %249, label %263, !prof !56

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 18
  %251 = load i8, ptr %250, align 8, !tbaa !86
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %263, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %255 = load i8, ptr %254, align 1, !tbaa !81
  %256 = icmp eq i8 %255, 0
  %257 = select i1 %256, i32 2, i32 0
  %258 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %259 = load i8, ptr %258, align 8, !tbaa !87
  %260 = icmp eq i8 %259, 0
  %261 = select i1 %260, ptr @.str.16, ptr @.str.15
  %262 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef %257, ptr noundef nonnull %261) #13
  br label %263

263:                                              ; preds = %253, %249, %246
  %264 = or i32 %222, 1
  br label %265

265:                                              ; preds = %216, %263, %92, %97
  %266 = phi i32 [ %93, %97 ], [ %93, %92 ], [ %217, %216 ], [ %264, %263 ]
  %267 = phi i32 [ %39, %97 ], [ %39, %92 ], [ %39, %216 ], [ %40, %263 ]
  %268 = and i32 %266, 8192
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %276, label %270, !prof !80

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %272 = load i8, ptr %271, align 1, !tbaa !61
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %270
  %275 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.17) #13
  br label %276

276:                                              ; preds = %274, %270, %265
  switch i32 %267, label %289 [
    i32 2, label %277
    i32 10, label %283
    i32 16, label %285
  ], !prof !88

277:                                              ; preds = %276
  %278 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %279 = load i8, ptr %278, align 1, !tbaa !61
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %277
  %282 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.18) #13
  br label %287

283:                                              ; preds = %276
  %284 = or i32 %266, 256
  br label %291

285:                                              ; preds = %276
  %286 = or i32 %266, 512
  br label %291

287:                                              ; preds = %281, %277
  %288 = or i32 %266, 2048
  br label %291

289:                                              ; preds = %276
  %290 = or i32 %266, 1024
  br label %291

291:                                              ; preds = %71, %112, %114, %123, %151, %162, %283, %287, %289, %285, %2, %224, %196, %171, %119
  %292 = phi i32 [ 0, %119 ], [ 0, %171 ], [ 0, %196 ], [ 0, %224 ], [ 273, %2 ], [ %284, %283 ], [ %286, %285 ], [ %288, %287 ], [ %290, %289 ], [ 0, %162 ], [ 0, %151 ], [ 0, %123 ], [ 0, %114 ], [ 0, %112 ], [ 0, %71 ]
  ret i32 %292
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @interpret_float_suffix(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 !prof !89 !PGOFuncName !90 {
  %3 = icmp eq i64 %1, 2
  br i1 %3, label %4, label %22, !prof !91

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !45
  switch i8 %5, label %22 [
    i8 100, label %6
    i8 68, label %6
  ]

6:                                                ; preds = %4, %4
  %7 = icmp eq i8 %5, 68
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !45
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
  br label %142

12:                                               ; preds = %6
  %13 = select i1 %7, i32 16400, i32 0
  br label %142

14:                                               ; preds = %6
  %15 = select i1 %7, i32 0, i32 16416
  br label %142

16:                                               ; preds = %6
  %17 = select i1 %7, i32 16416, i32 0
  br label %142

18:                                               ; preds = %6
  %19 = select i1 %7, i32 0, i32 16448
  br label %142

20:                                               ; preds = %6
  %21 = select i1 %7, i32 16448, i32 0
  br label %142

22:                                               ; preds = %6, %4, %2
  %23 = getelementptr i8, ptr %0, i64 %1
  %24 = getelementptr i8, ptr %23, i64 -1
  %25 = load i8, ptr %24, align 1, !tbaa !45
  switch i8 %25, label %26 [
    i8 107, label %29
    i8 75, label %29
    i8 114, label %28
    i8 82, label %28
  ], !prof !92

26:                                               ; preds = %22
  %27 = icmp eq i64 %1, 0
  br i1 %27, label %112, label %81, !prof !93

28:                                               ; preds = %22, %22
  br label %29

29:                                               ; preds = %22, %22, %28
  %30 = phi i64 [ 1048576, %28 ], [ 2097152, %22 ], [ 2097152, %22 ]
  %31 = icmp eq i64 %1, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = trunc i64 %30 to i32
  br label %142

34:                                               ; preds = %29
  %35 = add i64 %1, -1
  %36 = load i8, ptr %0, align 1, !tbaa !45
  switch i8 %36, label %46 [
    i8 117, label %37
    i8 85, label %37
  ]

37:                                               ; preds = %34, %34
  %38 = or disjoint i64 %30, 4096
  %39 = icmp eq i64 %35, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = trunc i64 %38 to i32
  br label %142

42:                                               ; preds = %37
  %43 = add i64 %1, -2
  %44 = getelementptr inbounds i8, ptr %0, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !45
  br label %46

46:                                               ; preds = %34, %42
  %47 = phi i8 [ %45, %42 ], [ %36, %34 ]
  %48 = phi ptr [ %44, %42 ], [ %0, %34 ]
  %49 = phi i64 [ %43, %42 ], [ %35, %34 ]
  %50 = phi i64 [ %38, %42 ], [ %30, %34 ]
  %51 = zext i8 %47 to i32
  %52 = add nsw i32 %51, -72
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 30)
  switch i32 %53, label %142 [
    i32 8, label %54
    i32 0, label %54
    i32 9, label %59
    i32 1, label %70
  ]

54:                                               ; preds = %46, %46
  %55 = icmp eq i64 %49, 1
  br i1 %55, label %56, label %142

56:                                               ; preds = %54
  %57 = trunc i64 %50 to i32
  %58 = or i32 %57, 16
  br label %142

59:                                               ; preds = %46
  switch i64 %49, label %142 [
    i64 1, label %60
    i64 2, label %63
  ]

60:                                               ; preds = %59
  %61 = trunc i64 %50 to i32
  %62 = or i32 %61, 32
  br label %142

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %48, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !45
  %66 = icmp eq i8 %65, 108
  br i1 %66, label %67, label %142

67:                                               ; preds = %63
  %68 = trunc i64 %50 to i32
  %69 = or i32 %68, 64
  br label %142

70:                                               ; preds = %46
  switch i64 %49, label %142 [
    i64 1, label %71
    i64 2, label %74
  ]

71:                                               ; preds = %70
  %72 = trunc i64 %50 to i32
  %73 = or i32 %72, 32
  br label %142

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %48, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !45
  %77 = icmp eq i8 %76, 76
  br i1 %77, label %78, label %142

78:                                               ; preds = %74
  %79 = trunc i64 %50 to i32
  %80 = or i32 %79, 64
  br label %142

81:                                               ; preds = %26, %104
  %82 = phi i64 [ %89, %104 ], [ %1, %26 ]
  %83 = phi i64 [ %110, %104 ], [ 0, %26 ]
  %84 = phi i64 [ %109, %104 ], [ 0, %26 ]
  %85 = phi i64 [ %108, %104 ], [ 0, %26 ]
  %86 = phi i64 [ %107, %104 ], [ 0, %26 ]
  %87 = phi i64 [ %106, %104 ], [ 0, %26 ]
  %88 = phi i64 [ %105, %104 ], [ 0, %26 ]
  %89 = add i64 %82, -1
  %90 = getelementptr inbounds i8, ptr %0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !45
  switch i8 %91, label %142 [
    i8 102, label %92
    i8 70, label %92
    i8 100, label %94
    i8 68, label %94
    i8 108, label %96
    i8 76, label %96
    i8 119, label %98
    i8 87, label %98
    i8 113, label %100
    i8 81, label %100
    i8 105, label %102
    i8 73, label %102
    i8 106, label %102
    i8 74, label %102
  ], !prof !94

92:                                               ; preds = %81, %81
  %93 = add i64 %88, 1
  br label %104

94:                                               ; preds = %81, %81
  %95 = add i64 %87, 1
  br label %104

96:                                               ; preds = %81, %81
  %97 = add i64 %86, 1
  br label %104

98:                                               ; preds = %81, %81
  %99 = add i64 %85, 1
  br label %104

100:                                              ; preds = %81, %81
  %101 = add i64 %84, 1
  br label %104

102:                                              ; preds = %81, %81, %81, %81
  %103 = add i64 %83, 1
  br label %104

104:                                              ; preds = %102, %100, %98, %96, %94, %92
  %105 = phi i64 [ %88, %102 ], [ %88, %100 ], [ %88, %98 ], [ %88, %96 ], [ %88, %94 ], [ %93, %92 ]
  %106 = phi i64 [ %87, %102 ], [ %87, %100 ], [ %87, %98 ], [ %87, %96 ], [ %95, %94 ], [ %87, %92 ]
  %107 = phi i64 [ %86, %102 ], [ %86, %100 ], [ %86, %98 ], [ %97, %96 ], [ %86, %94 ], [ %86, %92 ]
  %108 = phi i64 [ %85, %102 ], [ %85, %100 ], [ %99, %98 ], [ %85, %96 ], [ %85, %94 ], [ %85, %92 ]
  %109 = phi i64 [ %84, %102 ], [ %101, %100 ], [ %84, %98 ], [ %84, %96 ], [ %84, %94 ], [ %84, %92 ]
  %110 = phi i64 [ %103, %102 ], [ %83, %100 ], [ %83, %98 ], [ %83, %96 ], [ %83, %94 ], [ %83, %92 ]
  %111 = icmp eq i64 %89, 0
  br i1 %111, label %112, label %81, !prof !95, !llvm.loop !96

112:                                              ; preds = %104, %26
  %113 = phi i64 [ 0, %26 ], [ %105, %104 ]
  %114 = phi i64 [ 0, %26 ], [ %106, %104 ]
  %115 = phi i64 [ 0, %26 ], [ %107, %104 ]
  %116 = phi i64 [ 0, %26 ], [ %108, %104 ]
  %117 = phi i64 [ 0, %26 ], [ %109, %104 ]
  %118 = phi i64 [ 0, %26 ], [ %110, %104 ]
  %119 = add i64 %114, %113
  %120 = add i64 %119, %115
  %121 = add i64 %120, %116
  %122 = add i64 %121, %117
  %123 = icmp ugt i64 %122, 1
  %124 = icmp ugt i64 %118, 1
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %142, label %126, !prof !97

126:                                              ; preds = %112
  %127 = icmp eq i64 %118, 0
  %128 = select i1 %127, i32 0, i32 8192
  %129 = icmp eq i64 %113, 0
  br i1 %129, label %130, label %139, !prof !98

130:                                              ; preds = %126
  %131 = icmp eq i64 %114, 0
  br i1 %131, label %132, label %139, !prof !98

132:                                              ; preds = %130
  %133 = icmp eq i64 %115, 0
  br i1 %133, label %134, label %139, !prof !98

134:                                              ; preds = %132
  %135 = icmp eq i64 %116, 0
  br i1 %135, label %136, label %139, !prof !98

136:                                              ; preds = %134
  %137 = icmp eq i64 %117, 0
  %138 = select i1 %137, i32 32768, i32 131072
  br label %139

139:                                              ; preds = %130, %136, %134, %132, %126
  %140 = phi i32 [ 16, %126 ], [ 32, %130 ], [ 64, %132 ], [ %138, %136 ], [ 65536, %134 ]
  %141 = or disjoint i32 %140, %128
  br label %142

142:                                              ; preds = %81, %10, %12, %14, %16, %18, %20, %112, %54, %63, %74, %46, %59, %70, %139, %78, %71, %67, %60, %56, %40, %32
  %143 = phi i32 [ %33, %32 ], [ %41, %40 ], [ %73, %71 ], [ %80, %78 ], [ %62, %60 ], [ %69, %67 ], [ %58, %56 ], [ %141, %139 ], [ 0, %70 ], [ 0, %59 ], [ 0, %46 ], [ 0, %74 ], [ 0, %63 ], [ 0, %54 ], [ 0, %112 ], [ %11, %10 ], [ %13, %12 ], [ %15, %14 ], [ %17, %16 ], [ %19, %18 ], [ %21, %20 ], [ 0, %81 ]
  ret i32 %143
}

; Function Attrs: optsize
declare i32 @cpp_sys_macro_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @interpret_int_suffix(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 !prof !99 !PGOFuncName !100 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %28, label %4, !prof !101

4:                                                ; preds = %2, %23
  %5 = phi i64 [ %26, %23 ], [ 0, %2 ]
  %6 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %7 = phi i64 [ %24, %23 ], [ 0, %2 ]
  %8 = phi i64 [ %9, %23 ], [ %1, %2 ]
  %9 = add i64 %8, -1
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !45
  switch i8 %11, label %50 [
    i8 117, label %12
    i8 85, label %12
    i8 105, label %14
    i8 73, label %14
    i8 106, label %14
    i8 74, label %14
    i8 108, label %16
    i8 76, label %16
  ], !prof !102

12:                                               ; preds = %4, %4
  %13 = add i64 %7, 1
  br label %23

14:                                               ; preds = %4, %4, %4, %4
  %15 = add i64 %5, 1
  br label %23

16:                                               ; preds = %4, %4
  %17 = add i64 %6, 1
  %18 = icmp eq i64 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %0, i64 %8
  %21 = load i8, ptr %20, align 1, !tbaa !45
  %22 = icmp eq i8 %11, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %16, %19, %14, %12
  %24 = phi i64 [ %7, %19 ], [ %7, %16 ], [ %7, %14 ], [ %13, %12 ]
  %25 = phi i64 [ 2, %19 ], [ %17, %16 ], [ %6, %14 ], [ %6, %12 ]
  %26 = phi i64 [ %5, %19 ], [ %5, %16 ], [ %15, %14 ], [ %5, %12 ]
  %27 = icmp eq i64 %9, 0
  br i1 %27, label %28, label %4, !prof !95, !llvm.loop !103

28:                                               ; preds = %23, %2
  %29 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %30 = phi i64 [ 0, %2 ], [ %25, %23 ]
  %31 = phi i64 [ 0, %2 ], [ %26, %23 ]
  %32 = icmp ugt i64 %30, 2
  %33 = icmp ugt i64 %29, 1
  %34 = select i1 %32, i1 true, i1 %33
  %35 = icmp ugt i64 %31, 1
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %50, label %37, !prof !104

37:                                               ; preds = %28
  %38 = icmp eq i64 %31, 0
  %39 = select i1 %38, i32 0, i32 8192
  %40 = icmp eq i64 %29, 0
  %41 = select i1 %40, i32 0, i32 4096
  %42 = or disjoint i32 %39, %41
  %43 = icmp eq i64 %30, 0
  br i1 %43, label %47, label %44, !prof !80

44:                                               ; preds = %37
  %45 = icmp eq i64 %30, 1
  %46 = select i1 %45, i32 32, i32 64
  br label %47

47:                                               ; preds = %37, %44
  %48 = phi i32 [ %46, %44 ], [ 16, %37 ]
  %49 = or disjoint i32 %42, %48
  br label %50

50:                                               ; preds = %4, %19, %28, %47
  %51 = phi i32 [ %49, %47 ], [ 0, %28 ], [ 0, %19 ], [ 0, %4 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_interpret_integer(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !prof !44 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %7 = lshr i32 %3, 12
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 %9, ptr %10, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !108
  %12 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %13 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = load i32, ptr %12, align 8, !tbaa !45
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = icmp eq i32 %15, 1
  br i1 %18, label %19, label %23, !prof !48

19:                                               ; preds = %4
  %20 = load i8, ptr %14, align 1, !tbaa !45
  %21 = zext i8 %20 to i64
  %22 = add nsw i64 %21, -48
  store i64 %22, ptr %6, align 8, !tbaa !109
  br label %111

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %25 = load i64, ptr %24, align 8, !tbaa !110
  %26 = and i32 %3, 3840
  switch i32 %26, label %33 [
    i32 1024, label %27
    i32 512, label %29
    i32 2048, label %31
  ], !prof !111

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %14, i64 1
  br label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %14, i64 2
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, ptr %14, i64 2
  br label %33

33:                                               ; preds = %23, %29, %31, %27
  %34 = phi ptr [ %28, %27 ], [ %30, %29 ], [ %32, %31 ], [ %14, %23 ]
  %35 = phi i1 [ true, %27 ], [ false, %29 ], [ true, %31 ], [ true, %23 ]
  %36 = phi i1 [ false, %27 ], [ false, %29 ], [ false, %31 ], [ true, %23 ]
  %37 = phi i32 [ 8, %27 ], [ 16, %29 ], [ 2, %31 ], [ 10, %23 ]
  %38 = icmp ult i64 %25, 64
  br i1 %38, label %39, label %42, !prof !56

39:                                               ; preds = %33
  %40 = sub nuw nsw i64 64, %25
  %41 = lshr i64 -1, %40
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i64 [ %41, %39 ], [ -1, %33 ]
  %44 = zext nneg i32 %37 to i64
  %45 = icmp ult ptr %34, %17
  br i1 %45, label %46, label %89, !prof !112

46:                                               ; preds = %42
  %47 = sub nsw i64 %43, %44
  %48 = add nsw i64 %47, 1
  %49 = udiv i64 %48, %44
  %50 = add nuw i64 %49, 1
  br label %51

51:                                               ; preds = %46, %79
  %52 = phi i8 [ %81, %79 ], [ 0, %46 ]
  %53 = phi ptr [ %82, %79 ], [ %34, %46 ]
  %54 = phi i64 [ %80, %79 ], [ %50, %46 ]
  %55 = load i8, ptr %53, align 1, !tbaa !45
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !52
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66, !prof !113

62:                                               ; preds = %51
  %63 = and i32 %59, 256
  %64 = icmp eq i32 %63, 0
  %65 = or i1 %35, %64
  br i1 %65, label %84, label %66, !prof !114

66:                                               ; preds = %62, %51
  %67 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %56
  %68 = load i8, ptr %67, align 1, !tbaa !45
  %69 = load i64, ptr %6, align 8, !tbaa !109
  %70 = icmp ult i64 %69, %54
  br i1 %70, label %71, label %75, !prof !115

71:                                               ; preds = %66
  %72 = mul i64 %69, %44
  %73 = zext i8 %68 to i64
  %74 = add i64 %72, %73
  store i64 %74, ptr %6, align 8, !tbaa !109
  br label %79

75:                                               ; preds = %66
  %76 = zext i8 %68 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @append_digit(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i32 noundef %76, i32 noundef %37, i64 noundef %25) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %77 = load i8, ptr %11, align 1, !tbaa !108
  %78 = or i8 %77, %52
  br label %79

79:                                               ; preds = %71, %75
  %80 = phi i64 [ %54, %71 ], [ 0, %75 ]
  %81 = phi i8 [ %52, %71 ], [ %78, %75 ]
  %82 = getelementptr inbounds i8, ptr %53, i64 1
  %83 = icmp ult ptr %82, %17
  br i1 %83, label %51, label %84, !prof !118, !llvm.loop !119

84:                                               ; preds = %79, %62
  %85 = phi i8 [ %81, %79 ], [ %52, %62 ]
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87, !prof !120

87:                                               ; preds = %84
  %88 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.19) #13
  br label %111

89:                                               ; preds = %42, %84
  %90 = load i8, ptr %10, align 8, !tbaa !105
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %111, !prof !121

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 36
  %94 = load i8, ptr %93, align 2, !tbaa !122
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96, !prof !123

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2
  %98 = load i8, ptr %97, align 8, !tbaa !124
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %96, %92
  %101 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %25) #14, !range !125
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %111, !prof !126

103:                                              ; preds = %100
  br i1 %36, label %104, label %110

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 29
  %106 = load i8, ptr %105, align 1, !tbaa !81
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i32 0, i32 2
  %109 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef %108, ptr noundef nonnull @.str.20) #13
  br label %110

110:                                              ; preds = %104, %103
  store i8 1, ptr %10, align 8, !tbaa !105
  br label %111

111:                                              ; preds = %87, %110, %100, %96, %89, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @append_digit(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #5 !prof !127 !PGOFuncName !128 {
  %6 = alloca %struct.cpp_num, align 8
  %7 = icmp eq i32 %3, 16
  %8 = select i1 %7, i64 4, i64 3
  %9 = icmp eq i32 %3, 2
  %10 = select i1 %9, i64 1, i64 %8
  %11 = load i64, ptr %1, align 8, !tbaa !129
  %12 = sub nuw nsw i64 64, %10
  %13 = lshr i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = shl i64 %11, %10
  %16 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !109
  %18 = shl i64 %17, %10
  %19 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %20 = lshr i64 %17, %12
  %21 = or i64 %20, %15
  %22 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %23 = load i8, ptr %22, align 8, !tbaa !105
  %24 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 %23, ptr %24, align 8, !tbaa !105
  %25 = icmp eq i32 %3, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = shl i64 %17, 1
  %28 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %17, i64 1)
  br label %29

29:                                               ; preds = %5, %26
  %30 = phi i64 [ %28, %26 ], [ 0, %5 ]
  %31 = phi i64 [ %27, %26 ], [ 0, %5 ]
  %32 = zext nneg i32 %2 to i64
  %33 = add i64 %31, %32
  %34 = icmp ult i64 %33, %31
  %35 = zext i1 %34 to i64
  %36 = add i64 %30, %35
  %37 = xor i64 %18, -1
  %38 = icmp ugt i64 %33, %37
  %39 = zext i1 %38 to i64
  %40 = add i64 %36, %39
  %41 = xor i64 %21, -1
  %42 = icmp ugt i64 %40, %41
  %43 = select i1 %42, i1 true, i1 %14
  %44 = zext i1 %43 to i8
  %45 = add i64 %33, %18
  store i64 %45, ptr %19, align 8, !tbaa !109
  %46 = add i64 %40, %21
  store i64 %46, ptr %0, align 8, !tbaa !129
  %47 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 %44, ptr %47, align 1, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %48 = load i64, ptr %19, align 8, !tbaa !109
  %49 = icmp eq i64 %48, %45
  %50 = load i64, ptr %0, align 8
  %51 = icmp eq i64 %50, %46
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %54, label %53

53:                                               ; preds = %29
  store i8 1, ptr %47, align 1, !tbaa !108
  br label %54

54:                                               ; preds = %29, %53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @num_positive(ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %0, i64 noundef %1) unnamed_addr #7 !prof !130 !PGOFuncName !131 {
  %3 = icmp ugt i64 %1, 64
  %4 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %5 = select i1 %3, i64 -65, i64 -1, !prof !126
  %6 = load i64, ptr %0, align 8
  %7 = load i64, ptr %4, align 8
  %8 = select i1 %3, i64 %6, i64 %7
  %9 = add i64 %5, %1
  %10 = shl nuw i64 1, %9
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i8
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_parse_expr(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !127 {
  %3 = alloca %struct.cpp_num, align 8
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 11
  store i32 0, ptr %6, align 4, !tbaa !133
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 27
  store ptr null, ptr %7, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 3
  store i32 22, ptr %8, align 4, !tbaa !135
  br label %9

9:                                                ; preds = %138, %2
  %10 = phi i8 [ 0, %2 ], [ %45, %138 ]
  %11 = phi i8 [ 1, %2 ], [ %139, %138 ]
  %12 = phi i32 [ 0, %2 ], [ %18, %138 ]
  %13 = phi ptr [ %5, %2 ], [ %140, %138 ]
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 1
  br label %15

15:                                               ; preds = %9, %27
  %16 = phi i8 [ 0, %27 ], [ %11, %9 ]
  %17 = phi i32 [ %18, %27 ], [ %12, %9 ]
  %18 = add i32 %17, 1
  %19 = tail call ptr @cpp_get_token(ptr noundef %0) #13
  %20 = getelementptr inbounds %struct.cpp_token, ptr %19, i64 0, i32 1
  %21 = load i8, ptr %20, align 4
  switch i8 %21, label %37 [
    i8 55, label %22
    i8 56, label %22
    i8 57, label %22
    i8 58, label %22
    i8 59, label %22
    i8 53, label %22
    i8 37, label %22
    i8 1, label %28
    i8 4, label %31
    i8 5, label %34
  ]

22:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  %23 = icmp eq i8 %16, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %19) #13
  %26 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %25) #13
  br label %164

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call fastcc void @eval_token(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %3, ptr noundef %0, ptr noundef nonnull %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %15

28:                                               ; preds = %15
  %29 = icmp eq i32 %17, 0
  %30 = zext i1 %29 to i8
  br label %44

31:                                               ; preds = %15
  %32 = icmp eq i8 %16, 0
  %33 = select i1 %32, i32 4, i32 27
  br label %44

34:                                               ; preds = %15
  %35 = icmp eq i8 %16, 0
  %36 = select i1 %35, i32 5, i32 28
  br label %44

37:                                               ; preds = %15
  %38 = zext nneg i8 %21 to i32
  %39 = add i8 %21, -27
  %40 = icmp ult i8 %39, -26
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %19) #13
  %43 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef %42) #13
  br label %164

44:                                               ; preds = %34, %31, %37, %28
  %45 = phi i8 [ %10, %37 ], [ %30, %28 ], [ %10, %31 ], [ %10, %34 ]
  %46 = phi i32 [ %38, %37 ], [ 1, %28 ], [ %33, %31 ], [ %36, %34 ]
  %47 = zext nneg i32 %46 to i64
  %48 = lshr i64 133152765, %47
  %49 = and i64 %48, 1
  %50 = icmp eq i64 %49, 0
  %51 = icmp eq i8 %16, 0
  br i1 %50, label %52, label %56

52:                                               ; preds = %44
  br i1 %51, label %53, label %79

53:                                               ; preds = %52
  %54 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %19) #13
  %55 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %54) #13
  br label %164

56:                                               ; preds = %44
  br i1 %51, label %79, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !135
  switch i32 %46, label %68 [
    i32 21, label %60
    i32 22, label %63
  ]

60:                                               ; preds = %57
  switch i32 %59, label %69 [
    i32 20, label %61
    i32 22, label %73
  ]

61:                                               ; preds = %60
  %62 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.23) #13
  br label %164

63:                                               ; preds = %57
  switch i32 %59, label %69 [
    i32 22, label %64
    i32 20, label %73
  ]

64:                                               ; preds = %63
  %65 = icmp eq i8 %1, 0
  %66 = select i1 %65, ptr @.str.26, ptr @.str.25
  %67 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef nonnull %66) #13
  br label %164

68:                                               ; preds = %57
  switch i32 %59, label %69 [
    i32 22, label %73
    i32 20, label %73
  ]

69:                                               ; preds = %60, %63, %68
  %70 = load ptr, ptr %13, align 8, !tbaa !137
  %71 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %70) #13
  %72 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.27, ptr noundef %71) #13
  br label %164

73:                                               ; preds = %60, %63, %68, %68
  %74 = add nsw i32 %46, -21
  %75 = icmp ult i32 %74, 2
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %19) #13
  %78 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef %77) #13
  br label %164

79:                                               ; preds = %56, %73, %52
  %80 = tail call fastcc ptr @reduce(ptr noundef %0, ptr noundef %13, i32 noundef %46) #14
  %81 = icmp eq ptr %80, null
  br i1 %81, label %164, label %82

82:                                               ; preds = %79
  %83 = icmp eq i32 %46, 22
  br i1 %83, label %141, label %84

84:                                               ; preds = %82
  %85 = trunc i32 %46 to i8
  switch i8 %85, label %126 [
    i8 21, label %138
    i8 16, label %86
    i8 15, label %96
    i8 17, label %96
    i8 18, label %106
  ]

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 1
  %88 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 1, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !138
  %90 = load i64, ptr %87, align 8, !tbaa !139
  %91 = or i64 %90, %89
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %126, label %93

93:                                               ; preds = %86
  %94 = load i32, ptr %6, align 4, !tbaa !133
  %95 = add i32 %94, 1
  br label %124

96:                                               ; preds = %84, %84
  %97 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 1
  %98 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 1, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !138
  %100 = load i64, ptr %97, align 8, !tbaa !139
  %101 = or i64 %100, %99
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %96
  %104 = load i32, ptr %6, align 4, !tbaa !133
  %105 = add i32 %104, 1
  br label %124

106:                                              ; preds = %84
  %107 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !135
  %109 = icmp eq i32 %108, 17
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.29) #13
  br label %164

112:                                              ; preds = %106
  %113 = getelementptr %struct.op, ptr %80, i64 -1, i32 1
  %114 = getelementptr %struct.op, ptr %80, i64 -1, i32 1, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !138
  %116 = load i64, ptr %113, align 8, !tbaa !139
  %117 = or i64 %116, %115
  %118 = icmp eq i64 %117, 0
  %119 = load i32, ptr %6, align 4, !tbaa !133
  br i1 %118, label %122, label %120

120:                                              ; preds = %112
  %121 = add i32 %119, 1
  br label %124

122:                                              ; preds = %112
  %123 = add i32 %119, -1
  br label %124

124:                                              ; preds = %93, %103, %120, %122
  %125 = phi i32 [ %123, %122 ], [ %121, %120 ], [ %105, %103 ], [ %95, %93 ]
  store i32 %125, ptr %6, align 4, !tbaa !133
  br label %126

126:                                              ; preds = %124, %84, %96, %86
  %127 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 52
  %128 = getelementptr inbounds %struct.op, ptr %80, i64 1
  %129 = load ptr, ptr %127, align 8, !tbaa !140
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = tail call ptr @_cpp_expand_op_stack(ptr noundef nonnull %0) #14
  br label %133

133:                                              ; preds = %131, %126
  %134 = phi ptr [ %132, %131 ], [ %128, %126 ]
  %135 = getelementptr inbounds %struct.op, ptr %134, i64 0, i32 3
  store i32 %46, ptr %135, align 4, !tbaa !135
  store ptr %19, ptr %134, align 8, !tbaa !137
  %136 = load i32, ptr %19, align 8, !tbaa !141
  %137 = getelementptr inbounds %struct.op, ptr %134, i64 0, i32 2
  store i32 %136, ptr %137, align 8, !tbaa !142
  br label %138

138:                                              ; preds = %133, %84
  %139 = phi i8 [ %16, %84 ], [ 1, %133 ]
  %140 = phi ptr [ %80, %84 ], [ %134, %133 ]
  br label %9

141:                                              ; preds = %82
  %142 = load ptr, ptr %7, align 8, !tbaa !134
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = icmp ne i8 %45, 0
  %146 = icmp eq i32 %18, 3
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  store ptr null, ptr %7, align 8, !tbaa !134
  br label %149

149:                                              ; preds = %144, %148, %141
  %150 = load ptr, ptr %4, align 8, !tbaa !132
  %151 = icmp eq ptr %80, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = icmp eq i8 %1, 0
  %154 = select i1 %153, ptr @.str.26, ptr @.str.25
  %155 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.30, ptr noundef nonnull %154) #13
  br label %164

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 1
  %158 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 1, i32 1
  %159 = load i64, ptr %158, align 8, !tbaa !138
  %160 = load i64, ptr %157, align 8, !tbaa !139
  %161 = or i64 %160, %159
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i8
  br label %164

164:                                              ; preds = %79, %24, %76, %69, %64, %61, %53, %110, %41, %152, %156
  %165 = phi i8 [ %163, %156 ], [ 0, %152 ], [ 0, %41 ], [ 0, %110 ], [ 0, %53 ], [ 0, %61 ], [ 0, %64 ], [ 0, %69 ], [ 0, %76 ], [ 0, %24 ], [ 0, %79 ]
  ret i8 %165
}

; Function Attrs: optsize
declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eval_token(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !127 !PGOFuncName !143 {
  %4 = alloca %struct.cpp_num, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpp_num, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !tbaa !144
  %8 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 2
  store i8 0, ptr %8, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 3
  store i8 0, ptr %9, align 1, !tbaa !108
  %10 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 1
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %89 [
    i8 55, label %12
    i8 57, label %23
    i8 56, label %23
    i8 58, label %23
    i8 59, label %23
    i8 53, label %35
    i8 37, label %68
  ]

12:                                               ; preds = %3
  %13 = tail call i32 @cpp_classify_number(ptr noundef %1, ptr noundef nonnull %2) #14
  %14 = and i32 %13, 15
  switch i32 %14, label %22 [
    i32 2, label %19
    i32 1, label %15
  ]

15:                                               ; preds = %12
  %16 = and i32 %13, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @cpp_interpret_integer(ptr dead_on_unwind writable sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %13) #14
  br label %94

19:                                               ; preds = %15, %12
  %20 = phi ptr [ @.str.31, %12 ], [ @.str.32, %15 ]
  %21 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %20) #13
  br label %22

22:                                               ; preds = %19, %12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %90

23:                                               ; preds = %3, %3, %3, %3
  %24 = call i32 @cpp_interpret_charconst(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  store i64 0, ptr %4, align 8, !tbaa !129
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !109
  %27 = load i32, ptr %6, align 4, !tbaa !144
  %28 = icmp eq i32 %27, 0
  %29 = icmp slt i32 %24, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %90

31:                                               ; preds = %23
  %32 = or disjoint i64 %25, -4294967296
  store i64 %32, ptr %26, align 8, !tbaa !109
  store i64 -1, ptr %4, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %34 = load i64, ptr %33, align 8, !tbaa !110
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef nonnull byval(%struct.cpp_num) align 8 %4, i64 noundef %34) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %90

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 54
  %39 = load ptr, ptr %38, align 8, !tbaa !145
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call fastcc void @parse_defined(ptr dead_on_unwind writable sret(%struct.cpp_num) align 8 %0, ptr noundef nonnull %1) #14
  br label %94

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 2
  %44 = load i8, ptr %43, align 8, !tbaa !87
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 54, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !146
  %49 = icmp eq ptr %37, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 54, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !147
  %53 = icmp eq ptr %37, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46
  store i64 0, ptr %4, align 8, !tbaa !129
  %55 = zext i1 %49 to i64
  %56 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !109
  br label %90

57:                                               ; preds = %50, %42
  %58 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %59 = load i8, ptr %58, align 1, !tbaa !148
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %90, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %63 = load i32, ptr %62, align 4, !tbaa !133
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load ptr, ptr %37, align 8, !tbaa !149
  %67 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef %66) #13
  br label %90

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 2
  %70 = load i8, ptr %69, align 2, !tbaa !152
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 31
  %74 = load i8, ptr %73, align 1, !tbaa !61
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.34) #13
  br label %84

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 12
  %80 = load i8, ptr %79, align 2, !tbaa !153
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.35) #13
  br label %84

84:                                               ; preds = %76, %82, %78, %68
  %85 = call i32 @_cpp_test_assertion(ptr noundef nonnull %1, ptr noundef nonnull %5) #13
  store i64 0, ptr %4, align 8, !tbaa !129
  %86 = load i32, ptr %5, align 4, !tbaa !144
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !109
  br label %90

89:                                               ; preds = %3
  tail call void @abort() #16
  unreachable

90:                                               ; preds = %23, %31, %57, %61, %65, %54, %84, %22
  %91 = phi i32 [ %27, %23 ], [ 0, %31 ], [ 0, %57 ], [ 0, %61 ], [ 0, %65 ], [ 0, %54 ], [ 0, %84 ], [ 0, %22 ]
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i8
  store i8 %93, ptr %8, align 8, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !116
  br label %94

94:                                               ; preds = %90, %41, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @reduce(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !127 !PGOFuncName !154 {
  %4 = alloca %struct.cpp_num, align 8
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = alloca %struct.cpp_num, align 8
  %11 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !135
  %13 = add i32 %12, -29
  %14 = icmp ult i32 %13, -28
  br i1 %14, label %18, label %21

15:                                               ; preds = %53
  %16 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !135
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i32 [ %12, %3 ], [ %17, %15 ]
  %20 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %19) #13
  br label %209

21:                                               ; preds = %3
  %22 = icmp eq i32 %2, 20
  br i1 %22, label %209, label %23

23:                                               ; preds = %21
  %24 = zext nneg i32 %2 to i64
  %25 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %24
  %26 = load i8, ptr %25, align 2, !tbaa !155
  %27 = zext i8 %26 to i32
  %28 = lshr i64 126730236, %24
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 1
  %31 = sub nsw i32 %27, %30
  %32 = zext nneg i32 %12 to i64
  %33 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %32
  %34 = load i8, ptr %33, align 2, !tbaa !155
  %35 = zext i8 %34 to i32
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %204

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 20
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 11
  br label %40

40:                                               ; preds = %37, %110
  %41 = phi i32 [ %12, %37 ], [ %113, %110 ]
  %42 = phi i64 [ %32, %37 ], [ %114, %110 ]
  %43 = phi ptr [ %11, %37 ], [ %112, %110 ]
  %44 = phi ptr [ %1, %37 ], [ %111, %110 ]
  %45 = load i8, ptr %38, align 2, !tbaa !157
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = lshr i64 435941379, %42
  %49 = and i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  tail call fastcc void @check_promotion(ptr noundef nonnull %0, ptr noundef nonnull %44) #14
  %52 = load i32, ptr %43, align 4, !tbaa !135
  br label %53

53:                                               ; preds = %51, %47, %40
  %54 = phi i32 [ %52, %51 ], [ %41, %47 ], [ %41, %40 ]
  switch i32 %54, label %15 [
    i32 27, label %55
    i32 28, label %55
    i32 1, label %55
    i32 14, label %55
    i32 4, label %59
    i32 5, label %59
    i32 12, label %59
    i32 13, label %59
    i32 19, label %59
    i32 2, label %63
    i32 3, label %63
    i32 25, label %63
    i32 26, label %63
    i32 23, label %67
    i32 24, label %67
    i32 9, label %71
    i32 10, label %71
    i32 11, label %71
    i32 6, label %75
    i32 7, label %79
    i32 8, label %79
    i32 16, label %84
    i32 15, label %119
    i32 20, label %145
    i32 18, label %158
    i32 17, label %186
  ]

55:                                               ; preds = %53, %53, %53, %53
  %56 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %57 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_unary_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %4, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.cpp_num) align 8 %57, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %58 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

59:                                               ; preds = %53, %53, %53, %53, %53
  %60 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %61 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %60, ptr noundef nonnull byval(%struct.cpp_num) align 8 %61, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %62 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

63:                                               ; preds = %53, %53, %53, %53
  %64 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %65 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_inequality_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %64, ptr noundef nonnull byval(%struct.cpp_num) align 8 %65, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %66 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

67:                                               ; preds = %53, %53
  %68 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  %69 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_equality_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef byval(%struct.cpp_num) align 8 %68, ptr noundef nonnull byval(%struct.cpp_num) align 8 %69, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %70 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

71:                                               ; preds = %53, %53, %53
  %72 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  %73 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_bitwise_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %8, ptr noundef byval(%struct.cpp_num) align 8 %72, ptr noundef nonnull byval(%struct.cpp_num) align 8 %73, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  %74 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

75:                                               ; preds = %53
  %76 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  %77 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %76, ptr noundef nonnull byval(%struct.cpp_num) align 8 %77) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  %78 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

79:                                               ; preds = %53, %53
  %80 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  %81 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  %82 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !142
  call fastcc void @num_div_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %80, ptr noundef nonnull byval(%struct.cpp_num) align 8 %81, i32 noundef %54, i32 noundef %83) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %191

84:                                               ; preds = %53
  %85 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %86 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  %87 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !138
  %89 = load i64, ptr %86, align 8, !tbaa !139
  %90 = or i64 %89, %88
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = load i32, ptr %39, align 4, !tbaa !133
  %94 = add i32 %93, -1
  store i32 %94, ptr %39, align 4, !tbaa !133
  br label %102

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  %97 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !138
  %99 = load i64, ptr %96, align 8, !tbaa !139
  %100 = or i64 %99, %98
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %92, %95
  %103 = phi i1 [ true, %92 ], [ %101, %95 ]
  %104 = zext i1 %103 to i64
  store i64 %104, ptr %87, align 8, !tbaa !138
  store i64 0, ptr %86, align 8, !tbaa !139
  %105 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 2
  store i8 0, ptr %105, align 8, !tbaa !158
  %106 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 3
  store i8 0, ptr %106, align 1, !tbaa !159
  %107 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !142
  %109 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %108, ptr %109, align 8, !tbaa !142
  br label %110

110:                                              ; preds = %191, %199, %202, %102, %137, %182
  %111 = phi ptr [ %159, %182 ], [ %120, %137 ], [ %85, %102 ], [ %195, %202 ], [ %195, %199 ], [ %195, %191 ]
  %112 = getelementptr inbounds %struct.op, ptr %111, i64 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !135
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %114
  %116 = load i8, ptr %115, align 2, !tbaa !155
  %117 = zext i8 %116 to i32
  %118 = icmp ult i32 %31, %117
  br i1 %118, label %40, label %204, !llvm.loop !160

119:                                              ; preds = %53
  %120 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %121 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  %122 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !138
  %124 = load i64, ptr %121, align 8, !tbaa !139
  %125 = or i64 %124, %123
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, ptr %39, align 4, !tbaa !133
  %129 = add i32 %128, -1
  store i32 %129, ptr %39, align 4, !tbaa !133
  br label %137

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  %132 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !138
  %134 = load i64, ptr %131, align 8, !tbaa !139
  %135 = or i64 %134, %133
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %127, %130
  %138 = phi i1 [ %136, %130 ], [ false, %127 ]
  %139 = zext i1 %138 to i64
  store i64 %139, ptr %122, align 8, !tbaa !138
  store i64 0, ptr %121, align 8, !tbaa !139
  %140 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 2
  store i8 0, ptr %140, align 8, !tbaa !158
  %141 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 3
  store i8 0, ptr %141, align 1, !tbaa !159
  %142 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !142
  %144 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %143, ptr %144, align 8, !tbaa !142
  br label %110

145:                                              ; preds = %53
  %146 = icmp eq i32 %2, 21
  br i1 %146, label %151, label %147

147:                                              ; preds = %145
  %148 = load ptr, ptr %44, align 8, !tbaa !137
  %149 = load i32, ptr %148, align 8, !tbaa !141
  %150 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %149, i32 noundef 0, ptr noundef nonnull @.str.41) #13
  br label %209

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %153 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  %154 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, ptr noundef nonnull align 8 dereferenceable(24) %154, i64 24, i1 false), !tbaa.struct !116
  %155 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !142
  %157 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %156, ptr %157, align 8, !tbaa !142
  br label %209

158:                                              ; preds = %53
  %159 = getelementptr inbounds %struct.op, ptr %44, i64 -2
  %160 = getelementptr %struct.op, ptr %44, i64 -2, i32 1
  %161 = getelementptr %struct.op, ptr %44, i64 -2, i32 1, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !138
  %163 = load i64, ptr %160, align 8, !tbaa !139
  %164 = or i64 %163, %162
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %158
  %167 = load i32, ptr %39, align 4, !tbaa !133
  %168 = add i32 %167, -1
  store i32 %168, ptr %39, align 4, !tbaa !133
  br label %169

169:                                              ; preds = %158, %166
  %170 = phi i64 [ -1, %166 ], [ 0, %158 ]
  %171 = getelementptr %struct.op, ptr %44, i64 %170, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %160, ptr noundef nonnull align 8 dereferenceable(24) %171, i64 24, i1 false)
  %172 = getelementptr %struct.op, ptr %44, i64 %170, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !142
  %174 = getelementptr %struct.op, ptr %44, i64 -2, i32 2
  store i32 %173, ptr %174, align 8
  %175 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !158
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1, i32 2
  %180 = load i8, ptr %179, align 8, !tbaa !158
  %181 = icmp ne i8 %180, 0
  br label %182

182:                                              ; preds = %178, %169
  %183 = phi i1 [ true, %169 ], [ %181, %178 ]
  %184 = zext i1 %183 to i8
  %185 = getelementptr %struct.op, ptr %44, i64 -2, i32 1, i32 2
  store i8 %184, ptr %185, align 8, !tbaa !158
  br label %110

186:                                              ; preds = %53
  %187 = and i32 %2, -2
  %188 = icmp eq i32 %187, 18
  br i1 %188, label %209, label %189

189:                                              ; preds = %186
  %190 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.42) #13
  br label %209

191:                                              ; preds = %79, %75, %71, %67, %63, %59, %55
  %192 = phi ptr [ %82, %79 ], [ %78, %75 ], [ %74, %71 ], [ %70, %67 ], [ %66, %63 ], [ %62, %59 ], [ %58, %55 ]
  %193 = load i32, ptr %192, align 8, !tbaa !142
  %194 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %193, ptr %194, align 8, !tbaa !142
  %195 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %196 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 3
  %197 = load i8, ptr %196, align 1, !tbaa !159
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %110, label %199

199:                                              ; preds = %191
  %200 = load i32, ptr %39, align 4, !tbaa !133
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %110

202:                                              ; preds = %199
  %203 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.43) #13
  br label %110

204:                                              ; preds = %110, %23
  %205 = phi ptr [ %1, %23 ], [ %111, %110 ]
  %206 = icmp eq i32 %2, 21
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.44) #13
  br label %209

209:                                              ; preds = %204, %186, %21, %207, %189, %151, %147, %18
  %210 = phi ptr [ null, %18 ], [ null, %189 ], [ null, %147 ], [ %152, %151 ], [ null, %207 ], [ %1, %21 ], [ %44, %186 ], [ %205, %204 ]
  ret ptr %210
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_expand_op_stack(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !161 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = shl nsw i64 %9, 1
  %11 = add nsw i64 %10, 20
  %12 = mul i64 %11, 40
  %13 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %12) #13
  store ptr %13, ptr %4, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 %11
  store ptr %14, ptr %2, align 8, !tbaa !140
  %15 = getelementptr inbounds i8, ptr %13, i64 %8
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @cpp_num_sign_extend(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) local_unnamed_addr #5 !prof !44 {
  %4 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !105
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %39, !prof !162

7:                                                ; preds = %3
  %8 = icmp ugt i64 %2, 64
  br i1 %8, label %9, label %23, !prof !163

9:                                                ; preds = %7
  %10 = and i64 %2, -64
  %11 = icmp eq i64 %10, 64
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i64, ptr %1, align 8, !tbaa !129
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
  %25 = load i64, ptr %24, align 8, !tbaa !109
  %26 = add nsw i64 %2, -1
  %27 = shl nuw i64 1, %26
  %28 = and i64 %25, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30, !prof !164

30:                                               ; preds = %23
  %31 = icmp eq i64 %2, 64
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = sub nuw nsw i64 64, %2
  %34 = lshr i64 -1, %33
  %35 = xor i64 %34, -1
  %36 = or i64 %25, %35
  store i64 %36, ptr %24, align 8, !tbaa !109
  br label %37

37:                                               ; preds = %30, %32, %18
  %38 = phi i64 [ %22, %18 ], [ -1, %32 ], [ -1, %30 ]
  store i64 %38, ptr %1, align 8, !tbaa !129
  br label %39

39:                                               ; preds = %37, %12, %9, %23, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_trim(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) unnamed_addr #5 !prof !127 !PGOFuncName !165 {
  %4 = icmp ugt i64 %2, 64
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = add i64 %2, -64
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = shl nsw i64 -1, %6
  %10 = xor i64 %9, -1
  %11 = load i64, ptr %1, align 8, !tbaa !129
  %12 = and i64 %11, %10
  br label %21

13:                                               ; preds = %3
  %14 = icmp eq i64 %2, 64
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = shl nsw i64 -1, %2
  %17 = xor i64 %16, -1
  %18 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !109
  %20 = and i64 %19, %17
  store i64 %20, ptr %18, align 8, !tbaa !109
  br label %21

21:                                               ; preds = %13, %15, %8
  %22 = phi i64 [ %12, %8 ], [ 0, %15 ], [ 0, %13 ]
  store i64 %22, ptr %1, align 8, !tbaa !129
  br label %23

23:                                               ; preds = %21, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: optsize
declare i32 @cpp_interpret_charconst(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @parse_defined(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !127 !PGOFuncName !166 {
  %3 = alloca %struct.cpp_token, align 8
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !168
  %8 = add i8 %7, 1
  store i8 %8, ptr %6, align 8, !tbaa !168
  %9 = tail call ptr @cpp_get_token(ptr noundef %1) #13
  %10 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %29 [
    i8 20, label %12
    i8 53, label %17
  ]

12:                                               ; preds = %2
  %13 = tail call ptr @cpp_get_token(ptr noundef nonnull %1) #13
  %14 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 53
  br i1 %16, label %20, label %29

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.cpp_token, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  br label %44

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call ptr @cpp_get_token(ptr noundef nonnull %1) #13
  %24 = getelementptr inbounds %struct.cpp_token, ptr %23, i64 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 21
  br i1 %26, label %44, label %27

27:                                               ; preds = %20
  %28 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 3, ptr noundef nonnull @.str.36) #13
  br label %98

29:                                               ; preds = %2, %12
  %30 = phi ptr [ %14, %12 ], [ %10, %2 ]
  %31 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %32 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 3, ptr noundef nonnull @.str.37) #13
  %33 = getelementptr inbounds %struct.cpp_token, ptr %31, i64 0, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !169
  %35 = and i16 %34, 16
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %98, label %37

37:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %38 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  store i16 0, ptr %38, align 2, !tbaa !169
  %39 = load i8, ptr %30, align 4
  %40 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 1
  store i8 %39, ptr %40, align 4
  %41 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %1, ptr noundef nonnull %31) #13
  %42 = call ptr @cpp_token_as_text(ptr noundef nonnull %1, ptr noundef nonnull %3) #13
  %43 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 3, ptr noundef nonnull @.str.38, ptr noundef %41, ptr noundef %42) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %98

44:                                               ; preds = %17, %20
  %45 = phi ptr [ %22, %20 ], [ %19, %17 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %98, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %4, align 8, !tbaa !167
  %49 = icmp eq ptr %48, %5
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 31
  %52 = load i8, ptr %51, align 1, !tbaa !61
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.39) #13
  br label %56

56:                                               ; preds = %47, %50, %54
  %57 = getelementptr inbounds %struct.cpp_hashnode, ptr %45, i64 0, i32 3
  %58 = load i16, ptr %57, align 2
  %59 = and i16 %58, 319
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.cpp_hashnode, ptr %45, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.cpp_macro, ptr %63, i64 0, i32 5
  %65 = load i8, ptr %64, align 2
  %66 = or i8 %65, 8
  store i8 %66, ptr %64, align 2
  %67 = load i16, ptr %57, align 2
  br label %68

68:                                               ; preds = %61, %56
  %69 = phi i16 [ %67, %61 ], [ %58, %56 ]
  %70 = and i16 %69, 8192
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = or disjoint i16 %69, 8192
  store i16 %73, ptr %57, align 2
  %74 = and i16 %69, 63
  %75 = icmp eq i16 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 49, i32 13
  %78 = load ptr, ptr %77, align 8, !tbaa !170
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %84

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 49, i32 14
  %82 = load ptr, ptr %81, align 8, !tbaa !171
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80, %76
  %85 = phi ptr [ %78, %76 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !172
  tail call void %85(ptr noundef nonnull %1, i32 noundef %87, ptr noundef nonnull %45) #13
  br label %88

88:                                               ; preds = %84, %68, %80, %76
  %89 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 27
  store ptr %45, ptr %89, align 8, !tbaa !134
  %90 = load i8, ptr %6, align 8, !tbaa !168
  %91 = add i8 %90, -1
  store i8 %91, ptr %6, align 8, !tbaa !168
  %92 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 0, ptr %92, align 8, !tbaa !105
  store i64 0, ptr %0, align 8, !tbaa !129
  %93 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %93, align 1, !tbaa !108
  %94 = load i16, ptr %57, align 2
  %95 = and i16 %94, 63
  %96 = icmp eq i16 %95, 1
  %97 = zext i1 %96 to i64
  br label %103

98:                                               ; preds = %29, %37, %27, %44
  %99 = load i8, ptr %6, align 8, !tbaa !168
  %100 = add i8 %99, -1
  store i8 %100, ptr %6, align 8, !tbaa !168
  %101 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 0, ptr %101, align 8, !tbaa !105
  store i64 0, ptr %0, align 8, !tbaa !129
  %102 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %102, align 1, !tbaa !108
  br label %103

103:                                              ; preds = %98, %88
  %104 = phi i64 [ %97, %88 ], [ 0, %98 ]
  %105 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  store i64 %104, ptr %105, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare i32 @_cpp_test_assertion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_promotion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !127 !PGOFuncName !173 {
  %3 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 1, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !158
  %6 = getelementptr %struct.op, ptr %1, i64 -1, i32 1
  %7 = getelementptr %struct.op, ptr %1, i64 -1, i32 1, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !158
  %9 = icmp eq i8 %5, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = icmp eq i8 %5, 0
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %13 = load i64, ptr %12, align 8, !tbaa !110
  br i1 %11, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc zeroext i8 @num_positive(ptr noundef byval(%struct.cpp_num) align 8 %6, i64 noundef %13) #14, !range !125
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %28

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14, !range !125
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17, %14
  %21 = phi i64 [ -1, %14 ], [ 0, %17 ]
  %22 = phi ptr [ @.str.45, %14 ], [ @.str.46, %17 ]
  %23 = getelementptr %struct.op, ptr %1, i64 %21, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !142
  %25 = load ptr, ptr %1, align 8, !tbaa !137
  %26 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef %25) #13
  %27 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %24, i32 noundef 0, ptr noundef nonnull %22, ptr noundef %26) #13
  br label %28

28:                                               ; preds = %20, %17, %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @num_unary_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, i32 noundef %3) unnamed_addr #0 !prof !127 !PGOFuncName !174 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  switch i32 %3, label %28 [
    i32 27, label %7
    i32 28, label %19
    i32 14, label %22
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 17
  %9 = load i8, ptr %8, align 1, !tbaa !84
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !133
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.47) #13
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %18, align 1, !tbaa !108
  br label %37

19:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %21 = load i64, ptr %20, align 8, !tbaa !110
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %21) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %37

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %2, align 8, !tbaa !117
  %24 = xor <2 x i64> %23, <i64 -1, i64 -1>
  store <2 x i64> %24, ptr %2, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %26 = load i64, ptr %25, align 8, !tbaa !110
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %26) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %27 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %27, align 1, !tbaa !108
  br label %37

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !109
  %31 = load i64, ptr %2, align 8, !tbaa !129
  %32 = or i64 %31, %30
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i64
  store i64 %34, ptr %29, align 8, !tbaa !109
  store i64 0, ptr %2, align 8, !tbaa !129
  %35 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %35, align 1, !tbaa !108
  %36 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  store i8 0, ptr %36, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %28, %22, %19, %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @num_binary_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef byval(%struct.cpp_num) align 8 %3, i32 noundef %4) unnamed_addr #0 !prof !127 !PGOFuncName !175 {
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = alloca %struct.cpp_num, align 8
  %11 = alloca %struct.cpp_num, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %13 = load i64, ptr %12, align 8, !tbaa !110
  switch i32 %4, label %75 [
    i32 13, label %14
    i32 12, label %14
    i32 5, label %39
    i32 4, label %40
  ]

14:                                               ; preds = %5, %5
  %15 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !105
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14, !range !125
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = icmp eq i32 %4, 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %23 = load i64, ptr %3, align 8, !tbaa !129
  %24 = icmp eq i64 %23, 0
  %25 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = select i1 %24, i64 %26, i64 -1
  br i1 %22, label %37, label %35

28:                                               ; preds = %18, %14
  %29 = load i64, ptr %3, align 8, !tbaa !129
  %30 = icmp eq i64 %29, 0
  %31 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = select i1 %30, i64 %32, i64 -1
  %34 = icmp eq i32 %4, 13
  br i1 %34, label %35, label %37

35:                                               ; preds = %21, %28
  %36 = phi i64 [ %33, %28 ], [ %27, %21 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call fastcc void @num_lshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %8, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %13, i64 noundef %36) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  br label %90

37:                                               ; preds = %21, %28
  %38 = phi i64 [ %33, %28 ], [ %27, %21 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call fastcc void @num_rshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %13, i64 noundef %38) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  br label %90

39:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %40

40:                                               ; preds = %5, %39
  %41 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !109
  %43 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !109
  %45 = add i64 %44, %42
  %46 = getelementptr inbounds %struct.cpp_num, ptr %6, i64 0, i32 1
  store i64 %45, ptr %46, align 8, !tbaa !109
  %47 = load i64, ptr %2, align 8, !tbaa !129
  %48 = load i64, ptr %3, align 8, !tbaa !129
  %49 = add i64 %48, %47
  %50 = icmp ult i64 %45, %42
  %51 = zext i1 %50 to i64
  %52 = add i64 %49, %51
  store i64 %52, ptr %6, align 8, !tbaa !129
  %53 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %54 = load i8, ptr %53, align 8, !tbaa !105
  %55 = icmp ne i8 %54, 0
  %56 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %57 = load i8, ptr %56, align 8
  %58 = icmp ne i8 %57, 0
  %59 = select i1 %55, i1 true, i1 %58
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.cpp_num, ptr %6, i64 0, i32 2
  store i8 %60, ptr %61, align 8, !tbaa !105
  %62 = getelementptr inbounds %struct.cpp_num, ptr %6, i64 0, i32 3
  store i8 0, ptr %62, align 1, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %11, ptr noundef nonnull byval(%struct.cpp_num) align 8 %6, i64 noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  %63 = load i8, ptr %61, align 8, !tbaa !105
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %40
  %66 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %13) #14, !range !125
  %67 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14, !range !125
  %68 = icmp eq i8 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %6, i64 noundef %13) #14, !range !125
  %71 = icmp ne i8 %66, %70
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i8 [ 0, %65 ], [ %72, %69 ]
  store i8 %74, ptr %62, align 1, !tbaa !108
  br label %90

75:                                               ; preds = %5
  %76 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 31
  %77 = load i8, ptr %76, align 1, !tbaa !61
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 29
  %81 = load i8, ptr %80, align 1, !tbaa !81
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %85 = load i32, ptr %84, align 4, !tbaa !133
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79
  %88 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.48) #13
  br label %89

89:                                               ; preds = %87, %83, %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !116
  br label %90

90:                                               ; preds = %89, %37, %35, %40, %73
  %91 = phi ptr [ %6, %73 ], [ %6, %40 ], [ %2, %35 ], [ %2, %37 ], [ %2, %89 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %91, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_inequality_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %3, i32 noundef %4) unnamed_addr #5 !prof !127 !PGOFuncName !176 {
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %7 = load i64, ptr %6, align 8, !tbaa !110
  %8 = tail call fastcc zeroext i8 @num_greater_eq(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %7) #14, !range !125
  switch i32 %4, label %27 [
    i32 25, label %9
    i32 3, label %11
    i32 2, label %14
  ]

9:                                                ; preds = %5
  %10 = zext nneg i8 %8 to i64
  br label %40

11:                                               ; preds = %5
  %12 = xor i8 %8, 1
  %13 = zext nneg i8 %12 to i64
  br label %40

14:                                               ; preds = %5
  %15 = icmp eq i8 %8, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !109
  %21 = icmp ne i64 %18, %20
  %22 = load i64, ptr %2, align 8
  %23 = load i64, ptr %3, align 8
  %24 = icmp ne i64 %22, %23
  %25 = select i1 %21, i1 true, i1 %24
  %26 = zext i1 %25 to i64
  br label %40

27:                                               ; preds = %5
  %28 = icmp eq i8 %8, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !109
  %32 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !109
  %34 = icmp eq i64 %31, %33
  %35 = load i64, ptr %2, align 8
  %36 = load i64, ptr %3, align 8
  %37 = icmp eq i64 %35, %36
  %38 = select i1 %34, i1 %37, i1 false
  %39 = zext i1 %38 to i64
  br label %40

40:                                               ; preds = %27, %29, %14, %16, %11, %9
  %41 = phi i64 [ %13, %11 ], [ %10, %9 ], [ 0, %14 ], [ %26, %16 ], [ 1, %27 ], [ %39, %29 ]
  %42 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  store i64 %41, ptr %42, align 8, !tbaa !109
  store i64 0, ptr %2, align 8, !tbaa !129
  %43 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %43, align 1, !tbaa !108
  %44 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  store i8 0, ptr %44, align 8, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_equality_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %2, i32 noundef %3) unnamed_addr #5 !prof !127 !PGOFuncName !177 {
  %5 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !109
  %9 = icmp eq i64 %6, %8
  %10 = load i64, ptr %1, align 8
  %11 = load i64, ptr %2, align 8
  %12 = icmp eq i64 %10, %11
  %13 = select i1 %9, i1 %12, i1 false
  %14 = icmp eq i32 %3, 24
  %15 = xor i1 %14, %13
  %16 = zext i1 %15 to i64
  store i64 %16, ptr %5, align 8, !tbaa !109
  store i64 0, ptr %1, align 8, !tbaa !129
  %17 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %17, align 1, !tbaa !108
  %18 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  store i8 0, ptr %18, align 8, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_bitwise_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %2, i32 noundef %3) unnamed_addr #5 !prof !127 !PGOFuncName !178 {
  %5 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %5, align 1, !tbaa !108
  %6 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !105
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = icmp ne i8 %10, 0
  %12 = select i1 %8, i1 true, i1 %11
  %13 = zext i1 %12 to i8
  store i8 %13, ptr %6, align 8, !tbaa !105
  %14 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !109
  switch i32 %3, label %28 [
    i32 9, label %18
    i32 10, label %23
  ]

18:                                               ; preds = %4
  %19 = and i64 %17, %15
  store i64 %19, ptr %16, align 8, !tbaa !109
  %20 = load i64, ptr %2, align 8, !tbaa !129
  %21 = load i64, ptr %1, align 8, !tbaa !129
  %22 = and i64 %21, %20
  br label %33

23:                                               ; preds = %4
  %24 = or i64 %17, %15
  store i64 %24, ptr %16, align 8, !tbaa !109
  %25 = load i64, ptr %2, align 8, !tbaa !129
  %26 = load i64, ptr %1, align 8, !tbaa !129
  %27 = or i64 %26, %25
  br label %33

28:                                               ; preds = %4
  %29 = xor i64 %17, %15
  store i64 %29, ptr %16, align 8, !tbaa !109
  %30 = load i64, ptr %2, align 8, !tbaa !129
  %31 = load i64, ptr %1, align 8, !tbaa !129
  %32 = xor i64 %31, %30
  br label %33

33:                                               ; preds = %23, %28, %18
  %34 = phi i64 [ %27, %23 ], [ %32, %28 ], [ %22, %18 ]
  store i64 %34, ptr %1, align 8, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_mul(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef byval(%struct.cpp_num) align 8 %3) unnamed_addr #5 !prof !127 !PGOFuncName !179 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = alloca %struct.cpp_num, align 8
  %11 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !105
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %15 = load i8, ptr %14, align 8
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %13, i1 true, i1 %16
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %19 = load i64, ptr %18, align 8, !tbaa !110
  br i1 %17, label %29, label %20

20:                                               ; preds = %4
  %21 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %19) #14, !range !125
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i8 [ 0, %20 ], [ 1, %23 ]
  %26 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %19) #14, !range !125
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %29

29:                                               ; preds = %24, %28, %4
  %30 = phi i8 [ 0, %4 ], [ %25, %24 ], [ %21, %28 ]
  %31 = load i64, ptr %2, align 8, !tbaa !129
  %32 = icmp ne i64 %31, 0
  %33 = load i64, ptr %3, align 8
  %34 = icmp ne i64 %33, 0
  %35 = and i1 %32, %34
  %36 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !109
  %38 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !109
  tail call fastcc void @num_part_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %0, i64 noundef %37, i64 noundef %39) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call fastcc void @num_part_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, i64 noundef %31, i64 noundef %39) #14
  %40 = load i64, ptr %7, align 8, !tbaa.struct !116
  %41 = getelementptr inbounds i8, ptr %7, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa.struct !180
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %43 = load i64, ptr %0, align 8, !tbaa !129
  %44 = add i64 %43, %42
  %45 = icmp ne i64 %40, 0
  %46 = or i1 %35, %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call fastcc void @num_part_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %8, i64 noundef %37, i64 noundef %33) #14
  %47 = load i64, ptr %8, align 8, !tbaa.struct !116
  %48 = getelementptr inbounds i8, ptr %8, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa.struct !180
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  %50 = add i64 %49, %44
  store i64 %50, ptr %0, align 8, !tbaa !129
  %51 = icmp ne i64 %47, 0
  %52 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  %54 = load i64, ptr %52, align 8, !tbaa !109
  %55 = icmp ne i64 %54, %53
  %56 = load i64, ptr %0, align 8
  %57 = icmp ne i64 %56, %50
  %58 = icmp eq i8 %30, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %60

60:                                               ; preds = %59, %29
  %61 = select i1 %17, i1 true, i1 %55
  %62 = select i1 %61, i1 true, i1 %57
  %63 = select i1 %62, i1 true, i1 %51
  %64 = select i1 %63, i1 true, i1 %46
  %65 = xor i1 %17, true
  br i1 %64, label %75, label %66

66:                                               ; preds = %60
  %67 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %19) #14, !range !125
  %68 = zext i1 %58 to i8
  %69 = icmp eq i8 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i64, ptr %52, align 8, !tbaa !109
  %72 = load i64, ptr %0, align 8, !tbaa !129
  %73 = or i64 %72, %71
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %60, %70, %66
  %76 = phi i1 [ %65, %60 ], [ false, %66 ], [ %74, %70 ]
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 %77, ptr %78, align 1, !tbaa !108
  %79 = zext i1 %17 to i8
  %80 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 %79, ptr %80, align 8, !tbaa !105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @num_div_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef byval(%struct.cpp_num) align 8 %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !127 !PGOFuncName !181 {
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = alloca %struct.cpp_num, align 8
  %11 = alloca %struct.cpp_num, align 8
  %12 = alloca %struct.cpp_num, align 8
  %13 = alloca %struct.cpp_num, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  %14 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %15 = load i8, ptr %14, align 8, !tbaa !105
  %16 = icmp ne i8 %15, 0
  %17 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %18 = load i8, ptr %17, align 8
  %19 = icmp ne i8 %18, 0
  %20 = select i1 %16, i1 true, i1 %19
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %23 = load i64, ptr %22, align 8, !tbaa !110
  br i1 %20, label %33, label %24

24:                                               ; preds = %6
  %25 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %23) #14, !range !125
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i8 [ 0, %24 ], [ 1, %27 ]
  %30 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %23) #14, !range !125
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %33

33:                                               ; preds = %28, %32, %6
  %34 = phi i8 [ 0, %6 ], [ %29, %28 ], [ %25, %32 ]
  %35 = phi i8 [ 0, %6 ], [ %29, %28 ], [ %29, %32 ]
  %36 = load i64, ptr %3, align 8, !tbaa !129
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = add i64 %23, -65
  %40 = shl nuw i64 1, %39
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi i64 [ %23, %38 ], [ %44, %41 ]
  %43 = phi i64 [ %40, %38 ], [ %47, %41 ]
  %44 = add i64 %42, -1
  %45 = and i64 %43, %36
  %46 = icmp eq i64 %45, 0
  %47 = lshr i64 %43, 1
  br i1 %46, label %41, label %72

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !109
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = icmp ugt i64 %23, 64
  %54 = select i1 %53, i64 -65, i64 -1
  %55 = add i64 %54, %23
  %56 = shl nuw i64 1, %55
  %57 = and i64 %56, %50
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52, %59
  %60 = phi i64 [ %63, %59 ], [ %56, %52 ]
  %61 = phi i64 [ %62, %59 ], [ %55, %52 ]
  %62 = add i64 %61, -1
  %63 = lshr i64 %60, 1
  %64 = and i64 %63, %50
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %59, label %72

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %68 = load i32, ptr %67, align 4, !tbaa !133
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %128

70:                                               ; preds = %66
  %71 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %1, i32 noundef 3, i32 noundef %5, i32 noundef 0, ptr noundef nonnull @.str.49) #13
  br label %128

72:                                               ; preds = %41, %59, %52
  %73 = phi i64 [ %55, %52 ], [ %62, %59 ], [ %44, %41 ]
  store i8 1, ptr %17, align 8, !tbaa !105
  store i8 1, ptr %14, align 8, !tbaa !105
  %74 = xor i64 %73, -1
  %75 = add i64 %23, %74
  call fastcc void @num_lshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %8, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %23, i64 noundef %75) #14
  %76 = getelementptr inbounds %struct.cpp_num, ptr %7, i64 0, i32 1
  %77 = getelementptr inbounds %struct.cpp_num, ptr %8, i64 0, i32 1
  br label %78

78:                                               ; preds = %96, %72
  %79 = phi i64 [ 0, %72 ], [ %97, %96 ]
  %80 = phi i64 [ 0, %72 ], [ %98, %96 ]
  %81 = phi i64 [ %75, %72 ], [ %99, %96 ]
  %82 = tail call fastcc zeroext i8 @num_greater_eq(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, ptr noundef nonnull byval(%struct.cpp_num) align 8 %8, i64 noundef %23) #14, !range !125
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call fastcc void @num_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %11, ptr noundef %1, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, ptr noundef nonnull byval(%struct.cpp_num) align 8 %8, i32 noundef 5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  %85 = icmp ugt i64 %81, 63
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = add i64 %81, -64
  %88 = shl nuw i64 1, %87
  %89 = or i64 %79, %88
  br label %96

90:                                               ; preds = %84
  %91 = shl nuw i64 1, %81
  %92 = or i64 %80, %91
  br label %93

93:                                               ; preds = %90, %78
  %94 = phi i64 [ %92, %90 ], [ %80, %78 ]
  %95 = icmp eq i64 %81, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %86, %93
  %97 = phi i64 [ %89, %86 ], [ %79, %93 ]
  %98 = phi i64 [ %80, %86 ], [ %94, %93 ]
  %99 = add i64 %81, -1
  %100 = load i64, ptr %77, align 8, !tbaa !109
  %101 = load i64, ptr %8, align 8, !tbaa !129
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %100, i64 63)
  store i64 %102, ptr %77, align 8, !tbaa !109
  %103 = lshr i64 %101, 1
  store i64 %103, ptr %8, align 8, !tbaa !129
  br label %78

104:                                              ; preds = %93
  store i64 %94, ptr %76, align 8, !tbaa !109
  store i64 %79, ptr %7, align 8, !tbaa !129
  %105 = icmp eq i32 %4, 7
  br i1 %105, label %106, label %124

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.cpp_num, ptr %7, i64 0, i32 2
  store i8 %21, ptr %107, align 8, !tbaa !105
  %108 = getelementptr inbounds %struct.cpp_num, ptr %7, i64 0, i32 3
  store i8 0, ptr %108, align 1, !tbaa !108
  br i1 %20, label %128, label %109

109:                                              ; preds = %106
  %110 = icmp eq i8 %34, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %12, ptr noundef nonnull byval(%struct.cpp_num) align 8 %7, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  br label %112

112:                                              ; preds = %111, %109
  %113 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %7, i64 noundef %23) #14, !range !125
  %114 = zext i1 %110 to i8
  %115 = icmp eq i8 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i64, ptr %76, align 8, !tbaa !109
  %118 = load i64, ptr %7, align 8, !tbaa !129
  %119 = or i64 %118, %117
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i8
  br label %122

122:                                              ; preds = %116, %112
  %123 = phi i8 [ 0, %112 ], [ %121, %116 ]
  store i8 %123, ptr %108, align 1, !tbaa !108
  br label %128

124:                                              ; preds = %104
  store i8 %21, ptr %14, align 8, !tbaa !105
  %125 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %125, align 1, !tbaa !108
  %126 = icmp eq i8 %35, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %13, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #15
  br label %128

128:                                              ; preds = %124, %127, %106, %122, %66, %70
  %129 = phi ptr [ %2, %70 ], [ %2, %66 ], [ %7, %122 ], [ %7, %106 ], [ %2, %127 ], [ %2, %124 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %129, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_negate(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) unnamed_addr #5 !prof !127 !PGOFuncName !182 {
  %4 = alloca %struct.cpp_num, align 8
  %5 = load i64, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = xor i64 %5, -1
  store i64 %8, ptr %1, align 8, !tbaa !129
  %9 = sub i64 0, %7
  store i64 %9, ptr %6, align 8, !tbaa !109
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = sub i64 0, %5
  store i64 %12, ptr %1, align 8, !tbaa !129
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %4, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %15 = load i8, ptr %14, align 8, !tbaa !105
  %16 = icmp eq i8 %15, 0
  %17 = load i64, ptr %6, align 8
  %18 = icmp eq i64 %17, %7
  %19 = select i1 %16, i1 %18, i1 false
  %20 = load i64, ptr %1, align 8
  %21 = icmp eq i64 %20, %5
  %22 = select i1 %19, i1 %21, i1 false
  %23 = or i64 %5, %7
  %24 = icmp ne i64 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %26, ptr %27, align 1, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @num_lshift(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 !prof !127 !PGOFuncName !183 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = icmp ult i64 %3, %2
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !105
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !109
  %15 = load i64, ptr %1, align 8, !tbaa !129
  %16 = or i64 %15, %14
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i8 [ 0, %8 ], [ %18, %12 ]
  %21 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %20, ptr %21, align 1, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %55

22:                                               ; preds = %4
  %23 = load i64, ptr %1, align 8
  %24 = getelementptr inbounds i8, ptr %1, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %1, i64 16
  %27 = icmp ugt i64 %3, 63
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = add i64 %3, -64
  store i64 %25, ptr %1, align 8, !tbaa !129
  store i64 0, ptr %24, align 8, !tbaa !109
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i64 [ 0, %28 ], [ %25, %22 ]
  %32 = phi i64 [ %25, %28 ], [ %23, %22 ]
  %33 = phi i64 [ %29, %28 ], [ %3, %22 ]
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = shl i64 %32, %33
  %37 = sub i64 64, %33
  %38 = lshr i64 %31, %37
  %39 = or i64 %38, %36
  store i64 %39, ptr %1, align 8, !tbaa !129
  %40 = shl i64 %31, %33
  store i64 %40, ptr %24, align 8, !tbaa !109
  br label %41

41:                                               ; preds = %35, %30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %42 = load i8, ptr %26, align 8, !tbaa !105
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %45, align 1, !tbaa !108
  br label %55

46:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @num_rshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) #14
  %47 = load i64, ptr %6, align 8, !tbaa.struct !116
  %48 = getelementptr inbounds i8, ptr %6, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa.struct !180
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %50 = icmp ne i64 %25, %49
  %51 = icmp ne i64 %23, %47
  %52 = select i1 %50, i1 true, i1 %51
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %53, ptr %54, align 1, !tbaa !108
  br label %55

55:                                               ; preds = %44, %46, %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @num_rshift(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 !prof !127 !PGOFuncName !184 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14, !range !125
  %7 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !105
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq i8 %6, 0
  %11 = select i1 %9, i1 %10, i1 false
  %12 = sext i1 %11 to i64
  %13 = icmp ult i64 %3, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  store i64 %12, ptr %15, align 8, !tbaa !109
  br label %50

16:                                               ; preds = %4
  %17 = icmp ult i64 %2, 64
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  store i64 %12, ptr %1, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  br label %24

20:                                               ; preds = %16
  %21 = icmp ult i64 %2, 128
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = add nsw i64 %2, -64
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %1, %22 ], [ %19, %18 ]
  %26 = phi i64 [ %23, %22 ], [ %2, %18 ]
  %27 = shl nsw i64 %12, %26
  %28 = load i64, ptr %25, align 8, !tbaa !117
  %29 = or i64 %28, %27
  store i64 %29, ptr %25, align 8, !tbaa !117
  br label %30

30:                                               ; preds = %24, %20
  %31 = icmp ugt i64 %3, 63
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = add i64 %3, -64
  %34 = load i64, ptr %1, align 8, !tbaa !129
  %35 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  store i64 %34, ptr %35, align 8, !tbaa !109
  store i64 %12, ptr %1, align 8, !tbaa !129
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i64 [ %33, %32 ], [ %3, %30 ]
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !109
  %42 = lshr i64 %41, %37
  %43 = load i64, ptr %1, align 8, !tbaa !129
  %44 = sub i64 64, %37
  %45 = shl i64 %43, %44
  %46 = or i64 %45, %42
  store i64 %46, ptr %40, align 8, !tbaa !109
  %47 = lshr i64 %43, %37
  %48 = shl nsw i64 %12, %44
  %49 = or i64 %47, %48
  br label %50

50:                                               ; preds = %14, %39
  %51 = phi i64 [ %49, %39 ], [ %12, %14 ]
  store i64 %51, ptr %1, align 8, !tbaa !129
  br label %52

52:                                               ; preds = %50, %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %53 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %53, align 1, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @num_greater_eq(ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %1, i64 noundef %2) unnamed_addr #7 !prof !127 !PGOFuncName !185 {
  %4 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !105
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %2) #14, !range !125
  %13 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14, !range !125
  %14 = icmp eq i8 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %3
  %16 = load i64, ptr %0, align 8, !tbaa !129
  %17 = load i64, ptr %1, align 8, !tbaa !129
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = icmp eq i64 %16, %17
  %21 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = icmp uge i64 %22, %24
  %26 = select i1 %20, i1 %25, i1 false
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %15, %19, %11
  %29 = phi i8 [ %12, %11 ], [ 1, %15 ], [ %27, %19 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @num_part_mul(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #10 !prof !127 !PGOFuncName !186 {
  %4 = and i64 %1, 4294967295
  %5 = and i64 %2, 4294967295
  %6 = mul nuw i64 %5, %4
  %7 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %8 = lshr i64 %1, 32
  %9 = lshr i64 %2, 32
  %10 = mul nuw i64 %9, %8
  %11 = mul nuw i64 %9, %4
  %12 = mul nuw i64 %5, %8
  %13 = shl i64 %11, 32
  %14 = add i64 %13, %6
  %15 = icmp ult i64 %14, %6
  %16 = zext i1 %15 to i64
  %17 = add nuw i64 %10, %16
  %18 = add i64 %11, %12
  %19 = shl i64 %18, 32
  %20 = add i64 %19, %6
  store i64 %20, ptr %7, align 8, !tbaa !109
  %21 = icmp ult i64 %20, %14
  %22 = zext i1 %21 to i64
  %23 = add nuw i64 %17, %22
  %24 = lshr i64 %11, 32
  %25 = lshr i64 %12, 32
  %26 = add nuw nsw i64 %25, %24
  %27 = add nuw i64 %26, %23
  store i64 %27, ptr %0, align 8, !tbaa !129
  %28 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 1, ptr %28, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %29, align 1, !tbaa !108
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!43}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @cpp_classify_number, ptr @interpret_float_suffix, i64 50141}
!36 = !{ptr @cpp_classify_number, ptr @cpp_error, i64 6}
!37 = !{ptr @cpp_classify_number, ptr @interpret_int_suffix, i64 57358}
!38 = !{ptr @cpp_classify_number, ptr @cpp_sys_macro_p, i64 1}
!39 = !{ptr @cpp_interpret_integer, ptr @append_digit, i64 1}
!40 = !{ptr @cpp_interpret_integer, ptr @cpp_error, i64 1}
!41 = !{ptr @cpp_interpret_integer, ptr @num_positive, i64 57290}
!42 = !{ptr @_cpp_expand_op_stack, ptr @xrealloc, i64 1}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 125453}
!45 = !{!46, !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!"branch_weights", i32 68091, i32 57364}
!49 = !{!"branch_weights", i32 7221, i32 50144}
!50 = !{!"branch_weights", i32 1, i32 43326, i32 3, i32 1, i32 1}
!51 = !{!"branch_weights", i32 1, i32 7221}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !46, i64 0}
!54 = !{!"branch_weights", i32 61052, i32 159492}
!55 = !{!"branch_weights", i32 13608721, i32 211676849}
!56 = !{!"branch_weights", i32 1, i32 57364}
!57 = !{!"branch_weights", i32 76734, i32 -2094032395}
!58 = !{!"branch_weights", i32 101848, i32 -1373191609}
!59 = !{!"branch_weights", i32 1877190392, i32 270293256}
!60 = !{!"branch_weights", i32 -1780546560, i32 100289}
!61 = !{!62, !46, i64 1077}
!62 = !{!"cpp_reader", !63, i64 0, !63, i64 8, !64, i64 16, !63, i64 40, !65, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !66, i64 80, !63, i64 136, !63, i64 144, !67, i64 152, !65, i64 176, !46, i64 180, !63, i64 184, !63, i64 192, !68, i64 200, !63, i64 264, !63, i64 272, !63, i64 280, !63, i64 288, !63, i64 296, !63, i64 304, !70, i64 312, !46, i64 400, !46, i64 401, !63, i64 408, !63, i64 416, !46, i64 424, !63, i64 432, !71, i64 440, !63, i64 472, !65, i64 480, !65, i64 484, !63, i64 488, !65, i64 496, !72, i64 504, !72, i64 528, !72, i64 552, !72, i64 576, !72, i64 600, !63, i64 624, !63, i64 632, !67, i64 640, !67, i64 664, !63, i64 688, !70, i64 696, !70, i64 784, !63, i64 872, !73, i64 880, !63, i64 1016, !63, i64 1024, !63, i64 1032, !74, i64 1040, !76, i64 1168, !46, i64 1200, !77, i64 1208, !63, i64 1240, !63, i64 1248, !63, i64 1256, !63, i64 1264, !65, i64 1272, !78, i64 1280, !63, i64 1296}
!63 = !{!"any pointer", !46, i64 0}
!64 = !{!"lexer_state", !46, i64 0, !46, i64 1, !46, i64 2, !46, i64 3, !46, i64 4, !46, i64 5, !46, i64 6, !46, i64 7, !46, i64 8, !46, i64 9, !46, i64 10, !65, i64 12, !46, i64 16, !46, i64 17}
!65 = !{!"int", !46, i64 0}
!66 = !{!"cpp_context", !63, i64 0, !63, i64 8, !46, i64 16, !63, i64 32, !63, i64 40, !46, i64 48}
!67 = !{!"cpp_token", !65, i64 0, !65, i64 4, !53, i64 6, !46, i64 8}
!68 = !{!"cpp_dir", !63, i64 0, !63, i64 8, !65, i64 16, !46, i64 20, !46, i64 21, !63, i64 24, !63, i64 32, !63, i64 40, !69, i64 48, !69, i64 56}
!69 = !{!"long", !46, i64 0}
!70 = !{!"obstack", !69, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !69, i64 40, !65, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !65, i64 80, !65, i64 80, !65, i64 80}
!71 = !{!"tokenrun", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24}
!72 = !{!"cset_converter", !63, i64 0, !63, i64 8, !65, i64 16}
!73 = !{!"cpp_callbacks", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128}
!74 = !{!"cpp_options", !65, i64 0, !65, i64 4, !46, i64 8, !46, i64 9, !46, i64 10, !46, i64 11, !46, i64 12, !46, i64 13, !46, i64 14, !46, i64 15, !46, i64 16, !46, i64 17, !46, i64 18, !46, i64 19, !46, i64 20, !46, i64 21, !46, i64 22, !46, i64 23, !46, i64 24, !46, i64 25, !46, i64 26, !46, i64 27, !46, i64 28, !46, i64 29, !46, i64 30, !46, i64 31, !46, i64 32, !46, i64 33, !46, i64 34, !46, i64 35, !46, i64 36, !46, i64 37, !46, i64 38, !46, i64 39, !46, i64 40, !46, i64 41, !46, i64 42, !63, i64 48, !63, i64 56, !63, i64 64, !65, i64 72, !46, i64 76, !46, i64 77, !75, i64 80, !69, i64 88, !69, i64 96, !69, i64 104, !69, i64 112, !46, i64 120, !46, i64 121, !46, i64 122, !46, i64 123, !46, i64 124}
!75 = !{!"", !65, i64 0, !46, i64 4, !46, i64 5, !46, i64 6, !46, i64 7}
!76 = !{!"spec_nodes", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24}
!77 = !{!"", !63, i64 0, !63, i64 8, !63, i64 16, !65, i64 24}
!78 = !{!"", !63, i64 0, !65, i64 8, !65, i64 12}
!79 = !{!"branch_weights", i32 -2147483648, i32 0}
!80 = !{!"branch_weights", i32 57364, i32 1}
!81 = !{!62, !46, i64 1075}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!62, !46, i64 1063}
!85 = !{i32 0, i32 16384}
!86 = !{!62, !46, i64 1064}
!87 = !{!62, !46, i64 1048}
!88 = !{!"branch_weights", i32 0, i32 65536, i32 -1008730121, i32 473169928}
!89 = !{!"function_entry_count", i64 50143}
!90 = !{!"cpp_expr.c:interpret_float_suffix"}
!91 = !{!"branch_weights", i32 1, i32 50144}
!92 = !{!"branch_weights", i32 50144, i32 1, i32 1, i32 1, i32 1}
!93 = !{!"branch_weights", i32 50003, i32 71}
!94 = !{!"branch_weights", i32 71, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!95 = !{!"branch_weights", i32 71, i32 0}
!96 = distinct !{!96, !83}
!97 = !{!"branch_weights", i32 100149, i32 -1787561820}
!98 = !{!"branch_weights", i32 50074, i32 1}
!99 = !{!"function_entry_count", i64 57363}
!100 = !{!"cpp_expr.c:interpret_int_suffix"}
!101 = !{!"branch_weights", i32 57293, i32 71}
!102 = !{!"branch_weights", i32 1, i32 71, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!103 = distinct !{!103, !83}
!104 = !{!"branch_weights", i32 150635, i32 -1414663142}
!105 = !{!106, !46, i64 16}
!106 = !{!"cpp_num", !107, i64 0, !107, i64 8, !46, i64 16, !46, i64 17}
!107 = !{!"long long", !46, i64 0}
!108 = !{!106, !46, i64 17}
!109 = !{!106, !107, i64 8}
!110 = !{!62, !69, i64 1128}
!111 = !{!"branch_weights", i32 -2094081812, i32 43892, i32 316945417, i32 43891}
!112 = !{!"branch_weights", i32 57293, i32 1}
!113 = !{!"branch_weights", i32 3759, i32 159492}
!114 = !{!"branch_weights", i32 265679, i32 13608721}
!115 = !{!"branch_weights", i32 163180, i32 1}
!116 = !{i64 0, i64 8, !117, i64 8, i64 8, !117, i64 16, i64 1, !45, i64 17, i64 1, !45}
!117 = !{!107, !107, i64 0}
!118 = !{!"branch_weights", i32 105957, i32 57293}
!119 = distinct !{!119, !83}
!120 = !{!"branch_weights", i32 2147446213, i32 37435}
!121 = !{!"branch_weights", i32 57294, i32 71}
!122 = !{!62, !46, i64 1082}
!123 = !{!"branch_weights", i32 57294, i32 1}
!124 = !{!62, !46, i64 16}
!125 = !{i8 0, i8 2}
!126 = !{!"branch_weights", i32 1, i32 57294}
!127 = !{!"function_entry_count", i64 0}
!128 = !{!"cpp_expr.c:append_digit"}
!129 = !{!106, !107, i64 0}
!130 = !{!"function_entry_count", i64 57293}
!131 = !{!"cpp_expr.c:num_positive"}
!132 = !{!62, !63, i64 1024}
!133 = !{!62, !65, i64 28}
!134 = !{!62, !63, i64 416}
!135 = !{!136, !65, i64 36}
!136 = !{!"op", !63, i64 0, !106, i64 8, !65, i64 32, !65, i64 36}
!137 = !{!136, !63, i64 0}
!138 = !{!136, !107, i64 16}
!139 = !{!136, !107, i64 8}
!140 = !{!62, !63, i64 1032}
!141 = !{!67, !65, i64 0}
!142 = !{!136, !65, i64 32}
!143 = !{!"cpp_expr.c:eval_token"}
!144 = !{!65, !65, i64 0}
!145 = !{!62, !63, i64 1168}
!146 = !{!62, !63, i64 1176}
!147 = !{!62, !63, i64 1184}
!148 = !{!62, !46, i64 1073}
!149 = !{!150, !63, i64 0}
!150 = !{!"cpp_hashnode", !151, i64 0, !65, i64 16, !65, i64 16, !46, i64 17, !65, i64 18, !65, i64 18, !46, i64 24}
!151 = !{!"ht_identifier", !63, i64 0, !65, i64 8, !65, i64 12}
!152 = !{!62, !46, i64 18}
!153 = !{!62, !46, i64 1058}
!154 = !{!"cpp_expr.c:reduce"}
!155 = !{!156, !46, i64 0}
!156 = !{!"cpp_operator", !46, i64 0, !46, i64 1}
!157 = !{!62, !46, i64 1066}
!158 = !{!136, !46, i64 24}
!159 = !{!136, !46, i64 25}
!160 = distinct !{!160, !83}
!161 = !{!"function_entry_count", i64 1}
!162 = !{!"branch_weights", i32 125384, i32 71}
!163 = !{!"branch_weights", i32 1, i32 125384}
!164 = !{!"branch_weights", i32 125384, i32 1}
!165 = !{!"cpp_expr.c:num_trim"}
!166 = !{!"cpp_expr.c:parse_defined"}
!167 = !{!62, !63, i64 136}
!168 = !{!62, !46, i64 24}
!169 = !{!67, !53, i64 6}
!170 = !{!62, !63, i64 984}
!171 = !{!62, !63, i64 992}
!172 = !{!62, !65, i64 48}
!173 = !{!"cpp_expr.c:check_promotion"}
!174 = !{!"cpp_expr.c:num_unary_op"}
!175 = !{!"cpp_expr.c:num_binary_op"}
!176 = !{!"cpp_expr.c:num_inequality_op"}
!177 = !{!"cpp_expr.c:num_equality_op"}
!178 = !{!"cpp_expr.c:num_bitwise_op"}
!179 = !{!"cpp_expr.c:num_mul"}
!180 = !{i64 0, i64 8, !117, i64 8, i64 1, !45, i64 9, i64 1, !45}
!181 = !{!"cpp_expr.c:num_div_op"}
!182 = !{!"cpp_expr.c:num_negate"}
!183 = !{!"cpp_expr.c:num_lshift"}
!184 = !{!"cpp_expr.c:num_rshift"}
!185 = !{!"cpp_expr.c:num_greater_eq"}
!186 = !{!"cpp_expr.c:num_part_mul"}
