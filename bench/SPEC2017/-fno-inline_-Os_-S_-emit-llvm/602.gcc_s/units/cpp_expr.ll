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
define dso_local i32 @cpp_classify_number(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load i32, ptr %3, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %291, label %8

8:                                                ; preds = %2
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = load i8, ptr %5, align 1, !tbaa !6
  %12 = icmp eq i8 %11, 48
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %5, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !6
  switch i8 %15, label %34 [
    i8 120, label %16
    i8 88, label %16
    i8 98, label %28
    i8 66, label %28
  ]

16:                                               ; preds = %13, %13
  %17 = getelementptr inbounds i8, ptr %5, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = zext i8 %18 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !9
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = icmp eq i8 %15, 98
  br i1 %27, label %28, label %34

28:                                               ; preds = %26, %13, %13
  %29 = getelementptr inbounds i8, ptr %5, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !6
  %31 = and i8 %30, -2
  %32 = icmp eq i8 %31, 48
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %26, %13, %28, %16, %20, %33, %8
  %35 = phi i1 [ false, %33 ], [ false, %8 ], [ true, %20 ], [ true, %16 ], [ false, %26 ], [ false, %28 ], [ false, %13 ]
  %36 = phi i1 [ true, %33 ], [ true, %8 ], [ false, %20 ], [ false, %16 ], [ true, %26 ], [ true, %28 ], [ true, %13 ]
  %37 = phi i1 [ false, %33 ], [ false, %8 ], [ false, %20 ], [ false, %16 ], [ true, %26 ], [ true, %28 ], [ true, %13 ]
  %38 = phi i32 [ 2, %33 ], [ 10, %8 ], [ 16, %20 ], [ 16, %16 ], [ 8, %26 ], [ 8, %28 ], [ 8, %13 ]
  %39 = phi ptr [ %29, %33 ], [ %5, %8 ], [ %17, %20 ], [ %17, %16 ], [ %14, %26 ], [ %14, %28 ], [ %14, %13 ]
  br label %40

40:                                               ; preds = %60, %34
  %41 = phi i32 [ %64, %60 ], [ 0, %34 ]
  %42 = phi i32 [ %46, %60 ], [ 0, %34 ]
  %43 = phi i1 [ true, %60 ], [ false, %34 ]
  %44 = phi ptr [ %48, %60 ], [ %39, %34 ]
  br label %45

45:                                               ; preds = %40, %67
  %46 = phi i32 [ 1, %67 ], [ %42, %40 ]
  %47 = phi ptr [ %48, %67 ], [ %44, %40 ]
  %48 = getelementptr inbounds i8, ptr %47, i64 1
  %49 = load i8, ptr %47, align 1, !tbaa !6
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !9
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = and i32 %53, 256
  %58 = icmp ne i32 %57, 0
  %59 = and i1 %35, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %45
  %61 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %50
  %62 = load i8, ptr %61, align 1, !tbaa !6
  %63 = zext i8 %62 to i32
  %64 = tail call i32 @llvm.umax.i32(i32 %41, i32 %63)
  br label %40

65:                                               ; preds = %56
  %66 = icmp eq i8 %49, 46
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = icmp eq i32 %46, 0
  br i1 %68, label %45, label %69

69:                                               ; preds = %67
  %70 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #13
  br label %291

71:                                               ; preds = %65
  %72 = and i8 %49, -33
  %73 = icmp eq i8 %72, 69
  %74 = and i1 %36, %73
  br i1 %74, label %97, label %75

75:                                               ; preds = %71
  %76 = icmp eq i8 %72, 80
  %77 = and i1 %35, %76
  %78 = select i1 %77, i32 2, i32 %46
  %79 = select i1 %77, ptr %48, ptr %47
  %80 = icmp eq i32 %78, 0
  %81 = select i1 %36, i1 %80, i1 false
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = ptrtoint ptr %10 to i64
  %84 = ptrtoint ptr %79 to i64
  %85 = sub i64 %83, %84
  %86 = tail call fastcc i32 @interpret_float_suffix(ptr noundef nonnull %79, i64 noundef %85) #14
  %87 = and i32 %86, 3145728
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = or i32 %86, 2
  %91 = select i1 %37, i32 10, i32 %38
  %92 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %93 = load i8, ptr %92, align 1, !tbaa !11
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %265, label %95

95:                                               ; preds = %89
  %96 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1) #13
  br label %265

97:                                               ; preds = %71, %82, %75
  %98 = phi ptr [ %79, %82 ], [ %79, %75 ], [ %48, %71 ]
  %99 = phi i32 [ 0, %82 ], [ %78, %75 ], [ 2, %71 ]
  %100 = icmp ne i32 %99, 0
  %101 = and i1 %37, %100
  %102 = select i1 %101, i32 10, i32 %38
  %103 = icmp ult i32 %41, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = icmp eq i32 %102, 2
  %106 = add nuw nsw i32 %41, 48
  br i1 %105, label %107, label %109

107:                                              ; preds = %104
  %108 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %106) #13
  br label %291

109:                                              ; preds = %104
  %110 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %106) #13
  br label %291

111:                                              ; preds = %97
  br i1 %100, label %112, label %218

112:                                              ; preds = %111
  %113 = icmp eq i32 %102, 2
  br i1 %113, label %114, label %116

114:                                              ; preds = %112
  %115 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.4) #13
  br label %291

116:                                              ; preds = %112
  %117 = icmp ne i32 %102, 16
  %118 = or i1 %117, %43
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.5) #13
  br label %291

121:                                              ; preds = %116
  %122 = icmp eq i32 %102, 16
  br i1 %122, label %123, label %135

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %125 = load i8, ptr %124, align 1, !tbaa !11
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %129 = load i8, ptr %128, align 1, !tbaa !29
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.6) #13
  br label %133

133:                                              ; preds = %131, %127, %123
  %134 = icmp eq i32 %99, 2
  br i1 %134, label %137, label %161

135:                                              ; preds = %121
  %136 = icmp eq i32 %99, 2
  br i1 %136, label %137, label %163

137:                                              ; preds = %135, %133
  %138 = load i8, ptr %98, align 1, !tbaa !6
  switch i8 %138, label %142 [
    i8 43, label %139
    i8 45, label %139
  ]

139:                                              ; preds = %137, %137
  %140 = getelementptr inbounds i8, ptr %98, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !6
  br label %142

142:                                              ; preds = %137, %139
  %143 = phi i8 [ %141, %139 ], [ %138, %137 ]
  %144 = phi ptr [ %140, %139 ], [ %98, %137 ]
  %145 = zext i8 %143 to i64
  %146 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !9
  %148 = and i16 %147, 4
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.7) #13
  br label %291

152:                                              ; preds = %142, %152
  %153 = phi ptr [ %154, %152 ], [ %144, %142 ]
  %154 = getelementptr inbounds i8, ptr %153, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !6
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !9
  %159 = and i16 %158, 4
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %163, label %152, !llvm.loop !30

161:                                              ; preds = %133
  %162 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.8) #13
  br label %291

163:                                              ; preds = %152, %135
  %164 = phi ptr [ %98, %135 ], [ %154, %152 ]
  %165 = ptrtoint ptr %10 to i64
  %166 = ptrtoint ptr %164 to i64
  %167 = sub i64 %165, %166
  %168 = tail call fastcc i32 @interpret_float_suffix(ptr noundef nonnull %164, i64 noundef %167) #14
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = trunc i64 %167 to i32
  %172 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %171, ptr noundef nonnull %164) #13
  br label %291

173:                                              ; preds = %163
  %174 = icmp eq ptr %10, %164
  br i1 %174, label %185, label %175

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %177 = load i8, ptr %176, align 1, !tbaa !32
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %175
  %180 = tail call i32 @cpp_sys_macro_p(ptr noundef nonnull %0) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = trunc i64 %167 to i32
  %184 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %183, ptr noundef nonnull %164) #13
  br label %185

185:                                              ; preds = %182, %179, %175, %173
  %186 = icmp eq i32 %168, 32
  br i1 %186, label %187, label %191

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %189 = load i8, ptr %188, align 1, !tbaa !11
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %216, label %213

191:                                              ; preds = %185
  %192 = and i32 %168, 16384
  %193 = icmp ne i32 %192, 0
  %194 = icmp ne i32 %102, 10
  %195 = and i1 %194, %193
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = trunc i64 %167 to i32
  %198 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef %197, ptr noundef nonnull %164) #13
  br label %291

199:                                              ; preds = %191
  %200 = and i32 %168, 3145728
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %204 = load i8, ptr %203, align 1, !tbaa !11
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1) #13
  br i1 %193, label %209, label %216

208:                                              ; preds = %202, %199
  br i1 %193, label %209, label %216

209:                                              ; preds = %206, %208
  %210 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %211 = load i8, ptr %210, align 1, !tbaa !11
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %209, %187
  %214 = phi ptr [ @.str.11, %187 ], [ @.str.13, %209 ]
  %215 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %214) #13
  br label %216

216:                                              ; preds = %213, %187, %206, %209, %208
  %217 = or i32 %168, 2
  br label %265

218:                                              ; preds = %111
  %219 = ptrtoint ptr %10 to i64
  %220 = ptrtoint ptr %98 to i64
  %221 = sub i64 %219, %220
  %222 = tail call fastcc i32 @interpret_int_suffix(ptr noundef nonnull %98, i64 noundef %221) #14, !range !33
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = trunc i64 %221 to i32
  %226 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %225, ptr noundef nonnull %98) #13
  br label %291

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 17
  %229 = load i8, ptr %228, align 1, !tbaa !32
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %246, label %231

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
  %241 = load i8, ptr %240, align 8, !tbaa !34
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %239, %234
  %244 = trunc i64 %221 to i32
  %245 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10, i32 noundef %244, ptr noundef nonnull %98) #13
  br label %246

246:                                              ; preds = %236, %239, %243, %231, %227
  %247 = and i32 %222, 240
  %248 = icmp eq i32 %247, 64
  br i1 %248, label %249, label %263

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 18
  %251 = load i8, ptr %250, align 8, !tbaa !34
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %263, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 29
  %255 = load i8, ptr %254, align 1, !tbaa !29
  %256 = icmp eq i8 %255, 0
  %257 = select i1 %256, i32 2, i32 0
  %258 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 2
  %259 = load i8, ptr %258, align 8, !tbaa !35
  %260 = icmp eq i8 %259, 0
  %261 = select i1 %260, ptr @.str.16, ptr @.str.15
  %262 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef %257, ptr noundef nonnull %261) #13
  br label %263

263:                                              ; preds = %253, %249, %246
  %264 = or i32 %222, 1
  br label %265

265:                                              ; preds = %216, %263, %89, %95
  %266 = phi i32 [ %90, %95 ], [ %90, %89 ], [ %217, %216 ], [ %264, %263 ]
  %267 = phi i32 [ %91, %95 ], [ %91, %89 ], [ %102, %216 ], [ %38, %263 ]
  %268 = and i32 %266, 8192
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %272 = load i8, ptr %271, align 1, !tbaa !11
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
  ]

277:                                              ; preds = %276
  %278 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 31
  %279 = load i8, ptr %278, align 1, !tbaa !11
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

291:                                              ; preds = %69, %107, %109, %119, %150, %161, %283, %287, %289, %285, %2, %224, %196, %170, %114
  %292 = phi i32 [ 0, %114 ], [ 0, %170 ], [ 0, %196 ], [ 0, %224 ], [ 273, %2 ], [ %284, %283 ], [ %286, %285 ], [ %288, %287 ], [ %290, %289 ], [ 0, %161 ], [ 0, %150 ], [ 0, %119 ], [ 0, %109 ], [ 0, %107 ], [ 0, %69 ]
  ret i32 %292
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @interpret_float_suffix(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 {
  %3 = icmp eq i64 %1, 2
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !6
  switch i8 %5, label %22 [
    i8 100, label %6
    i8 68, label %6
  ]

6:                                                ; preds = %4, %4
  %7 = icmp eq i8 %5, 68
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !6
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
  %25 = load i8, ptr %24, align 1, !tbaa !6
  switch i8 %25, label %26 [
    i8 107, label %29
    i8 75, label %29
    i8 114, label %28
    i8 82, label %28
  ]

26:                                               ; preds = %22
  %27 = icmp eq i64 %1, 0
  br i1 %27, label %112, label %81

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
  %36 = load i8, ptr %0, align 1, !tbaa !6
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
  %45 = load i8, ptr %44, align 1, !tbaa !6
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
  %65 = load i8, ptr %64, align 1, !tbaa !6
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
  %76 = load i8, ptr %75, align 1, !tbaa !6
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
  %91 = load i8, ptr %90, align 1, !tbaa !6
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
  ]

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
  br i1 %111, label %112, label %81, !llvm.loop !36

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
  br i1 %125, label %142, label %126

126:                                              ; preds = %112
  %127 = icmp eq i64 %118, 0
  %128 = select i1 %127, i32 0, i32 8192
  %129 = icmp eq i64 %113, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = icmp eq i64 %114, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %130
  %133 = icmp eq i64 %115, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %132
  %135 = icmp eq i64 %116, 0
  br i1 %135, label %136, label %139

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
define internal fastcc i32 @interpret_int_suffix(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %2, %23
  %5 = phi i64 [ %26, %23 ], [ 0, %2 ]
  %6 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %7 = phi i64 [ %24, %23 ], [ 0, %2 ]
  %8 = phi i64 [ %9, %23 ], [ %1, %2 ]
  %9 = add i64 %8, -1
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !6
  switch i8 %11, label %48 [
    i8 117, label %12
    i8 85, label %12
    i8 105, label %14
    i8 73, label %14
    i8 106, label %14
    i8 74, label %14
    i8 108, label %16
    i8 76, label %16
  ]

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
  %21 = load i8, ptr %20, align 1, !tbaa !6
  %22 = icmp eq i8 %11, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %16, %19, %14, %12
  %24 = phi i64 [ %7, %19 ], [ %7, %16 ], [ %7, %14 ], [ %13, %12 ]
  %25 = phi i64 [ 2, %19 ], [ %17, %16 ], [ %6, %14 ], [ %6, %12 ]
  %26 = phi i64 [ %5, %19 ], [ %5, %16 ], [ %15, %14 ], [ %5, %12 ]
  %27 = icmp eq i64 %9, 0
  br i1 %27, label %28, label %4, !llvm.loop !37

28:                                               ; preds = %23, %2
  %29 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %30 = phi i64 [ 0, %2 ], [ %25, %23 ]
  %31 = phi i64 [ 0, %2 ], [ %26, %23 ]
  %32 = icmp ugt i64 %30, 2
  %33 = icmp ugt i64 %29, 1
  %34 = select i1 %32, i1 true, i1 %33
  %35 = icmp ugt i64 %31, 1
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %28
  %38 = icmp eq i64 %31, 0
  %39 = select i1 %38, i32 0, i32 8192
  %40 = icmp eq i64 %29, 0
  %41 = select i1 %40, i32 0, i32 4096
  %42 = or disjoint i32 %39, %41
  %43 = icmp eq i64 %30, 0
  %44 = icmp eq i64 %30, 1
  %45 = select i1 %44, i32 32, i32 64
  %46 = select i1 %43, i32 16, i32 %45
  %47 = or disjoint i32 %42, %46
  br label %48

48:                                               ; preds = %4, %19, %28, %37
  %49 = phi i32 [ %47, %37 ], [ 0, %28 ], [ 0, %19 ], [ 0, %4 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_interpret_integer(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %7 = lshr i32 %3, 12
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 %9, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !41
  %12 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %13 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load i32, ptr %12, align 8, !tbaa !6
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = icmp eq i32 %15, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8, ptr %14, align 1, !tbaa !6
  %21 = zext i8 %20 to i64
  %22 = add nsw i64 %21, -48
  store i64 %22, ptr %6, align 8, !tbaa !42
  br label %109

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %25 = load i64, ptr %24, align 8, !tbaa !43
  %26 = and i32 %3, 3840
  switch i32 %26, label %33 [
    i32 1024, label %27
    i32 512, label %29
    i32 2048, label %31
  ]

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
  %38 = zext nneg i32 %37 to i64
  %39 = icmp ult ptr %34, %17
  br i1 %39, label %40, label %87

40:                                               ; preds = %33
  %41 = icmp ult i64 %25, 64
  %42 = sub nuw nsw i64 64, %25
  %43 = lshr i64 -1, %42
  %44 = add i64 %43, 1
  %45 = select i1 %41, i64 %44, i64 0
  %46 = sub i64 %45, %38
  %47 = udiv i64 %46, %38
  %48 = add nuw i64 %47, 1
  br label %49

49:                                               ; preds = %40, %77
  %50 = phi i8 [ %79, %77 ], [ 0, %40 ]
  %51 = phi ptr [ %80, %77 ], [ %34, %40 ]
  %52 = phi i64 [ %78, %77 ], [ %48, %40 ]
  %53 = load i8, ptr %51, align 1, !tbaa !6
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !9
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = and i32 %57, 256
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %35, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %60, %49
  %65 = getelementptr inbounds [256 x i8], ptr @_hex_value, i64 0, i64 %54
  %66 = load i8, ptr %65, align 1, !tbaa !6
  %67 = load i64, ptr %6, align 8, !tbaa !42
  %68 = icmp ult i64 %67, %52
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = mul i64 %67, %38
  %71 = zext i8 %66 to i64
  %72 = add i64 %70, %71
  store i64 %72, ptr %6, align 8, !tbaa !42
  br label %77

73:                                               ; preds = %64
  %74 = zext i8 %66 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @append_digit(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i32 noundef %74, i32 noundef %37, i64 noundef %25) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %75 = load i8, ptr %11, align 1, !tbaa !41
  %76 = or i8 %75, %50
  br label %77

77:                                               ; preds = %69, %73
  %78 = phi i64 [ %52, %69 ], [ 0, %73 ]
  %79 = phi i8 [ %50, %69 ], [ %76, %73 ]
  %80 = getelementptr inbounds i8, ptr %51, i64 1
  %81 = icmp ult ptr %80, %17
  br i1 %81, label %49, label %82, !llvm.loop !46

82:                                               ; preds = %77, %60
  %83 = phi i8 [ %79, %77 ], [ %50, %60 ]
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.19) #13
  br label %109

87:                                               ; preds = %33, %82
  %88 = load i8, ptr %10, align 8, !tbaa !38
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 36
  %92 = load i8, ptr %91, align 2, !tbaa !47
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2
  %96 = load i8, ptr %95, align 8, !tbaa !48
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %94, %90
  %99 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %25) #14, !range !49
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  br i1 %36, label %102, label %108

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 29
  %104 = load i8, ptr %103, align 1, !tbaa !29
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 0, i32 2
  %107 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef %106, ptr noundef nonnull @.str.20) #13
  br label %108

108:                                              ; preds = %102, %101
  store i8 1, ptr %10, align 8, !tbaa !38
  br label %109

109:                                              ; preds = %85, %108, %98, %94, %87, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @append_digit(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #5 {
  %6 = alloca %struct.cpp_num, align 8
  %7 = icmp eq i32 %3, 16
  %8 = select i1 %7, i64 4, i64 3
  %9 = icmp eq i32 %3, 2
  %10 = select i1 %9, i64 1, i64 %8
  %11 = load i64, ptr %1, align 8, !tbaa !50
  %12 = sub nuw nsw i64 64, %10
  %13 = lshr i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = shl i64 %11, %10
  %16 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = shl i64 %17, %10
  %19 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %20 = lshr i64 %17, %12
  %21 = or i64 %20, %15
  %22 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %23 = load i8, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 %23, ptr %24, align 8, !tbaa !38
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
  store i64 %45, ptr %19, align 8, !tbaa !42
  %46 = add i64 %40, %21
  store i64 %46, ptr %0, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 %44, ptr %47, align 1, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %48 = load i64, ptr %19, align 8, !tbaa !42
  %49 = icmp eq i64 %48, %45
  %50 = load i64, ptr %0, align 8
  %51 = icmp eq i64 %50, %46
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %54, label %53

53:                                               ; preds = %29
  store i8 1, ptr %47, align 1, !tbaa !41
  br label %54

54:                                               ; preds = %29, %53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @num_positive(ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %0, i64 noundef %1) unnamed_addr #7 {
  %3 = icmp ugt i64 %1, 64
  %4 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %5 = select i1 %3, i64 -65, i64 -1
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_trim(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) unnamed_addr #5 {
  %4 = icmp ugt i64 %2, 64
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = add i64 %2, -64
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = shl nsw i64 -1, %6
  %10 = xor i64 %9, -1
  %11 = load i64, ptr %1, align 8, !tbaa !50
  %12 = and i64 %11, %10
  br label %21

13:                                               ; preds = %3
  %14 = icmp eq i64 %2, 64
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = shl nsw i64 -1, %2
  %17 = xor i64 %16, -1
  %18 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !42
  %20 = and i64 %19, %17
  store i64 %20, ptr %18, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %13, %15, %8
  %22 = phi i64 [ %12, %8 ], [ 0, %15 ], [ 0, %13 ]
  store i64 %22, ptr %1, align 8, !tbaa !50
  br label %23

23:                                               ; preds = %21, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_parse_expr(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cpp_num, align 8
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 11
  store i32 0, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 27
  store ptr null, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 3
  store i32 22, ptr %8, align 4, !tbaa !54
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 52
  br label %10

10:                                               ; preds = %138, %2
  %11 = phi i8 [ 0, %2 ], [ %46, %138 ]
  %12 = phi i8 [ 1, %2 ], [ %139, %138 ]
  %13 = phi i32 [ 0, %2 ], [ %19, %138 ]
  %14 = phi ptr [ %5, %2 ], [ %140, %138 ]
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 1
  br label %16

16:                                               ; preds = %10, %28
  %17 = phi i8 [ 0, %28 ], [ %12, %10 ]
  %18 = phi i32 [ %19, %28 ], [ %13, %10 ]
  %19 = add i32 %18, 1
  %20 = tail call ptr @cpp_get_token(ptr noundef %0) #13
  %21 = getelementptr inbounds %struct.cpp_token, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 4
  switch i8 %22, label %38 [
    i8 55, label %23
    i8 56, label %23
    i8 57, label %23
    i8 58, label %23
    i8 59, label %23
    i8 53, label %23
    i8 37, label %23
    i8 1, label %29
    i8 4, label %32
    i8 5, label %35
  ]

23:                                               ; preds = %16, %16, %16, %16, %16, %16, %16
  %24 = icmp eq i8 %17, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %20) #13
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %26) #13
  br label %164

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call fastcc void @eval_token(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %3, ptr noundef %0, ptr noundef nonnull %20) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %16

29:                                               ; preds = %16
  %30 = icmp eq i32 %18, 0
  %31 = zext i1 %30 to i8
  br label %45

32:                                               ; preds = %16
  %33 = icmp eq i8 %17, 0
  %34 = select i1 %33, i32 4, i32 27
  br label %45

35:                                               ; preds = %16
  %36 = icmp eq i8 %17, 0
  %37 = select i1 %36, i32 5, i32 28
  br label %45

38:                                               ; preds = %16
  %39 = zext nneg i8 %22 to i32
  %40 = add i8 %22, -27
  %41 = icmp ult i8 %40, -26
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %20) #13
  %44 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef %43) #13
  br label %164

45:                                               ; preds = %35, %32, %38, %29
  %46 = phi i8 [ %11, %38 ], [ %31, %29 ], [ %11, %32 ], [ %11, %35 ]
  %47 = phi i32 [ %39, %38 ], [ 1, %29 ], [ %34, %32 ], [ %37, %35 ]
  %48 = zext nneg i32 %47 to i64
  %49 = lshr i64 133152765, %48
  %50 = and i64 %49, 1
  %51 = icmp eq i64 %50, 0
  %52 = icmp eq i8 %17, 0
  br i1 %51, label %53, label %57

53:                                               ; preds = %45
  br i1 %52, label %54, label %80

54:                                               ; preds = %53
  %55 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %20) #13
  %56 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.21, ptr noundef %55) #13
  br label %164

57:                                               ; preds = %45
  br i1 %52, label %80, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !54
  switch i32 %47, label %69 [
    i32 21, label %61
    i32 22, label %64
  ]

61:                                               ; preds = %58
  switch i32 %60, label %70 [
    i32 20, label %62
    i32 22, label %74
  ]

62:                                               ; preds = %61
  %63 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.23) #13
  br label %164

64:                                               ; preds = %58
  switch i32 %60, label %70 [
    i32 22, label %65
    i32 20, label %74
  ]

65:                                               ; preds = %64
  %66 = icmp eq i8 %1, 0
  %67 = select i1 %66, ptr @.str.26, ptr @.str.25
  %68 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef nonnull %67) #13
  br label %164

69:                                               ; preds = %58
  switch i32 %60, label %70 [
    i32 22, label %74
    i32 20, label %74
  ]

70:                                               ; preds = %61, %64, %69
  %71 = load ptr, ptr %14, align 8, !tbaa !56
  %72 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef %71) #13
  %73 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.27, ptr noundef %72) #13
  br label %164

74:                                               ; preds = %61, %64, %69, %69
  %75 = add nsw i32 %47, -21
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = tail call ptr @cpp_token_as_text(ptr noundef %0, ptr noundef nonnull %20) #13
  %79 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.28, ptr noundef %78) #13
  br label %164

80:                                               ; preds = %57, %74, %53
  %81 = tail call fastcc ptr @reduce(ptr noundef %0, ptr noundef %14, i32 noundef %47) #14
  %82 = icmp eq ptr %81, null
  br i1 %82, label %164, label %83

83:                                               ; preds = %80
  %84 = icmp eq i32 %47, 22
  br i1 %84, label %141, label %85

85:                                               ; preds = %83
  %86 = trunc i32 %47 to i8
  switch i8 %86, label %127 [
    i8 21, label %138
    i8 16, label %87
    i8 15, label %97
    i8 17, label %97
    i8 18, label %107
  ]

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.op, ptr %81, i64 0, i32 1
  %89 = getelementptr inbounds %struct.op, ptr %81, i64 0, i32 1, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !57
  %91 = load i64, ptr %88, align 8, !tbaa !58
  %92 = or i64 %91, %90
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %127, label %94

94:                                               ; preds = %87
  %95 = load i32, ptr %6, align 4, !tbaa !52
  %96 = add i32 %95, 1
  br label %125

97:                                               ; preds = %85, %85
  %98 = getelementptr inbounds %struct.op, ptr %81, i64 0, i32 1
  %99 = getelementptr inbounds %struct.op, ptr %81, i64 0, i32 1, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !57
  %101 = load i64, ptr %98, align 8, !tbaa !58
  %102 = or i64 %101, %100
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %97
  %105 = load i32, ptr %6, align 4, !tbaa !52
  %106 = add i32 %105, 1
  br label %125

107:                                              ; preds = %85
  %108 = getelementptr inbounds %struct.op, ptr %81, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !54
  %110 = icmp eq i32 %109, 17
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.29) #13
  br label %164

113:                                              ; preds = %107
  %114 = getelementptr %struct.op, ptr %81, i64 -1, i32 1
  %115 = getelementptr %struct.op, ptr %81, i64 -1, i32 1, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !57
  %117 = load i64, ptr %114, align 8, !tbaa !58
  %118 = or i64 %117, %116
  %119 = icmp eq i64 %118, 0
  %120 = load i32, ptr %6, align 4, !tbaa !52
  br i1 %119, label %123, label %121

121:                                              ; preds = %113
  %122 = add i32 %120, 1
  br label %125

123:                                              ; preds = %113
  %124 = add i32 %120, -1
  br label %125

125:                                              ; preds = %94, %104, %121, %123
  %126 = phi i32 [ %124, %123 ], [ %122, %121 ], [ %106, %104 ], [ %96, %94 ]
  store i32 %126, ptr %6, align 4, !tbaa !52
  br label %127

127:                                              ; preds = %125, %85, %97, %87
  %128 = getelementptr inbounds %struct.op, ptr %81, i64 1
  %129 = load ptr, ptr %9, align 8, !tbaa !59
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = tail call ptr @_cpp_expand_op_stack(ptr noundef nonnull %0) #14
  br label %133

133:                                              ; preds = %131, %127
  %134 = phi ptr [ %132, %131 ], [ %128, %127 ]
  %135 = getelementptr inbounds %struct.op, ptr %134, i64 0, i32 3
  store i32 %47, ptr %135, align 4, !tbaa !54
  store ptr %20, ptr %134, align 8, !tbaa !56
  %136 = load i32, ptr %20, align 8, !tbaa !60
  %137 = getelementptr inbounds %struct.op, ptr %134, i64 0, i32 2
  store i32 %136, ptr %137, align 8, !tbaa !61
  br label %138

138:                                              ; preds = %133, %85
  %139 = phi i8 [ %17, %85 ], [ 1, %133 ]
  %140 = phi ptr [ %81, %85 ], [ %134, %133 ]
  br label %10

141:                                              ; preds = %83
  %142 = load ptr, ptr %7, align 8, !tbaa !53
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = icmp ne i8 %46, 0
  %146 = icmp eq i32 %19, 3
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  store ptr null, ptr %7, align 8, !tbaa !53
  br label %149

149:                                              ; preds = %144, %148, %141
  %150 = load ptr, ptr %4, align 8, !tbaa !51
  %151 = icmp eq ptr %81, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = icmp eq i8 %1, 0
  %154 = select i1 %153, ptr @.str.26, ptr @.str.25
  %155 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.30, ptr noundef nonnull %154) #13
  br label %164

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.op, ptr %81, i64 0, i32 1
  %158 = getelementptr inbounds %struct.op, ptr %81, i64 0, i32 1, i32 1
  %159 = load i64, ptr %158, align 8, !tbaa !57
  %160 = load i64, ptr %157, align 8, !tbaa !58
  %161 = or i64 %160, %159
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i8
  br label %164

164:                                              ; preds = %80, %25, %77, %70, %65, %62, %54, %111, %42, %152, %156
  %165 = phi i8 [ %163, %156 ], [ 0, %152 ], [ 0, %42 ], [ 0, %111 ], [ 0, %54 ], [ 0, %62 ], [ 0, %65 ], [ 0, %70 ], [ 0, %77 ], [ 0, %25 ], [ 0, %80 ]
  ret i8 %165
}

; Function Attrs: optsize
declare ptr @cpp_get_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cpp_token_as_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eval_token(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.cpp_num, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpp_num, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !tbaa !62
  %8 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 2
  store i8 0, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 3
  store i8 0, ptr %9, align 1, !tbaa !41
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
  store i64 0, ptr %4, align 8, !tbaa !50
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !42
  %27 = load i32, ptr %6, align 4, !tbaa !62
  %28 = icmp eq i32 %27, 0
  %29 = icmp slt i32 %24, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %90

31:                                               ; preds = %23
  %32 = or disjoint i64 %25, -4294967296
  store i64 %32, ptr %26, align 8, !tbaa !42
  store i64 -1, ptr %4, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %34 = load i64, ptr %33, align 8, !tbaa !43
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef nonnull byval(%struct.cpp_num) align 8 %4, i64 noundef %34) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %90

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.cpp_token, ptr %2, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 54
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call fastcc void @parse_defined(ptr dead_on_unwind writable sret(%struct.cpp_num) align 8 %0, ptr noundef nonnull %1) #14
  br label %94

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 2
  %44 = load i8, ptr %43, align 8, !tbaa !35
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 54, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = icmp eq ptr %37, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 54, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !65
  %53 = icmp eq ptr %37, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46
  store i64 0, ptr %4, align 8, !tbaa !50
  %55 = zext i1 %49 to i64
  %56 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !42
  br label %90

57:                                               ; preds = %50, %42
  %58 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %59 = load i8, ptr %58, align 1, !tbaa !66
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %90, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %63 = load i32, ptr %62, align 4, !tbaa !52
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load ptr, ptr %37, align 8, !tbaa !67
  %67 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef %66) #13
  br label %90

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 2
  %70 = load i8, ptr %69, align 2, !tbaa !70
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 31
  %74 = load i8, ptr %73, align 1, !tbaa !11
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.34) #13
  br label %84

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 12
  %80 = load i8, ptr %79, align 2, !tbaa !71
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.35) #13
  br label %84

84:                                               ; preds = %76, %82, %78, %68
  %85 = call i32 @_cpp_test_assertion(ptr noundef nonnull %1, ptr noundef nonnull %5) #13
  store i64 0, ptr %4, align 8, !tbaa !50
  %86 = load i32, ptr %5, align 4, !tbaa !62
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cpp_num, ptr %4, i64 0, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !42
  br label %90

89:                                               ; preds = %3
  tail call void @abort() #16
  unreachable

90:                                               ; preds = %23, %31, %57, %61, %65, %54, %84, %22
  %91 = phi i32 [ %27, %23 ], [ 0, %31 ], [ 0, %57 ], [ 0, %61 ], [ 0, %65 ], [ 0, %54 ], [ 0, %84 ], [ 0, %22 ]
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i8
  store i8 %93, ptr %8, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !44
  br label %94

94:                                               ; preds = %90, %41, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @reduce(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.cpp_num, align 8
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = alloca %struct.cpp_num, align 8
  %11 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !54
  %13 = add i32 %12, -29
  %14 = icmp ult i32 %13, -28
  br i1 %14, label %18, label %21

15:                                               ; preds = %53
  %16 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !54
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
  %26 = load i8, ptr %25, align 2, !tbaa !72
  %27 = zext i8 %26 to i32
  %28 = lshr i64 126730236, %24
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 1
  %31 = sub nsw i32 %27, %30
  %32 = zext nneg i32 %12 to i64
  %33 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %32
  %34 = load i8, ptr %33, align 2, !tbaa !72
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
  %45 = load i8, ptr %38, align 2, !tbaa !74
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = lshr i64 435941379, %42
  %49 = and i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  tail call fastcc void @check_promotion(ptr noundef nonnull %0, ptr noundef nonnull %44) #14
  %52 = load i32, ptr %43, align 4, !tbaa !54
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %58 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

59:                                               ; preds = %53, %53, %53, %53, %53
  %60 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %61 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %60, ptr noundef nonnull byval(%struct.cpp_num) align 8 %61, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %62 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

63:                                               ; preds = %53, %53, %53, %53
  %64 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %65 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_inequality_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %64, ptr noundef nonnull byval(%struct.cpp_num) align 8 %65, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %66 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

67:                                               ; preds = %53, %53
  %68 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  %69 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_equality_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef byval(%struct.cpp_num) align 8 %68, ptr noundef nonnull byval(%struct.cpp_num) align 8 %69, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %70 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

71:                                               ; preds = %53, %53, %53
  %72 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  %73 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_bitwise_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %8, ptr noundef byval(%struct.cpp_num) align 8 %72, ptr noundef nonnull byval(%struct.cpp_num) align 8 %73, i32 noundef %54) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  %74 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

75:                                               ; preds = %53
  %76 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  %77 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  call fastcc void @num_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %76, ptr noundef nonnull byval(%struct.cpp_num) align 8 %77) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  %78 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  br label %191

79:                                               ; preds = %53, %53
  %80 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  %81 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  %82 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !61
  call fastcc void @num_div_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull %0, ptr noundef byval(%struct.cpp_num) align 8 %80, ptr noundef nonnull byval(%struct.cpp_num) align 8 %81, i32 noundef %54, i32 noundef %83) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %191

84:                                               ; preds = %53
  %85 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %86 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  %87 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !57
  %89 = load i64, ptr %86, align 8, !tbaa !58
  %90 = or i64 %89, %88
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = load i32, ptr %39, align 4, !tbaa !52
  %94 = add i32 %93, -1
  store i32 %94, ptr %39, align 4, !tbaa !52
  br label %102

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  %97 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !57
  %99 = load i64, ptr %96, align 8, !tbaa !58
  %100 = or i64 %99, %98
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %92, %95
  %103 = phi i1 [ true, %92 ], [ %101, %95 ]
  %104 = zext i1 %103 to i64
  store i64 %104, ptr %87, align 8, !tbaa !57
  store i64 0, ptr %86, align 8, !tbaa !58
  %105 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 2
  store i8 0, ptr %105, align 8, !tbaa !75
  %106 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 3
  store i8 0, ptr %106, align 1, !tbaa !76
  %107 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !61
  %109 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %108, ptr %109, align 8, !tbaa !61
  br label %110

110:                                              ; preds = %191, %199, %202, %102, %137, %182
  %111 = phi ptr [ %159, %182 ], [ %120, %137 ], [ %85, %102 ], [ %195, %202 ], [ %195, %199 ], [ %195, %191 ]
  %112 = getelementptr inbounds %struct.op, ptr %111, i64 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !54
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [29 x %struct.cpp_operator], ptr @optab, i64 0, i64 %114
  %116 = load i8, ptr %115, align 2, !tbaa !72
  %117 = zext i8 %116 to i32
  %118 = icmp ult i32 %31, %117
  br i1 %118, label %40, label %204, !llvm.loop !77

119:                                              ; preds = %53
  %120 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %121 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  %122 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !57
  %124 = load i64, ptr %121, align 8, !tbaa !58
  %125 = or i64 %124, %123
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, ptr %39, align 4, !tbaa !52
  %129 = add i32 %128, -1
  store i32 %129, ptr %39, align 4, !tbaa !52
  br label %137

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  %132 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !57
  %134 = load i64, ptr %131, align 8, !tbaa !58
  %135 = or i64 %134, %133
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %127, %130
  %138 = phi i1 [ %136, %130 ], [ false, %127 ]
  %139 = zext i1 %138 to i64
  store i64 %139, ptr %122, align 8, !tbaa !57
  store i64 0, ptr %121, align 8, !tbaa !58
  %140 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 2
  store i8 0, ptr %140, align 8, !tbaa !75
  %141 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 3
  store i8 0, ptr %141, align 1, !tbaa !76
  %142 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !61
  %144 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %143, ptr %144, align 8, !tbaa !61
  br label %110

145:                                              ; preds = %53
  %146 = icmp eq i32 %2, 21
  br i1 %146, label %151, label %147

147:                                              ; preds = %145
  %148 = load ptr, ptr %44, align 8, !tbaa !56
  %149 = load i32, ptr %148, align 8, !tbaa !60
  %150 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %149, i32 noundef 0, ptr noundef nonnull @.str.41) #13
  br label %209

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %153 = getelementptr %struct.op, ptr %44, i64 -1, i32 1
  %154 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, ptr noundef nonnull align 8 dereferenceable(24) %154, i64 24, i1 false), !tbaa.struct !44
  %155 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !61
  %157 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %156, ptr %157, align 8, !tbaa !61
  br label %209

158:                                              ; preds = %53
  %159 = getelementptr inbounds %struct.op, ptr %44, i64 -2
  %160 = getelementptr %struct.op, ptr %44, i64 -2, i32 1
  %161 = getelementptr %struct.op, ptr %44, i64 -2, i32 1, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !57
  %163 = load i64, ptr %160, align 8, !tbaa !58
  %164 = or i64 %163, %162
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %158
  %167 = load i32, ptr %39, align 4, !tbaa !52
  %168 = add i32 %167, -1
  store i32 %168, ptr %39, align 4, !tbaa !52
  br label %169

169:                                              ; preds = %158, %166
  %170 = phi i64 [ -1, %166 ], [ 0, %158 ]
  %171 = getelementptr %struct.op, ptr %44, i64 %170, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %160, ptr noundef nonnull align 8 dereferenceable(24) %171, i64 24, i1 false)
  %172 = getelementptr %struct.op, ptr %44, i64 %170, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !61
  %174 = getelementptr %struct.op, ptr %44, i64 -2, i32 2
  store i32 %173, ptr %174, align 8
  %175 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !75
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 1, i32 2
  %180 = load i8, ptr %179, align 8, !tbaa !75
  %181 = icmp ne i8 %180, 0
  br label %182

182:                                              ; preds = %178, %169
  %183 = phi i1 [ true, %169 ], [ %181, %178 ]
  %184 = zext i1 %183 to i8
  %185 = getelementptr %struct.op, ptr %44, i64 -2, i32 1, i32 2
  store i8 %184, ptr %185, align 8, !tbaa !75
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
  %193 = load i32, ptr %192, align 8, !tbaa !61
  %194 = getelementptr %struct.op, ptr %44, i64 -1, i32 2
  store i32 %193, ptr %194, align 8, !tbaa !61
  %195 = getelementptr inbounds %struct.op, ptr %44, i64 -1
  %196 = getelementptr %struct.op, ptr %44, i64 -1, i32 1, i32 3
  %197 = load i8, ptr %196, align 1, !tbaa !76
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %110, label %199

199:                                              ; preds = %191
  %200 = load i32, ptr %39, align 4, !tbaa !52
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
define dso_local ptr @_cpp_expand_op_stack(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = shl nsw i64 %9, 1
  %11 = add nsw i64 %10, 20
  %12 = mul i64 %11, 40
  %13 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %12) #13
  store ptr %13, ptr %4, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 %11
  store ptr %14, ptr %2, align 8, !tbaa !59
  %15 = getelementptr inbounds i8, ptr %13, i64 %8
  ret ptr %15
}

; Function Attrs: optsize
declare i32 @cpp_interpret_charconst(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @parse_defined(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.cpp_token, align 8
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !79
  %8 = add i8 %7, 1
  store i8 %8, ptr %6, align 8, !tbaa !79
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
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %44

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.cpp_token, ptr %13, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !6
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
  %34 = load i16, ptr %33, align 2, !tbaa !80
  %35 = and i16 %34, 16
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %98, label %37

37:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %38 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 2
  store i16 0, ptr %38, align 2, !tbaa !80
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
  %48 = load ptr, ptr %4, align 8, !tbaa !78
  %49 = icmp eq ptr %48, %5
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 31
  %52 = load i8, ptr %51, align 1, !tbaa !11
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
  %63 = load ptr, ptr %62, align 8, !tbaa !6
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
  %78 = load ptr, ptr %77, align 8, !tbaa !81
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %84

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 49, i32 14
  %82 = load ptr, ptr %81, align 8, !tbaa !82
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80, %76
  %85 = phi ptr [ %78, %76 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !83
  tail call void %85(ptr noundef nonnull %1, i32 noundef %87, ptr noundef nonnull %45) #13
  br label %88

88:                                               ; preds = %84, %68, %80, %76
  %89 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 27
  store ptr %45, ptr %89, align 8, !tbaa !53
  %90 = load i8, ptr %6, align 8, !tbaa !79
  %91 = add i8 %90, -1
  store i8 %91, ptr %6, align 8, !tbaa !79
  %92 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 0, ptr %92, align 8, !tbaa !38
  store i64 0, ptr %0, align 8, !tbaa !50
  %93 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %93, align 1, !tbaa !41
  %94 = load i16, ptr %57, align 2
  %95 = and i16 %94, 63
  %96 = icmp eq i16 %95, 1
  %97 = zext i1 %96 to i64
  br label %103

98:                                               ; preds = %29, %37, %27, %44
  %99 = load i8, ptr %6, align 8, !tbaa !79
  %100 = add i8 %99, -1
  store i8 %100, ptr %6, align 8, !tbaa !79
  %101 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 0, ptr %101, align 8, !tbaa !38
  store i64 0, ptr %0, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %102, align 1, !tbaa !41
  br label %103

103:                                              ; preds = %98, %88
  %104 = phi i64 [ %97, %88 ], [ 0, %98 ]
  %105 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  store i64 %104, ptr %105, align 8, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare i32 @_cpp_test_assertion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_promotion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 1, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !75
  %6 = getelementptr %struct.op, ptr %1, i64 -1, i32 1
  %7 = getelementptr %struct.op, ptr %1, i64 -1, i32 1, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !75
  %9 = icmp eq i8 %5, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = icmp eq i8 %5, 0
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 44
  %13 = load i64, ptr %12, align 8, !tbaa !43
  br i1 %11, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc zeroext i8 @num_positive(ptr noundef byval(%struct.cpp_num) align 8 %6, i64 noundef %13) #14, !range !49
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %28

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14, !range !49
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17, %14
  %21 = phi i64 [ -1, %14 ], [ 0, %17 ]
  %22 = phi ptr [ @.str.45, %14 ], [ @.str.46, %17 ]
  %23 = getelementptr %struct.op, ptr %1, i64 %21, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = load ptr, ptr %1, align 8, !tbaa !56
  %26 = tail call ptr @cpp_token_as_text(ptr noundef nonnull %0, ptr noundef %25) #13
  %27 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %24, i32 noundef 0, ptr noundef nonnull %22, ptr noundef %26) #13
  br label %28

28:                                               ; preds = %20, %17, %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @num_unary_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  switch i32 %3, label %28 [
    i32 27, label %7
    i32 28, label %19
    i32 14, label %22
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 17
  %9 = load i8, ptr %8, align 1, !tbaa !32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @.str.47) #13
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %18, align 1, !tbaa !41
  br label %37

19:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %21 = load i64, ptr %20, align 8, !tbaa !43
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %21) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %37

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %2, align 8, !tbaa !45
  %24 = xor <2 x i64> %23, <i64 -1, i64 -1>
  store <2 x i64> %24, ptr %2, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %26 = load i64, ptr %25, align 8, !tbaa !43
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %26) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %27 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %27, align 1, !tbaa !41
  br label %37

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !42
  %31 = load i64, ptr %2, align 8, !tbaa !50
  %32 = or i64 %31, %30
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i64
  store i64 %34, ptr %29, align 8, !tbaa !42
  store i64 0, ptr %2, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %35, align 1, !tbaa !41
  %36 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  store i8 0, ptr %36, align 8, !tbaa !38
  br label %37

37:                                               ; preds = %28, %22, %19, %17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @num_binary_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef byval(%struct.cpp_num) align 8 %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = alloca %struct.cpp_num, align 8
  %11 = alloca %struct.cpp_num, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %13 = load i64, ptr %12, align 8, !tbaa !43
  switch i32 %4, label %75 [
    i32 13, label %14
    i32 12, label %14
    i32 5, label %39
    i32 4, label %40
  ]

14:                                               ; preds = %5, %5
  %15 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14, !range !49
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = icmp eq i32 %4, 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %23 = load i64, ptr %3, align 8, !tbaa !50
  %24 = icmp eq i64 %23, 0
  %25 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = select i1 %24, i64 %26, i64 -1
  br i1 %22, label %37, label %35

28:                                               ; preds = %18, %14
  %29 = load i64, ptr %3, align 8, !tbaa !50
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  br label %90

37:                                               ; preds = %21, %28
  %38 = phi i64 [ %33, %28 ], [ %27, %21 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call fastcc void @num_rshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %13, i64 noundef %38) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  br label %90

39:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %40

40:                                               ; preds = %5, %39
  %41 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !42
  %45 = add i64 %44, %42
  %46 = getelementptr inbounds %struct.cpp_num, ptr %6, i64 0, i32 1
  store i64 %45, ptr %46, align 8, !tbaa !42
  %47 = load i64, ptr %2, align 8, !tbaa !50
  %48 = load i64, ptr %3, align 8, !tbaa !50
  %49 = add i64 %48, %47
  %50 = icmp ult i64 %45, %42
  %51 = zext i1 %50 to i64
  %52 = add i64 %49, %51
  store i64 %52, ptr %6, align 8, !tbaa !50
  %53 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %54 = load i8, ptr %53, align 8, !tbaa !38
  %55 = icmp ne i8 %54, 0
  %56 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %57 = load i8, ptr %56, align 8
  %58 = icmp ne i8 %57, 0
  %59 = select i1 %55, i1 true, i1 %58
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.cpp_num, ptr %6, i64 0, i32 2
  store i8 %60, ptr %61, align 8, !tbaa !38
  %62 = getelementptr inbounds %struct.cpp_num, ptr %6, i64 0, i32 3
  store i8 0, ptr %62, align 1, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %11, ptr noundef nonnull byval(%struct.cpp_num) align 8 %6, i64 noundef %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  %63 = load i8, ptr %61, align 8, !tbaa !38
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %40
  %66 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %13) #14, !range !49
  %67 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %13) #14, !range !49
  %68 = icmp eq i8 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %6, i64 noundef %13) #14, !range !49
  %71 = icmp ne i8 %66, %70
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i8 [ 0, %65 ], [ %72, %69 ]
  store i8 %74, ptr %62, align 1, !tbaa !41
  br label %90

75:                                               ; preds = %5
  %76 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 31
  %77 = load i8, ptr %76, align 1, !tbaa !11
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 29
  %81 = load i8, ptr %80, align 1, !tbaa !29
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 2, i32 11
  %85 = load i32, ptr %84, align 4, !tbaa !52
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79
  %88 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.48) #13
  br label %89

89:                                               ; preds = %87, %83, %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !44
  br label %90

90:                                               ; preds = %89, %37, %35, %40, %73
  %91 = phi ptr [ %6, %73 ], [ %6, %40 ], [ %2, %35 ], [ %2, %37 ], [ %2, %89 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %91, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_inequality_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %3, i32 noundef %4) unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %7 = load i64, ptr %6, align 8, !tbaa !43
  %8 = tail call fastcc zeroext i8 @num_greater_eq(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %7) #14, !range !49
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
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !42
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
  %31 = load i64, ptr %30, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !42
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
  store i64 %41, ptr %42, align 8, !tbaa !42
  store i64 0, ptr %2, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %43, align 1, !tbaa !41
  %44 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  store i8 0, ptr %44, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_equality_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %2, i32 noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !42
  %9 = icmp eq i64 %6, %8
  %10 = load i64, ptr %1, align 8
  %11 = load i64, ptr %2, align 8
  %12 = icmp eq i64 %10, %11
  %13 = select i1 %9, i1 %12, i1 false
  %14 = icmp eq i32 %3, 24
  %15 = xor i1 %14, %13
  %16 = zext i1 %15 to i64
  store i64 %16, ptr %5, align 8, !tbaa !42
  store i64 0, ptr %1, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %17, align 1, !tbaa !41
  %18 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  store i8 0, ptr %18, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_bitwise_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %2, i32 noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %5, align 1, !tbaa !41
  %6 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !38
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = icmp ne i8 %10, 0
  %12 = select i1 %8, i1 true, i1 %11
  %13 = zext i1 %12 to i8
  store i8 %13, ptr %6, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !42
  switch i32 %3, label %28 [
    i32 9, label %18
    i32 10, label %23
  ]

18:                                               ; preds = %4
  %19 = and i64 %17, %15
  store i64 %19, ptr %16, align 8, !tbaa !42
  %20 = load i64, ptr %2, align 8, !tbaa !50
  %21 = load i64, ptr %1, align 8, !tbaa !50
  %22 = and i64 %21, %20
  br label %33

23:                                               ; preds = %4
  %24 = or i64 %17, %15
  store i64 %24, ptr %16, align 8, !tbaa !42
  %25 = load i64, ptr %2, align 8, !tbaa !50
  %26 = load i64, ptr %1, align 8, !tbaa !50
  %27 = or i64 %26, %25
  br label %33

28:                                               ; preds = %4
  %29 = xor i64 %17, %15
  store i64 %29, ptr %16, align 8, !tbaa !42
  %30 = load i64, ptr %2, align 8, !tbaa !50
  %31 = load i64, ptr %1, align 8, !tbaa !50
  %32 = xor i64 %31, %30
  br label %33

33:                                               ; preds = %23, %28, %18
  %34 = phi i64 [ %27, %23 ], [ %32, %28 ], [ %22, %18 ]
  store i64 %34, ptr %1, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @num_mul(ptr dead_on_unwind noalias nocapture writable sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef byval(%struct.cpp_num) align 8 %3) unnamed_addr #5 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = alloca %struct.cpp_num, align 8
  %8 = alloca %struct.cpp_num, align 8
  %9 = alloca %struct.cpp_num, align 8
  %10 = alloca %struct.cpp_num, align 8
  %11 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !38
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %15 = load i8, ptr %14, align 8
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %13, i1 true, i1 %16
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %19 = load i64, ptr %18, align 8, !tbaa !43
  br i1 %17, label %29, label %20

20:                                               ; preds = %4
  %21 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %19) #14, !range !49
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i8 [ 0, %20 ], [ 1, %23 ]
  %26 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %19) #14, !range !49
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %29

29:                                               ; preds = %24, %28, %4
  %30 = phi i8 [ 0, %4 ], [ %25, %24 ], [ %21, %28 ]
  %31 = load i64, ptr %2, align 8, !tbaa !50
  %32 = icmp ne i64 %31, 0
  %33 = load i64, ptr %3, align 8
  %34 = icmp ne i64 %33, 0
  %35 = and i1 %32, %34
  %36 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !42
  %38 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !42
  tail call fastcc void @num_part_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %0, i64 noundef %37, i64 noundef %39) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call fastcc void @num_part_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %7, i64 noundef %31, i64 noundef %39) #14
  %40 = load i64, ptr %7, align 8, !tbaa.struct !44
  %41 = getelementptr inbounds i8, ptr %7, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa.struct !84
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %43 = load i64, ptr %0, align 8, !tbaa !50
  %44 = add i64 %43, %42
  %45 = icmp ne i64 %40, 0
  %46 = or i1 %35, %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call fastcc void @num_part_mul(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %8, i64 noundef %37, i64 noundef %33) #14
  %47 = load i64, ptr %8, align 8, !tbaa.struct !44
  %48 = getelementptr inbounds i8, ptr %8, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa.struct !84
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  %50 = add i64 %49, %44
  store i64 %50, ptr %0, align 8, !tbaa !50
  %51 = icmp ne i64 %47, 0
  %52 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  %54 = load i64, ptr %52, align 8, !tbaa !42
  %55 = icmp ne i64 %54, %53
  %56 = load i64, ptr %0, align 8
  %57 = icmp ne i64 %56, %50
  %58 = icmp eq i8 %30, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %19) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !44
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
  %67 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %19) #14, !range !49
  %68 = zext i1 %58 to i8
  %69 = icmp eq i8 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i64, ptr %52, align 8, !tbaa !42
  %72 = load i64, ptr %0, align 8, !tbaa !50
  %73 = or i64 %72, %71
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %60, %70, %66
  %76 = phi i1 [ %65, %60 ], [ false, %66 ], [ %74, %70 ]
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 %77, ptr %78, align 1, !tbaa !41
  %79 = zext i1 %17 to i8
  %80 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 %79, ptr %80, align 8, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @num_div_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr noundef %1, ptr nocapture noundef byval(%struct.cpp_num) align 8 %2, ptr nocapture noundef byval(%struct.cpp_num) align 8 %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
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
  %15 = load i8, ptr %14, align 8, !tbaa !38
  %16 = icmp ne i8 %15, 0
  %17 = getelementptr inbounds %struct.cpp_num, ptr %3, i64 0, i32 2
  %18 = load i8, ptr %17, align 8
  %19 = icmp ne i8 %18, 0
  %20 = select i1 %16, i1 true, i1 %19
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %1, i64 0, i32 53, i32 44
  %23 = load i64, ptr %22, align 8, !tbaa !43
  br i1 %20, label %33, label %24

24:                                               ; preds = %6
  %25 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %23) #14, !range !49
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %9, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i8 [ 0, %24 ], [ 1, %27 ]
  %30 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %23) #14, !range !49
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %10, ptr noundef nonnull byval(%struct.cpp_num) align 8 %3, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #15
  br label %33

33:                                               ; preds = %28, %32, %6
  %34 = phi i8 [ 0, %6 ], [ %29, %28 ], [ %25, %32 ]
  %35 = phi i8 [ 0, %6 ], [ %29, %28 ], [ %29, %32 ]
  %36 = load i64, ptr %3, align 8, !tbaa !50
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
  %50 = load i64, ptr %49, align 8, !tbaa !42
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
  %68 = load i32, ptr %67, align 4, !tbaa !52
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %128

70:                                               ; preds = %66
  %71 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %1, i32 noundef 3, i32 noundef %5, i32 noundef 0, ptr noundef nonnull @.str.49) #13
  br label %128

72:                                               ; preds = %41, %59, %52
  %73 = phi i64 [ %55, %52 ], [ %62, %59 ], [ %44, %41 ]
  store i8 1, ptr %17, align 8, !tbaa !38
  store i8 1, ptr %14, align 8, !tbaa !38
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
  %82 = tail call fastcc zeroext i8 @num_greater_eq(ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, ptr noundef nonnull byval(%struct.cpp_num) align 8 %8, i64 noundef %23) #14, !range !49
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call fastcc void @num_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %11, ptr noundef %1, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, ptr noundef nonnull byval(%struct.cpp_num) align 8 %8, i32 noundef 5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !44
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
  %100 = load i64, ptr %77, align 8, !tbaa !42
  %101 = load i64, ptr %8, align 8, !tbaa !50
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %100, i64 63)
  store i64 %102, ptr %77, align 8, !tbaa !42
  %103 = lshr i64 %101, 1
  store i64 %103, ptr %8, align 8, !tbaa !50
  br label %78

104:                                              ; preds = %93
  store i64 %94, ptr %76, align 8, !tbaa !42
  store i64 %79, ptr %7, align 8, !tbaa !50
  %105 = icmp eq i32 %4, 7
  br i1 %105, label %106, label %124

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.cpp_num, ptr %7, i64 0, i32 2
  store i8 %21, ptr %107, align 8, !tbaa !38
  %108 = getelementptr inbounds %struct.cpp_num, ptr %7, i64 0, i32 3
  store i8 0, ptr %108, align 1, !tbaa !41
  br i1 %20, label %128, label %109

109:                                              ; preds = %106
  %110 = icmp eq i8 %34, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %12, ptr noundef nonnull byval(%struct.cpp_num) align 8 %7, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  br label %112

112:                                              ; preds = %111, %109
  %113 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %7, i64 noundef %23) #14, !range !49
  %114 = zext i1 %110 to i8
  %115 = icmp eq i8 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load i64, ptr %76, align 8, !tbaa !42
  %118 = load i64, ptr %7, align 8, !tbaa !50
  %119 = or i64 %118, %117
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i8
  br label %122

122:                                              ; preds = %116, %112
  %123 = phi i8 [ 0, %112 ], [ %121, %116 ]
  store i8 %123, ptr %108, align 1, !tbaa !41
  br label %128

124:                                              ; preds = %104
  store i8 %21, ptr %14, align 8, !tbaa !38
  %125 = getelementptr inbounds %struct.cpp_num, ptr %2, i64 0, i32 3
  store i8 0, ptr %125, align 1, !tbaa !41
  %126 = icmp eq i8 %35, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #15
  call fastcc void @num_negate(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %13, ptr noundef nonnull byval(%struct.cpp_num) align 8 %2, i64 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !44
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
define internal fastcc void @num_negate(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) unnamed_addr #5 {
  %4 = alloca %struct.cpp_num, align 8
  %5 = load i64, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = xor i64 %5, -1
  store i64 %8, ptr %1, align 8, !tbaa !50
  %9 = sub i64 0, %7
  store i64 %9, ptr %6, align 8, !tbaa !42
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = sub i64 0, %5
  store i64 %12, ptr %1, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %4, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %15 = load i8, ptr %14, align 8, !tbaa !38
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
  store i8 %26, ptr %27, align 1, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @num_lshift(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = alloca %struct.cpp_num, align 8
  %7 = icmp ult i64 %3, %2
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = load i64, ptr %1, align 8, !tbaa !50
  %16 = or i64 %15, %14
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i8 [ 0, %8 ], [ %18, %12 ]
  %21 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %20, ptr %21, align 1, !tbaa !41
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
  store i64 %25, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %24, align 8, !tbaa !42
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
  store i64 %39, ptr %1, align 8, !tbaa !50
  %40 = shl i64 %31, %33
  store i64 %40, ptr %24, align 8, !tbaa !42
  br label %41

41:                                               ; preds = %35, %30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %42 = load i8, ptr %26, align 8, !tbaa !38
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %45, align 1, !tbaa !41
  br label %55

46:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @num_rshift(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %6, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) #14
  %47 = load i64, ptr %6, align 8, !tbaa.struct !44
  %48 = getelementptr inbounds i8, ptr %6, i64 8
  %49 = load i64, ptr %48, align 8, !tbaa.struct !84
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %50 = icmp ne i64 %25, %49
  %51 = icmp ne i64 %23, %47
  %52 = select i1 %50, i1 true, i1 %51
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 %53, ptr %54, align 1, !tbaa !41
  br label %55

55:                                               ; preds = %44, %46, %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @num_rshift(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 {
  %5 = alloca %struct.cpp_num, align 8
  %6 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14, !range !49
  %7 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq i8 %6, 0
  %11 = select i1 %9, i1 %10, i1 false
  %12 = sext i1 %11 to i64
  %13 = icmp ult i64 %3, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  store i64 %12, ptr %15, align 8, !tbaa !42
  br label %50

16:                                               ; preds = %4
  %17 = icmp ult i64 %2, 64
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  store i64 %12, ptr %1, align 8, !tbaa !50
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
  %28 = load i64, ptr %25, align 8, !tbaa !45
  %29 = or i64 %28, %27
  store i64 %29, ptr %25, align 8, !tbaa !45
  br label %30

30:                                               ; preds = %24, %20
  %31 = icmp ugt i64 %3, 63
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = add i64 %3, -64
  %34 = load i64, ptr %1, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  store i64 %34, ptr %35, align 8, !tbaa !42
  store i64 %12, ptr %1, align 8, !tbaa !50
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i64 [ %33, %32 ], [ %3, %30 ]
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !42
  %42 = lshr i64 %41, %37
  %43 = load i64, ptr %1, align 8, !tbaa !50
  %44 = sub i64 64, %37
  %45 = shl i64 %43, %44
  %46 = or i64 %45, %42
  store i64 %46, ptr %40, align 8, !tbaa !42
  %47 = lshr i64 %43, %37
  %48 = shl nsw i64 %12, %44
  %49 = or i64 %47, %48
  br label %50

50:                                               ; preds = %14, %39
  %51 = phi i64 [ %49, %39 ], [ %12, %14 ]
  store i64 %51, ptr %1, align 8, !tbaa !50
  br label %52

52:                                               ; preds = %50, %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call fastcc void @num_trim(ptr dead_on_unwind nonnull writable sret(%struct.cpp_num) align 8 %5, ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  %53 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 3
  store i8 0, ptr %53, align 1, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @num_greater_eq(ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %0, ptr nocapture noundef readonly byval(%struct.cpp_num) align 8 %1, i64 noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !38
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %0, i64 noundef %2) #14, !range !49
  %13 = tail call fastcc zeroext i8 @num_positive(ptr noundef nonnull byval(%struct.cpp_num) align 8 %1, i64 noundef %2) #14, !range !49
  %14 = icmp eq i8 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %3
  %16 = load i64, ptr %0, align 8, !tbaa !50
  %17 = load i64, ptr %1, align 8, !tbaa !50
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
define internal fastcc void @num_part_mul(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #10 {
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
  store i64 %20, ptr %7, align 8, !tbaa !42
  %21 = icmp ult i64 %20, %14
  %22 = zext i1 %21 to i64
  %23 = add nuw i64 %17, %22
  %24 = lshr i64 %11, 32
  %25 = lshr i64 %12, 32
  %26 = add nuw nsw i64 %25, %24
  %27 = add nuw i64 %26, %23
  store i64 %27, ptr %0, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 2
  store i8 1, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.cpp_num, ptr %0, i64 0, i32 3
  store i8 0, ptr %29, align 1, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @cpp_num_sign_extend(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.cpp_num) align 8 %0, ptr nocapture noundef byval(%struct.cpp_num) align 8 %1, i64 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.cpp_num, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !38
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = icmp ugt i64 %2, 64
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = and i64 %2, -64
  %11 = icmp eq i64 %10, 64
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i64, ptr %1, align 8, !tbaa !50
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
  %25 = load i64, ptr %24, align 8, !tbaa !42
  %26 = add nsw i64 %2, -1
  %27 = shl nuw i64 1, %26
  %28 = and i64 %25, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = icmp eq i64 %2, 64
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = sub nuw nsw i64 64, %2
  %34 = lshr i64 -1, %33
  %35 = xor i64 %34, -1
  %36 = or i64 %25, %35
  store i64 %36, ptr %24, align 8, !tbaa !42
  br label %37

37:                                               ; preds = %30, %32, %18
  %38 = phi i64 [ %22, %18 ], [ -1, %32 ], [ -1, %30 ]
  store i64 %38, ptr %1, align 8, !tbaa !50
  br label %39

39:                                               ; preds = %37, %12, %9, %23, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !44
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!12, !7, i64 1077}
!12 = !{!"cpp_reader", !13, i64 0, !13, i64 8, !14, i64 16, !13, i64 40, !15, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !16, i64 80, !13, i64 136, !13, i64 144, !17, i64 152, !15, i64 176, !7, i64 180, !13, i64 184, !13, i64 192, !18, i64 200, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !20, i64 312, !7, i64 400, !7, i64 401, !13, i64 408, !13, i64 416, !7, i64 424, !13, i64 432, !21, i64 440, !13, i64 472, !15, i64 480, !15, i64 484, !13, i64 488, !15, i64 496, !22, i64 504, !22, i64 528, !22, i64 552, !22, i64 576, !22, i64 600, !13, i64 624, !13, i64 632, !17, i64 640, !17, i64 664, !13, i64 688, !20, i64 696, !20, i64 784, !13, i64 872, !23, i64 880, !13, i64 1016, !13, i64 1024, !13, i64 1032, !24, i64 1040, !26, i64 1168, !7, i64 1200, !27, i64 1208, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !15, i64 1272, !28, i64 1280, !13, i64 1296}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"lexer_state", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 10, !15, i64 12, !7, i64 16, !7, i64 17}
!15 = !{!"int", !7, i64 0}
!16 = !{!"cpp_context", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 32, !13, i64 40, !7, i64 48}
!17 = !{!"cpp_token", !15, i64 0, !15, i64 4, !10, i64 6, !7, i64 8}
!18 = !{!"cpp_dir", !13, i64 0, !13, i64 8, !15, i64 16, !7, i64 20, !7, i64 21, !13, i64 24, !13, i64 32, !13, i64 40, !19, i64 48, !19, i64 56}
!19 = !{!"long", !7, i64 0}
!20 = !{!"obstack", !19, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !19, i64 40, !15, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !15, i64 80, !15, i64 80, !15, i64 80}
!21 = !{!"tokenrun", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!22 = !{!"cset_converter", !13, i64 0, !13, i64 8, !15, i64 16}
!23 = !{!"cpp_callbacks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128}
!24 = !{!"cpp_options", !15, i64 0, !15, i64 4, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !13, i64 48, !13, i64 56, !13, i64 64, !15, i64 72, !7, i64 76, !7, i64 77, !25, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !7, i64 120, !7, i64 121, !7, i64 122, !7, i64 123, !7, i64 124}
!25 = !{!"", !15, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!26 = !{!"spec_nodes", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!27 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !15, i64 24}
!28 = !{!"", !13, i64 0, !15, i64 8, !15, i64 12}
!29 = !{!12, !7, i64 1075}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!12, !7, i64 1063}
!33 = !{i32 0, i32 16384}
!34 = !{!12, !7, i64 1064}
!35 = !{!12, !7, i64 1048}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = !{!39, !7, i64 16}
!39 = !{!"cpp_num", !40, i64 0, !40, i64 8, !7, i64 16, !7, i64 17}
!40 = !{!"long long", !7, i64 0}
!41 = !{!39, !7, i64 17}
!42 = !{!39, !40, i64 8}
!43 = !{!12, !19, i64 1128}
!44 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 1, !6, i64 17, i64 1, !6}
!45 = !{!40, !40, i64 0}
!46 = distinct !{!46, !31}
!47 = !{!12, !7, i64 1082}
!48 = !{!12, !7, i64 16}
!49 = !{i8 0, i8 2}
!50 = !{!39, !40, i64 0}
!51 = !{!12, !13, i64 1024}
!52 = !{!12, !15, i64 28}
!53 = !{!12, !13, i64 416}
!54 = !{!55, !15, i64 36}
!55 = !{!"op", !13, i64 0, !39, i64 8, !15, i64 32, !15, i64 36}
!56 = !{!55, !13, i64 0}
!57 = !{!55, !40, i64 16}
!58 = !{!55, !40, i64 8}
!59 = !{!12, !13, i64 1032}
!60 = !{!17, !15, i64 0}
!61 = !{!55, !15, i64 32}
!62 = !{!15, !15, i64 0}
!63 = !{!12, !13, i64 1168}
!64 = !{!12, !13, i64 1176}
!65 = !{!12, !13, i64 1184}
!66 = !{!12, !7, i64 1073}
!67 = !{!68, !13, i64 0}
!68 = !{!"cpp_hashnode", !69, i64 0, !15, i64 16, !15, i64 16, !7, i64 17, !15, i64 18, !15, i64 18, !7, i64 24}
!69 = !{!"ht_identifier", !13, i64 0, !15, i64 8, !15, i64 12}
!70 = !{!12, !7, i64 18}
!71 = !{!12, !7, i64 1058}
!72 = !{!73, !7, i64 0}
!73 = !{!"cpp_operator", !7, i64 0, !7, i64 1}
!74 = !{!12, !7, i64 1066}
!75 = !{!55, !7, i64 24}
!76 = !{!55, !7, i64 25}
!77 = distinct !{!77, !31}
!78 = !{!12, !13, i64 136}
!79 = !{!12, !7, i64 24}
!80 = !{!17, !10, i64 6}
!81 = !{!12, !13, i64 984}
!82 = !{!12, !13, i64 992}
!83 = !{!12, !15, i64 48}
!84 = !{i64 0, i64 8, !45, i64 8, i64 1, !6, i64 9, i64 1, !6}
