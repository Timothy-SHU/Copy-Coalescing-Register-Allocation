; ModuleID = 'regex.c'
source_filename = "regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%union.byte_fail_stack_elt = type { ptr }
%struct.re_registers = type { i32, ptr, ptr }
%union.byte_register_info_type = type { %union.byte_fail_stack_elt }
%struct.compile_stack_elt_t = type { i64, i64, i64, i64, i32 }
%struct.regmatch_t = type { i32, i32 }

@xre_max_failures = dso_local local_unnamed_addr global i32 4000, align 4
@xre_syntax_options = dso_local local_unnamed_addr global i64 0, align 8
@re_error_msgid = internal unnamed_addr constant [17 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], align 16
@re_comp_buf = internal global %struct.re_pattern_buffer zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"No previous regular expression\00", align 1
@re_syntax_table = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@byte_reg_unset_dummy = internal global i8 0, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@init_syntax_once.done = internal unnamed_addr global i1 false, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"No match\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Invalid regular expression\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Invalid collation character\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Invalid character class name\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Trailing backslash\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Invalid back reference\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Unmatched [ or [^\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Unmatched ( or \\(\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Unmatched \\{\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Invalid content of \\{\\}\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Invalid range end\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Invalid preceding regular expression\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Premature end of regular expression\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Regular expression too big\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Unmatched ) or \\)\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !35

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !42
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !42
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @xre_set_syntax(i64 noundef %0) local_unnamed_addr #6 !prof !34 {
  %2 = load i64, ptr @xre_syntax_options, align 8, !tbaa !44
  store i64 %0, ptr @xre_syntax_options, align 8, !tbaa !44
  ret i64 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @xre_compile_fastmap(ptr nocapture noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = tail call fastcc i32 @byte_re_compile_fastmap(ptr noundef %0), !range !46
  ret i32 %2
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @byte_re_compile_fastmap(ptr nocapture noundef %0) unnamed_addr #7 !prof !34 {
  %2 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  %8 = alloca [40 x i8], align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %9 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, -10
  %12 = or disjoint i8 %11, 8
  store i8 %12, ptr %9, align 8
  br label %13

13:                                               ; preds = %32, %1
  %14 = phi ptr [ %8, %1 ], [ %33, %32 ]
  %15 = phi i32 [ 5, %1 ], [ %34, %32 ]
  %16 = phi i32 [ 0, %1 ], [ %35, %32 ]
  %17 = phi ptr [ %4, %1 ], [ %36, %32 ]
  %18 = phi i8 [ 1, %1 ], [ %37, %32 ]
  %19 = icmp eq ptr %17, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %17, align 1, !tbaa !51
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %20, %13
  %24 = icmp eq i32 %16, 0
  %25 = load i8, ptr %9, align 8
  %26 = or i8 %25, %18
  store i8 %26, ptr %9, align 8
  br i1 %24, label %230, label %27

27:                                               ; preds = %23
  %28 = add i32 %16, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %14, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !51
  br label %32

32:                                               ; preds = %124, %114, %105, %70, %43, %135, %134, %48, %83, %153, %166, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %27, %208, %225, %227, %139, %214, %151
  %33 = phi ptr [ %14, %27 ], [ %14, %227 ], [ %14, %225 ], [ %209, %208 ], [ %14, %214 ], [ %14, %139 ], [ %14, %151 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %38 ], [ %14, %166 ], [ %14, %153 ], [ %14, %83 ], [ %14, %48 ], [ %14, %134 ], [ %14, %135 ], [ %14, %43 ], [ %14, %70 ], [ %14, %105 ], [ %14, %114 ], [ %14, %124 ]
  %34 = phi i32 [ %15, %27 ], [ %15, %227 ], [ %15, %225 ], [ %210, %208 ], [ %15, %214 ], [ %15, %139 ], [ %15, %151 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %38 ], [ %15, %166 ], [ %15, %153 ], [ %15, %83 ], [ %15, %48 ], [ %15, %134 ], [ %15, %135 ], [ %15, %43 ], [ %15, %70 ], [ %15, %105 ], [ %15, %114 ], [ %15, %124 ]
  %35 = phi i32 [ %28, %27 ], [ %16, %227 ], [ %16, %225 ], [ %211, %208 ], [ %16, %214 ], [ %16, %139 ], [ %16, %151 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %16, %38 ], [ %172, %166 ], [ 0, %153 ], [ %16, %83 ], [ %16, %48 ], [ %16, %134 ], [ %16, %135 ], [ %16, %43 ], [ %16, %70 ], [ %16, %105 ], [ %16, %114 ], [ %16, %124 ]
  %36 = phi ptr [ %31, %27 ], [ %228, %227 ], [ %226, %225 ], [ %213, %208 ], [ %223, %214 ], [ %149, %139 ], [ %149, %151 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %39, %38 ], [ %164, %166 ], [ %164, %153 ], [ %7, %83 ], [ %7, %48 ], [ %7, %134 ], [ %7, %135 ], [ %7, %43 ], [ %7, %70 ], [ %7, %105 ], [ %7, %114 ], [ %7, %124 ]
  %37 = phi i8 [ 1, %27 ], [ %18, %227 ], [ %18, %225 ], [ %18, %208 ], [ %18, %214 ], [ %18, %139 ], [ %18, %151 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %38 ], [ %18, %166 ], [ %18, %153 ], [ 0, %83 ], [ 0, %48 ], [ 0, %134 ], [ 0, %135 ], [ 0, %43 ], [ 0, %70 ], [ 0, %105 ], [ 0, %114 ], [ 0, %124 ]
  br label %13, !llvm.loop !52

38:                                               ; preds = %20
  %39 = getelementptr inbounds i8, ptr %17, i64 1
  switch i8 %21, label %229 [
    i8 8, label %40
    i8 2, label %43
    i8 4, label %48
    i8 5, label %72
    i8 24, label %107
    i8 25, label %117
    i8 3, label %127
    i8 0, label %32
    i8 9, label %32
    i8 10, label %32
    i8 11, label %32
    i8 12, label %32
    i8 28, label %32
    i8 29, label %32
    i8 26, label %32
    i8 27, label %32
    i8 20, label %32
    i8 22, label %139
    i8 17, label %139
    i8 18, label %139
    i8 13, label %139
    i8 14, label %139
    i8 19, label %139
    i8 15, label %173
    i8 16, label %173
    i8 21, label %214
    i8 23, label %225
    i8 6, label %227
    i8 7, label %227
  ]

40:                                               ; preds = %38
  %41 = load i8, ptr %9, align 8
  %42 = or i8 %41, 1
  store i8 %42, ptr %9, align 8
  br label %230

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %17, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !51
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, ptr %3, i64 %46
  store i8 1, ptr %47, align 1, !tbaa !51
  br label %32

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, ptr %17, i64 2
  %50 = load i8, ptr %39, align 1, !tbaa !51
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %32, label %52

52:                                               ; preds = %48
  %53 = zext i8 %50 to i64
  %54 = shl nuw nsw i64 %53, 3
  br label %55

55:                                               ; preds = %52, %70
  %56 = phi i64 [ %54, %52 ], [ %57, %70 ]
  %57 = add nsw i64 %56, -1
  %58 = lshr i64 %57, 3
  %59 = and i64 %58, 536870911
  %60 = getelementptr inbounds i8, ptr %49, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !51
  %62 = zext i8 %61 to i32
  %63 = trunc i64 %57 to i32
  %64 = and i32 %63, 7
  %65 = shl nuw nsw i32 1, %64
  %66 = and i32 %65, %62
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds i8, ptr %3, i64 %57
  store i8 1, ptr %69, align 1, !tbaa !51
  br label %70

70:                                               ; preds = %55, %68
  %71 = icmp sgt i64 %56, 1
  br i1 %71, label %55, label %32, !llvm.loop !53

72:                                               ; preds = %38
  %73 = load i8, ptr %39, align 1, !tbaa !51
  %74 = icmp ult i8 %73, 32
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = shl nuw i8 %73, 3
  %77 = shl nuw i8 %73, 3
  %78 = zext i8 %77 to i64
  %79 = getelementptr i8, ptr %3, i64 %78
  %80 = sub nuw nsw i8 -8, %76
  %81 = zext i8 %80 to i64
  %82 = add nuw nsw i64 %81, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %79, i8 1, i64 %82, i1 false), !tbaa !51
  br label %83

83:                                               ; preds = %75, %72
  %84 = getelementptr inbounds i8, ptr %17, i64 2
  %85 = load i8, ptr %39, align 1, !tbaa !51
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %32, label %87

87:                                               ; preds = %83
  %88 = zext i8 %85 to i64
  %89 = shl nuw nsw i64 %88, 3
  br label %90

90:                                               ; preds = %87, %105
  %91 = phi i64 [ %89, %87 ], [ %92, %105 ]
  %92 = add nsw i64 %91, -1
  %93 = lshr i64 %92, 3
  %94 = and i64 %93, 536870911
  %95 = getelementptr inbounds i8, ptr %84, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !51
  %97 = zext i8 %96 to i32
  %98 = trunc i64 %92 to i32
  %99 = and i32 %98, 7
  %100 = shl nuw nsw i32 1, %99
  %101 = and i32 %100, %97
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = getelementptr inbounds i8, ptr %3, i64 %92
  store i8 1, ptr %104, align 1, !tbaa !51
  br label %105

105:                                              ; preds = %90, %103
  %106 = icmp sgt i64 %91, 1
  br i1 %106, label %90, label %32, !llvm.loop !54

107:                                              ; preds = %38, %114
  %108 = phi i64 [ %115, %114 ], [ 0, %38 ]
  %109 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !51
  %111 = icmp eq i8 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = getelementptr inbounds i8, ptr %3, i64 %108
  store i8 1, ptr %113, align 1, !tbaa !51
  br label %114

114:                                              ; preds = %107, %112
  %115 = add nuw nsw i64 %108, 1
  %116 = icmp eq i64 %115, 256
  br i1 %116, label %32, label %107, !llvm.loop !55

117:                                              ; preds = %38, %124
  %118 = phi i64 [ %125, %124 ], [ 0, %38 ]
  %119 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !51
  %121 = icmp eq i8 %120, 1
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds i8, ptr %3, i64 %118
  store i8 1, ptr %123, align 1, !tbaa !51
  br label %124

124:                                              ; preds = %117, %122
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, 256
  br i1 %126, label %32, label %117, !llvm.loop !56

127:                                              ; preds = %38
  %128 = getelementptr inbounds i8, ptr %3, i64 10
  %129 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 3
  %130 = load i8, ptr %128, align 1, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 1, i64 256, i1 false), !tbaa !51
  %131 = load i64, ptr %129, align 8, !tbaa !57
  %132 = and i64 %131, 64
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i8 %130, ptr %128, align 1, !tbaa !51
  br label %32

135:                                              ; preds = %127
  %136 = load i8, ptr %9, align 8
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %32, label %230

139:                                              ; preds = %38, %38, %38, %38, %38, %38
  %140 = load i8, ptr %39, align 1, !tbaa !51
  %141 = zext i8 %140 to i32
  %142 = getelementptr inbounds i8, ptr %17, i64 2
  %143 = load i8, ptr %142, align 1, !tbaa !51
  %144 = sext i8 %143 to i32
  %145 = shl nsw i32 %144, 8
  %146 = or disjoint i32 %145, %141
  %147 = getelementptr inbounds i8, ptr %17, i64 3
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  %150 = icmp sgt i32 %146, 0
  br i1 %150, label %32, label %151

151:                                              ; preds = %139
  %152 = load i8, ptr %149, align 1, !tbaa !51
  switch i8 %152, label %32 [
    i8 15, label %153
    i8 21, label %153
  ]

153:                                              ; preds = %151, %151
  %154 = getelementptr inbounds i8, ptr %149, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !51
  %156 = zext i8 %155 to i32
  %157 = getelementptr inbounds i8, ptr %149, i64 2
  %158 = load i8, ptr %157, align 1, !tbaa !51
  %159 = sext i8 %158 to i32
  %160 = shl nsw i32 %159, 8
  %161 = or disjoint i32 %160, %156
  %162 = getelementptr inbounds i8, ptr %149, i64 3
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, ptr %162, i64 %163
  %165 = icmp eq i32 %16, 0
  br i1 %165, label %32, label %166

166:                                              ; preds = %153
  %167 = add i32 %16, -1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %14, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !51
  %171 = icmp eq ptr %170, %164
  %172 = select i1 %171, i32 %167, i32 %16
  br label %32

173:                                              ; preds = %214, %38, %38
  %174 = phi i1 [ true, %38 ], [ true, %38 ], [ false, %214 ]
  %175 = load i8, ptr %39, align 1, !tbaa !51
  %176 = zext i8 %175 to i32
  %177 = getelementptr inbounds i8, ptr %17, i64 2
  %178 = load i8, ptr %177, align 1, !tbaa !51
  %179 = sext i8 %178 to i32
  %180 = shl nsw i32 %179, 8
  %181 = or disjoint i32 %180, %176
  %182 = getelementptr inbounds i8, ptr %17, i64 3
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, ptr %182, i64 %183
  %185 = icmp ult ptr %184, %7
  br i1 %185, label %186, label %205

186:                                              ; preds = %173
  %187 = icmp eq i32 %16, %15
  br i1 %187, label %188, label %199

188:                                              ; preds = %186
  %189 = load i32, ptr @xre_max_failures, align 4, !tbaa !42
  %190 = mul nsw i32 %189, 19
  %191 = icmp ugt i32 %15, %190
  br i1 %191, label %230, label %192

192:                                              ; preds = %188
  %193 = shl i32 %15, 1
  %194 = zext i32 %193 to i64
  %195 = shl nuw nsw i64 %194, 3
  %196 = alloca i8, i64 %195, align 16
  %197 = zext i32 %15 to i64
  %198 = shl nuw nsw i64 %197, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %196, ptr align 8 %14, i64 %198, i1 false)
  br label %199

199:                                              ; preds = %192, %186
  %200 = phi ptr [ %196, %192 ], [ %14, %186 ]
  %201 = phi i32 [ %193, %192 ], [ %15, %186 ]
  %202 = add i32 %16, 1
  %203 = zext i32 %16 to i64
  %204 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %200, i64 %203
  store ptr %184, ptr %204, align 8, !tbaa !51
  br label %208

205:                                              ; preds = %173
  %206 = load i8, ptr %9, align 8
  %207 = or i8 %206, 1
  store i8 %207, ptr %9, align 8
  br label %208

208:                                              ; preds = %205, %199
  %209 = phi ptr [ %200, %199 ], [ %14, %205 ]
  %210 = phi i32 [ %201, %199 ], [ %15, %205 ]
  %211 = phi i32 [ %202, %199 ], [ %16, %205 ]
  %212 = getelementptr inbounds i8, ptr %17, i64 5
  %213 = select i1 %174, ptr %182, ptr %212
  br label %32

214:                                              ; preds = %38
  %215 = getelementptr inbounds i8, ptr %17, i64 3
  %216 = load i8, ptr %215, align 1, !tbaa !51
  %217 = zext i8 %216 to i32
  %218 = getelementptr inbounds i8, ptr %17, i64 4
  %219 = load i8, ptr %218, align 1, !tbaa !51
  %220 = sext i8 %219 to i32
  %221 = shl nsw i32 %220, 8
  %222 = or disjoint i32 %221, %217
  %223 = getelementptr inbounds i8, ptr %17, i64 5
  %224 = icmp eq i32 %222, 0
  br i1 %224, label %173, label %32

225:                                              ; preds = %38
  %226 = getelementptr inbounds i8, ptr %17, i64 5
  br label %32

227:                                              ; preds = %38, %38
  %228 = getelementptr inbounds i8, ptr %17, i64 3
  br label %32

229:                                              ; preds = %38
  tail call void @abort() #22
  unreachable

230:                                              ; preds = %135, %188, %23, %40
  %231 = phi i32 [ 0, %40 ], [ -2, %188 ], [ 0, %135 ], [ 0, %23 ]
  ret i32 %231
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @xre_set_registers(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 !prof !34 {
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, -7
  br i1 %6, label %14, label %10

10:                                               ; preds = %5
  %11 = or disjoint i8 %9, 2
  store i8 %11, ptr %7, align 8
  store i32 %2, ptr %1, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.re_registers, ptr %1, i64 0, i32 1
  store ptr %3, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.re_registers, ptr %1, i64 0, i32 2
  store ptr %4, ptr %13, align 8, !tbaa !61
  br label %16

14:                                               ; preds = %5
  store i8 %9, ptr %7, align 8
  store i32 0, ptr %1, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.re_registers, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  br label %16

16:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @xre_search(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #7 !prof !34 {
  %7 = tail call i32 @xre_search_2(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %2)
  ret i32 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @xre_search_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #7 !prof !34 {
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = add nsw i32 %4, %2
  %15 = icmp slt i32 %5, 0
  %16 = icmp slt i32 %14, %5
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %163, label %18

18:                                               ; preds = %9
  %19 = add nsw i32 %6, %5
  %20 = icmp slt i32 %19, 0
  %21 = sub nsw i32 0, %5
  %22 = icmp sgt i32 %19, %14
  %23 = sub nsw i32 %14, %5
  %24 = select i1 %22, i32 %23, i32 %6
  %25 = select i1 %20, i32 %21, i32 %24
  %26 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !50
  %28 = icmp ne i64 %27, 0
  %29 = icmp sgt i32 %25, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load ptr, ptr %0, align 8, !tbaa !49
  %33 = load i8, ptr %32, align 1, !tbaa !51
  switch i8 %33, label %40 [
    i8 11, label %38
    i8 9, label %34
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %36 = load i8, ptr %35, align 8
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %31
  %39 = icmp eq i32 %5, 0
  br i1 %39, label %40, label %163

40:                                               ; preds = %38, %34, %31, %18
  %41 = phi i32 [ %25, %18 ], [ %25, %31 ], [ %25, %34 ], [ 1, %38 ]
  %42 = icmp ne ptr %11, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = tail call fastcc i32 @byte_re_compile_fastmap(ptr noundef %0), !range !46
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %163, label %51

51:                                               ; preds = %48, %43, %40
  %52 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %53 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  br label %54

54:                                               ; preds = %157, %51
  %55 = phi i32 [ %41, %51 ], [ %160, %157 ]
  %56 = phi i32 [ %5, %51 ], [ %162, %157 ]
  %57 = icmp slt i32 %56, %14
  %58 = select i1 %42, i1 %57, i1 false
  br i1 %58, label %59, label %137

59:                                               ; preds = %54
  %60 = load i8, ptr %53, align 8
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %137

63:                                               ; preds = %59
  %64 = icmp sgt i32 %55, 0
  br i1 %64, label %65, label %115

65:                                               ; preds = %63
  %66 = sext i32 %2 to i64
  %67 = sub nsw i64 0, %66
  %68 = getelementptr inbounds i8, ptr %3, i64 %67
  %69 = icmp eq ptr %13, null
  %70 = icmp sge i32 %56, %2
  %71 = add nsw i32 %56, %55
  %72 = icmp slt i32 %71, %2
  %73 = select i1 %70, i1 true, i1 %72
  %74 = sub i32 %55, %2
  %75 = add i32 %74, %56
  %76 = select i1 %73, i32 0, i32 %75
  %77 = icmp slt i32 %56, %2
  %78 = select i1 %77, ptr %1, ptr %68
  %79 = sext i32 %56 to i64
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  %81 = icmp sgt i32 %55, %76
  br i1 %69, label %83, label %82

82:                                               ; preds = %65
  br i1 %81, label %84, label %111

83:                                               ; preds = %65
  br i1 %81, label %99, label %111

84:                                               ; preds = %82, %95
  %85 = phi ptr [ %96, %95 ], [ %80, %82 ]
  %86 = phi i32 [ %97, %95 ], [ %55, %82 ]
  %87 = load i8, ptr %85, align 1, !tbaa !51
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds i8, ptr %13, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !51
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds i8, ptr %11, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !51
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %84
  %96 = getelementptr inbounds i8, ptr %85, i64 1
  %97 = add nsw i32 %86, -1
  %98 = icmp sgt i32 %97, %76
  br i1 %98, label %84, label %111, !llvm.loop !63

99:                                               ; preds = %83, %107
  %100 = phi ptr [ %108, %107 ], [ %80, %83 ]
  %101 = phi i32 [ %109, %107 ], [ %55, %83 ]
  %102 = load i8, ptr %100, align 1, !tbaa !51
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds i8, ptr %11, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !51
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = getelementptr inbounds i8, ptr %100, i64 1
  %109 = add nsw i32 %101, -1
  %110 = icmp sgt i32 %109, %76
  br i1 %110, label %99, label %111, !llvm.loop !64

111:                                              ; preds = %95, %84, %99, %107, %82, %83
  %112 = phi i32 [ %55, %83 ], [ %55, %82 ], [ %76, %107 ], [ %101, %99 ], [ %86, %84 ], [ %76, %95 ]
  %113 = add i32 %56, %55
  %114 = sub i32 %113, %112
  br label %137

115:                                              ; preds = %63
  %116 = icmp ne i32 %2, 0
  %117 = icmp eq ptr %13, null
  %118 = icmp slt i32 %56, %2
  %119 = select i1 %116, i1 %118, i1 false
  %120 = sub nsw i32 %56, %2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %3, i64 %121
  %123 = sext i32 %56 to i64
  %124 = getelementptr inbounds i8, ptr %1, i64 %123
  %125 = select i1 %119, ptr %124, ptr %122
  %126 = load i8, ptr %125, align 1, !tbaa !51
  br i1 %117, label %131, label %127

127:                                              ; preds = %115
  %128 = zext i8 %126 to i64
  %129 = getelementptr inbounds i8, ptr %13, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !51
  br label %131

131:                                              ; preds = %127, %115
  %132 = phi i8 [ %130, %127 ], [ %126, %115 ]
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i8, ptr %11, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !51
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %131, %111, %59, %54
  %138 = phi i32 [ %55, %59 ], [ %112, %111 ], [ %55, %131 ], [ %55, %54 ]
  %139 = phi i32 [ %56, %59 ], [ %114, %111 ], [ %56, %131 ], [ %56, %54 ]
  %140 = icmp sgt i32 %138, -1
  %141 = icmp eq i32 %139, %14
  %142 = and i1 %42, %141
  %143 = select i1 %140, i1 %142, i1 false
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i8, ptr %52, align 8
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %144, %137
  %149 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %139, ptr noundef %7, i32 noundef %8)
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %163, label %151

151:                                              ; preds = %148
  %152 = icmp eq i32 %149, -2
  br i1 %152, label %163, label %153

153:                                              ; preds = %151, %131
  %154 = phi i32 [ %138, %151 ], [ %55, %131 ]
  %155 = phi i32 [ %139, %151 ], [ %56, %131 ]
  %156 = icmp eq i32 %154, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %153
  %158 = icmp sgt i32 %154, 0
  %159 = select i1 %158, i32 -1, i32 1
  %160 = add nsw i32 %159, %154
  %161 = select i1 %158, i32 1, i32 -1
  %162 = add nsw i32 %161, %155
  br label %54, !llvm.loop !65

163:                                              ; preds = %153, %151, %144, %148, %9, %38, %48
  %164 = phi i32 [ -1, %9 ], [ -1, %38 ], [ -2, %48 ], [ %139, %148 ], [ -1, %144 ], [ -2, %151 ], [ -1, %153 ]
  ret i32 %164
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @xre_match(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #7 !prof !34 {
  %6 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %2)
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @byte_re_match_2_internal(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #7 !prof !34 {
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %10 = load ptr, ptr %0, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !66
  %18 = add i64 %17, 1
  %19 = alloca [40 x i8], align 16
  %20 = icmp eq i64 %17, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %8
  %22 = shl i64 %18, 3
  %23 = alloca i8, i64 %22, align 16
  %24 = alloca i8, i64 %22, align 16
  %25 = alloca i8, i64 %22, align 16
  %26 = alloca i8, i64 %22, align 16
  %27 = alloca i8, i64 %22, align 16
  %28 = alloca i8, i64 %22, align 16
  %29 = alloca i8, i64 %22, align 16
  %30 = alloca i8, i64 %22, align 16
  %31 = alloca i8, i64 %22, align 16
  br label %32

32:                                               ; preds = %8, %21
  %33 = phi ptr [ %23, %21 ], [ null, %8 ]
  %34 = phi ptr [ %24, %21 ], [ null, %8 ]
  %35 = phi ptr [ %25, %21 ], [ null, %8 ]
  %36 = phi ptr [ %26, %21 ], [ null, %8 ]
  %37 = phi ptr [ %29, %21 ], [ null, %8 ]
  %38 = phi ptr [ %27, %21 ], [ null, %8 ]
  %39 = phi ptr [ %28, %21 ], [ null, %8 ]
  %40 = phi ptr [ %30, %21 ], [ null, %8 ]
  %41 = phi ptr [ %31, %21 ], [ null, %8 ]
  %42 = icmp slt i32 %5, 0
  %43 = add nsw i32 %4, %2
  %44 = icmp slt i32 %43, %5
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %1844, label %46

46:                                               ; preds = %32
  %47 = icmp ugt i64 %18, 1
  br i1 %47, label %48, label %60

48:                                               ; preds = %46, %48
  %49 = phi i64 [ %58, %48 ], [ 1, %46 ]
  %50 = getelementptr inbounds ptr, ptr %36, i64 %49
  store ptr @byte_reg_unset_dummy, ptr %50, align 8, !tbaa !38
  %51 = getelementptr inbounds ptr, ptr %35, i64 %49
  store ptr @byte_reg_unset_dummy, ptr %51, align 8, !tbaa !38
  %52 = getelementptr inbounds ptr, ptr %34, i64 %49
  store ptr @byte_reg_unset_dummy, ptr %52, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %33, i64 %49
  store ptr @byte_reg_unset_dummy, ptr %53, align 8, !tbaa !38
  %54 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %49
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, -32
  %57 = or disjoint i8 %56, 3
  store i8 %57, ptr %54, align 8
  %58 = add nuw nsw i64 %49, 1
  %59 = icmp eq i64 %49, %17
  br i1 %59, label %60, label %48, !llvm.loop !67

60:                                               ; preds = %48, %46
  %61 = icmp eq i32 %4, 0
  %62 = icmp ne ptr %1, null
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %2, %64 ], [ %4, %60 ]
  %67 = phi ptr [ %1, %64 ], [ %3, %60 ]
  %68 = phi i32 [ 0, %64 ], [ %2, %60 ]
  %69 = phi ptr [ null, %64 ], [ %1, %60 ]
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  %72 = sext i32 %66 to i64
  %73 = getelementptr inbounds i8, ptr %67, i64 %72
  %74 = icmp slt i32 %68, %7
  %75 = sext i32 %7 to i64
  %76 = getelementptr inbounds i8, ptr %69, i64 %75
  %77 = getelementptr inbounds i8, ptr %67, i64 %75
  %78 = sub nsw i64 0, %70
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = select i1 %74, ptr %79, ptr %67
  %81 = select i1 %74, ptr %71, ptr %76
  %82 = icmp slt i32 %68, 1
  %83 = icmp slt i32 %68, %5
  %84 = or i1 %82, %83
  %85 = zext nneg i32 %5 to i64
  %86 = getelementptr inbounds i8, ptr %69, i64 %85
  %87 = getelementptr inbounds i8, ptr %67, i64 %85
  %88 = getelementptr inbounds i8, ptr %87, i64 %78
  %89 = select i1 %84, ptr %80, ptr %81
  %90 = select i1 %84, ptr %88, ptr %86
  %91 = icmp ne i32 %68, 0
  br label %92

92:                                               ; preds = %1837, %65
  %93 = phi i32 [ %1746, %1837 ], [ 0, %65 ]
  %94 = phi ptr [ %1747, %1837 ], [ null, %65 ]
  %95 = phi i64 [ %1771, %1837 ], [ 256, %65 ]
  %96 = phi i64 [ %1776, %1837 ], [ 257, %65 ]
  %97 = phi ptr [ %1748, %1837 ], [ %19, %65 ]
  %98 = phi i32 [ %1749, %1837 ], [ 5, %65 ]
  %99 = phi i32 [ %1799, %1837 ], [ 0, %65 ]
  %100 = phi ptr [ %1745, %1837 ], [ null, %65 ]
  %101 = phi ptr [ %1766, %1837 ], [ %10, %65 ]
  %102 = phi ptr [ %1841, %1837 ], [ %89, %65 ]
  %103 = phi ptr [ %1762, %1837 ], [ %90, %65 ]
  %104 = icmp eq ptr %101, %13
  br i1 %104, label %105, label %320

105:                                              ; preds = %1732, %92
  %106 = phi ptr [ %97, %92 ], [ %1736, %1732 ]
  %107 = phi i32 [ %98, %92 ], [ %1737, %1732 ]
  %108 = phi i32 [ %99, %92 ], [ %1738, %1732 ]
  %109 = phi ptr [ %100, %92 ], [ %1739, %1732 ]
  %110 = phi ptr [ %102, %92 ], [ %1741, %1732 ]
  %111 = phi ptr [ %103, %92 ], [ %1742, %1732 ]
  %112 = icmp eq ptr %111, %80
  br i1 %112, label %160, label %113

113:                                              ; preds = %105
  %114 = icmp ule ptr %69, %94
  %115 = select i1 %91, i1 %114, i1 false
  %116 = icmp ule ptr %94, %71
  %117 = select i1 %115, i1 %116, i1 false
  %118 = icmp eq ptr %110, %81
  %119 = xor i1 %117, %118
  br i1 %119, label %122, label %120

120:                                              ; preds = %113
  %121 = icmp ugt ptr %111, %94
  br label %124

122:                                              ; preds = %113
  %123 = xor i1 %118, true
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i1 [ %121, %120 ], [ %123, %122 ]
  %126 = icmp eq i32 %108, 0
  %127 = icmp eq i32 %93, 0
  %128 = select i1 %127, i1 true, i1 %125
  br i1 %126, label %142, label %129

129:                                              ; preds = %124
  br i1 %128, label %130, label %1744

130:                                              ; preds = %129
  %131 = icmp ugt i64 %18, 1
  br i1 %131, label %132, label %1744

132:                                              ; preds = %130, %132
  %133 = phi i64 [ %140, %132 ], [ 1, %130 ]
  %134 = getelementptr inbounds ptr, ptr %33, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !38
  %136 = getelementptr inbounds ptr, ptr %38, i64 %133
  store ptr %135, ptr %136, align 8, !tbaa !38
  %137 = getelementptr inbounds ptr, ptr %34, i64 %133
  %138 = load ptr, ptr %137, align 8, !tbaa !38
  %139 = getelementptr inbounds ptr, ptr %39, i64 %133
  store ptr %138, ptr %139, align 8, !tbaa !38
  %140 = add nuw nsw i64 %133, 1
  %141 = icmp eq i64 %133, %17
  br i1 %141, label %1744, label %132, !llvm.loop !68

142:                                              ; preds = %124
  br i1 %128, label %160, label %143

143:                                              ; preds = %1842, %142
  %144 = phi ptr [ %94, %142 ], [ %1747, %1842 ]
  %145 = icmp ult ptr %144, %69
  %146 = icmp ugt ptr %144, %71
  %147 = select i1 %145, i1 true, i1 %146
  %148 = select i1 %147, ptr %80, ptr %81
  %149 = icmp ugt i64 %18, 1
  br i1 %149, label %150, label %160

150:                                              ; preds = %143, %150
  %151 = phi i64 [ %158, %150 ], [ 1, %143 ]
  %152 = getelementptr inbounds ptr, ptr %38, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !38
  %154 = getelementptr inbounds ptr, ptr %33, i64 %151
  store ptr %153, ptr %154, align 8, !tbaa !38
  %155 = getelementptr inbounds ptr, ptr %39, i64 %151
  %156 = load ptr, ptr %155, align 8, !tbaa !38
  %157 = getelementptr inbounds ptr, ptr %34, i64 %151
  store ptr %156, ptr %157, align 8, !tbaa !38
  %158 = add nuw nsw i64 %151, 1
  %159 = icmp eq i64 %151, %17
  br i1 %159, label %160, label %150, !llvm.loop !69

160:                                              ; preds = %105, %320, %150, %143, %142
  %161 = phi ptr [ %110, %142 ], [ %148, %143 ], [ %148, %150 ], [ %322, %320 ], [ %110, %105 ]
  %162 = phi ptr [ %111, %142 ], [ %144, %143 ], [ %144, %150 ], [ %321, %320 ], [ %111, %105 ]
  %163 = icmp eq ptr %6, null
  br i1 %163, label %310, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %166 = load i8, ptr %165, align 8
  %167 = and i8 %166, 16
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %310

169:                                              ; preds = %164
  %170 = lshr i8 %166, 1
  %171 = and i8 %170, 3
  switch i8 %171, label %211 [
    i8 0, label %172
    i8 1, label %189
  ]

172:                                              ; preds = %169
  %173 = add i64 %17, 2
  %174 = tail call i64 @llvm.umax.i64(i64 %173, i64 30)
  %175 = trunc i64 %174 to i32
  store i32 %175, ptr %6, align 8, !tbaa !58
  %176 = shl i64 %174, 2
  %177 = and i64 %176, 17179869180
  %178 = tail call ptr @malloc(i64 noundef %177) #23
  %179 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  store ptr %178, ptr %179, align 8, !tbaa !60
  %180 = tail call ptr @malloc(i64 noundef %177) #23
  %181 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  store ptr %180, ptr %181, align 8, !tbaa !61
  %182 = icmp eq ptr %178, null
  %183 = icmp eq ptr %180, null
  %184 = or i1 %182, %183
  br i1 %184, label %1844, label %185

185:                                              ; preds = %172
  %186 = load i8, ptr %165, align 8
  %187 = and i8 %186, -7
  %188 = or disjoint i8 %187, 2
  store i8 %188, ptr %165, align 8
  br label %211

189:                                              ; preds = %169
  %190 = load i32, ptr %6, align 8, !tbaa !58
  %191 = zext i32 %190 to i64
  %192 = add i64 %17, 2
  %193 = icmp ugt i64 %192, %191
  br i1 %193, label %194, label %211

194:                                              ; preds = %189
  %195 = trunc i64 %192 to i32
  store i32 %195, ptr %6, align 8, !tbaa !58
  %196 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !60
  %198 = shl i64 %192, 2
  %199 = and i64 %198, 17179869180
  %200 = tail call ptr @realloc(ptr noundef %197, i64 noundef %199) #24
  store ptr %200, ptr %196, align 8, !tbaa !60
  %201 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !61
  %203 = load i32, ptr %6, align 8, !tbaa !58
  %204 = zext i32 %203 to i64
  %205 = shl nuw nsw i64 %204, 2
  %206 = tail call ptr @realloc(ptr noundef %202, i64 noundef %205) #24
  store ptr %206, ptr %201, align 8, !tbaa !61
  %207 = load ptr, ptr %196, align 8, !tbaa !60
  %208 = icmp eq ptr %207, null
  %209 = icmp eq ptr %206, null
  %210 = or i1 %209, %208
  br i1 %210, label %1844, label %211

211:                                              ; preds = %194, %169, %189, %185
  %212 = load i32, ptr %6, align 8, !tbaa !58
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %229, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !60
  store i32 %5, ptr %216, align 4, !tbaa !42
  %217 = icmp eq ptr %161, %81
  %218 = ptrtoint ptr %162 to i64
  %219 = ptrtoint ptr %69 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  %222 = ptrtoint ptr %67 to i64
  %223 = sub i64 %218, %222
  %224 = trunc i64 %223 to i32
  %225 = add i32 %68, %224
  %226 = select i1 %217, i32 %221, i32 %225
  %227 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !61
  store i32 %226, ptr %228, align 4, !tbaa !42
  br label %229

229:                                              ; preds = %214, %211
  %230 = load i32, ptr %6, align 8, !tbaa !58
  %231 = zext i32 %230 to i64
  %232 = tail call i64 @llvm.umin.i64(i64 %18, i64 %231)
  %233 = icmp ugt i64 %232, 1
  br i1 %233, label %234, label %291

234:                                              ; preds = %229
  %235 = icmp eq i32 %68, 0
  %236 = ptrtoint ptr %69 to i64
  %237 = ptrtoint ptr %67 to i64
  %238 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %239 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %240 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %241 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  br label %242

242:                                              ; preds = %234, %281
  %243 = phi i64 [ 1, %234 ], [ %286, %281 ]
  %244 = getelementptr inbounds ptr, ptr %33, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !38
  %246 = icmp eq ptr %245, @byte_reg_unset_dummy
  br i1 %246, label %251, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds ptr, ptr %34, i64 %243
  %249 = load ptr, ptr %248, align 8, !tbaa !38
  %250 = icmp eq ptr %249, @byte_reg_unset_dummy
  br i1 %250, label %251, label %254

251:                                              ; preds = %247, %242
  %252 = load ptr, ptr %240, align 8, !tbaa !61
  %253 = getelementptr inbounds i32, ptr %252, i64 %243
  store i32 -1, ptr %253, align 4, !tbaa !42
  br label %281

254:                                              ; preds = %247
  %255 = icmp ugt ptr %69, %245
  %256 = or i1 %235, %255
  %257 = icmp ugt ptr %245, %71
  %258 = select i1 %256, i1 true, i1 %257
  %259 = ptrtoint ptr %245 to i64
  %260 = sub i64 %259, %236
  %261 = trunc i64 %260 to i32
  %262 = sub i64 %259, %237
  %263 = trunc i64 %262 to i32
  %264 = add i32 %68, %263
  %265 = select i1 %258, i32 %264, i32 %261
  %266 = load ptr, ptr %238, align 8, !tbaa !60
  %267 = getelementptr inbounds i32, ptr %266, i64 %243
  store i32 %265, ptr %267, align 4, !tbaa !42
  br i1 %235, label %276, label %268

268:                                              ; preds = %254
  %269 = icmp ugt ptr %69, %249
  %270 = icmp ugt ptr %249, %71
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = ptrtoint ptr %249 to i64
  %274 = sub i64 %273, %236
  %275 = trunc i64 %274 to i32
  br label %281

276:                                              ; preds = %268, %254
  %277 = ptrtoint ptr %249 to i64
  %278 = sub i64 %277, %237
  %279 = trunc i64 %278 to i32
  %280 = add i32 %68, %279
  br label %281

281:                                              ; preds = %272, %276, %251
  %282 = phi ptr [ %241, %251 ], [ %239, %276 ], [ %239, %272 ]
  %283 = phi i32 [ -1, %251 ], [ %280, %276 ], [ %275, %272 ]
  %284 = load ptr, ptr %282, align 8, !tbaa !38
  %285 = getelementptr inbounds i32, ptr %284, i64 %243
  store i32 %283, ptr %285, align 4, !tbaa !42
  %286 = add nuw nsw i64 %243, 1
  %287 = load i32, ptr %6, align 8, !tbaa !58
  %288 = zext i32 %287 to i64
  %289 = tail call i64 @llvm.umin.i64(i64 %18, i64 %288)
  %290 = icmp ugt i64 %289, %286
  br i1 %290, label %242, label %291, !llvm.loop !70

291:                                              ; preds = %281, %229
  %292 = trunc i64 %18 to i32
  %293 = load i32, ptr %6, align 8, !tbaa !58
  %294 = icmp ugt i32 %293, %292
  br i1 %294, label %295, label %310

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !61
  %298 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !60
  %300 = shl i64 %18, 32
  %301 = ashr exact i64 %300, 32
  br label %302

302:                                              ; preds = %295, %302
  %303 = phi i64 [ %301, %295 ], [ %306, %302 ]
  %304 = getelementptr inbounds i32, ptr %297, i64 %303
  store i32 -1, ptr %304, align 4, !tbaa !42
  %305 = getelementptr inbounds i32, ptr %299, i64 %303
  store i32 -1, ptr %305, align 4, !tbaa !42
  %306 = add nsw i64 %303, 1
  %307 = load i32, ptr %6, align 8, !tbaa !58
  %308 = trunc i64 %306 to i32
  %309 = icmp ugt i32 %307, %308
  br i1 %309, label %302, label %310, !llvm.loop !71

310:                                              ; preds = %302, %291, %164, %160
  %311 = sub nsw i64 0, %85
  %312 = getelementptr inbounds i8, ptr %162, i64 %311
  %313 = icmp eq ptr %161, %81
  %314 = getelementptr inbounds i8, ptr %67, i64 %78
  %315 = select i1 %313, ptr %69, ptr %314
  %316 = ptrtoint ptr %312 to i64
  %317 = ptrtoint ptr %315 to i64
  %318 = sub i64 %316, %317
  %319 = trunc i64 %318 to i32
  br label %1844

320:                                              ; preds = %92, %1732
  %321 = phi ptr [ %1742, %1732 ], [ %103, %92 ]
  %322 = phi ptr [ %1741, %1732 ], [ %102, %92 ]
  %323 = phi ptr [ %1740, %1732 ], [ %101, %92 ]
  %324 = phi ptr [ %1739, %1732 ], [ %100, %92 ]
  %325 = phi i32 [ %1738, %1732 ], [ %99, %92 ]
  %326 = phi i32 [ %1737, %1732 ], [ %98, %92 ]
  %327 = phi ptr [ %1736, %1732 ], [ %97, %92 ]
  %328 = phi i64 [ %1735, %1732 ], [ %96, %92 ]
  %329 = phi i64 [ %1734, %1732 ], [ %95, %92 ]
  %330 = phi i32 [ %1733, %1732 ], [ 0, %92 ]
  %331 = getelementptr inbounds i8, ptr %323, i64 1
  %332 = load i8, ptr %323, align 1, !tbaa !51
  switch i8 %332, label %1731 [
    i8 0, label %1732
    i8 1, label %160
    i8 2, label %355
    i8 3, label %420
    i8 4, label %467
    i8 5, label %467
    i8 6, label %524
    i8 7, label %570
    i8 8, label %782
    i8 9, label %904
    i8 10, label %923
    i8 11, label %939
    i8 12, label %945
    i8 16, label %947
    i8 15, label %1028
    i8 18, label %1139
    i8 17, label %1319
    i8 13, label %1351
    i8 14, label %1351
    i8 19, label %344
    i8 20, label %333
    i8 21, label %1486
    i8 22, label %1505
    i8 23, label %1522
    i8 28, label %1539
    i8 29, label %1573
    i8 26, label %1607
    i8 27, label %1638
    i8 24, label %1669
    i8 25, label %1700
  ]

333:                                              ; preds = %320
  %334 = sub i64 %329, %328
  %335 = mul i64 %334, 3
  %336 = add i64 %335, 7
  %337 = sub i32 %326, %325
  %338 = zext i32 %337 to i64
  %339 = icmp ugt i64 %336, %338
  br i1 %339, label %340, label %1426

340:                                              ; preds = %333
  %341 = load i32, ptr @xre_max_failures, align 4, !tbaa !42
  %342 = mul nsw i32 %341, 19
  %343 = icmp ugt i32 %326, %342
  br i1 %343, label %1481, label %1433

344:                                              ; preds = %320
  %345 = sub i64 %329, %328
  %346 = mul i64 %345, 3
  %347 = add i64 %346, 7
  %348 = sub i32 %326, %325
  %349 = zext i32 %348 to i64
  %350 = icmp ugt i64 %347, %349
  br i1 %350, label %351, label %1366

351:                                              ; preds = %344
  %352 = load i32, ptr @xre_max_failures, align 4, !tbaa !42
  %353 = mul nsw i32 %352, 19
  %354 = icmp ugt i32 %326, %353
  br i1 %354, label %1421, label %1373

355:                                              ; preds = %320
  %356 = icmp eq ptr %15, null
  %357 = getelementptr inbounds i8, ptr %323, i64 2
  %358 = load i8, ptr %331, align 1, !tbaa !51
  %359 = zext i8 %358 to i32
  %360 = getelementptr i8, ptr %323, i64 3
  %361 = add nsw i32 %359, -1
  %362 = zext i32 %361 to i64
  %363 = getelementptr i8, ptr %360, i64 %362
  br i1 %356, label %387, label %364

364:                                              ; preds = %355, %383
  %365 = phi ptr [ %384, %383 ], [ %357, %355 ]
  %366 = phi ptr [ %370, %383 ], [ %322, %355 ]
  %367 = phi ptr [ %376, %383 ], [ %321, %355 ]
  %368 = phi i32 [ %385, %383 ], [ %359, %355 ]
  br label %369

369:                                              ; preds = %373, %364
  %370 = phi ptr [ %366, %364 ], [ %80, %373 ]
  %371 = phi ptr [ %367, %364 ], [ %67, %373 ]
  %372 = icmp eq ptr %371, %370
  br i1 %372, label %373, label %375

373:                                              ; preds = %369
  %374 = icmp eq ptr %370, %80
  br i1 %374, label %1744, label %369, !llvm.loop !72

375:                                              ; preds = %369
  %376 = getelementptr inbounds i8, ptr %371, i64 1
  %377 = load i8, ptr %371, align 1, !tbaa !51
  %378 = zext i8 %377 to i64
  %379 = getelementptr inbounds i8, ptr %15, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !51
  %381 = load i8, ptr %365, align 1, !tbaa !51
  %382 = icmp eq i8 %380, %381
  br i1 %382, label %383, label %1744

383:                                              ; preds = %375
  %384 = getelementptr inbounds i8, ptr %365, i64 1
  %385 = add nsw i32 %368, -1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %407, label %364, !llvm.loop !73

387:                                              ; preds = %355, %403
  %388 = phi ptr [ %404, %403 ], [ %357, %355 ]
  %389 = phi ptr [ %393, %403 ], [ %322, %355 ]
  %390 = phi ptr [ %399, %403 ], [ %321, %355 ]
  %391 = phi i32 [ %405, %403 ], [ %359, %355 ]
  br label %392

392:                                              ; preds = %396, %387
  %393 = phi ptr [ %389, %387 ], [ %80, %396 ]
  %394 = phi ptr [ %390, %387 ], [ %67, %396 ]
  %395 = icmp eq ptr %394, %393
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = icmp eq ptr %393, %80
  br i1 %397, label %1744, label %392, !llvm.loop !74

398:                                              ; preds = %392
  %399 = getelementptr inbounds i8, ptr %394, i64 1
  %400 = load i8, ptr %394, align 1, !tbaa !51
  %401 = load i8, ptr %388, align 1, !tbaa !51
  %402 = icmp eq i8 %400, %401
  br i1 %402, label %403, label %1744

403:                                              ; preds = %398
  %404 = getelementptr inbounds i8, ptr %388, i64 1
  %405 = add nsw i32 %391, -1
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %387, !llvm.loop !75

407:                                              ; preds = %383, %403
  %408 = phi ptr [ %393, %403 ], [ %370, %383 ]
  %409 = phi ptr [ %399, %403 ], [ %376, %383 ]
  %410 = icmp ne i32 %330, 0
  %411 = icmp ugt i64 %328, %329
  %412 = select i1 %410, i1 true, i1 %411
  br i1 %412, label %1732, label %413

413:                                              ; preds = %407, %413
  %414 = phi i64 [ %418, %413 ], [ %328, %407 ]
  %415 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %414
  %416 = load i8, ptr %415, align 8
  %417 = or i8 %416, 24
  store i8 %417, ptr %415, align 8
  %418 = add i64 %414, 1
  %419 = icmp ugt i64 %418, %329
  br i1 %419, label %1732, label %413, !llvm.loop !76

420:                                              ; preds = %320, %424
  %421 = phi ptr [ %80, %424 ], [ %322, %320 ]
  %422 = phi ptr [ %67, %424 ], [ %321, %320 ]
  %423 = icmp eq ptr %422, %421
  br i1 %423, label %424, label %426

424:                                              ; preds = %420
  %425 = icmp eq ptr %421, %80
  br i1 %425, label %1744, label %420, !llvm.loop !77

426:                                              ; preds = %420
  %427 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 3
  %428 = load i64, ptr %427, align 8, !tbaa !57
  %429 = and i64 %428, 64
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %441

431:                                              ; preds = %426
  %432 = icmp eq ptr %15, null
  br i1 %432, label %437, label %433

433:                                              ; preds = %431
  %434 = load i8, ptr %422, align 1, !tbaa !51
  %435 = zext i8 %434 to i64
  %436 = getelementptr inbounds i8, ptr %15, i64 %435
  br label %437

437:                                              ; preds = %431, %433
  %438 = phi ptr [ %436, %433 ], [ %422, %431 ]
  %439 = load i8, ptr %438, align 1, !tbaa !51
  %440 = icmp eq i8 %439, 10
  br i1 %440, label %1744, label %441

441:                                              ; preds = %437, %426
  %442 = and i64 %428, 128
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %454, label %444

444:                                              ; preds = %441
  %445 = icmp eq ptr %15, null
  br i1 %445, label %450, label %446

446:                                              ; preds = %444
  %447 = load i8, ptr %422, align 1, !tbaa !51
  %448 = zext i8 %447 to i64
  %449 = getelementptr inbounds i8, ptr %15, i64 %448
  br label %450

450:                                              ; preds = %444, %446
  %451 = phi ptr [ %449, %446 ], [ %422, %444 ]
  %452 = load i8, ptr %451, align 1, !tbaa !51
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %1744, label %454

454:                                              ; preds = %441, %450
  %455 = icmp ne i32 %330, 0
  %456 = icmp ugt i64 %328, %329
  %457 = select i1 %455, i1 true, i1 %456
  br i1 %457, label %465, label %458

458:                                              ; preds = %454, %458
  %459 = phi i64 [ %463, %458 ], [ %328, %454 ]
  %460 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %459
  %461 = load i8, ptr %460, align 8
  %462 = or i8 %461, 24
  store i8 %462, ptr %460, align 8
  %463 = add i64 %459, 1
  %464 = icmp ugt i64 %463, %329
  br i1 %464, label %465, label %458, !llvm.loop !78

465:                                              ; preds = %458, %454
  %466 = getelementptr inbounds i8, ptr %422, i64 1
  br label %1732

467:                                              ; preds = %320, %320
  %468 = icmp eq i8 %332, 5
  br label %469

469:                                              ; preds = %473, %467
  %470 = phi ptr [ %322, %467 ], [ %80, %473 ]
  %471 = phi ptr [ %321, %467 ], [ %67, %473 ]
  %472 = icmp eq ptr %471, %470
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = icmp eq ptr %470, %80
  br i1 %474, label %519, label %469, !llvm.loop !79

475:                                              ; preds = %469
  %476 = icmp eq ptr %15, null
  br i1 %476, label %481, label %477

477:                                              ; preds = %475
  %478 = load i8, ptr %471, align 1, !tbaa !51
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds i8, ptr %15, i64 %479
  br label %481

481:                                              ; preds = %475, %477
  %482 = phi ptr [ %480, %477 ], [ %471, %475 ]
  %483 = load i8, ptr %482, align 1, !tbaa !51
  %484 = zext i8 %483 to i32
  %485 = load i8, ptr %331, align 1, !tbaa !51
  %486 = zext i8 %485 to i32
  %487 = shl nuw nsw i32 %486, 3
  %488 = icmp ugt i32 %487, %484
  br i1 %488, label %489, label %501

489:                                              ; preds = %481
  %490 = lshr i32 %484, 3
  %491 = zext nneg i32 %490 to i64
  %492 = getelementptr i8, ptr %331, i64 %491
  %493 = getelementptr i8, ptr %492, i64 1
  %494 = load i8, ptr %493, align 1, !tbaa !51
  %495 = zext i8 %494 to i32
  %496 = and i32 %484, 7
  %497 = shl nuw nsw i32 1, %496
  %498 = and i32 %497, %495
  %499 = icmp ne i32 %498, 0
  %500 = xor i1 %468, %499
  br label %501

501:                                              ; preds = %489, %481
  %502 = phi i1 [ %468, %481 ], [ %500, %489 ]
  %503 = zext i8 %485 to i64
  %504 = getelementptr i8, ptr %331, i64 %503
  %505 = getelementptr i8, ptr %504, i64 1
  br i1 %502, label %506, label %519

506:                                              ; preds = %501
  %507 = icmp ne i32 %330, 0
  %508 = icmp ugt i64 %328, %329
  %509 = select i1 %507, i1 true, i1 %508
  br i1 %509, label %517, label %510

510:                                              ; preds = %506, %510
  %511 = phi i64 [ %515, %510 ], [ %328, %506 ]
  %512 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %511
  %513 = load i8, ptr %512, align 8
  %514 = or i8 %513, 24
  store i8 %514, ptr %512, align 8
  %515 = add i64 %511, 1
  %516 = icmp ugt i64 %515, %329
  br i1 %516, label %517, label %510, !llvm.loop !80

517:                                              ; preds = %510, %506
  %518 = getelementptr inbounds i8, ptr %471, i64 1
  br label %519

519:                                              ; preds = %473, %501, %517
  %520 = phi i32 [ 1, %517 ], [ %330, %501 ], [ %330, %473 ]
  %521 = phi i32 [ 34, %517 ], [ 16, %501 ], [ 16, %473 ]
  %522 = phi ptr [ %505, %517 ], [ %505, %501 ], [ %331, %473 ]
  %523 = phi ptr [ %518, %517 ], [ %471, %501 ], [ %471, %473 ]
  switch i32 %521, label %1844 [
    i32 34, label %1732
    i32 16, label %1744
  ]

524:                                              ; preds = %320
  store ptr %331, ptr %9, align 8, !tbaa !38
  %525 = load i8, ptr %331, align 1, !tbaa !51
  %526 = zext i8 %525 to i64
  %527 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %526
  %528 = load i8, ptr %527, align 8
  %529 = and i8 %528, 3
  %530 = icmp eq i8 %529, 3
  br i1 %530, label %531, label %539

531:                                              ; preds = %524
  %532 = call fastcc signext i8 @byte_group_match_null_string_p(ptr noundef nonnull %9, ptr noundef %13, ptr noundef %37), !range !81
  %533 = load i8, ptr %331, align 1, !tbaa !51
  %534 = zext i8 %533 to i64
  %535 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %534
  %536 = load i8, ptr %535, align 8
  %537 = and i8 %536, -4
  %538 = or disjoint i8 %537, %532
  store i8 %538, ptr %535, align 8
  br label %539

539:                                              ; preds = %531, %524
  %540 = load i8, ptr %331, align 1, !tbaa !51
  %541 = zext i8 %540 to i64
  %542 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %541
  %543 = load i8, ptr %542, align 8
  %544 = and i8 %543, 3
  %545 = icmp eq i8 %544, 0
  %546 = getelementptr inbounds ptr, ptr %33, i64 %541
  %547 = load ptr, ptr %546, align 8, !tbaa !38
  %548 = icmp eq ptr %547, @byte_reg_unset_dummy
  %549 = select i1 %548, ptr %321, ptr %547
  %550 = select i1 %545, ptr %547, ptr %549
  %551 = getelementptr inbounds ptr, ptr %35, i64 %541
  store ptr %550, ptr %551, align 8, !tbaa !38
  %552 = load i8, ptr %331, align 1, !tbaa !51
  %553 = zext i8 %552 to i64
  %554 = getelementptr inbounds ptr, ptr %33, i64 %553
  store ptr %321, ptr %554, align 8, !tbaa !38
  %555 = load i8, ptr %331, align 1, !tbaa !51
  %556 = zext i8 %555 to i64
  %557 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %556
  %558 = load i8, ptr %557, align 8
  %559 = or i8 %558, 4
  store i8 %559, ptr %557, align 8
  %560 = load i8, ptr %331, align 1, !tbaa !51
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %561
  %563 = load i8, ptr %562, align 8
  %564 = and i8 %563, -9
  store i8 %564, ptr %562, align 8
  %565 = load i8, ptr %331, align 1, !tbaa !51
  %566 = zext i8 %565 to i64
  %567 = icmp eq i64 %328, 257
  %568 = select i1 %567, i64 %566, i64 %328
  %569 = getelementptr inbounds i8, ptr %323, i64 3
  br label %1732

570:                                              ; preds = %320
  %571 = load i8, ptr %331, align 1, !tbaa !51
  %572 = zext i8 %571 to i64
  %573 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %572
  %574 = load i8, ptr %573, align 8
  %575 = and i8 %574, 3
  %576 = icmp eq i8 %575, 0
  %577 = getelementptr inbounds ptr, ptr %34, i64 %572
  %578 = load ptr, ptr %577, align 8, !tbaa !38
  %579 = icmp eq ptr %578, @byte_reg_unset_dummy
  %580 = select i1 %579, ptr %321, ptr %578
  %581 = select i1 %576, ptr %578, ptr %580
  %582 = getelementptr inbounds ptr, ptr %36, i64 %572
  store ptr %581, ptr %582, align 8, !tbaa !38
  %583 = load i8, ptr %331, align 1, !tbaa !51
  %584 = zext i8 %583 to i64
  %585 = getelementptr inbounds ptr, ptr %34, i64 %584
  store ptr %321, ptr %585, align 8, !tbaa !38
  %586 = load i8, ptr %331, align 1, !tbaa !51
  %587 = zext i8 %586 to i64
  %588 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %587
  %589 = load i8, ptr %588, align 8
  %590 = and i8 %589, -5
  store i8 %590, ptr %588, align 8
  %591 = icmp eq i64 %328, %329
  br i1 %591, label %604, label %592

592:                                              ; preds = %570
  %593 = load i8, ptr %331, align 1, !tbaa !51
  br label %594

594:                                              ; preds = %598, %592
  %595 = phi i8 [ %593, %592 ], [ %596, %598 ]
  %596 = add i8 %595, -1
  %597 = icmp eq i8 %596, 0
  br i1 %597, label %604, label %598

598:                                              ; preds = %594
  %599 = zext i8 %596 to i64
  %600 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %599
  %601 = load i8, ptr %600, align 8
  %602 = and i8 %601, 4
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %594, label %604, !llvm.loop !82

604:                                              ; preds = %598, %594, %570
  %605 = phi i64 [ 256, %570 ], [ 256, %594 ], [ %599, %598 ]
  %606 = phi i64 [ 257, %570 ], [ 257, %594 ], [ %328, %598 ]
  %607 = load i8, ptr %331, align 1, !tbaa !51
  %608 = zext i8 %607 to i64
  %609 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %608
  %610 = load i8, ptr %609, align 8
  %611 = and i8 %610, 8
  %612 = icmp eq i8 %611, 0
  %613 = icmp eq ptr %324, %323
  %614 = select i1 %612, i1 true, i1 %613
  br i1 %614, label %615, label %777

615:                                              ; preds = %604
  %616 = getelementptr inbounds i8, ptr %323, i64 3
  %617 = icmp ult ptr %616, %13
  br i1 %617, label %618, label %777

618:                                              ; preds = %615
  %619 = getelementptr inbounds i8, ptr %323, i64 4
  store ptr %619, ptr %9, align 8, !tbaa !38
  %620 = load i8, ptr %616, align 1, !tbaa !51
  %621 = add i8 %620, -13
  %622 = icmp ult i8 %621, 10
  br i1 %622, label %623, label %643

623:                                              ; preds = %618
  %624 = zext nneg i8 %621 to i16
  %625 = lshr i16 625, %624
  %626 = and i16 %625, 1
  %627 = icmp eq i16 %626, 0
  br i1 %627, label %643, label %628

628:                                              ; preds = %623
  %629 = zext nneg i8 %621 to i10
  %630 = lshr i10 113, %629
  %631 = and i10 %630, 1
  %632 = icmp eq i10 %631, 0
  %633 = load i8, ptr %619, align 1, !tbaa !51
  %634 = zext i8 %633 to i32
  %635 = getelementptr inbounds i8, ptr %323, i64 5
  %636 = load i8, ptr %635, align 1, !tbaa !51
  %637 = sext i8 %636 to i32
  %638 = shl nsw i32 %637, 8
  %639 = or disjoint i32 %638, %634
  %640 = getelementptr inbounds i8, ptr %323, i64 6
  store ptr %640, ptr %9, align 8, !tbaa !38
  br i1 %632, label %641, label %643

641:                                              ; preds = %628
  %642 = getelementptr inbounds i8, ptr %323, i64 8
  store ptr %642, ptr %9, align 8, !tbaa !38
  br label %643

643:                                              ; preds = %623, %618, %628, %641
  %644 = phi i32 [ %639, %641 ], [ %639, %628 ], [ 0, %618 ], [ 0, %623 ]
  %645 = load ptr, ptr %9, align 8, !tbaa !38
  %646 = sext i32 %644 to i64
  %647 = getelementptr inbounds i8, ptr %645, i64 %646
  store ptr %647, ptr %9, align 8, !tbaa !38
  %648 = icmp slt i32 %644, 0
  br i1 %648, label %649, label %772

649:                                              ; preds = %643
  %650 = load i8, ptr %647, align 1, !tbaa !51
  %651 = icmp eq i8 %650, 15
  br i1 %651, label %652, label %772

652:                                              ; preds = %649
  %653 = getelementptr inbounds i8, ptr %647, i64 3
  %654 = load i8, ptr %653, align 1, !tbaa !51
  %655 = icmp eq i8 %654, 6
  br i1 %655, label %656, label %772

656:                                              ; preds = %652
  %657 = getelementptr inbounds i8, ptr %647, i64 4
  %658 = load i8, ptr %657, align 1, !tbaa !51
  %659 = load i8, ptr %331, align 1, !tbaa !51
  %660 = icmp eq i8 %658, %659
  br i1 %660, label %661, label %772

661:                                              ; preds = %656
  %662 = zext i8 %659 to i64
  %663 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %662
  %664 = load i8, ptr %663, align 8
  %665 = and i8 %664, 16
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %697, label %667

667:                                              ; preds = %661
  %668 = and i8 %664, -17
  store i8 %668, ptr %663, align 8
  %669 = load i8, ptr %331, align 1, !tbaa !51
  %670 = zext i8 %669 to i32
  %671 = getelementptr inbounds i8, ptr %323, i64 2
  %672 = zext i8 %669 to i32
  %673 = load i8, ptr %671, align 1, !tbaa !51
  %674 = zext i8 %673 to i32
  %675 = add nuw nsw i32 %674, %672
  %676 = icmp ugt i32 %675, %670
  br i1 %676, label %677, label %697

677:                                              ; preds = %667
  %678 = zext i8 %669 to i64
  br label %679

679:                                              ; preds = %677, %689
  %680 = phi i64 [ %678, %677 ], [ %690, %689 ]
  %681 = getelementptr inbounds ptr, ptr %35, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !38
  %683 = getelementptr inbounds ptr, ptr %33, i64 %680
  store ptr %682, ptr %683, align 8, !tbaa !38
  %684 = getelementptr inbounds ptr, ptr %36, i64 %680
  %685 = load ptr, ptr %684, align 8, !tbaa !38
  %686 = icmp ult ptr %685, %682
  br i1 %686, label %689, label %687

687:                                              ; preds = %679
  %688 = getelementptr inbounds ptr, ptr %34, i64 %680
  store ptr %685, ptr %688, align 8, !tbaa !38
  br label %689

689:                                              ; preds = %679, %687
  %690 = add nuw nsw i64 %680, 1
  %691 = load i8, ptr %331, align 1, !tbaa !51
  %692 = zext i8 %691 to i64
  %693 = load i8, ptr %671, align 1, !tbaa !51
  %694 = zext i8 %693 to i64
  %695 = add nuw nsw i64 %694, %692
  %696 = icmp ult i64 %690, %695
  br i1 %696, label %679, label %697, !llvm.loop !83

697:                                              ; preds = %689, %667, %661
  %698 = getelementptr inbounds i8, ptr %647, i64 1
  store ptr %698, ptr %9, align 8, !tbaa !38
  %699 = load i8, ptr %698, align 1, !tbaa !51
  %700 = zext i8 %699 to i32
  %701 = getelementptr inbounds i8, ptr %647, i64 2
  %702 = load i8, ptr %701, align 1, !tbaa !51
  %703 = sext i8 %702 to i32
  %704 = shl nsw i32 %703, 8
  %705 = or disjoint i32 %704, %700
  store ptr %653, ptr %9, align 8, !tbaa !38
  %706 = sub i64 %605, %606
  %707 = mul i64 %706, 3
  %708 = add i64 %707, 7
  %709 = sub i32 %326, %325
  %710 = zext i32 %709 to i64
  %711 = icmp ugt i64 %708, %710
  br i1 %711, label %712, label %715

712:                                              ; preds = %697
  %713 = load i32, ptr @xre_max_failures, align 4, !tbaa !42
  %714 = mul nsw i32 %713, 19
  br label %719

715:                                              ; preds = %723, %697
  %716 = phi ptr [ %327, %697 ], [ %727, %723 ]
  %717 = phi i32 [ %326, %697 ], [ %724, %723 ]
  %718 = icmp ugt i64 %606, %605
  br i1 %718, label %753, label %733

719:                                              ; preds = %712, %723
  %720 = phi i32 [ %326, %712 ], [ %724, %723 ]
  %721 = phi ptr [ %327, %712 ], [ %727, %723 ]
  %722 = icmp ugt i32 %720, %714
  br i1 %722, label %772, label %723

723:                                              ; preds = %719
  %724 = shl i32 %720, 1
  %725 = zext i32 %724 to i64
  %726 = shl nuw nsw i64 %725, 3
  %727 = alloca i8, i64 %726, align 16
  %728 = zext i32 %720 to i64
  %729 = shl nuw nsw i64 %728, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %727, ptr align 8 %721, i64 %729, i1 false)
  %730 = sub i32 %724, %325
  %731 = zext i32 %730 to i64
  %732 = icmp ugt i64 %708, %731
  br i1 %732, label %719, label %715

733:                                              ; preds = %715, %733
  %734 = phi i32 [ %746, %733 ], [ %325, %715 ]
  %735 = phi i64 [ %751, %733 ], [ %606, %715 ]
  %736 = getelementptr inbounds ptr, ptr %33, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !38
  %738 = add i32 %734, 1
  %739 = zext i32 %734 to i64
  %740 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %716, i64 %739
  store ptr %737, ptr %740, align 8, !tbaa !51
  %741 = getelementptr inbounds ptr, ptr %34, i64 %735
  %742 = load ptr, ptr %741, align 8, !tbaa !38
  %743 = add i32 %734, 2
  %744 = zext i32 %738 to i64
  %745 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %716, i64 %744
  store ptr %742, ptr %745, align 8, !tbaa !51
  %746 = add i32 %734, 3
  %747 = zext i32 %743 to i64
  %748 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %716, i64 %747
  %749 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %735
  %750 = load i64, ptr %749, align 8
  store i64 %750, ptr %748, align 8
  %751 = add i64 %735, 1
  %752 = icmp eq i64 %735, %605
  br i1 %752, label %753, label %733, !llvm.loop !84

753:                                              ; preds = %733, %715
  %754 = phi i32 [ %325, %715 ], [ %746, %733 ]
  %755 = trunc i64 %606 to i32
  %756 = add i32 %754, 1
  %757 = zext i32 %754 to i64
  %758 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %716, i64 %757
  store i32 %755, ptr %758, align 8, !tbaa !51
  %759 = trunc i64 %605 to i32
  %760 = add i32 %754, 2
  %761 = zext i32 %756 to i64
  %762 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %716, i64 %761
  store i32 %759, ptr %762, align 8, !tbaa !51
  %763 = load ptr, ptr %9, align 8, !tbaa !38
  %764 = sext i32 %705 to i64
  %765 = getelementptr inbounds i8, ptr %763, i64 %764
  %766 = add i32 %754, 3
  %767 = zext i32 %760 to i64
  %768 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %716, i64 %767
  store ptr %765, ptr %768, align 8, !tbaa !51
  %769 = add i32 %754, 4
  %770 = zext i32 %766 to i64
  %771 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %716, i64 %770
  store ptr %321, ptr %771, align 8, !tbaa !51
  br label %772

772:                                              ; preds = %719, %643, %649, %652, %656, %753
  %773 = phi i32 [ 16, %753 ], [ 0, %656 ], [ 0, %652 ], [ 0, %649 ], [ 0, %643 ], [ 1, %719 ]
  %774 = phi ptr [ %716, %753 ], [ %327, %656 ], [ %327, %652 ], [ %327, %649 ], [ %327, %643 ], [ %721, %719 ]
  %775 = phi i32 [ %717, %753 ], [ %326, %656 ], [ %326, %652 ], [ %326, %649 ], [ %326, %643 ], [ %720, %719 ]
  %776 = phi i32 [ %769, %753 ], [ %325, %656 ], [ %325, %652 ], [ %325, %649 ], [ %325, %643 ], [ %325, %719 ]
  switch i32 %773, label %1844 [
    i32 0, label %777
    i32 16, label %1744
  ]

777:                                              ; preds = %604, %772, %615
  %778 = phi ptr [ %774, %772 ], [ %327, %615 ], [ %327, %604 ]
  %779 = phi i32 [ %775, %772 ], [ %326, %615 ], [ %326, %604 ]
  %780 = phi i32 [ %776, %772 ], [ %325, %615 ], [ %325, %604 ]
  %781 = getelementptr inbounds i8, ptr %323, i64 3
  br label %1732

782:                                              ; preds = %320
  %783 = getelementptr inbounds i8, ptr %323, i64 2
  %784 = load i8, ptr %331, align 1, !tbaa !51
  %785 = zext i8 %784 to i64
  %786 = getelementptr inbounds ptr, ptr %33, i64 %785
  %787 = load ptr, ptr %786, align 8, !tbaa !38
  %788 = icmp eq ptr %787, @byte_reg_unset_dummy
  br i1 %788, label %899, label %789

789:                                              ; preds = %782
  %790 = getelementptr inbounds ptr, ptr %34, i64 %785
  %791 = load ptr, ptr %790, align 8, !tbaa !38
  %792 = icmp eq ptr %791, @byte_reg_unset_dummy
  br i1 %792, label %899, label %793

793:                                              ; preds = %789
  %794 = icmp ne i32 %68, 0
  %795 = icmp ule ptr %69, %787
  %796 = and i1 %794, %795
  %797 = icmp ule ptr %787, %71
  %798 = select i1 %796, i1 %797, i1 false
  br i1 %794, label %799, label %803

799:                                              ; preds = %793
  %800 = icmp ule ptr %69, %791
  %801 = icmp ule ptr %791, %71
  %802 = select i1 %800, i1 %801, i1 false
  br label %803

803:                                              ; preds = %799, %793
  %804 = phi i1 [ false, %793 ], [ %802, %799 ]
  %805 = xor i1 %798, %804
  %806 = select i1 %805, ptr %81, ptr %791
  br label %807

807:                                              ; preds = %894, %803
  %808 = phi i32 [ %330, %803 ], [ 1, %894 ]
  %809 = phi ptr [ %787, %803 ], [ %884, %894 ]
  %810 = phi ptr [ %806, %803 ], [ %815, %894 ]
  %811 = phi ptr [ %322, %803 ], [ %824, %894 ]
  %812 = phi ptr [ %321, %803 ], [ %883, %894 ]
  br label %813

813:                                              ; preds = %819, %807
  %814 = phi ptr [ %809, %807 ], [ %67, %819 ]
  %815 = phi ptr [ %810, %807 ], [ %820, %819 ]
  %816 = icmp ne ptr %814, %815
  %817 = icmp eq ptr %815, %80
  %818 = select i1 %816, i1 true, i1 %817
  br i1 %818, label %822, label %819

819:                                              ; preds = %813
  %820 = load ptr, ptr %790, align 8, !tbaa !38
  %821 = icmp eq ptr %815, %820
  br i1 %821, label %822, label %813, !llvm.loop !85

822:                                              ; preds = %819, %813
  br i1 %816, label %823, label %895

823:                                              ; preds = %822, %827
  %824 = phi ptr [ %80, %827 ], [ %811, %822 ]
  %825 = phi ptr [ %67, %827 ], [ %812, %822 ]
  %826 = icmp eq ptr %825, %824
  br i1 %826, label %827, label %829

827:                                              ; preds = %823
  %828 = icmp eq ptr %824, %80
  br i1 %828, label %899, label %823, !llvm.loop !86

829:                                              ; preds = %823
  %830 = icmp eq ptr %15, null
  %831 = ptrtoint ptr %824 to i64
  %832 = ptrtoint ptr %825 to i64
  %833 = sub i64 %831, %832
  %834 = shl i64 %833, 32
  %835 = ashr exact i64 %834, 32
  %836 = ptrtoint ptr %815 to i64
  %837 = ptrtoint ptr %814 to i64
  %838 = sub i64 %836, %837
  %839 = icmp sgt i64 %835, %838
  %840 = select i1 %839, i64 %838, i64 %833
  br i1 %830, label %874, label %841

841:                                              ; preds = %829
  %842 = trunc i64 %840 to i32
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %879, label %844

844:                                              ; preds = %841
  %845 = load i8, ptr %825, align 1, !tbaa !51
  %846 = zext i8 %845 to i64
  %847 = getelementptr inbounds i8, ptr %15, i64 %846
  %848 = load i8, ptr %847, align 1, !tbaa !51
  %849 = load i8, ptr %814, align 1, !tbaa !51
  %850 = zext i8 %849 to i64
  %851 = getelementptr inbounds i8, ptr %15, i64 %850
  %852 = load i8, ptr %851, align 1, !tbaa !51
  %853 = icmp eq i8 %848, %852
  br i1 %853, label %866, label %872

854:                                              ; preds = %866
  %855 = getelementptr inbounds i8, ptr %868, i64 1
  %856 = getelementptr inbounds i8, ptr %869, i64 1
  %857 = load i8, ptr %855, align 1, !tbaa !51
  %858 = zext i8 %857 to i64
  %859 = getelementptr inbounds i8, ptr %15, i64 %858
  %860 = load i8, ptr %859, align 1, !tbaa !51
  %861 = load i8, ptr %856, align 1, !tbaa !51
  %862 = zext i8 %861 to i64
  %863 = getelementptr inbounds i8, ptr %15, i64 %862
  %864 = load i8, ptr %863, align 1, !tbaa !51
  %865 = icmp eq i8 %860, %864
  br i1 %865, label %866, label %872, !llvm.loop !87

866:                                              ; preds = %844, %854
  %867 = phi i32 [ %870, %854 ], [ %842, %844 ]
  %868 = phi ptr [ %855, %854 ], [ %825, %844 ]
  %869 = phi ptr [ %856, %854 ], [ %814, %844 ]
  %870 = add nsw i32 %867, -1
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %879, label %854, !llvm.loop !87

872:                                              ; preds = %854, %844
  %873 = phi i1 [ %843, %844 ], [ %871, %854 ]
  br i1 %873, label %879, label %895

874:                                              ; preds = %829
  %875 = shl i64 %840, 32
  %876 = ashr exact i64 %875, 32
  %877 = tail call i32 @bcmp(ptr %825, ptr %814, i64 %876)
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %879, label %895

879:                                              ; preds = %866, %841, %874, %872
  %880 = icmp ugt i64 %328, %329
  %881 = shl i64 %840, 32
  %882 = ashr exact i64 %881, 32
  %883 = getelementptr inbounds i8, ptr %825, i64 %882
  %884 = getelementptr inbounds i8, ptr %814, i64 %882
  %885 = icmp ne i32 %808, 0
  %886 = select i1 %885, i1 true, i1 %880
  br i1 %886, label %894, label %887

887:                                              ; preds = %879, %887
  %888 = phi i64 [ %892, %887 ], [ %328, %879 ]
  %889 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %888
  %890 = load i8, ptr %889, align 8
  %891 = or i8 %890, 24
  store i8 %891, ptr %889, align 8
  %892 = add i64 %888, 1
  %893 = icmp ugt i64 %892, %329
  br i1 %893, label %894, label %887, !llvm.loop !88

894:                                              ; preds = %887, %879
  br label %807, !llvm.loop !89

895:                                              ; preds = %872, %822, %874
  %896 = phi ptr [ %824, %874 ], [ %811, %822 ], [ %824, %872 ]
  %897 = phi ptr [ %825, %874 ], [ %812, %822 ], [ %825, %872 ]
  %898 = xor i1 %816, true
  br label %899

899:                                              ; preds = %827, %895, %782, %789
  %900 = phi i32 [ %330, %789 ], [ %330, %782 ], [ %808, %895 ], [ %808, %827 ]
  %901 = phi i1 [ false, %789 ], [ false, %782 ], [ %898, %895 ], [ false, %827 ]
  %902 = phi ptr [ %322, %789 ], [ %322, %782 ], [ %896, %895 ], [ %824, %827 ]
  %903 = phi ptr [ %321, %789 ], [ %321, %782 ], [ %897, %895 ], [ %825, %827 ]
  br i1 %901, label %1732, label %1744

904:                                              ; preds = %320
  %905 = icmp eq i32 %68, 0
  %906 = select i1 %905, ptr %67, ptr %69
  %907 = icmp ne i32 %66, 0
  %908 = icmp ne ptr %321, %906
  %909 = and i1 %907, %908
  br i1 %909, label %915, label %910

910:                                              ; preds = %904
  %911 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %912 = load i8, ptr %911, align 8
  %913 = and i8 %912, 32
  %914 = icmp eq i8 %913, 0
  br i1 %914, label %1732, label %1744

915:                                              ; preds = %904
  %916 = getelementptr inbounds i8, ptr %321, i64 -1
  %917 = load i8, ptr %916, align 1, !tbaa !51
  %918 = icmp eq i8 %917, 10
  br i1 %918, label %919, label %1744

919:                                              ; preds = %915
  %920 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %921 = load i8, ptr %920, align 8
  %922 = icmp sgt i8 %921, -1
  br i1 %922, label %1744, label %1732

923:                                              ; preds = %320
  %924 = icmp eq ptr %321, %73
  br i1 %924, label %925, label %930

925:                                              ; preds = %923
  %926 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %927 = load i8, ptr %926, align 8
  %928 = and i8 %927, 64
  %929 = icmp eq i8 %928, 0
  br i1 %929, label %1732, label %1744

930:                                              ; preds = %923
  %931 = icmp eq ptr %321, %71
  %932 = select i1 %931, ptr %67, ptr %321
  %933 = load i8, ptr %932, align 1, !tbaa !51
  %934 = icmp eq i8 %933, 10
  br i1 %934, label %935, label %1744

935:                                              ; preds = %930
  %936 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %937 = load i8, ptr %936, align 8
  %938 = icmp sgt i8 %937, -1
  br i1 %938, label %1744, label %1732

939:                                              ; preds = %320
  %940 = icmp eq i32 %68, 0
  %941 = select i1 %940, ptr %67, ptr %69
  %942 = icmp ne i32 %66, 0
  %943 = icmp ne ptr %321, %941
  %944 = and i1 %942, %943
  br i1 %944, label %1744, label %1732

945:                                              ; preds = %320
  %946 = icmp eq ptr %321, %73
  br i1 %946, label %1732, label %1744

947:                                              ; preds = %320
  %948 = load i8, ptr %331, align 1, !tbaa !51
  %949 = zext i8 %948 to i32
  %950 = getelementptr inbounds i8, ptr %323, i64 2
  %951 = load i8, ptr %950, align 1, !tbaa !51
  %952 = sext i8 %951 to i32
  %953 = shl nsw i32 %952, 8
  %954 = or disjoint i32 %953, %949
  %955 = getelementptr inbounds i8, ptr %323, i64 3
  %956 = sub i64 %329, %328
  %957 = mul i64 %956, 3
  %958 = add i64 %957, 7
  %959 = sub i32 %326, %325
  %960 = zext i32 %959 to i64
  %961 = icmp ugt i64 %958, %960
  br i1 %961, label %962, label %966

962:                                              ; preds = %947
  %963 = load i32, ptr @xre_max_failures, align 4, !tbaa !42
  %964 = mul nsw i32 %963, 19
  %965 = icmp ugt i32 %326, %964
  br i1 %965, label %1023, label %973

966:                                              ; preds = %973, %947
  %967 = phi ptr [ %327, %947 ], [ %979, %973 ]
  %968 = phi i32 [ %326, %947 ], [ %976, %973 ]
  %969 = phi i1 [ %961, %947 ], [ %984, %973 ]
  %970 = icmp ugt i64 %328, %329
  br i1 %970, label %1005, label %985

971:                                              ; preds = %973
  %972 = icmp ugt i32 %976, %964
  br i1 %972, label %1023, label %973

973:                                              ; preds = %962, %971
  %974 = phi ptr [ %979, %971 ], [ %327, %962 ]
  %975 = phi i32 [ %976, %971 ], [ %326, %962 ]
  %976 = shl i32 %975, 1
  %977 = zext i32 %976 to i64
  %978 = shl nuw nsw i64 %977, 3
  %979 = alloca i8, i64 %978, align 16
  %980 = zext i32 %975 to i64
  %981 = shl nuw nsw i64 %980, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %979, ptr align 8 %974, i64 %981, i1 false)
  %982 = sub i32 %976, %325
  %983 = zext i32 %982 to i64
  %984 = icmp ugt i64 %958, %983
  br i1 %984, label %971, label %966

985:                                              ; preds = %966, %985
  %986 = phi i64 [ %1003, %985 ], [ %328, %966 ]
  %987 = phi i32 [ %998, %985 ], [ %325, %966 ]
  %988 = getelementptr inbounds ptr, ptr %33, i64 %986
  %989 = load ptr, ptr %988, align 8, !tbaa !38
  %990 = add i32 %987, 1
  %991 = zext i32 %987 to i64
  %992 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %967, i64 %991
  store ptr %989, ptr %992, align 8, !tbaa !51
  %993 = getelementptr inbounds ptr, ptr %34, i64 %986
  %994 = load ptr, ptr %993, align 8, !tbaa !38
  %995 = add i32 %987, 2
  %996 = zext i32 %990 to i64
  %997 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %967, i64 %996
  store ptr %994, ptr %997, align 8, !tbaa !51
  %998 = add i32 %987, 3
  %999 = zext i32 %995 to i64
  %1000 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %967, i64 %999
  %1001 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %986
  %1002 = load i64, ptr %1001, align 8
  store i64 %1002, ptr %1000, align 8
  %1003 = add i64 %986, 1
  %1004 = icmp ugt i64 %1003, %329
  br i1 %1004, label %1005, label %985, !llvm.loop !90

1005:                                             ; preds = %985, %966
  %1006 = phi i32 [ %325, %966 ], [ %998, %985 ]
  %1007 = trunc i64 %328 to i32
  %1008 = add i32 %1006, 1
  %1009 = zext i32 %1006 to i64
  %1010 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %967, i64 %1009
  store i32 %1007, ptr %1010, align 8, !tbaa !51
  %1011 = trunc i64 %329 to i32
  %1012 = add i32 %1006, 2
  %1013 = zext i32 %1008 to i64
  %1014 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %967, i64 %1013
  store i32 %1011, ptr %1014, align 8, !tbaa !51
  %1015 = sext i32 %954 to i64
  %1016 = getelementptr inbounds i8, ptr %955, i64 %1015
  %1017 = add i32 %1006, 3
  %1018 = zext i32 %1012 to i64
  %1019 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %967, i64 %1018
  store ptr %1016, ptr %1019, align 8, !tbaa !51
  %1020 = add i32 %1006, 4
  %1021 = zext i32 %1017 to i64
  %1022 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %967, i64 %1021
  store ptr null, ptr %1022, align 8, !tbaa !51
  br label %1023

1023:                                             ; preds = %971, %962, %1005
  %1024 = phi ptr [ %967, %1005 ], [ %327, %962 ], [ %979, %971 ]
  %1025 = phi i32 [ %968, %1005 ], [ %326, %962 ], [ %976, %971 ]
  %1026 = phi i1 [ %969, %1005 ], [ %961, %962 ], [ %984, %971 ]
  %1027 = phi i32 [ %1020, %1005 ], [ %325, %962 ], [ %325, %971 ]
  br i1 %1026, label %1844, label %1732

1028:                                             ; preds = %320, %1504
  %1029 = load i8, ptr %331, align 1, !tbaa !51
  %1030 = zext i8 %1029 to i32
  %1031 = getelementptr inbounds i8, ptr %323, i64 2
  %1032 = load i8, ptr %1031, align 1, !tbaa !51
  %1033 = sext i8 %1032 to i32
  %1034 = shl nsw i32 %1033, 8
  %1035 = or disjoint i32 %1034, %1030
  %1036 = getelementptr inbounds i8, ptr %323, i64 3
  store ptr %1036, ptr %9, align 8, !tbaa !38
  %1037 = icmp ult ptr %1036, %13
  br i1 %1037, label %1038, label %1064

1038:                                             ; preds = %1028
  %1039 = load i8, ptr %1036, align 1, !tbaa !51
  %1040 = icmp eq i8 %1039, 0
  br i1 %1040, label %1044, label %1048

1041:                                             ; preds = %1044
  %1042 = load i8, ptr %1046, align 1, !tbaa !51
  %1043 = icmp eq i8 %1042, 0
  br i1 %1043, label %1044, label %1048, !llvm.loop !91

1044:                                             ; preds = %1038, %1041
  %1045 = phi ptr [ %1046, %1041 ], [ %1036, %1038 ]
  %1046 = getelementptr inbounds i8, ptr %1045, i64 1
  store ptr %1046, ptr %9, align 8, !tbaa !38
  %1047 = icmp ult ptr %1046, %13
  br i1 %1047, label %1041, label %1064, !llvm.loop !91

1048:                                             ; preds = %1041, %1038
  %1049 = phi i1 [ %1037, %1038 ], [ %1047, %1041 ]
  %1050 = phi ptr [ %1036, %1038 ], [ %1046, %1041 ]
  br i1 %1049, label %1051, label %1064

1051:                                             ; preds = %1048
  %1052 = load i8, ptr %1050, align 1, !tbaa !51
  %1053 = icmp eq i8 %1052, 6
  br i1 %1053, label %1054, label %1064

1054:                                             ; preds = %1051
  %1055 = getelementptr inbounds i8, ptr %1050, i64 1
  %1056 = load i8, ptr %1055, align 1, !tbaa !51
  %1057 = zext i8 %1056 to i64
  %1058 = getelementptr inbounds i8, ptr %1050, i64 2
  %1059 = load i8, ptr %1058, align 1, !tbaa !51
  %1060 = zext i8 %1059 to i64
  %1061 = add nuw nsw i64 %1060, %1057
  %1062 = icmp eq i64 %328, 257
  %1063 = select i1 %1062, i64 %1057, i64 %328
  br label %1064

1064:                                             ; preds = %1044, %1028, %1054, %1048, %1051
  %1065 = phi i64 [ %329, %1051 ], [ %329, %1048 ], [ %1061, %1054 ], [ %329, %1028 ], [ %329, %1044 ]
  %1066 = phi i64 [ %328, %1051 ], [ %328, %1048 ], [ %1063, %1054 ], [ %328, %1028 ], [ %328, %1044 ]
  %1067 = sub i64 %1065, %1066
  %1068 = mul i64 %1067, 3
  %1069 = add i64 %1068, 7
  %1070 = sub i32 %326, %325
  %1071 = zext i32 %1070 to i64
  %1072 = icmp ugt i64 %1069, %1071
  br i1 %1072, label %1073, label %1077

1073:                                             ; preds = %1064
  %1074 = load i32, ptr @xre_max_failures, align 4, !tbaa !42
  %1075 = mul nsw i32 %1074, 19
  %1076 = icmp ugt i32 %326, %1075
  br i1 %1076, label %1134, label %1084

1077:                                             ; preds = %1084, %1064
  %1078 = phi ptr [ %327, %1064 ], [ %1090, %1084 ]
  %1079 = phi i32 [ %326, %1064 ], [ %1087, %1084 ]
  %1080 = phi i1 [ %1072, %1064 ], [ %1095, %1084 ]
  %1081 = icmp ugt i64 %1066, %1065
  br i1 %1081, label %1116, label %1096

1082:                                             ; preds = %1084
  %1083 = icmp ugt i32 %1087, %1075
  br i1 %1083, label %1134, label %1084

1084:                                             ; preds = %1073, %1082
  %1085 = phi ptr [ %1090, %1082 ], [ %327, %1073 ]
  %1086 = phi i32 [ %1087, %1082 ], [ %326, %1073 ]
  %1087 = shl i32 %1086, 1
  %1088 = zext i32 %1087 to i64
  %1089 = shl nuw nsw i64 %1088, 3
  %1090 = alloca i8, i64 %1089, align 16
  %1091 = zext i32 %1086 to i64
  %1092 = shl nuw nsw i64 %1091, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1090, ptr align 8 %1085, i64 %1092, i1 false)
  %1093 = sub i32 %1087, %325
  %1094 = zext i32 %1093 to i64
  %1095 = icmp ugt i64 %1069, %1094
  br i1 %1095, label %1082, label %1077

1096:                                             ; preds = %1077, %1096
  %1097 = phi i64 [ %1114, %1096 ], [ %1066, %1077 ]
  %1098 = phi i32 [ %1109, %1096 ], [ %325, %1077 ]
  %1099 = getelementptr inbounds ptr, ptr %33, i64 %1097
  %1100 = load ptr, ptr %1099, align 8, !tbaa !38
  %1101 = add i32 %1098, 1
  %1102 = zext i32 %1098 to i64
  %1103 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1078, i64 %1102
  store ptr %1100, ptr %1103, align 8, !tbaa !51
  %1104 = getelementptr inbounds ptr, ptr %34, i64 %1097
  %1105 = load ptr, ptr %1104, align 8, !tbaa !38
  %1106 = add i32 %1098, 2
  %1107 = zext i32 %1101 to i64
  %1108 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1078, i64 %1107
  store ptr %1105, ptr %1108, align 8, !tbaa !51
  %1109 = add i32 %1098, 3
  %1110 = zext i32 %1106 to i64
  %1111 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1078, i64 %1110
  %1112 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %1097
  %1113 = load i64, ptr %1112, align 8
  store i64 %1113, ptr %1111, align 8
  %1114 = add i64 %1097, 1
  %1115 = icmp ugt i64 %1114, %1065
  br i1 %1115, label %1116, label %1096, !llvm.loop !92

1116:                                             ; preds = %1096, %1077
  %1117 = phi i32 [ %325, %1077 ], [ %1109, %1096 ]
  %1118 = trunc i64 %1066 to i32
  %1119 = add i32 %1117, 1
  %1120 = zext i32 %1117 to i64
  %1121 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1078, i64 %1120
  store i32 %1118, ptr %1121, align 8, !tbaa !51
  %1122 = trunc i64 %1065 to i32
  %1123 = add i32 %1117, 2
  %1124 = zext i32 %1119 to i64
  %1125 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1078, i64 %1124
  store i32 %1122, ptr %1125, align 8, !tbaa !51
  %1126 = sext i32 %1035 to i64
  %1127 = getelementptr inbounds i8, ptr %1036, i64 %1126
  %1128 = add i32 %1117, 3
  %1129 = zext i32 %1123 to i64
  %1130 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1078, i64 %1129
  store ptr %1127, ptr %1130, align 8, !tbaa !51
  %1131 = add i32 %1117, 4
  %1132 = zext i32 %1128 to i64
  %1133 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1078, i64 %1132
  store ptr %321, ptr %1133, align 8, !tbaa !51
  br label %1134

1134:                                             ; preds = %1082, %1073, %1116
  %1135 = phi ptr [ %1078, %1116 ], [ %327, %1073 ], [ %1090, %1082 ]
  %1136 = phi i32 [ %1079, %1116 ], [ %326, %1073 ], [ %1087, %1082 ]
  %1137 = phi i1 [ %1080, %1116 ], [ %1072, %1073 ], [ %1095, %1082 ]
  %1138 = phi i32 [ %1131, %1116 ], [ %325, %1073 ], [ %325, %1082 ]
  br i1 %1137, label %1844, label %1732

1139:                                             ; preds = %320
  %1140 = load i8, ptr %331, align 1, !tbaa !51
  %1141 = zext i8 %1140 to i32
  %1142 = getelementptr inbounds i8, ptr %323, i64 2
  %1143 = load i8, ptr %1142, align 1, !tbaa !51
  %1144 = sext i8 %1143 to i32
  %1145 = shl nsw i32 %1144, 8
  %1146 = or disjoint i32 %1145, %1141
  %1147 = getelementptr inbounds i8, ptr %323, i64 3
  br label %1148

1148:                                             ; preds = %1164, %1139
  %1149 = phi ptr [ %1147, %1139 ], [ %1165, %1164 ]
  %1150 = getelementptr inbounds i8, ptr %1149, i64 2
  %1151 = icmp ult ptr %1150, %13
  br i1 %1151, label %1152, label %1158

1152:                                             ; preds = %1148
  %1153 = load i8, ptr %1149, align 1, !tbaa !51
  %1154 = and i8 %1153, -2
  %1155 = icmp eq i8 %1154, 6
  br i1 %1155, label %1156, label %1158

1156:                                             ; preds = %1152
  %1157 = getelementptr inbounds i8, ptr %1149, i64 3
  br label %1164

1158:                                             ; preds = %1152, %1148
  %1159 = getelementptr inbounds i8, ptr %1149, i64 6
  %1160 = icmp ult ptr %1159, %13
  br i1 %1160, label %1161, label %1166

1161:                                             ; preds = %1158
  %1162 = load i8, ptr %1149, align 1, !tbaa !51
  %1163 = icmp eq i8 %1162, 19
  br i1 %1163, label %1164, label %1166

1164:                                             ; preds = %1161, %1156
  %1165 = phi ptr [ %1157, %1156 ], [ %1159, %1161 ]
  br label %1148, !llvm.loop !93

1166:                                             ; preds = %1158, %1161
  %1167 = sext i32 %1146 to i64
  %1168 = getelementptr inbounds i8, ptr %1147, i64 %1167
  store ptr %1168, ptr %9, align 8, !tbaa !38
  %1169 = icmp eq ptr %1149, %13
  br i1 %1169, label %1314, label %1170

1170:                                             ; preds = %1166
  %1171 = load i8, ptr %1149, align 1, !tbaa !51
  %1172 = icmp eq i8 %1171, 2
  br i1 %1172, label %1179, label %1173

1173:                                             ; preds = %1170
  %1174 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %1175 = load i8, ptr %1174, align 8
  %1176 = icmp slt i8 %1175, 0
  %1177 = icmp eq i8 %1171, 10
  %1178 = and i1 %1177, %1176
  br i1 %1178, label %1181, label %1215

1179:                                             ; preds = %1170
  %1180 = load i8, ptr %1150, align 1, !tbaa !51
  br label %1181

1181:                                             ; preds = %1173, %1179
  %1182 = phi i8 [ %1180, %1179 ], [ 10, %1173 ]
  %1183 = getelementptr inbounds i8, ptr %1168, i64 3
  %1184 = load i8, ptr %1183, align 1, !tbaa !51
  %1185 = icmp eq i8 %1184, 2
  br i1 %1185, label %1186, label %1190

1186:                                             ; preds = %1181
  %1187 = getelementptr inbounds i8, ptr %1168, i64 5
  %1188 = load i8, ptr %1187, align 1, !tbaa !51
  %1189 = icmp eq i8 %1188, %1182
  br i1 %1189, label %1190, label %1314

1190:                                             ; preds = %1186, %1181
  %1191 = and i8 %1184, -2
  %1192 = icmp eq i8 %1191, 4
  br i1 %1192, label %1193, label %1315

1193:                                             ; preds = %1190
  %1194 = icmp eq i8 %1184, 5
  %1195 = zext i8 %1182 to i32
  %1196 = getelementptr inbounds i8, ptr %1168, i64 4
  %1197 = load i8, ptr %1196, align 1, !tbaa !51
  %1198 = zext i8 %1197 to i32
  %1199 = shl nuw nsw i32 %1198, 3
  %1200 = icmp ugt i32 %1199, %1195
  br i1 %1200, label %1201, label %1213

1201:                                             ; preds = %1193
  %1202 = lshr i32 %1195, 3
  %1203 = zext nneg i32 %1202 to i64
  %1204 = getelementptr i8, ptr %1168, i64 %1203
  %1205 = getelementptr i8, ptr %1204, i64 5
  %1206 = load i8, ptr %1205, align 1, !tbaa !51
  %1207 = zext i8 %1206 to i32
  %1208 = and i32 %1195, 7
  %1209 = shl nuw nsw i32 1, %1208
  %1210 = and i32 %1209, %1207
  %1211 = icmp ne i32 %1210, 0
  %1212 = xor i1 %1194, %1211
  br label %1213

1213:                                             ; preds = %1201, %1193
  %1214 = phi i1 [ %1194, %1193 ], [ %1212, %1201 ]
  br i1 %1214, label %1315, label %1314

1215:                                             ; preds = %1173
  %1216 = icmp eq i8 %1171, 4
  br i1 %1216, label %1217, label %1315

1217:                                             ; preds = %1215
  %1218 = getelementptr inbounds i8, ptr %1168, i64 3
  %1219 = load i8, ptr %1218, align 1, !tbaa !51
  switch i8 %1219, label %1315 [
    i8 2, label %1232
    i8 5, label %1253
    i8 4, label %1220
  ]

1220:                                             ; preds = %1252, %1217
  %1221 = getelementptr inbounds i8, ptr %1149, i64 1
  %1222 = load i8, ptr %1221, align 1, !tbaa !51
  %1223 = zext i8 %1222 to i32
  %1224 = getelementptr i8, ptr %1168, i64 5
  %1225 = icmp eq i8 %1222, 0
  br i1 %1225, label %1306, label %1226

1226:                                             ; preds = %1220
  %1227 = getelementptr inbounds i8, ptr %1168, i64 4
  %1228 = load i8, ptr %1227, align 1, !tbaa !51
  %1229 = zext i8 %1228 to i32
  %1230 = zext i8 %1228 to i64
  %1231 = zext i8 %1222 to i64
  br label %1290

1232:                                             ; preds = %1217
  %1233 = getelementptr inbounds i8, ptr %1149, i64 1
  %1234 = load i8, ptr %1233, align 1, !tbaa !51
  %1235 = zext i8 %1234 to i32
  %1236 = shl nuw nsw i32 %1235, 3
  %1237 = getelementptr inbounds i8, ptr %1168, i64 5
  %1238 = load i8, ptr %1237, align 1, !tbaa !51
  %1239 = zext i8 %1238 to i32
  %1240 = icmp ugt i32 %1236, %1239
  br i1 %1240, label %1241, label %1314

1241:                                             ; preds = %1232
  %1242 = lshr i32 %1239, 3
  %1243 = add nuw nsw i32 %1242, 2
  %1244 = zext nneg i32 %1243 to i64
  %1245 = getelementptr inbounds i8, ptr %1149, i64 %1244
  %1246 = load i8, ptr %1245, align 1, !tbaa !51
  %1247 = zext i8 %1246 to i32
  %1248 = and i32 %1239, 7
  %1249 = shl nuw nsw i32 1, %1248
  %1250 = and i32 %1249, %1247
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1314, label %1252

1252:                                             ; preds = %1241
  switch i8 %1219, label %1315 [
    i8 5, label %1253
    i8 4, label %1220
  ]

1253:                                             ; preds = %1252, %1217
  %1254 = getelementptr inbounds i8, ptr %1168, i64 4
  %1255 = getelementptr inbounds i8, ptr %1149, i64 1
  %1256 = load i8, ptr %1255, align 1, !tbaa !51
  %1257 = zext i8 %1256 to i32
  %1258 = getelementptr i8, ptr %1168, i64 5
  %1259 = icmp eq i8 %1256, 0
  br i1 %1259, label %1287, label %1260

1260:                                             ; preds = %1253
  %1261 = zext i8 %1256 to i64
  br label %1262

1262:                                             ; preds = %1260, %1280
  %1263 = phi i64 [ 0, %1260 ], [ %1281, %1280 ]
  %1264 = add nuw nsw i64 %1263, 2
  %1265 = getelementptr inbounds i8, ptr %1149, i64 %1264
  %1266 = load i8, ptr %1265, align 1, !tbaa !51
  %1267 = zext i8 %1266 to i32
  %1268 = icmp eq i8 %1266, 0
  br i1 %1268, label %1280, label %1269

1269:                                             ; preds = %1262
  %1270 = load i8, ptr %1254, align 1, !tbaa !51
  %1271 = zext i8 %1270 to i64
  %1272 = icmp ult i64 %1263, %1271
  br i1 %1272, label %1273, label %1283

1273:                                             ; preds = %1269
  %1274 = getelementptr i8, ptr %1258, i64 %1263
  %1275 = load i8, ptr %1274, align 1, !tbaa !51
  %1276 = zext i8 %1275 to i32
  %1277 = xor i32 %1276, -1
  %1278 = and i32 %1277, %1267
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1280, label %1285

1280:                                             ; preds = %1262, %1273
  %1281 = add nuw nsw i64 %1263, 1
  %1282 = icmp eq i64 %1281, %1261
  br i1 %1282, label %1287, label %1262, !llvm.loop !94

1283:                                             ; preds = %1269
  %1284 = trunc i64 %1263 to i32
  br label %1287

1285:                                             ; preds = %1273
  %1286 = trunc i64 %1263 to i32
  br label %1287

1287:                                             ; preds = %1283, %1285, %1280, %1253
  %1288 = phi i32 [ 0, %1253 ], [ %1284, %1283 ], [ %1286, %1285 ], [ %1257, %1280 ]
  %1289 = icmp eq i32 %1288, %1257
  br i1 %1289, label %1314, label %1315

1290:                                             ; preds = %1226, %1301
  %1291 = phi i64 [ 0, %1226 ], [ %1302, %1301 ]
  %1292 = icmp eq i64 %1291, %1230
  br i1 %1292, label %1306, label %1293

1293:                                             ; preds = %1290
  %1294 = add nuw nsw i64 %1291, 2
  %1295 = getelementptr inbounds i8, ptr %1149, i64 %1294
  %1296 = load i8, ptr %1295, align 1, !tbaa !51
  %1297 = getelementptr i8, ptr %1224, i64 %1291
  %1298 = load i8, ptr %1297, align 1, !tbaa !51
  %1299 = and i8 %1298, %1296
  %1300 = icmp eq i8 %1299, 0
  br i1 %1300, label %1301, label %1304

1301:                                             ; preds = %1293
  %1302 = add nuw nsw i64 %1291, 1
  %1303 = icmp eq i64 %1302, %1231
  br i1 %1303, label %1306, label %1290, !llvm.loop !95

1304:                                             ; preds = %1293
  %1305 = trunc i64 %1291 to i32
  br label %1306

1306:                                             ; preds = %1304, %1301, %1290, %1220
  %1307 = phi i32 [ 0, %1220 ], [ %1305, %1304 ], [ %1223, %1301 ], [ %1229, %1290 ]
  %1308 = icmp eq i32 %1307, %1223
  br i1 %1308, label %1314, label %1309

1309:                                             ; preds = %1306
  %1310 = getelementptr inbounds i8, ptr %1168, i64 4
  %1311 = load i8, ptr %1310, align 1, !tbaa !51
  %1312 = zext i8 %1311 to i32
  %1313 = icmp eq i32 %1307, %1312
  br i1 %1313, label %1314, label %1315

1314:                                             ; preds = %1306, %1309, %1287, %1232, %1241, %1213, %1186, %1166
  store i8 17, ptr %323, align 1, !tbaa !51
  br label %1315

1315:                                             ; preds = %1314, %1309, %1217, %1190, %1252, %1287, %1213, %1215
  %1316 = load i8, ptr %323, align 1, !tbaa !51
  %1317 = icmp eq i8 %1316, 17
  br i1 %1317, label %1319, label %1318

1318:                                             ; preds = %1315
  store i8 13, ptr %323, align 1, !tbaa !51
  br label %1351

1319:                                             ; preds = %1315, %320
  %1320 = add i32 %325, -3
  %1321 = zext i32 %1320 to i64
  %1322 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %327, i64 %1321
  %1323 = load i32, ptr %1322, align 8, !tbaa !51
  %1324 = add i32 %325, -4
  %1325 = zext i32 %1324 to i64
  %1326 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %327, i64 %1325
  %1327 = load i32, ptr %1326, align 8, !tbaa !51
  %1328 = sext i32 %1327 to i64
  %1329 = icmp ult i32 %1323, %1327
  br i1 %1329, label %1351, label %1330

1330:                                             ; preds = %1319
  %1331 = sext i32 %1323 to i64
  br label %1332

1332:                                             ; preds = %1330, %1332
  %1333 = phi i64 [ %1349, %1332 ], [ %1331, %1330 ]
  %1334 = phi i32 [ %1345, %1332 ], [ %1324, %1330 ]
  %1335 = getelementptr inbounds %union.byte_register_info_type, ptr %41, i64 %1333
  %1336 = add i32 %1334, -1
  %1337 = zext i32 %1336 to i64
  %1338 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %327, i64 %1337
  %1339 = load i64, ptr %1338, align 8
  store i64 %1339, ptr %1335, align 8
  %1340 = add i32 %1334, -2
  %1341 = zext i32 %1340 to i64
  %1342 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %327, i64 %1341
  %1343 = load ptr, ptr %1342, align 8, !tbaa !51
  %1344 = getelementptr inbounds ptr, ptr %40, i64 %1333
  store ptr %1343, ptr %1344, align 8, !tbaa !38
  %1345 = add i32 %1334, -3
  %1346 = zext i32 %1345 to i64
  %1347 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %327, i64 %1346
  %1348 = load ptr, ptr %1347, align 8, !tbaa !51
  store ptr %1348, ptr %1344, align 8, !tbaa !38
  %1349 = add i64 %1333, -1
  %1350 = icmp ult i64 %1349, %1328
  br i1 %1350, label %1351, label %1332, !llvm.loop !96

1351:                                             ; preds = %1332, %1319, %320, %1421, %320, %1318, %1515
  %1352 = phi i32 [ %330, %1515 ], [ %330, %1421 ], [ %330, %320 ], [ %330, %1318 ], [ %330, %320 ], [ 0, %1319 ], [ 0, %1332 ]
  %1353 = phi ptr [ %327, %1515 ], [ %1422, %1421 ], [ %327, %320 ], [ %327, %1318 ], [ %327, %320 ], [ %327, %1319 ], [ %327, %1332 ]
  %1354 = phi i32 [ %326, %1515 ], [ %1423, %1421 ], [ %326, %320 ], [ %326, %1318 ], [ %326, %320 ], [ %326, %1319 ], [ %326, %1332 ]
  %1355 = phi i32 [ %325, %1515 ], [ %1425, %1421 ], [ %325, %320 ], [ %325, %1318 ], [ %325, %320 ], [ %1324, %1319 ], [ %1345, %1332 ]
  %1356 = load i8, ptr %331, align 1, !tbaa !51
  %1357 = zext i8 %1356 to i32
  %1358 = getelementptr inbounds i8, ptr %323, i64 2
  %1359 = load i8, ptr %1358, align 1, !tbaa !51
  %1360 = sext i8 %1359 to i32
  %1361 = shl nsw i32 %1360, 8
  %1362 = or disjoint i32 %1361, %1357
  %1363 = getelementptr inbounds i8, ptr %323, i64 3
  %1364 = sext i32 %1362 to i64
  %1365 = getelementptr inbounds i8, ptr %1363, i64 %1364
  br label %1732

1366:                                             ; preds = %1373, %344
  %1367 = phi ptr [ %327, %344 ], [ %1379, %1373 ]
  %1368 = phi i32 [ %326, %344 ], [ %1376, %1373 ]
  %1369 = phi i1 [ %350, %344 ], [ %1384, %1373 ]
  %1370 = icmp ugt i64 %328, %329
  br i1 %1370, label %1405, label %1385

1371:                                             ; preds = %1373
  %1372 = icmp ugt i32 %1376, %353
  br i1 %1372, label %1421, label %1373

1373:                                             ; preds = %351, %1371
  %1374 = phi ptr [ %1379, %1371 ], [ %327, %351 ]
  %1375 = phi i32 [ %1376, %1371 ], [ %326, %351 ]
  %1376 = shl i32 %1375, 1
  %1377 = zext i32 %1376 to i64
  %1378 = shl nuw nsw i64 %1377, 3
  %1379 = alloca i8, i64 %1378, align 16
  %1380 = zext i32 %1375 to i64
  %1381 = shl nuw nsw i64 %1380, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1379, ptr align 8 %1374, i64 %1381, i1 false)
  %1382 = sub i32 %1376, %325
  %1383 = zext i32 %1382 to i64
  %1384 = icmp ugt i64 %347, %1383
  br i1 %1384, label %1371, label %1366

1385:                                             ; preds = %1366, %1385
  %1386 = phi i64 [ %1403, %1385 ], [ %328, %1366 ]
  %1387 = phi i32 [ %1398, %1385 ], [ %325, %1366 ]
  %1388 = getelementptr inbounds ptr, ptr %33, i64 %1386
  %1389 = load ptr, ptr %1388, align 8, !tbaa !38
  %1390 = add i32 %1387, 1
  %1391 = zext i32 %1387 to i64
  %1392 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1367, i64 %1391
  store ptr %1389, ptr %1392, align 8, !tbaa !51
  %1393 = getelementptr inbounds ptr, ptr %34, i64 %1386
  %1394 = load ptr, ptr %1393, align 8, !tbaa !38
  %1395 = add i32 %1387, 2
  %1396 = zext i32 %1390 to i64
  %1397 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1367, i64 %1396
  store ptr %1394, ptr %1397, align 8, !tbaa !51
  %1398 = add i32 %1387, 3
  %1399 = zext i32 %1395 to i64
  %1400 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1367, i64 %1399
  %1401 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %1386
  %1402 = load i64, ptr %1401, align 8
  store i64 %1402, ptr %1400, align 8
  %1403 = add i64 %1386, 1
  %1404 = icmp ugt i64 %1403, %329
  br i1 %1404, label %1405, label %1385, !llvm.loop !97

1405:                                             ; preds = %1385, %1366
  %1406 = phi i32 [ %325, %1366 ], [ %1398, %1385 ]
  %1407 = trunc i64 %328 to i32
  %1408 = add i32 %1406, 1
  %1409 = zext i32 %1406 to i64
  %1410 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1367, i64 %1409
  store i32 %1407, ptr %1410, align 8, !tbaa !51
  %1411 = trunc i64 %329 to i32
  %1412 = add i32 %1406, 2
  %1413 = zext i32 %1408 to i64
  %1414 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1367, i64 %1413
  store i32 %1411, ptr %1414, align 8, !tbaa !51
  %1415 = add i32 %1406, 3
  %1416 = zext i32 %1412 to i64
  %1417 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1367, i64 %1416
  store ptr null, ptr %1417, align 8, !tbaa !51
  %1418 = add i32 %1406, 4
  %1419 = zext i32 %1415 to i64
  %1420 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1367, i64 %1419
  store ptr null, ptr %1420, align 8, !tbaa !51
  br label %1421

1421:                                             ; preds = %1371, %351, %1405
  %1422 = phi ptr [ %1367, %1405 ], [ %327, %351 ], [ %1379, %1371 ]
  %1423 = phi i32 [ %1368, %1405 ], [ %326, %351 ], [ %1376, %1371 ]
  %1424 = phi i1 [ %1369, %1405 ], [ %350, %351 ], [ %1384, %1371 ]
  %1425 = phi i32 [ %1418, %1405 ], [ %325, %351 ], [ %325, %1371 ]
  br i1 %1424, label %1844, label %1351

1426:                                             ; preds = %1433, %333
  %1427 = phi ptr [ %327, %333 ], [ %1439, %1433 ]
  %1428 = phi i32 [ %326, %333 ], [ %1436, %1433 ]
  %1429 = phi i1 [ %339, %333 ], [ %1444, %1433 ]
  %1430 = icmp ugt i64 %328, %329
  br i1 %1430, label %1465, label %1445

1431:                                             ; preds = %1433
  %1432 = icmp ugt i32 %1436, %342
  br i1 %1432, label %1481, label %1433

1433:                                             ; preds = %340, %1431
  %1434 = phi ptr [ %1439, %1431 ], [ %327, %340 ]
  %1435 = phi i32 [ %1436, %1431 ], [ %326, %340 ]
  %1436 = shl i32 %1435, 1
  %1437 = zext i32 %1436 to i64
  %1438 = shl nuw nsw i64 %1437, 3
  %1439 = alloca i8, i64 %1438, align 16
  %1440 = zext i32 %1435 to i64
  %1441 = shl nuw nsw i64 %1440, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1439, ptr align 8 %1434, i64 %1441, i1 false)
  %1442 = sub i32 %1436, %325
  %1443 = zext i32 %1442 to i64
  %1444 = icmp ugt i64 %336, %1443
  br i1 %1444, label %1431, label %1426

1445:                                             ; preds = %1426, %1445
  %1446 = phi i64 [ %1463, %1445 ], [ %328, %1426 ]
  %1447 = phi i32 [ %1458, %1445 ], [ %325, %1426 ]
  %1448 = getelementptr inbounds ptr, ptr %33, i64 %1446
  %1449 = load ptr, ptr %1448, align 8, !tbaa !38
  %1450 = add i32 %1447, 1
  %1451 = zext i32 %1447 to i64
  %1452 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1427, i64 %1451
  store ptr %1449, ptr %1452, align 8, !tbaa !51
  %1453 = getelementptr inbounds ptr, ptr %34, i64 %1446
  %1454 = load ptr, ptr %1453, align 8, !tbaa !38
  %1455 = add i32 %1447, 2
  %1456 = zext i32 %1450 to i64
  %1457 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1427, i64 %1456
  store ptr %1454, ptr %1457, align 8, !tbaa !51
  %1458 = add i32 %1447, 3
  %1459 = zext i32 %1455 to i64
  %1460 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1427, i64 %1459
  %1461 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %1446
  %1462 = load i64, ptr %1461, align 8
  store i64 %1462, ptr %1460, align 8
  %1463 = add i64 %1446, 1
  %1464 = icmp ugt i64 %1463, %329
  br i1 %1464, label %1465, label %1445, !llvm.loop !98

1465:                                             ; preds = %1445, %1426
  %1466 = phi i32 [ %325, %1426 ], [ %1458, %1445 ]
  %1467 = trunc i64 %328 to i32
  %1468 = add i32 %1466, 1
  %1469 = zext i32 %1466 to i64
  %1470 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1427, i64 %1469
  store i32 %1467, ptr %1470, align 8, !tbaa !51
  %1471 = trunc i64 %329 to i32
  %1472 = add i32 %1466, 2
  %1473 = zext i32 %1468 to i64
  %1474 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1427, i64 %1473
  store i32 %1471, ptr %1474, align 8, !tbaa !51
  %1475 = add i32 %1466, 3
  %1476 = zext i32 %1472 to i64
  %1477 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1427, i64 %1476
  store ptr null, ptr %1477, align 8, !tbaa !51
  %1478 = add i32 %1466, 4
  %1479 = zext i32 %1475 to i64
  %1480 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1427, i64 %1479
  store ptr null, ptr %1480, align 8, !tbaa !51
  br label %1481

1481:                                             ; preds = %1431, %340, %1465
  %1482 = phi ptr [ %1427, %1465 ], [ %327, %340 ], [ %1439, %1431 ]
  %1483 = phi i32 [ %1428, %1465 ], [ %326, %340 ], [ %1436, %1431 ]
  %1484 = phi i1 [ %1429, %1465 ], [ %339, %340 ], [ %1444, %1431 ]
  %1485 = phi i32 [ %1478, %1465 ], [ %325, %340 ], [ %325, %1431 ]
  br i1 %1484, label %1844, label %1732

1486:                                             ; preds = %320
  %1487 = getelementptr inbounds i8, ptr %323, i64 3
  %1488 = load i8, ptr %1487, align 1, !tbaa !51
  %1489 = zext i8 %1488 to i32
  %1490 = getelementptr inbounds i8, ptr %323, i64 4
  %1491 = load i8, ptr %1490, align 1, !tbaa !51
  %1492 = sext i8 %1491 to i32
  %1493 = shl nsw i32 %1492, 8
  %1494 = or disjoint i32 %1493, %1489
  %1495 = icmp sgt i32 %1494, 0
  br i1 %1495, label %1496, label %1502

1496:                                             ; preds = %1486
  %1497 = add nsw i32 %1494, -1
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, ptr %1487, align 1, !tbaa !51
  %1499 = lshr i32 %1497, 8
  %1500 = trunc i32 %1499 to i8
  store i8 %1500, ptr %1490, align 1, !tbaa !51
  %1501 = getelementptr inbounds i8, ptr %323, i64 5
  br label %1732

1502:                                             ; preds = %1486
  %1503 = icmp eq i32 %1494, 0
  br i1 %1503, label %1504, label %1732

1504:                                             ; preds = %1502
  store i8 0, ptr %1487, align 1, !tbaa !51
  store i8 0, ptr %1490, align 1, !tbaa !51
  br label %1028

1505:                                             ; preds = %320
  %1506 = getelementptr inbounds i8, ptr %323, i64 3
  %1507 = load i8, ptr %1506, align 1, !tbaa !51
  %1508 = zext i8 %1507 to i32
  %1509 = getelementptr inbounds i8, ptr %323, i64 4
  %1510 = load i8, ptr %1509, align 1, !tbaa !51
  %1511 = sext i8 %1510 to i32
  %1512 = shl nsw i32 %1511, 8
  %1513 = or disjoint i32 %1512, %1508
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1520, label %1515

1515:                                             ; preds = %1505
  %1516 = add nsw i32 %1513, -1
  %1517 = trunc i32 %1516 to i8
  store i8 %1517, ptr %1506, align 1, !tbaa !51
  %1518 = lshr i32 %1516, 8
  %1519 = trunc i32 %1518 to i8
  store i8 %1519, ptr %1509, align 1, !tbaa !51
  br label %1351

1520:                                             ; preds = %1505
  %1521 = getelementptr inbounds i8, ptr %323, i64 5
  br label %1732

1522:                                             ; preds = %320
  %1523 = load i8, ptr %331, align 1, !tbaa !51
  %1524 = zext i8 %1523 to i32
  %1525 = getelementptr inbounds i8, ptr %323, i64 2
  %1526 = load i8, ptr %1525, align 1, !tbaa !51
  %1527 = sext i8 %1526 to i32
  %1528 = shl nsw i32 %1527, 8
  %1529 = or disjoint i32 %1528, %1524
  %1530 = getelementptr inbounds i8, ptr %323, i64 3
  %1531 = sext i32 %1529 to i64
  %1532 = getelementptr inbounds i8, ptr %1530, i64 %1531
  store ptr %1532, ptr %9, align 8, !tbaa !38
  %1533 = load i8, ptr %1530, align 1, !tbaa !51
  %1534 = getelementptr inbounds i8, ptr %323, i64 4
  %1535 = load i8, ptr %1534, align 1, !tbaa !51
  %1536 = getelementptr inbounds i8, ptr %323, i64 5
  store i8 %1533, ptr %1532, align 1, !tbaa !51
  %1537 = load ptr, ptr %9, align 8, !tbaa !38
  %1538 = getelementptr inbounds i8, ptr %1537, i64 1
  store i8 %1535, ptr %1538, align 1, !tbaa !51
  br label %1732

1539:                                             ; preds = %320
  %1540 = icmp eq i32 %68, 0
  %1541 = select i1 %1540, ptr %67, ptr %69
  %1542 = icmp eq i32 %66, 0
  %1543 = icmp eq ptr %321, %1541
  %1544 = or i1 %1542, %1543
  %1545 = icmp eq ptr %321, %73
  %1546 = select i1 %1544, i1 true, i1 %1545
  br i1 %1546, label %1571, label %1547

1547:                                             ; preds = %1539
  %1548 = getelementptr inbounds i8, ptr %71, i64 -1
  %1549 = getelementptr inbounds i8, ptr %67, i64 -1
  %1550 = getelementptr inbounds i8, ptr %321, i64 -1
  %1551 = icmp eq ptr %1550, %71
  %1552 = icmp eq ptr %321, %67
  %1553 = select i1 %1552, ptr %1548, ptr %1550
  %1554 = select i1 %1551, ptr %67, ptr %1553
  %1555 = load i8, ptr %1554, align 1, !tbaa !51
  %1556 = zext i8 %1555 to i64
  %1557 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1556
  %1558 = load i8, ptr %1557, align 1, !tbaa !51
  %1559 = icmp eq i8 %1558, 1
  %1560 = icmp eq ptr %321, %71
  %1561 = icmp eq ptr %321, %1549
  %1562 = select i1 %1561, ptr %1548, ptr %321
  %1563 = select i1 %1560, ptr %67, ptr %1562
  %1564 = load i8, ptr %1563, align 1, !tbaa !51
  %1565 = zext i8 %1564 to i64
  %1566 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1565
  %1567 = load i8, ptr %1566, align 1, !tbaa !51
  %1568 = icmp ne i8 %1567, 1
  %1569 = xor i1 %1559, %1568
  %1570 = select i1 %1569, i32 16, i32 34
  br label %1571

1571:                                             ; preds = %1547, %1539
  %1572 = phi i32 [ 34, %1539 ], [ %1570, %1547 ]
  switch i32 %1572, label %1844 [
    i32 34, label %1732
    i32 16, label %1744
  ]

1573:                                             ; preds = %320
  %1574 = icmp eq i32 %68, 0
  %1575 = select i1 %1574, ptr %67, ptr %69
  %1576 = icmp eq i32 %66, 0
  %1577 = icmp eq ptr %321, %1575
  %1578 = or i1 %1576, %1577
  %1579 = icmp eq ptr %321, %73
  %1580 = select i1 %1578, i1 true, i1 %1579
  br i1 %1580, label %1605, label %1581

1581:                                             ; preds = %1573
  %1582 = getelementptr inbounds i8, ptr %71, i64 -1
  %1583 = getelementptr inbounds i8, ptr %67, i64 -1
  %1584 = getelementptr inbounds i8, ptr %321, i64 -1
  %1585 = icmp eq ptr %1584, %71
  %1586 = icmp eq ptr %321, %67
  %1587 = select i1 %1586, ptr %1582, ptr %1584
  %1588 = select i1 %1585, ptr %67, ptr %1587
  %1589 = load i8, ptr %1588, align 1, !tbaa !51
  %1590 = zext i8 %1589 to i64
  %1591 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1590
  %1592 = load i8, ptr %1591, align 1, !tbaa !51
  %1593 = icmp eq i8 %1592, 1
  %1594 = icmp eq ptr %321, %71
  %1595 = icmp eq ptr %321, %1583
  %1596 = select i1 %1595, ptr %1582, ptr %321
  %1597 = select i1 %1594, ptr %67, ptr %1596
  %1598 = load i8, ptr %1597, align 1, !tbaa !51
  %1599 = zext i8 %1598 to i64
  %1600 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1599
  %1601 = load i8, ptr %1600, align 1, !tbaa !51
  %1602 = icmp ne i8 %1601, 1
  %1603 = xor i1 %1593, %1602
  %1604 = select i1 %1603, i32 34, i32 16
  br label %1605

1605:                                             ; preds = %1581, %1573
  %1606 = phi i32 [ 16, %1573 ], [ %1604, %1581 ]
  switch i32 %1606, label %1844 [
    i32 34, label %1732
    i32 16, label %1744
  ]

1607:                                             ; preds = %320
  %1608 = icmp eq ptr %321, %73
  br i1 %1608, label %1744, label %1609

1609:                                             ; preds = %1607
  %1610 = getelementptr inbounds i8, ptr %67, i64 -1
  %1611 = getelementptr inbounds i8, ptr %71, i64 -1
  %1612 = icmp eq ptr %321, %71
  %1613 = icmp eq ptr %321, %1610
  %1614 = select i1 %1613, ptr %1611, ptr %321
  %1615 = select i1 %1612, ptr %67, ptr %1614
  %1616 = load i8, ptr %1615, align 1, !tbaa !51
  %1617 = zext i8 %1616 to i64
  %1618 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1617
  %1619 = load i8, ptr %1618, align 1, !tbaa !51
  %1620 = icmp eq i8 %1619, 1
  br i1 %1620, label %1621, label %1744

1621:                                             ; preds = %1609
  %1622 = icmp eq i32 %68, 0
  %1623 = select i1 %1622, ptr %67, ptr %69
  %1624 = icmp ne i32 %66, 0
  %1625 = icmp ne ptr %321, %1623
  %1626 = and i1 %1624, %1625
  br i1 %1626, label %1627, label %1732

1627:                                             ; preds = %1621
  %1628 = getelementptr inbounds i8, ptr %321, i64 -1
  %1629 = icmp eq ptr %1628, %71
  %1630 = icmp eq ptr %321, %67
  %1631 = select i1 %1630, ptr %1611, ptr %1628
  %1632 = select i1 %1629, ptr %67, ptr %1631
  %1633 = load i8, ptr %1632, align 1, !tbaa !51
  %1634 = zext i8 %1633 to i64
  %1635 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1634
  %1636 = load i8, ptr %1635, align 1, !tbaa !51
  %1637 = icmp eq i8 %1636, 1
  br i1 %1637, label %1744, label %1732

1638:                                             ; preds = %320
  %1639 = icmp eq i32 %68, 0
  %1640 = select i1 %1639, ptr %67, ptr %69
  %1641 = icmp ne i32 %66, 0
  %1642 = icmp ne ptr %321, %1640
  %1643 = and i1 %1641, %1642
  br i1 %1643, label %1644, label %1744

1644:                                             ; preds = %1638
  %1645 = getelementptr inbounds i8, ptr %71, i64 -1
  %1646 = getelementptr inbounds i8, ptr %321, i64 -1
  %1647 = icmp eq ptr %1646, %71
  %1648 = icmp eq ptr %321, %67
  %1649 = select i1 %1648, ptr %1645, ptr %1646
  %1650 = select i1 %1647, ptr %67, ptr %1649
  %1651 = load i8, ptr %1650, align 1, !tbaa !51
  %1652 = zext i8 %1651 to i64
  %1653 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1652
  %1654 = load i8, ptr %1653, align 1, !tbaa !51
  %1655 = icmp eq i8 %1654, 1
  br i1 %1655, label %1656, label %1744

1656:                                             ; preds = %1644
  %1657 = icmp eq ptr %321, %73
  br i1 %1657, label %1732, label %1658

1658:                                             ; preds = %1656
  %1659 = getelementptr inbounds i8, ptr %67, i64 -1
  %1660 = icmp eq ptr %321, %71
  %1661 = icmp eq ptr %321, %1659
  %1662 = select i1 %1661, ptr %1645, ptr %321
  %1663 = select i1 %1660, ptr %67, ptr %1662
  %1664 = load i8, ptr %1663, align 1, !tbaa !51
  %1665 = zext i8 %1664 to i64
  %1666 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1665
  %1667 = load i8, ptr %1666, align 1, !tbaa !51
  %1668 = icmp eq i8 %1667, 1
  br i1 %1668, label %1744, label %1732

1669:                                             ; preds = %320, %1673
  %1670 = phi ptr [ %80, %1673 ], [ %322, %320 ]
  %1671 = phi ptr [ %67, %1673 ], [ %321, %320 ]
  %1672 = icmp eq ptr %1671, %1670
  br i1 %1672, label %1673, label %1675

1673:                                             ; preds = %1669
  %1674 = icmp eq ptr %1670, %80
  br i1 %1674, label %1744, label %1669, !llvm.loop !99

1675:                                             ; preds = %1669
  %1676 = getelementptr inbounds i8, ptr %67, i64 -1
  %1677 = getelementptr inbounds i8, ptr %71, i64 -1
  %1678 = icmp eq ptr %1671, %71
  %1679 = icmp eq ptr %1671, %1676
  %1680 = select i1 %1679, ptr %1677, ptr %1671
  %1681 = select i1 %1678, ptr %67, ptr %1680
  %1682 = load i8, ptr %1681, align 1, !tbaa !51
  %1683 = zext i8 %1682 to i64
  %1684 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1683
  %1685 = load i8, ptr %1684, align 1, !tbaa !51
  %1686 = icmp eq i8 %1685, 1
  br i1 %1686, label %1687, label %1744

1687:                                             ; preds = %1675
  %1688 = icmp ne i32 %330, 0
  %1689 = icmp ugt i64 %328, %329
  %1690 = select i1 %1688, i1 true, i1 %1689
  br i1 %1690, label %1698, label %1691

1691:                                             ; preds = %1687, %1691
  %1692 = phi i64 [ %1696, %1691 ], [ %328, %1687 ]
  %1693 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %1692
  %1694 = load i8, ptr %1693, align 8
  %1695 = or i8 %1694, 24
  store i8 %1695, ptr %1693, align 8
  %1696 = add i64 %1692, 1
  %1697 = icmp ugt i64 %1696, %329
  br i1 %1697, label %1698, label %1691, !llvm.loop !100

1698:                                             ; preds = %1691, %1687
  %1699 = getelementptr inbounds i8, ptr %1671, i64 1
  br label %1732

1700:                                             ; preds = %320, %1704
  %1701 = phi ptr [ %80, %1704 ], [ %322, %320 ]
  %1702 = phi ptr [ %67, %1704 ], [ %321, %320 ]
  %1703 = icmp eq ptr %1702, %1701
  br i1 %1703, label %1704, label %1706

1704:                                             ; preds = %1700
  %1705 = icmp eq ptr %1701, %80
  br i1 %1705, label %1744, label %1700, !llvm.loop !101

1706:                                             ; preds = %1700
  %1707 = getelementptr inbounds i8, ptr %67, i64 -1
  %1708 = getelementptr inbounds i8, ptr %71, i64 -1
  %1709 = icmp eq ptr %1702, %71
  %1710 = icmp eq ptr %1702, %1707
  %1711 = select i1 %1710, ptr %1708, ptr %1702
  %1712 = select i1 %1709, ptr %67, ptr %1711
  %1713 = load i8, ptr %1712, align 1, !tbaa !51
  %1714 = zext i8 %1713 to i64
  %1715 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1714
  %1716 = load i8, ptr %1715, align 1, !tbaa !51
  %1717 = icmp eq i8 %1716, 1
  br i1 %1717, label %1744, label %1718

1718:                                             ; preds = %1706
  %1719 = icmp ne i32 %330, 0
  %1720 = icmp ugt i64 %328, %329
  %1721 = select i1 %1719, i1 true, i1 %1720
  br i1 %1721, label %1729, label %1722

1722:                                             ; preds = %1718, %1722
  %1723 = phi i64 [ %1727, %1722 ], [ %328, %1718 ]
  %1724 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %1723
  %1725 = load i8, ptr %1724, align 8
  %1726 = or i8 %1725, 24
  store i8 %1726, ptr %1724, align 8
  %1727 = add i64 %1723, 1
  %1728 = icmp ugt i64 %1727, %329
  br i1 %1728, label %1729, label %1722, !llvm.loop !102

1729:                                             ; preds = %1722, %1718
  %1730 = getelementptr inbounds i8, ptr %1702, i64 1
  br label %1732

1731:                                             ; preds = %320
  tail call void @abort() #22
  unreachable

1732:                                             ; preds = %413, %945, %939, %935, %919, %899, %1656, %1658, %1621, %1627, %1496, %1502, %1481, %1134, %1023, %925, %910, %407, %320, %1729, %1698, %1605, %1571, %1522, %1520, %1351, %777, %539, %519, %465
  %1733 = phi i32 [ 1, %1729 ], [ 1, %1698 ], [ %330, %1656 ], [ %330, %1658 ], [ %330, %1627 ], [ %330, %1621 ], [ %330, %1605 ], [ %330, %1571 ], [ %330, %1522 ], [ %1352, %1351 ], [ %330, %1520 ], [ %330, %1496 ], [ %330, %1134 ], [ %330, %1502 ], [ %330, %1481 ], [ %330, %1023 ], [ %330, %925 ], [ %330, %910 ], [ %900, %899 ], [ 0, %777 ], [ 0, %539 ], [ %520, %519 ], [ 1, %465 ], [ 1, %407 ], [ %330, %320 ], [ %330, %919 ], [ %330, %935 ], [ %330, %939 ], [ %330, %945 ], [ 1, %413 ]
  %1734 = phi i64 [ %329, %1729 ], [ %329, %1698 ], [ %329, %1656 ], [ %329, %1658 ], [ %329, %1627 ], [ %329, %1621 ], [ %329, %1605 ], [ %329, %1571 ], [ %329, %1522 ], [ %329, %1351 ], [ %329, %1520 ], [ %329, %1496 ], [ %1065, %1134 ], [ %329, %1502 ], [ %329, %1481 ], [ %329, %1023 ], [ %329, %925 ], [ %329, %910 ], [ %329, %899 ], [ %605, %777 ], [ %566, %539 ], [ %329, %519 ], [ %329, %465 ], [ %329, %407 ], [ %329, %320 ], [ %329, %919 ], [ %329, %935 ], [ %329, %939 ], [ %329, %945 ], [ %329, %413 ]
  %1735 = phi i64 [ %328, %1729 ], [ %328, %1698 ], [ %328, %1656 ], [ %328, %1658 ], [ %328, %1627 ], [ %328, %1621 ], [ %328, %1605 ], [ %328, %1571 ], [ %328, %1522 ], [ %328, %1351 ], [ %328, %1520 ], [ %328, %1496 ], [ %1066, %1134 ], [ %328, %1502 ], [ %328, %1481 ], [ %328, %1023 ], [ %328, %925 ], [ %328, %910 ], [ %328, %899 ], [ %606, %777 ], [ %568, %539 ], [ %328, %519 ], [ %328, %465 ], [ %328, %407 ], [ %328, %320 ], [ %328, %919 ], [ %328, %935 ], [ %328, %939 ], [ %328, %945 ], [ %328, %413 ]
  %1736 = phi ptr [ %327, %1729 ], [ %327, %1698 ], [ %327, %1656 ], [ %327, %1658 ], [ %327, %1627 ], [ %327, %1621 ], [ %327, %1605 ], [ %327, %1571 ], [ %327, %1522 ], [ %1353, %1351 ], [ %327, %1520 ], [ %327, %1496 ], [ %1135, %1134 ], [ %327, %1502 ], [ %1482, %1481 ], [ %1024, %1023 ], [ %327, %925 ], [ %327, %910 ], [ %327, %899 ], [ %778, %777 ], [ %327, %539 ], [ %327, %519 ], [ %327, %465 ], [ %327, %407 ], [ %327, %320 ], [ %327, %919 ], [ %327, %935 ], [ %327, %939 ], [ %327, %945 ], [ %327, %413 ]
  %1737 = phi i32 [ %326, %1729 ], [ %326, %1698 ], [ %326, %1656 ], [ %326, %1658 ], [ %326, %1627 ], [ %326, %1621 ], [ %326, %1605 ], [ %326, %1571 ], [ %326, %1522 ], [ %1354, %1351 ], [ %326, %1520 ], [ %326, %1496 ], [ %1136, %1134 ], [ %326, %1502 ], [ %1483, %1481 ], [ %1025, %1023 ], [ %326, %925 ], [ %326, %910 ], [ %326, %899 ], [ %779, %777 ], [ %326, %539 ], [ %326, %519 ], [ %326, %465 ], [ %326, %407 ], [ %326, %320 ], [ %326, %919 ], [ %326, %935 ], [ %326, %939 ], [ %326, %945 ], [ %326, %413 ]
  %1738 = phi i32 [ %325, %1729 ], [ %325, %1698 ], [ %325, %1656 ], [ %325, %1658 ], [ %325, %1627 ], [ %325, %1621 ], [ %325, %1605 ], [ %325, %1571 ], [ %325, %1522 ], [ %1355, %1351 ], [ %325, %1520 ], [ %325, %1496 ], [ %1138, %1134 ], [ %325, %1502 ], [ %1485, %1481 ], [ %1027, %1023 ], [ %325, %925 ], [ %325, %910 ], [ %325, %899 ], [ %780, %777 ], [ %325, %539 ], [ %325, %519 ], [ %325, %465 ], [ %325, %407 ], [ %325, %320 ], [ %325, %919 ], [ %325, %935 ], [ %325, %939 ], [ %325, %945 ], [ %325, %413 ]
  %1739 = phi ptr [ %324, %1729 ], [ %324, %1698 ], [ %324, %1656 ], [ %324, %1658 ], [ %324, %1627 ], [ %324, %1621 ], [ %324, %1605 ], [ %324, %1571 ], [ %324, %1522 ], [ %324, %1351 ], [ %324, %1520 ], [ %324, %1496 ], [ %324, %1134 ], [ %324, %1502 ], [ %324, %1481 ], [ %324, %1023 ], [ %324, %925 ], [ %324, %910 ], [ %324, %899 ], [ %324, %777 ], [ %569, %539 ], [ %324, %519 ], [ %324, %465 ], [ %324, %407 ], [ %324, %320 ], [ %324, %919 ], [ %324, %935 ], [ %324, %939 ], [ %324, %945 ], [ %324, %413 ]
  %1740 = phi ptr [ %331, %1729 ], [ %331, %1698 ], [ %331, %1656 ], [ %331, %1658 ], [ %331, %1627 ], [ %331, %1621 ], [ %331, %1605 ], [ %331, %1571 ], [ %1536, %1522 ], [ %1365, %1351 ], [ %1521, %1520 ], [ %1501, %1496 ], [ %1036, %1134 ], [ %331, %1502 ], [ %331, %1481 ], [ %955, %1023 ], [ %331, %925 ], [ %331, %910 ], [ %783, %899 ], [ %781, %777 ], [ %569, %539 ], [ %522, %519 ], [ %331, %465 ], [ %363, %407 ], [ %331, %320 ], [ %331, %919 ], [ %331, %935 ], [ %331, %939 ], [ %331, %945 ], [ %363, %413 ]
  %1741 = phi ptr [ %1701, %1729 ], [ %1670, %1698 ], [ %322, %1656 ], [ %322, %1658 ], [ %322, %1627 ], [ %322, %1621 ], [ %322, %1605 ], [ %322, %1571 ], [ %322, %1522 ], [ %322, %1351 ], [ %322, %1520 ], [ %322, %1496 ], [ %322, %1134 ], [ %322, %1502 ], [ %322, %1481 ], [ %322, %1023 ], [ %322, %925 ], [ %322, %910 ], [ %902, %899 ], [ %322, %777 ], [ %322, %539 ], [ %470, %519 ], [ %421, %465 ], [ %408, %407 ], [ %322, %320 ], [ %322, %919 ], [ %322, %935 ], [ %322, %939 ], [ %322, %945 ], [ %408, %413 ]
  %1742 = phi ptr [ %1730, %1729 ], [ %1699, %1698 ], [ %321, %1656 ], [ %321, %1658 ], [ %321, %1627 ], [ %321, %1621 ], [ %321, %1605 ], [ %321, %1571 ], [ %321, %1522 ], [ %321, %1351 ], [ %321, %1520 ], [ %321, %1496 ], [ %321, %1134 ], [ %321, %1502 ], [ %321, %1481 ], [ %321, %1023 ], [ %321, %925 ], [ %321, %910 ], [ %903, %899 ], [ %321, %777 ], [ %321, %539 ], [ %523, %519 ], [ %466, %465 ], [ %409, %407 ], [ %321, %320 ], [ %321, %919 ], [ %321, %935 ], [ %321, %939 ], [ %321, %945 ], [ %409, %413 ]
  %1743 = icmp eq ptr %1740, %13
  br i1 %1743, label %105, label %320, !llvm.loop !103

1744:                                             ; preds = %519, %772, %939, %945, %1675, %1706, %899, %1571, %1605, %1638, %1644, %1658, %1607, %1609, %1627, %925, %935, %930, %910, %919, %915, %437, %450, %132, %1704, %1673, %424, %375, %398, %373, %396, %129, %130
  %1745 = phi ptr [ %109, %130 ], [ %109, %129 ], [ %324, %396 ], [ %324, %373 ], [ %324, %398 ], [ %324, %375 ], [ %324, %424 ], [ %324, %1673 ], [ %324, %1704 ], [ %109, %132 ], [ %324, %450 ], [ %324, %437 ], [ %324, %915 ], [ %324, %919 ], [ %324, %910 ], [ %324, %930 ], [ %324, %935 ], [ %324, %925 ], [ %324, %1627 ], [ %324, %1609 ], [ %324, %1607 ], [ %324, %1658 ], [ %324, %1644 ], [ %324, %1638 ], [ %324, %1605 ], [ %324, %1571 ], [ %324, %899 ], [ %324, %1706 ], [ %324, %1675 ], [ %324, %945 ], [ %324, %939 ], [ %324, %772 ], [ %324, %519 ]
  %1746 = phi i32 [ 1, %130 ], [ 1, %129 ], [ %93, %396 ], [ %93, %373 ], [ %93, %398 ], [ %93, %375 ], [ %93, %424 ], [ %93, %1673 ], [ %93, %1704 ], [ 1, %132 ], [ %93, %450 ], [ %93, %437 ], [ %93, %915 ], [ %93, %919 ], [ %93, %910 ], [ %93, %930 ], [ %93, %935 ], [ %93, %925 ], [ %93, %1627 ], [ %93, %1609 ], [ %93, %1607 ], [ %93, %1658 ], [ %93, %1644 ], [ %93, %1638 ], [ %93, %1605 ], [ %93, %1571 ], [ %93, %899 ], [ %93, %1706 ], [ %93, %1675 ], [ %93, %945 ], [ %93, %939 ], [ %93, %772 ], [ %93, %519 ]
  %1747 = phi ptr [ %111, %130 ], [ %94, %129 ], [ %94, %396 ], [ %94, %373 ], [ %94, %398 ], [ %94, %375 ], [ %94, %424 ], [ %94, %1673 ], [ %94, %1704 ], [ %111, %132 ], [ %94, %450 ], [ %94, %437 ], [ %94, %915 ], [ %94, %919 ], [ %94, %910 ], [ %94, %930 ], [ %94, %935 ], [ %94, %925 ], [ %94, %1627 ], [ %94, %1609 ], [ %94, %1607 ], [ %94, %1658 ], [ %94, %1644 ], [ %94, %1638 ], [ %94, %1605 ], [ %94, %1571 ], [ %94, %899 ], [ %94, %1706 ], [ %94, %1675 ], [ %94, %945 ], [ %94, %939 ], [ %94, %772 ], [ %94, %519 ]
  %1748 = phi ptr [ %106, %130 ], [ %106, %129 ], [ %327, %396 ], [ %327, %373 ], [ %327, %398 ], [ %327, %375 ], [ %327, %424 ], [ %327, %1673 ], [ %327, %1704 ], [ %106, %132 ], [ %327, %519 ], [ %774, %772 ], [ %327, %939 ], [ %327, %945 ], [ %327, %1675 ], [ %327, %1706 ], [ %327, %899 ], [ %327, %1571 ], [ %327, %1605 ], [ %327, %1638 ], [ %327, %1644 ], [ %327, %1658 ], [ %327, %1607 ], [ %327, %1609 ], [ %327, %1627 ], [ %327, %925 ], [ %327, %935 ], [ %327, %930 ], [ %327, %910 ], [ %327, %919 ], [ %327, %915 ], [ %327, %437 ], [ %327, %450 ]
  %1749 = phi i32 [ %107, %130 ], [ %107, %129 ], [ %326, %396 ], [ %326, %373 ], [ %326, %398 ], [ %326, %375 ], [ %326, %424 ], [ %326, %1673 ], [ %326, %1704 ], [ %107, %132 ], [ %326, %519 ], [ %775, %772 ], [ %326, %939 ], [ %326, %945 ], [ %326, %1675 ], [ %326, %1706 ], [ %326, %899 ], [ %326, %1571 ], [ %326, %1605 ], [ %326, %1638 ], [ %326, %1644 ], [ %326, %1658 ], [ %326, %1607 ], [ %326, %1609 ], [ %326, %1627 ], [ %326, %925 ], [ %326, %935 ], [ %326, %930 ], [ %326, %910 ], [ %326, %919 ], [ %326, %915 ], [ %326, %437 ], [ %326, %450 ]
  %1750 = phi i32 [ %108, %130 ], [ %108, %129 ], [ %325, %396 ], [ %325, %373 ], [ %325, %398 ], [ %325, %375 ], [ %325, %424 ], [ %325, %1673 ], [ %325, %1704 ], [ %108, %132 ], [ %325, %519 ], [ %776, %772 ], [ %325, %939 ], [ %325, %945 ], [ %325, %1675 ], [ %325, %1706 ], [ %325, %899 ], [ %325, %1571 ], [ %325, %1605 ], [ %325, %1638 ], [ %325, %1644 ], [ %325, %1658 ], [ %325, %1607 ], [ %325, %1609 ], [ %325, %1627 ], [ %325, %925 ], [ %325, %935 ], [ %325, %930 ], [ %325, %910 ], [ %325, %919 ], [ %325, %915 ], [ %325, %437 ], [ %325, %450 ]
  %1751 = phi ptr [ %110, %130 ], [ %110, %129 ], [ %393, %396 ], [ %370, %373 ], [ %393, %398 ], [ %370, %375 ], [ %421, %424 ], [ %1670, %1673 ], [ %1701, %1704 ], [ %110, %132 ], [ %470, %519 ], [ %322, %772 ], [ %322, %939 ], [ %322, %945 ], [ %1670, %1675 ], [ %1701, %1706 ], [ %902, %899 ], [ %322, %1571 ], [ %322, %1605 ], [ %322, %1638 ], [ %322, %1644 ], [ %322, %1658 ], [ %322, %1607 ], [ %322, %1609 ], [ %322, %1627 ], [ %322, %925 ], [ %322, %935 ], [ %322, %930 ], [ %322, %910 ], [ %322, %919 ], [ %322, %915 ], [ %421, %437 ], [ %421, %450 ]
  %1752 = phi ptr [ %111, %130 ], [ %111, %129 ], [ %394, %396 ], [ %371, %373 ], [ %399, %398 ], [ %376, %375 ], [ %422, %424 ], [ %1671, %1673 ], [ %1702, %1704 ], [ %111, %132 ], [ %523, %519 ], [ %321, %772 ], [ %321, %939 ], [ %321, %945 ], [ %1671, %1675 ], [ %1702, %1706 ], [ %903, %899 ], [ %321, %1571 ], [ %321, %1605 ], [ %321, %1638 ], [ %321, %1644 ], [ %321, %1658 ], [ %321, %1607 ], [ %321, %1609 ], [ %321, %1627 ], [ %321, %925 ], [ %321, %935 ], [ %321, %930 ], [ %321, %910 ], [ %321, %919 ], [ %321, %915 ], [ %422, %437 ], [ %422, %450 ]
  %1753 = icmp eq i32 %1750, 0
  br i1 %1753, label %1842, label %1754

1754:                                             ; preds = %1744, %1801
  %1755 = phi ptr [ %1762, %1801 ], [ %1752, %1744 ]
  %1756 = phi i32 [ %1799, %1801 ], [ %1750, %1744 ]
  %1757 = add i32 %1756, -1
  %1758 = zext i32 %1757 to i64
  %1759 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1748, i64 %1758
  %1760 = load ptr, ptr %1759, align 8, !tbaa !51
  %1761 = icmp eq ptr %1760, null
  %1762 = select i1 %1761, ptr %1755, ptr %1760
  %1763 = add i32 %1756, -2
  %1764 = zext i32 %1763 to i64
  %1765 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1748, i64 %1764
  %1766 = load ptr, ptr %1765, align 8, !tbaa !51
  %1767 = add i32 %1756, -3
  %1768 = zext i32 %1767 to i64
  %1769 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1748, i64 %1768
  %1770 = load i32, ptr %1769, align 8, !tbaa !51
  %1771 = sext i32 %1770 to i64
  %1772 = add i32 %1756, -4
  %1773 = zext i32 %1772 to i64
  %1774 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1748, i64 %1773
  %1775 = load i32, ptr %1774, align 8, !tbaa !51
  %1776 = sext i32 %1775 to i64
  %1777 = icmp ult i32 %1770, %1775
  br i1 %1777, label %1798, label %1778

1778:                                             ; preds = %1754, %1778
  %1779 = phi i64 [ %1796, %1778 ], [ %1771, %1754 ]
  %1780 = phi i32 [ %1791, %1778 ], [ %1772, %1754 ]
  %1781 = getelementptr inbounds %union.byte_register_info_type, ptr %37, i64 %1779
  %1782 = add i32 %1780, -1
  %1783 = zext i32 %1782 to i64
  %1784 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1748, i64 %1783
  %1785 = load i64, ptr %1784, align 8
  store i64 %1785, ptr %1781, align 8
  %1786 = add i32 %1780, -2
  %1787 = zext i32 %1786 to i64
  %1788 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1748, i64 %1787
  %1789 = load ptr, ptr %1788, align 8, !tbaa !51
  %1790 = getelementptr inbounds ptr, ptr %34, i64 %1779
  store ptr %1789, ptr %1790, align 8, !tbaa !38
  %1791 = add i32 %1780, -3
  %1792 = zext i32 %1791 to i64
  %1793 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1748, i64 %1792
  %1794 = load ptr, ptr %1793, align 8, !tbaa !51
  %1795 = getelementptr inbounds ptr, ptr %33, i64 %1779
  store ptr %1794, ptr %1795, align 8, !tbaa !38
  %1796 = add i64 %1779, -1
  %1797 = icmp ult i64 %1796, %1776
  br i1 %1797, label %1798, label %1778, !llvm.loop !104

1798:                                             ; preds = %1778, %1754
  %1799 = phi i32 [ %1772, %1754 ], [ %1791, %1778 ]
  %1800 = icmp eq ptr %1766, null
  br i1 %1800, label %1801, label %1803

1801:                                             ; preds = %1834, %1830, %1798
  %1802 = icmp eq i32 %1799, 0
  br i1 %1802, label %1842, label %1754

1803:                                             ; preds = %1798
  %1804 = icmp ult ptr %1766, %13
  br i1 %1804, label %1805, label %1837

1805:                                             ; preds = %1803
  %1806 = load i8, ptr %1766, align 1, !tbaa !51
  %1807 = add i8 %1806, -13
  %1808 = icmp ult i8 %1807, 10
  br i1 %1808, label %1809, label %1837

1809:                                             ; preds = %1805
  %1810 = zext nneg i8 %1807 to i16
  %1811 = lshr i16 561, %1810
  %1812 = and i16 %1811, 1
  %1813 = icmp eq i16 %1812, 0
  br i1 %1813, label %1837, label %1814

1814:                                             ; preds = %1809
  %1815 = zext nneg i8 %1807 to i10
  %1816 = lshr i10 49, %1815
  %1817 = and i10 %1816, 1
  %1818 = icmp eq i10 %1817, 0
  %1819 = getelementptr inbounds i8, ptr %1766, i64 1
  store ptr %1819, ptr %9, align 8, !tbaa !38
  %1820 = load i8, ptr %1819, align 1, !tbaa !51
  %1821 = zext i8 %1820 to i32
  %1822 = getelementptr inbounds i8, ptr %1766, i64 2
  %1823 = load i8, ptr %1822, align 1, !tbaa !51
  %1824 = sext i8 %1823 to i32
  %1825 = shl nsw i32 %1824, 8
  %1826 = or disjoint i32 %1825, %1821
  %1827 = getelementptr inbounds i8, ptr %1766, i64 3
  %1828 = sext i32 %1826 to i64
  %1829 = getelementptr inbounds i8, ptr %1827, i64 %1828
  store ptr %1829, ptr %9, align 8, !tbaa !38
  br i1 %1818, label %1830, label %1834

1830:                                             ; preds = %1814
  %1831 = load i8, ptr %1829, align 1, !tbaa !51
  %1832 = icmp eq i8 %1831, 21
  br i1 %1832, label %1801, label %1833

1833:                                             ; preds = %1830
  br i1 %1818, label %1837, label %1834

1834:                                             ; preds = %1814, %1833
  %1835 = load i8, ptr %1829, align 1, !tbaa !51
  %1836 = icmp eq i8 %1835, 15
  br i1 %1836, label %1801, label %1837

1837:                                             ; preds = %1809, %1805, %1834, %1833, %1803
  %1838 = icmp ult ptr %1762, %69
  %1839 = icmp ugt ptr %1762, %71
  %1840 = select i1 %1838, i1 true, i1 %1839
  %1841 = select i1 %1840, ptr %1751, ptr %81
  br label %92, !llvm.loop !103

1842:                                             ; preds = %1744, %1801
  %1843 = icmp eq i32 %1746, 0
  br i1 %1843, label %1844, label %143

1844:                                             ; preds = %1605, %1571, %1481, %1421, %1023, %772, %519, %1134, %1842, %194, %172, %32, %310
  %1845 = phi i32 [ %319, %310 ], [ -1, %32 ], [ -2, %172 ], [ -2, %194 ], [ -1, %1842 ], [ -2, %1134 ], [ -2, %519 ], [ -2, %772 ], [ -2, %1023 ], [ -2, %1421 ], [ -2, %1481 ], [ -2, %1571 ], [ -2, %1605 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  ret i32 %1845
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @xre_match_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #7 !prof !34 {
  %9 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  ret i32 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @xre_compile_pattern(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 !prof !34 {
  %4 = getelementptr inbounds %struct.re_pattern_buffer, ptr %2, i64 0, i32 7
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 105
  %7 = or disjoint i8 %6, -128
  store i8 %7, ptr %4, align 8
  %8 = load i64, ptr @xre_syntax_options, align 8, !tbaa !44
  %9 = tail call fastcc i32 @byte_regex_compile(ptr noundef %0, i64 noundef %1, i64 noundef %8, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  br label %15

15:                                               ; preds = %3, %11
  %16 = phi ptr [ %14, %11 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @byte_regex_compile(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca [17 x i8], align 16
  %8 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr %0, ptr %5, align 8, !tbaa !38
  %9 = getelementptr inbounds i8, ptr %0, i64 %1
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = tail call dereferenceable_or_null(1280) ptr @malloc(i64 noundef 1280) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %2788, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 3
  store i64 %2, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 7
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, -105
  store i8 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 2
  store i64 0, ptr %19, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 6
  store i64 0, ptr %20, align 8, !tbaa !66
  %21 = load i1, ptr @init_syntax_once.done, align 4
  br i1 %21, label %37, label %22

22:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @re_syntax_table, i8 0, i64 256, i1 false)
  br label %23

23:                                               ; preds = %22, %33
  %24 = phi i64 [ 0, %22 ], [ %34, %33 ]
  %25 = tail call ptr @__ctype_b_loc() #21
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds i16, ptr %26, i64 %24
  %28 = load i16, ptr %27, align 2, !tbaa !105
  %29 = and i16 %28, 8
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %24
  store i8 1, ptr %32, align 1, !tbaa !51
  br label %33

33:                                               ; preds = %31, %23
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %36, label %23, !llvm.loop !107

36:                                               ; preds = %33
  store i8 1, ptr getelementptr inbounds ([256 x i8], ptr @re_syntax_table, i64 0, i64 95), align 1, !tbaa !51
  store i1 true, ptr @init_syntax_once.done, align 4
  br label %37

37:                                               ; preds = %14, %36
  %38 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !108
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load ptr, ptr %3, align 8, !tbaa !49
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call dereferenceable_or_null(32) ptr @realloc(ptr noundef nonnull %42, i64 noundef 32) #24
  br label %48

46:                                               ; preds = %41
  %47 = tail call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #23
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %47, %46 ], [ %45, %44 ]
  store ptr %49, ptr %3, align 8, !tbaa !49
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @free(ptr noundef %12)
  br label %2788

52:                                               ; preds = %48
  store i64 32, ptr %38, align 8, !tbaa !108
  br label %53

53:                                               ; preds = %52, %37
  %54 = load ptr, ptr %3, align 8, !tbaa !49
  %55 = load ptr, ptr %5, align 8, !tbaa !38
  %56 = icmp eq ptr %55, %9
  br i1 %56, label %2728, label %57

57:                                               ; preds = %53
  %58 = icmp ne ptr %11, null
  br label %59

59:                                               ; preds = %57, %2714
  %60 = phi ptr [ %55, %57 ], [ %2724, %2714 ]
  %61 = phi i32 [ undef, %57 ], [ %2723, %2714 ]
  %62 = phi ptr [ %54, %57 ], [ %2722, %2714 ]
  %63 = phi i64 [ 32, %57 ], [ %2721, %2714 ]
  %64 = phi ptr [ %12, %57 ], [ %2720, %2714 ]
  %65 = phi ptr [ null, %57 ], [ %2719, %2714 ]
  %66 = phi ptr [ null, %57 ], [ %2718, %2714 ]
  %67 = phi ptr [ %54, %57 ], [ %2717, %2714 ]
  %68 = phi ptr [ null, %57 ], [ %2716, %2714 ]
  %69 = phi i32 [ 0, %57 ], [ %2715, %2714 ]
  %70 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %70, ptr %5, align 8, !tbaa !38
  %71 = load i8, ptr %60, align 1, !tbaa !51
  br i1 %58, label %72, label %76

72:                                               ; preds = %59
  %73 = zext i8 %71 to i64
  %74 = getelementptr inbounds i8, ptr %11, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !51
  br label %76

76:                                               ; preds = %72, %59
  %77 = phi i8 [ %75, %72 ], [ %71, %59 ]
  switch i8 %77, label %2567 [
    i8 94, label %78
    i8 36, label %157
    i8 43, label %243
    i8 63, label %243
    i8 42, label %246
    i8 46, label %565
    i8 91, label %614
    i8 40, label %1358
    i8 41, label %1361
    i8 10, label %1364
    i8 124, label %1367
    i8 123, label %1370
    i8 92, label %1373
  ]

78:                                               ; preds = %76
  %79 = and i64 %2, 8
  %80 = icmp eq i64 %79, 0
  %81 = icmp ne ptr %60, %0
  %82 = and i1 %80, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %78
  %84 = getelementptr inbounds i8, ptr %60, i64 -1
  %85 = icmp ugt ptr %84, %0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %60, i64 -2
  %88 = load i8, ptr %87, align 1, !tbaa !51
  %89 = icmp eq i8 %88, 92
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  %92 = load i8, ptr %84, align 1, !tbaa !51
  switch i8 %92, label %104 [
    i8 40, label %93
    i8 124, label %99
  ]

93:                                               ; preds = %90
  %94 = and i64 %2, 8192
  %95 = icmp ne i64 %94, 0
  %96 = select i1 %95, i1 true, i1 %91
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = icmp eq i8 %92, 124
  br i1 %98, label %99, label %104

99:                                               ; preds = %90, %97
  %100 = and i64 %2, 32768
  %101 = icmp ne i64 %100, 0
  %102 = select i1 %101, i1 true, i1 %91
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %90, %93, %97, %99
  %105 = phi i8 [ 1, %93 ], [ 0, %97 ], [ %103, %99 ], [ 0, %90 ]
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %2567, label %107

107:                                              ; preds = %78, %104
  br label %108

108:                                              ; preds = %107, %147
  %109 = phi ptr [ %149, %147 ], [ %68, %107 ]
  %110 = phi ptr [ %150, %147 ], [ %67, %107 ]
  %111 = phi ptr [ %151, %147 ], [ %66, %107 ]
  %112 = phi ptr [ %152, %147 ], [ %65, %107 ]
  %113 = phi ptr [ %153, %147 ], [ %62, %107 ]
  %114 = phi i32 [ %154, %147 ], [ %61, %107 ]
  %115 = load ptr, ptr %3, align 8, !tbaa !49
  %116 = ptrtoint ptr %113 to i64
  %117 = ptrtoint ptr %115 to i64
  %118 = add i64 %116, 1
  %119 = sub i64 %118, %117
  %120 = load i64, ptr %38, align 8, !tbaa !108
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %155

122:                                              ; preds = %108
  %123 = icmp eq i64 %120, 65536
  br i1 %123, label %147, label %124

124:                                              ; preds = %122
  %125 = shl i64 %120, 1
  %126 = tail call i64 @llvm.umin.i64(i64 %125, i64 65536)
  store i64 %126, ptr %38, align 8, !tbaa !108
  %127 = tail call ptr @realloc(ptr noundef %115, i64 noundef %126) #24
  store ptr %127, ptr %3, align 8, !tbaa !49
  %128 = icmp eq ptr %127, null
  br i1 %128, label %147, label %129

129:                                              ; preds = %124
  %130 = icmp eq ptr %115, %127
  br i1 %130, label %147, label %131

131:                                              ; preds = %129
  %132 = ptrtoint ptr %127 to i64
  %133 = sub i64 %132, %117
  %134 = shl i64 %133, 32
  %135 = ashr exact i64 %134, 32
  %136 = getelementptr inbounds i8, ptr %113, i64 %135
  %137 = getelementptr inbounds i8, ptr %110, i64 %135
  %138 = icmp eq ptr %109, null
  %139 = getelementptr inbounds i8, ptr %109, i64 %135
  %140 = select i1 %138, ptr null, ptr %139
  %141 = icmp eq ptr %111, null
  %142 = getelementptr inbounds i8, ptr %111, i64 %135
  %143 = select i1 %141, ptr null, ptr %142
  %144 = icmp eq ptr %112, null
  %145 = getelementptr inbounds i8, ptr %112, i64 %135
  %146 = select i1 %144, ptr null, ptr %145
  br label %147

147:                                              ; preds = %129, %131, %124, %122
  %148 = phi i1 [ false, %122 ], [ false, %124 ], [ true, %131 ], [ true, %129 ]
  %149 = phi ptr [ %109, %122 ], [ %109, %124 ], [ %140, %131 ], [ %109, %129 ]
  %150 = phi ptr [ %110, %122 ], [ %110, %124 ], [ %137, %131 ], [ %110, %129 ]
  %151 = phi ptr [ %111, %122 ], [ %111, %124 ], [ %143, %131 ], [ %111, %129 ]
  %152 = phi ptr [ %112, %122 ], [ %112, %124 ], [ %146, %131 ], [ %112, %129 ]
  %153 = phi ptr [ %113, %122 ], [ %113, %124 ], [ %136, %131 ], [ %113, %129 ]
  %154 = phi i32 [ 15, %122 ], [ 12, %124 ], [ %114, %131 ], [ %114, %129 ]
  br i1 %148, label %108, label %2788, !llvm.loop !109

155:                                              ; preds = %108
  %156 = getelementptr inbounds i8, ptr %113, i64 1
  store i8 9, ptr %113, align 1, !tbaa !51
  br label %2714

157:                                              ; preds = %76
  %158 = and i64 %2, 8
  %159 = icmp eq i64 %158, 0
  %160 = icmp ne ptr %70, %9
  %161 = and i1 %159, %160
  br i1 %161, label %162, label %193

162:                                              ; preds = %157
  %163 = and i64 %2, 8192
  %164 = icmp eq i64 %163, 0
  %165 = load i8, ptr %70, align 1, !tbaa !51
  %166 = icmp eq i8 %165, 92
  %167 = getelementptr inbounds i8, ptr %60, i64 2
  %168 = icmp ult ptr %167, %9
  %169 = select i1 %168, ptr %167, ptr null
  br i1 %164, label %172, label %170

170:                                              ; preds = %162
  %171 = icmp eq i8 %165, 41
  br i1 %171, label %190, label %177

172:                                              ; preds = %162
  %173 = select i1 %166, i1 %168, i1 false
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i8, ptr %169, align 1, !tbaa !51
  %176 = icmp eq i8 %175, 41
  br i1 %176, label %190, label %177

177:                                              ; preds = %174, %172, %170
  %178 = and i64 %2, 32768
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = icmp eq i8 %165, 124
  br label %187

182:                                              ; preds = %177
  %183 = select i1 %166, i1 %168, i1 false
  br i1 %183, label %184, label %187

184:                                              ; preds = %182
  %185 = load i8, ptr %169, align 1, !tbaa !51
  %186 = icmp eq i8 %185, 124
  br label %187

187:                                              ; preds = %184, %182, %180
  %188 = phi i1 [ %181, %180 ], [ false, %182 ], [ %186, %184 ]
  %189 = zext i1 %188 to i8
  br label %190

190:                                              ; preds = %170, %174, %187
  %191 = phi i8 [ 1, %174 ], [ 1, %170 ], [ %189, %187 ]
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %2567, label %193

193:                                              ; preds = %157, %190
  br label %194

194:                                              ; preds = %193, %233
  %195 = phi ptr [ %235, %233 ], [ %68, %193 ]
  %196 = phi ptr [ %236, %233 ], [ %67, %193 ]
  %197 = phi ptr [ %237, %233 ], [ %66, %193 ]
  %198 = phi ptr [ %238, %233 ], [ %65, %193 ]
  %199 = phi ptr [ %239, %233 ], [ %62, %193 ]
  %200 = phi i32 [ %240, %233 ], [ %61, %193 ]
  %201 = load ptr, ptr %3, align 8, !tbaa !49
  %202 = ptrtoint ptr %199 to i64
  %203 = ptrtoint ptr %201 to i64
  %204 = add i64 %202, 1
  %205 = sub i64 %204, %203
  %206 = load i64, ptr %38, align 8, !tbaa !108
  %207 = icmp ugt i64 %205, %206
  br i1 %207, label %208, label %241

208:                                              ; preds = %194
  %209 = icmp eq i64 %206, 65536
  br i1 %209, label %233, label %210

210:                                              ; preds = %208
  %211 = shl i64 %206, 1
  %212 = tail call i64 @llvm.umin.i64(i64 %211, i64 65536)
  store i64 %212, ptr %38, align 8, !tbaa !108
  %213 = tail call ptr @realloc(ptr noundef %201, i64 noundef %212) #24
  store ptr %213, ptr %3, align 8, !tbaa !49
  %214 = icmp eq ptr %213, null
  br i1 %214, label %233, label %215

215:                                              ; preds = %210
  %216 = icmp eq ptr %201, %213
  br i1 %216, label %233, label %217

217:                                              ; preds = %215
  %218 = ptrtoint ptr %213 to i64
  %219 = sub i64 %218, %203
  %220 = shl i64 %219, 32
  %221 = ashr exact i64 %220, 32
  %222 = getelementptr inbounds i8, ptr %199, i64 %221
  %223 = getelementptr inbounds i8, ptr %196, i64 %221
  %224 = icmp eq ptr %195, null
  %225 = getelementptr inbounds i8, ptr %195, i64 %221
  %226 = select i1 %224, ptr null, ptr %225
  %227 = icmp eq ptr %197, null
  %228 = getelementptr inbounds i8, ptr %197, i64 %221
  %229 = select i1 %227, ptr null, ptr %228
  %230 = icmp eq ptr %198, null
  %231 = getelementptr inbounds i8, ptr %198, i64 %221
  %232 = select i1 %230, ptr null, ptr %231
  br label %233

233:                                              ; preds = %215, %217, %210, %208
  %234 = phi i1 [ false, %208 ], [ false, %210 ], [ true, %217 ], [ true, %215 ]
  %235 = phi ptr [ %195, %208 ], [ %195, %210 ], [ %226, %217 ], [ %195, %215 ]
  %236 = phi ptr [ %196, %208 ], [ %196, %210 ], [ %223, %217 ], [ %196, %215 ]
  %237 = phi ptr [ %197, %208 ], [ %197, %210 ], [ %229, %217 ], [ %197, %215 ]
  %238 = phi ptr [ %198, %208 ], [ %198, %210 ], [ %232, %217 ], [ %198, %215 ]
  %239 = phi ptr [ %199, %208 ], [ %199, %210 ], [ %222, %217 ], [ %199, %215 ]
  %240 = phi i32 [ 15, %208 ], [ 12, %210 ], [ %200, %217 ], [ %200, %215 ]
  br i1 %234, label %194, label %2788, !llvm.loop !110

241:                                              ; preds = %194
  %242 = getelementptr inbounds i8, ptr %199, i64 1
  store i8 10, ptr %199, align 1, !tbaa !51
  br label %2714

243:                                              ; preds = %76, %76
  %244 = and i64 %2, 1026
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %2567

246:                                              ; preds = %2552, %243, %76
  %247 = phi i8 [ %77, %76 ], [ %77, %243 ], [ %1378, %2552 ]
  %248 = icmp eq ptr %66, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = and i64 %2, 32
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  tail call void @free(ptr noundef %64)
  br label %2788

253:                                              ; preds = %249
  %254 = and i64 %2, 16
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %2567, label %256

256:                                              ; preds = %253, %246
  %257 = load ptr, ptr %5, align 8, !tbaa !38
  %258 = icmp ne i8 %247, 43
  %259 = zext i1 %258 to i32
  %260 = icmp ne i8 %247, 63
  %261 = zext i1 %260 to i32
  %262 = icmp eq ptr %257, %9
  br i1 %262, label %308, label %263

263:                                              ; preds = %256
  %264 = and i64 %2, 2
  %265 = icmp ne i64 %264, 0
  br label %266

266:                                              ; preds = %263, %298
  %267 = phi i32 [ %306, %298 ], [ %261, %263 ]
  %268 = phi i32 [ %303, %298 ], [ %259, %263 ]
  %269 = phi ptr [ %299, %298 ], [ %257, %263 ]
  %270 = getelementptr inbounds i8, ptr %269, i64 1
  %271 = load i8, ptr %269, align 1, !tbaa !51
  br i1 %58, label %272, label %276

272:                                              ; preds = %266
  %273 = zext i8 %271 to i64
  %274 = getelementptr inbounds i8, ptr %11, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !51
  br label %276

276:                                              ; preds = %272, %266
  %277 = phi i8 [ %275, %272 ], [ %271, %266 ]
  %278 = icmp eq i8 %277, 42
  br i1 %278, label %298, label %279

279:                                              ; preds = %276
  br i1 %265, label %281, label %280

280:                                              ; preds = %279
  switch i8 %277, label %281 [
    i8 63, label %298
    i8 43, label %298
  ]

281:                                              ; preds = %280, %279
  %282 = icmp eq i8 %277, 92
  %283 = and i1 %265, %282
  br i1 %283, label %284, label %297

284:                                              ; preds = %281
  %285 = icmp eq ptr %270, %9
  br i1 %285, label %286, label %287

286:                                              ; preds = %284
  store ptr %270, ptr %5, align 8, !tbaa !38
  tail call void @free(ptr noundef %64)
  br label %557

287:                                              ; preds = %284
  %288 = getelementptr inbounds i8, ptr %269, i64 2
  %289 = load i8, ptr %270, align 1, !tbaa !51
  br i1 %58, label %290, label %294

290:                                              ; preds = %287
  %291 = zext i8 %289 to i64
  %292 = getelementptr inbounds i8, ptr %11, i64 %291
  %293 = load i8, ptr %292, align 1, !tbaa !51
  br label %294

294:                                              ; preds = %290, %287
  %295 = phi i8 [ %293, %290 ], [ %289, %287 ]
  switch i8 %295, label %296 [
    i8 63, label %298
    i8 43, label %298
  ]

296:                                              ; preds = %294
  store ptr %269, ptr %5, align 8, !tbaa !38
  br label %312

297:                                              ; preds = %281
  store ptr %269, ptr %5, align 8, !tbaa !38
  br label %312

298:                                              ; preds = %294, %280, %294, %280, %276
  %299 = phi ptr [ %270, %276 ], [ %270, %280 ], [ %288, %294 ], [ %270, %280 ], [ %288, %294 ]
  %300 = phi i8 [ %277, %276 ], [ %277, %280 ], [ %295, %294 ], [ %277, %280 ], [ %295, %294 ]
  %301 = icmp ne i8 %300, 43
  %302 = zext i1 %301 to i32
  %303 = or i32 %268, %302
  %304 = icmp ne i8 %300, 63
  %305 = zext i1 %304 to i32
  %306 = or i32 %267, %305
  %307 = icmp eq ptr %299, %9
  br i1 %307, label %308, label %266, !llvm.loop !111

308:                                              ; preds = %298, %256
  %309 = phi ptr [ %257, %256 ], [ %299, %298 ]
  %310 = phi i32 [ %259, %256 ], [ %303, %298 ]
  %311 = phi i32 [ %261, %256 ], [ %306, %298 ]
  store ptr %309, ptr %5, align 8, !tbaa !38
  br label %312

312:                                              ; preds = %308, %297, %296
  %313 = phi i32 [ %310, %308 ], [ %268, %297 ], [ %268, %296 ]
  %314 = phi i32 [ %311, %308 ], [ %267, %297 ], [ %267, %296 ]
  br i1 %248, label %557, label %315

315:                                              ; preds = %312
  %316 = icmp eq i32 %314, 0
  br i1 %316, label %422, label %317

317:                                              ; preds = %315, %356
  %318 = phi ptr [ %358, %356 ], [ %68, %315 ]
  %319 = phi ptr [ %359, %356 ], [ %67, %315 ]
  %320 = phi ptr [ %360, %356 ], [ %66, %315 ]
  %321 = phi ptr [ %361, %356 ], [ %65, %315 ]
  %322 = phi ptr [ %362, %356 ], [ %62, %315 ]
  %323 = phi i32 [ %363, %356 ], [ %61, %315 ]
  %324 = load ptr, ptr %3, align 8, !tbaa !49
  %325 = ptrtoint ptr %322 to i64
  %326 = ptrtoint ptr %324 to i64
  %327 = add i64 %325, 3
  %328 = sub i64 %327, %326
  %329 = load i64, ptr %38, align 8, !tbaa !108
  %330 = icmp ugt i64 %328, %329
  br i1 %330, label %331, label %364

331:                                              ; preds = %317
  %332 = icmp eq i64 %329, 65536
  br i1 %332, label %356, label %333

333:                                              ; preds = %331
  %334 = shl i64 %329, 1
  %335 = tail call i64 @llvm.umin.i64(i64 %334, i64 65536)
  store i64 %335, ptr %38, align 8, !tbaa !108
  %336 = tail call ptr @realloc(ptr noundef %324, i64 noundef %335) #24
  store ptr %336, ptr %3, align 8, !tbaa !49
  %337 = icmp eq ptr %336, null
  br i1 %337, label %356, label %338

338:                                              ; preds = %333
  %339 = icmp eq ptr %324, %336
  br i1 %339, label %356, label %340

340:                                              ; preds = %338
  %341 = ptrtoint ptr %336 to i64
  %342 = sub i64 %341, %326
  %343 = shl i64 %342, 32
  %344 = ashr exact i64 %343, 32
  %345 = getelementptr inbounds i8, ptr %322, i64 %344
  %346 = getelementptr inbounds i8, ptr %319, i64 %344
  %347 = icmp eq ptr %318, null
  %348 = getelementptr inbounds i8, ptr %318, i64 %344
  %349 = select i1 %347, ptr null, ptr %348
  %350 = icmp eq ptr %320, null
  %351 = getelementptr inbounds i8, ptr %320, i64 %344
  %352 = select i1 %350, ptr null, ptr %351
  %353 = icmp eq ptr %321, null
  %354 = getelementptr inbounds i8, ptr %321, i64 %344
  %355 = select i1 %353, ptr null, ptr %354
  br label %356

356:                                              ; preds = %338, %340, %333, %331
  %357 = phi i1 [ false, %331 ], [ false, %333 ], [ true, %340 ], [ true, %338 ]
  %358 = phi ptr [ %318, %331 ], [ %318, %333 ], [ %349, %340 ], [ %318, %338 ]
  %359 = phi ptr [ %319, %331 ], [ %319, %333 ], [ %346, %340 ], [ %319, %338 ]
  %360 = phi ptr [ %320, %331 ], [ %320, %333 ], [ %352, %340 ], [ %320, %338 ]
  %361 = phi ptr [ %321, %331 ], [ %321, %333 ], [ %355, %340 ], [ %321, %338 ]
  %362 = phi ptr [ %322, %331 ], [ %322, %333 ], [ %345, %340 ], [ %322, %338 ]
  %363 = phi i32 [ 15, %331 ], [ 12, %333 ], [ %323, %340 ], [ %323, %338 ]
  br i1 %357, label %317, label %557, !llvm.loop !112

364:                                              ; preds = %317
  %365 = load ptr, ptr %5, align 8, !tbaa !38
  %366 = getelementptr inbounds i8, ptr %365, i64 -2
  br i1 %58, label %367, label %371

367:                                              ; preds = %364
  %368 = load i8, ptr %366, align 1, !tbaa !51
  %369 = zext i8 %368 to i64
  %370 = getelementptr inbounds i8, ptr %11, i64 %369
  br label %371

371:                                              ; preds = %364, %367
  %372 = phi ptr [ %370, %367 ], [ %366, %364 ]
  %373 = load i8, ptr %372, align 1, !tbaa !51
  %374 = sext i8 %373 to i32
  br i1 %58, label %375, label %379

375:                                              ; preds = %371
  %376 = getelementptr inbounds i8, ptr %11, i64 46
  %377 = load i8, ptr %376, align 1, !tbaa !51
  %378 = sext i8 %377 to i32
  br label %379

379:                                              ; preds = %371, %375
  %380 = phi i32 [ %378, %375 ], [ 46, %371 ]
  %381 = icmp eq i32 %380, %374
  %382 = icmp ne i32 %313, 0
  %383 = select i1 %381, i1 %382, i1 false
  br i1 %383, label %384, label %406

384:                                              ; preds = %379
  %385 = load ptr, ptr %5, align 8, !tbaa !38
  %386 = icmp ult ptr %385, %9
  br i1 %386, label %387, label %406

387:                                              ; preds = %384
  br i1 %58, label %388, label %392

388:                                              ; preds = %387
  %389 = load i8, ptr %385, align 1, !tbaa !51
  %390 = zext i8 %389 to i64
  %391 = getelementptr inbounds i8, ptr %11, i64 %390
  br label %392

392:                                              ; preds = %387, %388
  %393 = phi ptr [ %391, %388 ], [ %385, %387 ]
  %394 = load i8, ptr %393, align 1, !tbaa !51
  %395 = sext i8 %394 to i32
  br i1 %58, label %396, label %400

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %11, i64 10
  %398 = load i8, ptr %397, align 1, !tbaa !51
  %399 = sext i8 %398 to i32
  br label %400

400:                                              ; preds = %392, %396
  %401 = phi i32 [ %399, %396 ], [ 10, %392 ]
  %402 = and i64 %2, 64
  %403 = icmp eq i64 %402, 0
  %404 = icmp eq i32 %401, %395
  %405 = and i1 %403, %404
  br i1 %405, label %408, label %406

406:                                              ; preds = %400, %384, %379
  %407 = getelementptr inbounds i8, ptr %320, i64 -3
  br label %408

408:                                              ; preds = %400, %406
  %409 = phi ptr [ %407, %406 ], [ %320, %400 ]
  %410 = phi i8 [ 18, %406 ], [ 13, %400 ]
  %411 = phi i32 [ 0, %406 ], [ 1, %400 ]
  %412 = ptrtoint ptr %409 to i64
  %413 = sub i64 %412, %325
  %414 = trunc i64 %413 to i32
  %415 = add i32 %414, -3
  store i8 %410, ptr %322, align 1, !tbaa !51
  %416 = trunc i32 %415 to i8
  %417 = getelementptr inbounds i8, ptr %322, i64 1
  store i8 %416, ptr %417, align 1, !tbaa !51
  %418 = lshr i32 %415, 8
  %419 = trunc i32 %418 to i8
  %420 = getelementptr inbounds i8, ptr %322, i64 2
  store i8 %419, ptr %420, align 1, !tbaa !51
  %421 = getelementptr inbounds i8, ptr %322, i64 3
  br label %422

422:                                              ; preds = %408, %315
  %423 = phi i32 [ %411, %408 ], [ 0, %315 ]
  %424 = phi ptr [ %318, %408 ], [ %68, %315 ]
  %425 = phi ptr [ %319, %408 ], [ %67, %315 ]
  %426 = phi ptr [ %320, %408 ], [ %66, %315 ]
  %427 = phi ptr [ %321, %408 ], [ %65, %315 ]
  %428 = phi ptr [ %421, %408 ], [ %62, %315 ]
  %429 = phi i32 [ %323, %408 ], [ %61, %315 ]
  br label %430

430:                                              ; preds = %469, %422
  %431 = phi ptr [ %424, %422 ], [ %471, %469 ]
  %432 = phi ptr [ %425, %422 ], [ %472, %469 ]
  %433 = phi ptr [ %426, %422 ], [ %473, %469 ]
  %434 = phi ptr [ %427, %422 ], [ %474, %469 ]
  %435 = phi ptr [ %428, %422 ], [ %475, %469 ]
  %436 = phi i32 [ %429, %422 ], [ %476, %469 ]
  %437 = load ptr, ptr %3, align 8, !tbaa !49
  %438 = ptrtoint ptr %435 to i64
  %439 = ptrtoint ptr %437 to i64
  %440 = add i64 %438, 3
  %441 = sub i64 %440, %439
  %442 = load i64, ptr %38, align 8, !tbaa !108
  %443 = icmp ugt i64 %441, %442
  br i1 %443, label %444, label %477

444:                                              ; preds = %430
  %445 = icmp eq i64 %442, 65536
  br i1 %445, label %469, label %446

446:                                              ; preds = %444
  %447 = shl i64 %442, 1
  %448 = tail call i64 @llvm.umin.i64(i64 %447, i64 65536)
  store i64 %448, ptr %38, align 8, !tbaa !108
  %449 = tail call ptr @realloc(ptr noundef %437, i64 noundef %448) #24
  store ptr %449, ptr %3, align 8, !tbaa !49
  %450 = icmp eq ptr %449, null
  br i1 %450, label %469, label %451

451:                                              ; preds = %446
  %452 = icmp eq ptr %437, %449
  br i1 %452, label %469, label %453

453:                                              ; preds = %451
  %454 = ptrtoint ptr %449 to i64
  %455 = sub i64 %454, %439
  %456 = shl i64 %455, 32
  %457 = ashr exact i64 %456, 32
  %458 = getelementptr inbounds i8, ptr %435, i64 %457
  %459 = getelementptr inbounds i8, ptr %432, i64 %457
  %460 = icmp eq ptr %431, null
  %461 = getelementptr inbounds i8, ptr %431, i64 %457
  %462 = select i1 %460, ptr null, ptr %461
  %463 = icmp eq ptr %433, null
  %464 = getelementptr inbounds i8, ptr %433, i64 %457
  %465 = select i1 %463, ptr null, ptr %464
  %466 = icmp eq ptr %434, null
  %467 = getelementptr inbounds i8, ptr %434, i64 %457
  %468 = select i1 %466, ptr null, ptr %467
  br label %469

469:                                              ; preds = %451, %453, %446, %444
  %470 = phi i1 [ false, %444 ], [ false, %446 ], [ true, %453 ], [ true, %451 ]
  %471 = phi ptr [ %431, %444 ], [ %431, %446 ], [ %462, %453 ], [ %431, %451 ]
  %472 = phi ptr [ %432, %444 ], [ %432, %446 ], [ %459, %453 ], [ %432, %451 ]
  %473 = phi ptr [ %433, %444 ], [ %433, %446 ], [ %465, %453 ], [ %433, %451 ]
  %474 = phi ptr [ %434, %444 ], [ %434, %446 ], [ %468, %453 ], [ %434, %451 ]
  %475 = phi ptr [ %435, %444 ], [ %435, %446 ], [ %458, %453 ], [ %435, %451 ]
  %476 = phi i32 [ 15, %444 ], [ 12, %446 ], [ %436, %453 ], [ %436, %451 ]
  br i1 %470, label %430, label %557, !llvm.loop !113

477:                                              ; preds = %430
  %478 = and i32 %423, 255
  %479 = icmp eq i32 %478, 0
  %480 = getelementptr inbounds i8, ptr %435, i64 3
  %481 = ptrtoint ptr %480 to i64
  %482 = ptrtoint ptr %433 to i64
  %483 = sub i64 %481, %482
  %484 = trunc i64 %483 to i32
  %485 = add i32 %484, -3
  %486 = icmp eq ptr %435, %433
  br i1 %486, label %494, label %487

487:                                              ; preds = %477, %487
  %488 = phi ptr [ %492, %487 ], [ %480, %477 ]
  %489 = phi ptr [ %490, %487 ], [ %435, %477 ]
  %490 = getelementptr inbounds i8, ptr %489, i64 -1
  %491 = load i8, ptr %490, align 1, !tbaa !51
  %492 = getelementptr inbounds i8, ptr %488, i64 -1
  store i8 %491, ptr %492, align 1, !tbaa !51
  %493 = icmp eq ptr %490, %433
  br i1 %493, label %494, label %487, !llvm.loop !114

494:                                              ; preds = %487, %477
  %495 = select i1 %479, i8 15, i8 16
  store i8 %495, ptr %433, align 1, !tbaa !51
  %496 = trunc i32 %485 to i8
  %497 = getelementptr inbounds i8, ptr %433, i64 1
  store i8 %496, ptr %497, align 1, !tbaa !51
  %498 = lshr i32 %485, 8
  %499 = trunc i32 %498 to i8
  %500 = getelementptr inbounds i8, ptr %433, i64 2
  store i8 %499, ptr %500, align 1, !tbaa !51
  %501 = icmp eq i32 %313, 0
  br i1 %501, label %502, label %557

502:                                              ; preds = %494, %537
  %503 = phi ptr [ %539, %537 ], [ %431, %494 ]
  %504 = phi ptr [ %540, %537 ], [ %432, %494 ]
  %505 = phi ptr [ %541, %537 ], [ %433, %494 ]
  %506 = phi ptr [ %542, %537 ], [ %480, %494 ]
  %507 = phi i32 [ %543, %537 ], [ %436, %494 ]
  %508 = load ptr, ptr %3, align 8, !tbaa !49
  %509 = ptrtoint ptr %506 to i64
  %510 = ptrtoint ptr %508 to i64
  %511 = add i64 %509, 3
  %512 = sub i64 %511, %510
  %513 = load i64, ptr %38, align 8, !tbaa !108
  %514 = icmp ugt i64 %512, %513
  br i1 %514, label %515, label %544

515:                                              ; preds = %502
  %516 = icmp eq i64 %513, 65536
  br i1 %516, label %537, label %517

517:                                              ; preds = %515
  %518 = shl i64 %513, 1
  %519 = tail call i64 @llvm.umin.i64(i64 %518, i64 65536)
  store i64 %519, ptr %38, align 8, !tbaa !108
  %520 = tail call ptr @realloc(ptr noundef %508, i64 noundef %519) #24
  store ptr %520, ptr %3, align 8, !tbaa !49
  %521 = icmp eq ptr %520, null
  br i1 %521, label %537, label %522

522:                                              ; preds = %517
  %523 = icmp eq ptr %508, %520
  br i1 %523, label %537, label %524

524:                                              ; preds = %522
  %525 = ptrtoint ptr %520 to i64
  %526 = sub i64 %525, %510
  %527 = shl i64 %526, 32
  %528 = ashr exact i64 %527, 32
  %529 = getelementptr inbounds i8, ptr %506, i64 %528
  %530 = getelementptr inbounds i8, ptr %504, i64 %528
  %531 = icmp eq ptr %503, null
  %532 = getelementptr inbounds i8, ptr %503, i64 %528
  %533 = select i1 %531, ptr null, ptr %532
  %534 = icmp eq ptr %505, null
  %535 = getelementptr inbounds i8, ptr %505, i64 %528
  %536 = select i1 %534, ptr null, ptr %535
  br label %537

537:                                              ; preds = %522, %524, %517, %515
  %538 = phi i1 [ false, %515 ], [ false, %517 ], [ true, %524 ], [ true, %522 ]
  %539 = phi ptr [ %503, %515 ], [ %503, %517 ], [ %533, %524 ], [ %503, %522 ]
  %540 = phi ptr [ %504, %515 ], [ %504, %517 ], [ %530, %524 ], [ %504, %522 ]
  %541 = phi ptr [ %505, %515 ], [ %505, %517 ], [ %536, %524 ], [ %505, %522 ]
  %542 = phi ptr [ %506, %515 ], [ %506, %517 ], [ %529, %524 ], [ %506, %522 ]
  %543 = phi i32 [ 15, %515 ], [ 12, %517 ], [ %507, %524 ], [ %507, %522 ]
  br i1 %538, label %502, label %557, !llvm.loop !115

544:                                              ; preds = %502
  %545 = getelementptr inbounds i8, ptr %506, i64 3
  %546 = icmp eq ptr %506, %505
  br i1 %546, label %554, label %547

547:                                              ; preds = %544, %547
  %548 = phi ptr [ %552, %547 ], [ %545, %544 ]
  %549 = phi ptr [ %550, %547 ], [ %506, %544 ]
  %550 = getelementptr inbounds i8, ptr %549, i64 -1
  %551 = load i8, ptr %550, align 1, !tbaa !51
  %552 = getelementptr inbounds i8, ptr %548, i64 -1
  store i8 %551, ptr %552, align 1, !tbaa !51
  %553 = icmp eq ptr %550, %505
  br i1 %553, label %554, label %547, !llvm.loop !114

554:                                              ; preds = %547, %544
  store i8 19, ptr %505, align 1, !tbaa !51
  %555 = getelementptr inbounds i8, ptr %505, i64 1
  store i8 3, ptr %555, align 1, !tbaa !51
  %556 = getelementptr inbounds i8, ptr %505, i64 2
  store i8 0, ptr %556, align 1, !tbaa !51
  br label %557

557:                                              ; preds = %356, %469, %537, %494, %554, %312, %286
  %558 = phi i32 [ 1, %286 ], [ 6, %312 ], [ 0, %554 ], [ 0, %494 ], [ 1, %537 ], [ 1, %469 ], [ 1, %356 ]
  %559 = phi ptr [ %68, %286 ], [ %68, %312 ], [ %503, %554 ], [ %431, %494 ], [ %539, %537 ], [ %471, %469 ], [ %358, %356 ]
  %560 = phi ptr [ %67, %286 ], [ %67, %312 ], [ %504, %554 ], [ %432, %494 ], [ %540, %537 ], [ %472, %469 ], [ %359, %356 ]
  %561 = phi ptr [ %66, %286 ], [ null, %312 ], [ %505, %554 ], [ %433, %494 ], [ %541, %537 ], [ %473, %469 ], [ %360, %356 ]
  %562 = phi ptr [ %65, %286 ], [ %65, %312 ], [ null, %554 ], [ null, %494 ], [ null, %537 ], [ %474, %469 ], [ %361, %356 ]
  %563 = phi ptr [ %62, %286 ], [ %62, %312 ], [ %545, %554 ], [ %480, %494 ], [ %542, %537 ], [ %475, %469 ], [ %362, %356 ]
  %564 = phi i32 [ 5, %286 ], [ %61, %312 ], [ %507, %554 ], [ %436, %494 ], [ %543, %537 ], [ %476, %469 ], [ %363, %356 ]
  switch i32 %558, label %2788 [
    i32 0, label %2714
    i32 6, label %2714
  ]

565:                                              ; preds = %76, %604
  %566 = phi ptr [ %606, %604 ], [ %68, %76 ]
  %567 = phi ptr [ %607, %604 ], [ %67, %76 ]
  %568 = phi ptr [ %608, %604 ], [ %62, %76 ]
  %569 = phi ptr [ %609, %604 ], [ %65, %76 ]
  %570 = phi ptr [ %610, %604 ], [ %62, %76 ]
  %571 = phi i32 [ %611, %604 ], [ %61, %76 ]
  %572 = load ptr, ptr %3, align 8, !tbaa !49
  %573 = ptrtoint ptr %570 to i64
  %574 = ptrtoint ptr %572 to i64
  %575 = add i64 %573, 1
  %576 = sub i64 %575, %574
  %577 = load i64, ptr %38, align 8, !tbaa !108
  %578 = icmp ugt i64 %576, %577
  br i1 %578, label %579, label %612

579:                                              ; preds = %565
  %580 = icmp eq i64 %577, 65536
  br i1 %580, label %604, label %581

581:                                              ; preds = %579
  %582 = shl i64 %577, 1
  %583 = tail call i64 @llvm.umin.i64(i64 %582, i64 65536)
  store i64 %583, ptr %38, align 8, !tbaa !108
  %584 = tail call ptr @realloc(ptr noundef %572, i64 noundef %583) #24
  store ptr %584, ptr %3, align 8, !tbaa !49
  %585 = icmp eq ptr %584, null
  br i1 %585, label %604, label %586

586:                                              ; preds = %581
  %587 = icmp eq ptr %572, %584
  br i1 %587, label %604, label %588

588:                                              ; preds = %586
  %589 = ptrtoint ptr %584 to i64
  %590 = sub i64 %589, %574
  %591 = shl i64 %590, 32
  %592 = ashr exact i64 %591, 32
  %593 = getelementptr inbounds i8, ptr %570, i64 %592
  %594 = getelementptr inbounds i8, ptr %567, i64 %592
  %595 = icmp eq ptr %566, null
  %596 = getelementptr inbounds i8, ptr %566, i64 %592
  %597 = select i1 %595, ptr null, ptr %596
  %598 = icmp eq ptr %568, null
  %599 = getelementptr inbounds i8, ptr %568, i64 %592
  %600 = select i1 %598, ptr null, ptr %599
  %601 = icmp eq ptr %569, null
  %602 = getelementptr inbounds i8, ptr %569, i64 %592
  %603 = select i1 %601, ptr null, ptr %602
  br label %604

604:                                              ; preds = %586, %588, %581, %579
  %605 = phi i1 [ false, %579 ], [ false, %581 ], [ true, %588 ], [ true, %586 ]
  %606 = phi ptr [ %566, %579 ], [ %566, %581 ], [ %597, %588 ], [ %566, %586 ]
  %607 = phi ptr [ %567, %579 ], [ %567, %581 ], [ %594, %588 ], [ %567, %586 ]
  %608 = phi ptr [ %568, %579 ], [ %568, %581 ], [ %600, %588 ], [ %568, %586 ]
  %609 = phi ptr [ %569, %579 ], [ %569, %581 ], [ %603, %588 ], [ %569, %586 ]
  %610 = phi ptr [ %570, %579 ], [ %570, %581 ], [ %593, %588 ], [ %570, %586 ]
  %611 = phi i32 [ 15, %579 ], [ 12, %581 ], [ %571, %588 ], [ %571, %586 ]
  br i1 %605, label %565, label %2788, !llvm.loop !116

612:                                              ; preds = %565
  %613 = getelementptr inbounds i8, ptr %570, i64 1
  store i8 3, ptr %570, align 1, !tbaa !51
  br label %2714

614:                                              ; preds = %76
  %615 = icmp eq ptr %70, %9
  br i1 %615, label %616, label %617

616:                                              ; preds = %614
  tail call void @free(ptr noundef %64)
  br label %1350

617:                                              ; preds = %614, %656
  %618 = phi ptr [ %658, %656 ], [ %68, %614 ]
  %619 = phi ptr [ %659, %656 ], [ %67, %614 ]
  %620 = phi ptr [ %660, %656 ], [ %66, %614 ]
  %621 = phi ptr [ %661, %656 ], [ %65, %614 ]
  %622 = phi ptr [ %662, %656 ], [ %62, %614 ]
  %623 = phi i32 [ %663, %656 ], [ %61, %614 ]
  %624 = load ptr, ptr %3, align 8, !tbaa !49
  %625 = ptrtoint ptr %622 to i64
  %626 = ptrtoint ptr %624 to i64
  %627 = add i64 %625, 34
  %628 = sub i64 %627, %626
  %629 = load i64, ptr %38, align 8, !tbaa !108
  %630 = icmp ugt i64 %628, %629
  br i1 %630, label %631, label %664

631:                                              ; preds = %617
  %632 = icmp eq i64 %629, 65536
  br i1 %632, label %656, label %633

633:                                              ; preds = %631
  %634 = shl i64 %629, 1
  %635 = tail call i64 @llvm.umin.i64(i64 %634, i64 65536)
  store i64 %635, ptr %38, align 8, !tbaa !108
  %636 = tail call ptr @realloc(ptr noundef %624, i64 noundef %635) #24
  store ptr %636, ptr %3, align 8, !tbaa !49
  %637 = icmp eq ptr %636, null
  br i1 %637, label %656, label %638

638:                                              ; preds = %633
  %639 = icmp eq ptr %624, %636
  br i1 %639, label %656, label %640

640:                                              ; preds = %638
  %641 = ptrtoint ptr %636 to i64
  %642 = sub i64 %641, %626
  %643 = shl i64 %642, 32
  %644 = ashr exact i64 %643, 32
  %645 = getelementptr inbounds i8, ptr %622, i64 %644
  %646 = getelementptr inbounds i8, ptr %619, i64 %644
  %647 = icmp eq ptr %618, null
  %648 = getelementptr inbounds i8, ptr %618, i64 %644
  %649 = select i1 %647, ptr null, ptr %648
  %650 = icmp eq ptr %620, null
  %651 = getelementptr inbounds i8, ptr %620, i64 %644
  %652 = select i1 %650, ptr null, ptr %651
  %653 = icmp eq ptr %621, null
  %654 = getelementptr inbounds i8, ptr %621, i64 %644
  %655 = select i1 %653, ptr null, ptr %654
  br label %656

656:                                              ; preds = %638, %640, %633, %631
  %657 = phi i1 [ false, %631 ], [ false, %633 ], [ true, %640 ], [ true, %638 ]
  %658 = phi ptr [ %618, %631 ], [ %618, %633 ], [ %649, %640 ], [ %618, %638 ]
  %659 = phi ptr [ %619, %631 ], [ %619, %633 ], [ %646, %640 ], [ %619, %638 ]
  %660 = phi ptr [ %620, %631 ], [ %620, %633 ], [ %652, %640 ], [ %620, %638 ]
  %661 = phi ptr [ %621, %631 ], [ %621, %633 ], [ %655, %640 ], [ %621, %638 ]
  %662 = phi ptr [ %622, %631 ], [ %622, %633 ], [ %645, %640 ], [ %622, %638 ]
  %663 = phi i32 [ 15, %631 ], [ 12, %633 ], [ %623, %640 ], [ %623, %638 ]
  br i1 %657, label %617, label %1350, !llvm.loop !117

664:                                              ; preds = %617, %703
  %665 = phi ptr [ %705, %703 ], [ %618, %617 ]
  %666 = phi ptr [ %706, %703 ], [ %619, %617 ]
  %667 = phi ptr [ %707, %703 ], [ %622, %617 ]
  %668 = phi ptr [ %708, %703 ], [ %621, %617 ]
  %669 = phi ptr [ %709, %703 ], [ %622, %617 ]
  %670 = phi i32 [ %710, %703 ], [ %623, %617 ]
  %671 = load ptr, ptr %3, align 8, !tbaa !49
  %672 = ptrtoint ptr %669 to i64
  %673 = ptrtoint ptr %671 to i64
  %674 = add i64 %672, 1
  %675 = sub i64 %674, %673
  %676 = load i64, ptr %38, align 8, !tbaa !108
  %677 = icmp ugt i64 %675, %676
  br i1 %677, label %678, label %711

678:                                              ; preds = %664
  %679 = icmp eq i64 %676, 65536
  br i1 %679, label %703, label %680

680:                                              ; preds = %678
  %681 = shl i64 %676, 1
  %682 = tail call i64 @llvm.umin.i64(i64 %681, i64 65536)
  store i64 %682, ptr %38, align 8, !tbaa !108
  %683 = tail call ptr @realloc(ptr noundef %671, i64 noundef %682) #24
  store ptr %683, ptr %3, align 8, !tbaa !49
  %684 = icmp eq ptr %683, null
  br i1 %684, label %703, label %685

685:                                              ; preds = %680
  %686 = icmp eq ptr %671, %683
  br i1 %686, label %703, label %687

687:                                              ; preds = %685
  %688 = ptrtoint ptr %683 to i64
  %689 = sub i64 %688, %673
  %690 = shl i64 %689, 32
  %691 = ashr exact i64 %690, 32
  %692 = getelementptr inbounds i8, ptr %669, i64 %691
  %693 = getelementptr inbounds i8, ptr %666, i64 %691
  %694 = icmp eq ptr %665, null
  %695 = getelementptr inbounds i8, ptr %665, i64 %691
  %696 = select i1 %694, ptr null, ptr %695
  %697 = icmp eq ptr %667, null
  %698 = getelementptr inbounds i8, ptr %667, i64 %691
  %699 = select i1 %697, ptr null, ptr %698
  %700 = icmp eq ptr %668, null
  %701 = getelementptr inbounds i8, ptr %668, i64 %691
  %702 = select i1 %700, ptr null, ptr %701
  br label %703

703:                                              ; preds = %685, %687, %680, %678
  %704 = phi i1 [ false, %678 ], [ false, %680 ], [ true, %687 ], [ true, %685 ]
  %705 = phi ptr [ %665, %678 ], [ %665, %680 ], [ %696, %687 ], [ %665, %685 ]
  %706 = phi ptr [ %666, %678 ], [ %666, %680 ], [ %693, %687 ], [ %666, %685 ]
  %707 = phi ptr [ %667, %678 ], [ %667, %680 ], [ %699, %687 ], [ %667, %685 ]
  %708 = phi ptr [ %668, %678 ], [ %668, %680 ], [ %702, %687 ], [ %668, %685 ]
  %709 = phi ptr [ %669, %678 ], [ %669, %680 ], [ %692, %687 ], [ %669, %685 ]
  %710 = phi i32 [ 15, %678 ], [ 12, %680 ], [ %670, %687 ], [ %670, %685 ]
  br i1 %704, label %664, label %1350, !llvm.loop !118

711:                                              ; preds = %664
  %712 = load i8, ptr %70, align 1, !tbaa !51
  %713 = icmp eq i8 %712, 94
  %714 = select i1 %713, i8 5, i8 4
  %715 = getelementptr inbounds i8, ptr %669, i64 1
  store i8 %714, ptr %669, align 1, !tbaa !51
  %716 = load ptr, ptr %5, align 8, !tbaa !38
  %717 = load i8, ptr %716, align 1, !tbaa !51
  %718 = icmp eq i8 %717, 94
  br i1 %718, label %719, label %721

719:                                              ; preds = %711
  %720 = getelementptr inbounds i8, ptr %716, i64 1
  store ptr %720, ptr %5, align 8, !tbaa !38
  br label %721

721:                                              ; preds = %719, %711
  %722 = load ptr, ptr %5, align 8, !tbaa !38
  br label %723

723:                                              ; preds = %762, %721
  %724 = phi ptr [ %665, %721 ], [ %764, %762 ]
  %725 = phi ptr [ %666, %721 ], [ %765, %762 ]
  %726 = phi ptr [ %667, %721 ], [ %766, %762 ]
  %727 = phi ptr [ %668, %721 ], [ %767, %762 ]
  %728 = phi ptr [ %715, %721 ], [ %768, %762 ]
  %729 = phi i32 [ %670, %721 ], [ %769, %762 ]
  %730 = load ptr, ptr %3, align 8, !tbaa !49
  %731 = ptrtoint ptr %728 to i64
  %732 = ptrtoint ptr %730 to i64
  %733 = add i64 %731, 1
  %734 = sub i64 %733, %732
  %735 = load i64, ptr %38, align 8, !tbaa !108
  %736 = icmp ugt i64 %734, %735
  br i1 %736, label %737, label %770

737:                                              ; preds = %723
  %738 = icmp eq i64 %735, 65536
  br i1 %738, label %762, label %739

739:                                              ; preds = %737
  %740 = shl i64 %735, 1
  %741 = tail call i64 @llvm.umin.i64(i64 %740, i64 65536)
  store i64 %741, ptr %38, align 8, !tbaa !108
  %742 = tail call ptr @realloc(ptr noundef %730, i64 noundef %741) #24
  store ptr %742, ptr %3, align 8, !tbaa !49
  %743 = icmp eq ptr %742, null
  br i1 %743, label %762, label %744

744:                                              ; preds = %739
  %745 = icmp eq ptr %730, %742
  br i1 %745, label %762, label %746

746:                                              ; preds = %744
  %747 = ptrtoint ptr %742 to i64
  %748 = sub i64 %747, %732
  %749 = shl i64 %748, 32
  %750 = ashr exact i64 %749, 32
  %751 = getelementptr inbounds i8, ptr %728, i64 %750
  %752 = getelementptr inbounds i8, ptr %725, i64 %750
  %753 = icmp eq ptr %724, null
  %754 = getelementptr inbounds i8, ptr %724, i64 %750
  %755 = select i1 %753, ptr null, ptr %754
  %756 = icmp eq ptr %726, null
  %757 = getelementptr inbounds i8, ptr %726, i64 %750
  %758 = select i1 %756, ptr null, ptr %757
  %759 = icmp eq ptr %727, null
  %760 = getelementptr inbounds i8, ptr %727, i64 %750
  %761 = select i1 %759, ptr null, ptr %760
  br label %762

762:                                              ; preds = %744, %746, %739, %737
  %763 = phi i1 [ false, %737 ], [ false, %739 ], [ true, %746 ], [ true, %744 ]
  %764 = phi ptr [ %724, %737 ], [ %724, %739 ], [ %755, %746 ], [ %724, %744 ]
  %765 = phi ptr [ %725, %737 ], [ %725, %739 ], [ %752, %746 ], [ %725, %744 ]
  %766 = phi ptr [ %726, %737 ], [ %726, %739 ], [ %758, %746 ], [ %726, %744 ]
  %767 = phi ptr [ %727, %737 ], [ %727, %739 ], [ %761, %746 ], [ %727, %744 ]
  %768 = phi ptr [ %728, %737 ], [ %728, %739 ], [ %751, %746 ], [ %728, %744 ]
  %769 = phi i32 [ 15, %737 ], [ 12, %739 ], [ %729, %746 ], [ %729, %744 ]
  br i1 %763, label %723, label %1350, !llvm.loop !119

770:                                              ; preds = %723
  %771 = and i64 %2, 256
  %772 = icmp eq i64 %771, 0
  %773 = getelementptr inbounds i8, ptr %728, i64 1
  store i8 32, ptr %728, align 1, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %773, i8 0, i64 32, i1 false)
  %774 = getelementptr inbounds i8, ptr %728, i64 -1
  %775 = load i8, ptr %774, align 1, !tbaa !51
  %776 = icmp ne i8 %775, 5
  %777 = or i1 %772, %776
  br i1 %777, label %782, label %778

778:                                              ; preds = %770
  %779 = getelementptr inbounds i8, ptr %728, i64 2
  %780 = load i8, ptr %779, align 1, !tbaa !51
  %781 = or i8 %780, 4
  store i8 %781, ptr %779, align 1, !tbaa !51
  br label %782

782:                                              ; preds = %778, %770
  %783 = load ptr, ptr %5, align 8, !tbaa !38
  %784 = icmp eq ptr %783, %9
  br i1 %784, label %793, label %785

785:                                              ; preds = %782
  %786 = and i64 %2, 1
  %787 = icmp ne i64 %786, 0
  br label %788

788:                                              ; preds = %785, %1329
  %789 = phi ptr [ %783, %785 ], [ %1333, %1329 ]
  %790 = phi i32 [ %729, %785 ], [ %1332, %1329 ]
  %791 = phi i8 [ 0, %785 ], [ %1331, %1329 ]
  %792 = phi i32 [ -1, %785 ], [ %1330, %1329 ]
  br label %794

793:                                              ; preds = %1329, %817, %782
  tail call void @free(ptr noundef %64)
  br label %1350

794:                                              ; preds = %788, %817
  %795 = phi ptr [ %789, %788 ], [ %827, %817 ]
  %796 = phi i32 [ %792, %788 ], [ %819, %817 ]
  %797 = getelementptr inbounds i8, ptr %795, i64 1
  store ptr %797, ptr %5, align 8, !tbaa !38
  %798 = load i8, ptr %795, align 1, !tbaa !51
  br i1 %58, label %799, label %803

799:                                              ; preds = %794
  %800 = zext i8 %798 to i64
  %801 = getelementptr inbounds i8, ptr %11, i64 %800
  %802 = load i8, ptr %801, align 1, !tbaa !51
  br label %803

803:                                              ; preds = %799, %794
  %804 = phi i8 [ %802, %799 ], [ %798, %794 ]
  %805 = icmp eq i8 %804, 92
  %806 = select i1 %787, i1 %805, i1 false
  br i1 %806, label %807, label %829

807:                                              ; preds = %803
  %808 = icmp eq ptr %797, %9
  br i1 %808, label %809, label %810

809:                                              ; preds = %807
  tail call void @free(ptr noundef %64)
  br label %1350

810:                                              ; preds = %807
  %811 = getelementptr inbounds i8, ptr %795, i64 2
  store ptr %811, ptr %5, align 8, !tbaa !38
  %812 = load i8, ptr %797, align 1, !tbaa !51
  br i1 %58, label %813, label %817

813:                                              ; preds = %810
  %814 = zext i8 %812 to i64
  %815 = getelementptr inbounds i8, ptr %11, i64 %814
  %816 = load i8, ptr %815, align 1, !tbaa !51
  br label %817

817:                                              ; preds = %813, %810
  %818 = phi i8 [ %816, %813 ], [ %812, %810 ]
  %819 = zext i8 %818 to i32
  %820 = and i8 %818, 7
  %821 = shl nuw i8 1, %820
  %822 = lshr i32 %819, 3
  %823 = zext nneg i32 %822 to i64
  %824 = getelementptr inbounds i8, ptr %773, i64 %823
  %825 = load i8, ptr %824, align 1, !tbaa !51
  %826 = or i8 %821, %825
  store i8 %826, ptr %824, align 1, !tbaa !51
  %827 = load ptr, ptr %5, align 8, !tbaa !38
  %828 = icmp eq ptr %827, %9
  br i1 %828, label %793, label %794, !llvm.loop !120

829:                                              ; preds = %803
  %830 = zext i8 %804 to i32
  %831 = icmp ne i8 %804, 93
  %832 = icmp eq ptr %795, %722
  %833 = select i1 %831, i1 true, i1 %832
  br i1 %833, label %837, label %834

834:                                              ; preds = %829
  %835 = load i8, ptr %728, align 1, !tbaa !51
  %836 = icmp eq i8 %835, 0
  br i1 %836, label %1346, label %1335

837:                                              ; preds = %829
  %838 = icmp ne i8 %791, 0
  %839 = icmp eq i8 %804, 45
  %840 = select i1 %838, i1 %839, i1 false
  br i1 %840, label %841, label %845

841:                                              ; preds = %837
  %842 = load i8, ptr %797, align 1, !tbaa !51
  %843 = icmp eq i8 %842, 93
  br i1 %843, label %845, label %844

844:                                              ; preds = %841
  tail call void @free(ptr noundef %64)
  br label %1350

845:                                              ; preds = %841, %837
  br i1 %839, label %846, label %871

846:                                              ; preds = %845
  %847 = getelementptr inbounds i8, ptr %795, i64 -1
  %848 = icmp ult ptr %847, %0
  br i1 %848, label %852, label %849

849:                                              ; preds = %846
  %850 = load i8, ptr %847, align 1, !tbaa !51
  %851 = icmp eq i8 %850, 91
  br i1 %851, label %871, label %852

852:                                              ; preds = %849, %846
  %853 = getelementptr inbounds i8, ptr %795, i64 -2
  %854 = icmp ult ptr %853, %0
  br i1 %854, label %861, label %855

855:                                              ; preds = %852
  %856 = load i8, ptr %853, align 1, !tbaa !51
  %857 = icmp eq i8 %856, 91
  br i1 %857, label %858, label %861

858:                                              ; preds = %855
  %859 = load i8, ptr %847, align 1, !tbaa !51
  %860 = icmp eq i8 %859, 94
  br i1 %860, label %871, label %861

861:                                              ; preds = %858, %855, %852
  %862 = load i8, ptr %797, align 1, !tbaa !51
  %863 = icmp eq i8 %862, 93
  br i1 %863, label %871, label %864

864:                                              ; preds = %861
  %865 = call fastcc i32 @byte_compile_range(i32 noundef %796, ptr noundef nonnull %5, ptr noundef %9, ptr noundef %11, i64 noundef %2, ptr noundef nonnull %773), !range !121
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %868, label %867

867:                                              ; preds = %864
  tail call void @free(ptr noundef %64)
  br label %868

868:                                              ; preds = %864, %867
  %869 = phi i32 [ %796, %867 ], [ -1, %864 ]
  %870 = phi i32 [ %865, %867 ], [ %790, %864 ]
  br i1 %866, label %1329, label %1350

871:                                              ; preds = %861, %858, %849, %845
  %872 = load i8, ptr %797, align 1, !tbaa !51
  %873 = icmp eq i8 %872, 45
  br i1 %873, label %874, label %888

874:                                              ; preds = %871
  %875 = getelementptr inbounds i8, ptr %795, i64 2
  %876 = load i8, ptr %875, align 1, !tbaa !51
  %877 = icmp eq i8 %876, 93
  br i1 %877, label %888, label %878

878:                                              ; preds = %874
  %879 = icmp eq ptr %797, %9
  br i1 %879, label %884, label %880

880:                                              ; preds = %878
  store ptr %875, ptr %5, align 8, !tbaa !38
  %881 = call fastcc i32 @byte_compile_range(i32 noundef %830, ptr noundef nonnull %5, ptr noundef %9, ptr noundef %11, i64 noundef %2, ptr noundef nonnull %773), !range !121
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %884, label %883

883:                                              ; preds = %880
  tail call void @free(ptr noundef %64)
  br label %884

884:                                              ; preds = %880, %878, %883
  %885 = phi i32 [ %796, %883 ], [ %796, %878 ], [ -1, %880 ]
  %886 = phi i1 [ false, %883 ], [ false, %878 ], [ true, %880 ]
  %887 = phi i32 [ %881, %883 ], [ 14, %878 ], [ %790, %880 ]
  br i1 %886, label %1329, label %1350

888:                                              ; preds = %874, %871
  %889 = and i64 %2, 4
  %890 = icmp ne i64 %889, 0
  %891 = icmp eq i8 %804, 91
  %892 = select i1 %890, i1 %891, i1 false
  br i1 %892, label %893, label %1321

893:                                              ; preds = %888
  switch i8 %872, label %1321 [
    i8 58, label %894
    i8 61, label %1155
    i8 46, label %1237
  ]

894:                                              ; preds = %893
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #21
  %895 = icmp eq ptr %797, %9
  br i1 %895, label %1150, label %896

896:                                              ; preds = %894
  %897 = getelementptr inbounds i8, ptr %795, i64 2
  store ptr %897, ptr %5, align 8, !tbaa !38
  %898 = icmp eq ptr %897, %9
  br i1 %898, label %902, label %899

899:                                              ; preds = %896
  %900 = load ptr, ptr %5, align 8, !tbaa !38
  %901 = icmp eq ptr %900, %9
  br i1 %901, label %1148, label %903

902:                                              ; preds = %896
  tail call void @free(ptr noundef %64)
  br label %1150

903:                                              ; preds = %899, %929
  %904 = phi i8 [ %930, %929 ], [ 0, %899 ]
  %905 = phi ptr [ %906, %929 ], [ %900, %899 ]
  %906 = getelementptr inbounds i8, ptr %905, i64 1
  %907 = load i8, ptr %905, align 1, !tbaa !51
  br i1 %58, label %908, label %912

908:                                              ; preds = %903
  %909 = zext i8 %907 to i64
  %910 = getelementptr inbounds i8, ptr %11, i64 %909
  %911 = load i8, ptr %910, align 1, !tbaa !51
  br label %912

912:                                              ; preds = %908, %903
  %913 = phi i8 [ %911, %908 ], [ %907, %903 ]
  %914 = icmp eq i8 %913, 58
  br i1 %914, label %915, label %920

915:                                              ; preds = %912
  %916 = load i8, ptr %906, align 1, !tbaa !51
  %917 = icmp eq i8 %916, 93
  %918 = icmp eq ptr %906, %9
  %919 = select i1 %917, i1 true, i1 %918
  br i1 %919, label %932, label %922

920:                                              ; preds = %912
  %921 = icmp eq ptr %906, %9
  br i1 %921, label %932, label %922

922:                                              ; preds = %915, %920
  %923 = icmp ult i8 %904, 6
  br i1 %923, label %924, label %928

924:                                              ; preds = %922
  %925 = add nuw nsw i8 %904, 1
  %926 = zext nneg i8 %904 to i64
  %927 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %926
  store i8 %913, ptr %927, align 1, !tbaa !51
  br label %929

928:                                              ; preds = %922
  store i8 0, ptr %6, align 1, !tbaa !51
  br label %929

929:                                              ; preds = %928, %924
  %930 = phi i8 [ %925, %924 ], [ %904, %928 ]
  %931 = icmp eq ptr %906, %9
  br i1 %931, label %1148, label %903, !llvm.loop !122

932:                                              ; preds = %920, %915
  store ptr %906, ptr %5, align 8, !tbaa !38
  %933 = zext i8 %904 to i64
  %934 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %933
  store i8 0, ptr %934, align 1, !tbaa !51
  br i1 %914, label %935, label %1134

935:                                              ; preds = %932
  %936 = load i8, ptr %906, align 1, !tbaa !51
  %937 = icmp eq i8 %936, 93
  br i1 %937, label %938, label %1134

938:                                              ; preds = %935
  %939 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.1, i64 6)
  %940 = icmp eq i32 %939, 0
  %941 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %942 = icmp eq i32 %941, 0
  %943 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.3, i64 6)
  %944 = icmp eq i32 %943, 0
  %945 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.4, i64 6)
  %946 = icmp eq i32 %945, 0
  %947 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.5, i64 6)
  %948 = icmp eq i32 %947, 0
  %949 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.6, i64 6)
  %950 = icmp eq i32 %949, 0
  %951 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.7, i64 6)
  %952 = icmp eq i32 %951, 0
  %953 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.8, i64 6)
  %954 = icmp eq i32 %953, 0
  %955 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.9, i64 6)
  %956 = icmp eq i32 %955, 0
  %957 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.10, i64 6)
  %958 = icmp eq i32 %957, 0
  %959 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.11, i64 6)
  %960 = icmp eq i32 %959, 0
  %961 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.12, i64 7)
  %962 = icmp eq i32 %961, 0
  %963 = select i1 %942, i1 true, i1 %960
  %964 = select i1 %963, i1 true, i1 %952
  %965 = select i1 %964, i1 true, i1 %948
  %966 = select i1 %965, i1 true, i1 %940
  %967 = select i1 %966, i1 true, i1 %962
  %968 = select i1 %967, i1 true, i1 %958
  %969 = select i1 %968, i1 true, i1 %954
  %970 = select i1 %969, i1 true, i1 %956
  %971 = select i1 %970, i1 true, i1 %950
  %972 = select i1 %971, i1 true, i1 %946
  %973 = select i1 %972, i1 true, i1 %944
  br i1 %973, label %975, label %974

974:                                              ; preds = %938
  tail call void @free(ptr noundef %64)
  br label %1150

975:                                              ; preds = %938
  %976 = icmp eq ptr %906, %9
  br i1 %976, label %1150, label %977

977:                                              ; preds = %975
  %978 = getelementptr inbounds i8, ptr %905, i64 2
  store ptr %978, ptr %5, align 8, !tbaa !38
  %979 = icmp eq ptr %978, %9
  br i1 %979, label %983, label %980

980:                                              ; preds = %977
  %981 = select i1 %960, i1 true, i1 %952
  %982 = select i1 %58, i1 %981, i1 false
  br label %984

983:                                              ; preds = %977
  tail call void @free(ptr noundef %64)
  br label %1150

984:                                              ; preds = %980, %1131
  %985 = phi i64 [ 0, %980 ], [ %1132, %1131 ]
  br i1 %940, label %986, label %993

986:                                              ; preds = %984
  %987 = tail call ptr @__ctype_b_loc() #21
  %988 = load ptr, ptr %987, align 8, !tbaa !38
  %989 = getelementptr inbounds i16, ptr %988, i64 %985
  %990 = load i16, ptr %989, align 2, !tbaa !105
  %991 = and i16 %990, 8
  %992 = icmp eq i16 %991, 0
  br i1 %992, label %993, label %1017

993:                                              ; preds = %986, %984
  br i1 %942, label %994, label %1001

994:                                              ; preds = %993
  %995 = tail call ptr @__ctype_b_loc() #21
  %996 = load ptr, ptr %995, align 8, !tbaa !38
  %997 = getelementptr inbounds i16, ptr %996, i64 %985
  %998 = load i16, ptr %997, align 2, !tbaa !105
  %999 = and i16 %998, 1024
  %1000 = icmp eq i16 %999, 0
  br i1 %1000, label %1001, label %1017

1001:                                             ; preds = %994, %993
  br i1 %944, label %1002, label %1009

1002:                                             ; preds = %1001
  %1003 = tail call ptr @__ctype_b_loc() #21
  %1004 = load ptr, ptr %1003, align 8, !tbaa !38
  %1005 = getelementptr inbounds i16, ptr %1004, i64 %985
  %1006 = load i16, ptr %1005, align 2, !tbaa !105
  %1007 = and i16 %1006, 1
  %1008 = icmp eq i16 %1007, 0
  br i1 %1008, label %1009, label %1017

1009:                                             ; preds = %1002, %1001
  br i1 %946, label %1010, label %1026

1010:                                             ; preds = %1009
  %1011 = tail call ptr @__ctype_b_loc() #21
  %1012 = load ptr, ptr %1011, align 8, !tbaa !38
  %1013 = getelementptr inbounds i16, ptr %1012, i64 %985
  %1014 = load i16, ptr %1013, align 2, !tbaa !105
  %1015 = and i16 %1014, 2
  %1016 = icmp eq i16 %1015, 0
  br i1 %1016, label %1026, label %1017

1017:                                             ; preds = %1010, %1002, %994, %986
  %1018 = trunc i64 %985 to i8
  %1019 = and i8 %1018, 7
  %1020 = shl nuw i8 1, %1019
  %1021 = lshr i64 %985, 3
  %1022 = and i64 %1021, 536870911
  %1023 = getelementptr inbounds i8, ptr %773, i64 %1022
  %1024 = load i8, ptr %1023, align 1, !tbaa !51
  %1025 = or i8 %1024, %1020
  store i8 %1025, ptr %1023, align 1, !tbaa !51
  br label %1026

1026:                                             ; preds = %1017, %1010, %1009
  br i1 %948, label %1027, label %1034

1027:                                             ; preds = %1026
  %1028 = tail call ptr @__ctype_b_loc() #21
  %1029 = load ptr, ptr %1028, align 8, !tbaa !38
  %1030 = getelementptr inbounds i16, ptr %1029, i64 %985
  %1031 = load i16, ptr %1030, align 2, !tbaa !105
  %1032 = and i16 %1031, 2048
  %1033 = icmp eq i16 %1032, 0
  br i1 %1033, label %1034, label %1057

1034:                                             ; preds = %1027, %1026
  br i1 %950, label %1035, label %1041

1035:                                             ; preds = %1034
  %1036 = tail call ptr @__ctype_b_loc() #21
  %1037 = load ptr, ptr %1036, align 8, !tbaa !38
  %1038 = getelementptr inbounds i16, ptr %1037, i64 %985
  %1039 = load i16, ptr %1038, align 2, !tbaa !105
  %1040 = icmp sgt i16 %1039, -1
  br i1 %1040, label %1041, label %1057

1041:                                             ; preds = %1035, %1034
  br i1 %952, label %1042, label %1049

1042:                                             ; preds = %1041
  %1043 = tail call ptr @__ctype_b_loc() #21
  %1044 = load ptr, ptr %1043, align 8, !tbaa !38
  %1045 = getelementptr inbounds i16, ptr %1044, i64 %985
  %1046 = load i16, ptr %1045, align 2, !tbaa !105
  %1047 = and i16 %1046, 512
  %1048 = icmp eq i16 %1047, 0
  br i1 %1048, label %1049, label %1057

1049:                                             ; preds = %1042, %1041
  br i1 %954, label %1050, label %1066

1050:                                             ; preds = %1049
  %1051 = tail call ptr @__ctype_b_loc() #21
  %1052 = load ptr, ptr %1051, align 8, !tbaa !38
  %1053 = getelementptr inbounds i16, ptr %1052, i64 %985
  %1054 = load i16, ptr %1053, align 2, !tbaa !105
  %1055 = and i16 %1054, 16384
  %1056 = icmp eq i16 %1055, 0
  br i1 %1056, label %1066, label %1057

1057:                                             ; preds = %1050, %1042, %1035, %1027
  %1058 = trunc i64 %985 to i8
  %1059 = and i8 %1058, 7
  %1060 = shl nuw i8 1, %1059
  %1061 = lshr i64 %985, 3
  %1062 = and i64 %1061, 536870911
  %1063 = getelementptr inbounds i8, ptr %773, i64 %1062
  %1064 = load i8, ptr %1063, align 1, !tbaa !51
  %1065 = or i8 %1064, %1060
  store i8 %1065, ptr %1063, align 1, !tbaa !51
  br label %1066

1066:                                             ; preds = %1057, %1050, %1049
  br i1 %956, label %1067, label %1074

1067:                                             ; preds = %1066
  %1068 = tail call ptr @__ctype_b_loc() #21
  %1069 = load ptr, ptr %1068, align 8, !tbaa !38
  %1070 = getelementptr inbounds i16, ptr %1069, i64 %985
  %1071 = load i16, ptr %1070, align 2, !tbaa !105
  %1072 = and i16 %1071, 4
  %1073 = icmp eq i16 %1072, 0
  br i1 %1073, label %1074, label %1098

1074:                                             ; preds = %1067, %1066
  br i1 %958, label %1075, label %1082

1075:                                             ; preds = %1074
  %1076 = tail call ptr @__ctype_b_loc() #21
  %1077 = load ptr, ptr %1076, align 8, !tbaa !38
  %1078 = getelementptr inbounds i16, ptr %1077, i64 %985
  %1079 = load i16, ptr %1078, align 2, !tbaa !105
  %1080 = and i16 %1079, 8192
  %1081 = icmp eq i16 %1080, 0
  br i1 %1081, label %1082, label %1098

1082:                                             ; preds = %1075, %1074
  br i1 %960, label %1083, label %1090

1083:                                             ; preds = %1082
  %1084 = tail call ptr @__ctype_b_loc() #21
  %1085 = load ptr, ptr %1084, align 8, !tbaa !38
  %1086 = getelementptr inbounds i16, ptr %1085, i64 %985
  %1087 = load i16, ptr %1086, align 2, !tbaa !105
  %1088 = and i16 %1087, 256
  %1089 = icmp eq i16 %1088, 0
  br i1 %1089, label %1090, label %1098

1090:                                             ; preds = %1083, %1082
  br i1 %962, label %1091, label %1107

1091:                                             ; preds = %1090
  %1092 = tail call ptr @__ctype_b_loc() #21
  %1093 = load ptr, ptr %1092, align 8, !tbaa !38
  %1094 = getelementptr inbounds i16, ptr %1093, i64 %985
  %1095 = load i16, ptr %1094, align 2, !tbaa !105
  %1096 = and i16 %1095, 4096
  %1097 = icmp eq i16 %1096, 0
  br i1 %1097, label %1107, label %1098

1098:                                             ; preds = %1091, %1083, %1075, %1067
  %1099 = trunc i64 %985 to i8
  %1100 = and i8 %1099, 7
  %1101 = shl nuw i8 1, %1100
  %1102 = lshr i64 %985, 3
  %1103 = and i64 %1102, 536870911
  %1104 = getelementptr inbounds i8, ptr %773, i64 %1103
  %1105 = load i8, ptr %1104, align 1, !tbaa !51
  %1106 = or i8 %1105, %1101
  store i8 %1106, ptr %1104, align 1, !tbaa !51
  br label %1107

1107:                                             ; preds = %1098, %1091, %1090
  br i1 %982, label %1108, label %1131

1108:                                             ; preds = %1107
  %1109 = tail call ptr @__ctype_b_loc() #21
  %1110 = load ptr, ptr %1109, align 8, !tbaa !38
  %1111 = getelementptr inbounds i16, ptr %1110, i64 %985
  %1112 = load i16, ptr %1111, align 2, !tbaa !105
  %1113 = and i16 %1112, 256
  %1114 = icmp eq i16 %1113, 0
  br i1 %1114, label %1115, label %1122

1115:                                             ; preds = %1108
  %1116 = tail call ptr @__ctype_b_loc() #21
  %1117 = load ptr, ptr %1116, align 8, !tbaa !38
  %1118 = getelementptr inbounds i16, ptr %1117, i64 %985
  %1119 = load i16, ptr %1118, align 2, !tbaa !105
  %1120 = and i16 %1119, 512
  %1121 = icmp eq i16 %1120, 0
  br i1 %1121, label %1131, label %1122

1122:                                             ; preds = %1115, %1108
  %1123 = trunc i64 %985 to i8
  %1124 = and i8 %1123, 7
  %1125 = shl nuw i8 1, %1124
  %1126 = lshr i64 %985, 3
  %1127 = and i64 %1126, 536870911
  %1128 = getelementptr inbounds i8, ptr %773, i64 %1127
  %1129 = load i8, ptr %1128, align 1, !tbaa !51
  %1130 = or i8 %1129, %1125
  store i8 %1130, ptr %1128, align 1, !tbaa !51
  br label %1131

1131:                                             ; preds = %1107, %1115, %1122
  %1132 = add nuw nsw i64 %985, 1
  %1133 = icmp eq i64 %1132, 256
  br i1 %1133, label %1150, label %984, !llvm.loop !123

1134:                                             ; preds = %935, %932
  %1135 = getelementptr inbounds i8, ptr %728, i64 12
  %1136 = getelementptr inbounds i8, ptr %728, i64 8
  %1137 = load ptr, ptr %5, align 8, !tbaa !38
  %1138 = icmp eq i8 %904, -1
  %1139 = zext i8 %904 to i64
  %1140 = sub nsw i64 0, %1139
  %1141 = getelementptr i8, ptr %1137, i64 -1
  %1142 = getelementptr i8, ptr %1141, i64 %1140
  %1143 = select i1 %1138, ptr %1137, ptr %1142
  store ptr %1143, ptr %5, align 8, !tbaa !38
  %1144 = load i8, ptr %1135, align 1, !tbaa !51
  %1145 = or i8 %1144, 8
  store i8 %1145, ptr %1135, align 1, !tbaa !51
  %1146 = load i8, ptr %1136, align 1, !tbaa !51
  %1147 = or i8 %1146, 4
  store i8 %1147, ptr %1136, align 1, !tbaa !51
  br label %1150

1148:                                             ; preds = %929, %899
  %1149 = phi ptr [ %900, %899 ], [ %906, %929 ]
  store ptr %1149, ptr %5, align 8, !tbaa !38
  br label %1150

1150:                                             ; preds = %1131, %1148, %974, %983, %975, %1134, %894, %902
  %1151 = phi i32 [ %796, %902 ], [ %796, %894 ], [ 58, %1134 ], [ %796, %975 ], [ %796, %983 ], [ %796, %974 ], [ %796, %1148 ], [ %796, %1131 ]
  %1152 = phi i8 [ %791, %902 ], [ %791, %894 ], [ 0, %1134 ], [ %791, %975 ], [ %791, %983 ], [ %791, %974 ], [ %791, %1148 ], [ 1, %1131 ]
  %1153 = phi i1 [ false, %902 ], [ false, %894 ], [ true, %1134 ], [ false, %975 ], [ false, %983 ], [ false, %974 ], [ false, %1148 ], [ true, %1131 ]
  %1154 = phi i32 [ 7, %902 ], [ 14, %894 ], [ %790, %1134 ], [ 14, %975 ], [ 7, %983 ], [ 4, %974 ], [ 14, %1148 ], [ %790, %1131 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #21
  br i1 %1153, label %1329, label %1350

1155:                                             ; preds = %893
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %7) #21
  %1156 = icmp eq ptr %797, %9
  br i1 %1156, label %1232, label %1157

1157:                                             ; preds = %1155
  %1158 = getelementptr inbounds i8, ptr %795, i64 2
  store ptr %1158, ptr %5, align 8, !tbaa !38
  %1159 = icmp eq ptr %1158, %9
  br i1 %1159, label %1163, label %1160

1160:                                             ; preds = %1157
  %1161 = load ptr, ptr %5, align 8, !tbaa !38
  %1162 = icmp eq ptr %1161, %9
  br i1 %1162, label %1230, label %1164

1163:                                             ; preds = %1157
  tail call void @free(ptr noundef %64)
  br label %1232

1164:                                             ; preds = %1160, %1190
  %1165 = phi i8 [ %1191, %1190 ], [ 0, %1160 ]
  %1166 = phi ptr [ %1167, %1190 ], [ %1161, %1160 ]
  %1167 = getelementptr inbounds i8, ptr %1166, i64 1
  %1168 = load i8, ptr %1166, align 1, !tbaa !51
  br i1 %58, label %1169, label %1173

1169:                                             ; preds = %1164
  %1170 = zext i8 %1168 to i64
  %1171 = getelementptr inbounds i8, ptr %11, i64 %1170
  %1172 = load i8, ptr %1171, align 1, !tbaa !51
  br label %1173

1173:                                             ; preds = %1169, %1164
  %1174 = phi i8 [ %1172, %1169 ], [ %1168, %1164 ]
  %1175 = icmp eq i8 %1174, 61
  br i1 %1175, label %1176, label %1181

1176:                                             ; preds = %1173
  %1177 = load i8, ptr %1167, align 1, !tbaa !51
  %1178 = icmp eq i8 %1177, 93
  %1179 = icmp eq ptr %1167, %9
  %1180 = select i1 %1178, i1 true, i1 %1179
  br i1 %1180, label %1193, label %1183

1181:                                             ; preds = %1173
  %1182 = icmp eq ptr %1167, %9
  br i1 %1182, label %1193, label %1183

1183:                                             ; preds = %1176, %1181
  %1184 = icmp ult i8 %1165, 16
  br i1 %1184, label %1185, label %1189

1185:                                             ; preds = %1183
  %1186 = add nuw nsw i8 %1165, 1
  %1187 = zext nneg i8 %1165 to i64
  %1188 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1187
  store i8 %1174, ptr %1188, align 1, !tbaa !51
  br label %1190

1189:                                             ; preds = %1183
  store i8 0, ptr %7, align 16, !tbaa !51
  br label %1190

1190:                                             ; preds = %1189, %1185
  %1191 = phi i8 [ %1186, %1185 ], [ %1165, %1189 ]
  %1192 = icmp eq ptr %1167, %9
  br i1 %1192, label %1230, label %1164, !llvm.loop !124

1193:                                             ; preds = %1181, %1176
  store ptr %1167, ptr %5, align 8, !tbaa !38
  %1194 = zext i8 %1165 to i64
  %1195 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1194
  store i8 0, ptr %1195, align 1, !tbaa !51
  br i1 %1175, label %1196, label %1216

1196:                                             ; preds = %1193
  %1197 = load i8, ptr %1167, align 1, !tbaa !51
  %1198 = icmp eq i8 %1197, 93
  %1199 = load i8, ptr %7, align 16
  %1200 = icmp ne i8 %1199, 0
  %1201 = select i1 %1198, i1 %1200, i1 false
  br i1 %1201, label %1202, label %1216

1202:                                             ; preds = %1196
  %1203 = icmp eq i8 %1165, 1
  br i1 %1203, label %1205, label %1204

1204:                                             ; preds = %1202
  tail call void @free(ptr noundef %64)
  br label %1232

1205:                                             ; preds = %1202
  %1206 = icmp eq ptr %1167, %9
  br i1 %1206, label %1232, label %1207

1207:                                             ; preds = %1205
  %1208 = getelementptr inbounds i8, ptr %1166, i64 2
  store ptr %1208, ptr %5, align 8, !tbaa !38
  %1209 = and i8 %1199, 7
  %1210 = shl nuw i8 1, %1209
  %1211 = lshr i8 %1199, 3
  %1212 = zext nneg i8 %1211 to i64
  %1213 = getelementptr inbounds i8, ptr %773, i64 %1212
  %1214 = load i8, ptr %1213, align 1, !tbaa !51
  %1215 = or i8 %1214, %1210
  store i8 %1215, ptr %1213, align 1, !tbaa !51
  br label %1232

1216:                                             ; preds = %1196, %1193
  %1217 = getelementptr inbounds i8, ptr %728, i64 12
  %1218 = getelementptr inbounds i8, ptr %728, i64 8
  %1219 = load ptr, ptr %5, align 8, !tbaa !38
  %1220 = icmp eq i8 %1165, -1
  %1221 = zext i8 %1165 to i64
  %1222 = sub nsw i64 0, %1221
  %1223 = getelementptr i8, ptr %1219, i64 -1
  %1224 = getelementptr i8, ptr %1223, i64 %1222
  %1225 = select i1 %1220, ptr %1219, ptr %1224
  store ptr %1225, ptr %5, align 8, !tbaa !38
  %1226 = load i8, ptr %1217, align 1, !tbaa !51
  %1227 = or i8 %1226, 8
  store i8 %1227, ptr %1217, align 1, !tbaa !51
  %1228 = load i8, ptr %1218, align 1, !tbaa !51
  %1229 = or i8 %1228, 32
  store i8 %1229, ptr %1218, align 1, !tbaa !51
  br label %1232

1230:                                             ; preds = %1190, %1160
  %1231 = phi ptr [ %1161, %1160 ], [ %1167, %1190 ]
  store ptr %1231, ptr %5, align 8, !tbaa !38
  br label %1232

1232:                                             ; preds = %1230, %1207, %1216, %1205, %1155, %1204, %1163
  %1233 = phi i32 [ %796, %1163 ], [ %796, %1204 ], [ %796, %1155 ], [ %796, %1205 ], [ %796, %1207 ], [ 61, %1216 ], [ %796, %1230 ]
  %1234 = phi i8 [ %791, %1163 ], [ %791, %1204 ], [ %791, %1155 ], [ %791, %1205 ], [ 1, %1207 ], [ 0, %1216 ], [ %791, %1230 ]
  %1235 = phi i1 [ false, %1163 ], [ false, %1204 ], [ false, %1155 ], [ false, %1205 ], [ true, %1207 ], [ true, %1216 ], [ false, %1230 ]
  %1236 = phi i32 [ 7, %1163 ], [ 3, %1204 ], [ 14, %1155 ], [ 14, %1205 ], [ %790, %1207 ], [ %790, %1216 ], [ 14, %1230 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %7) #21
  br i1 %1235, label %1329, label %1350

1237:                                             ; preds = %893
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #21
  %1238 = icmp eq ptr %797, %9
  br i1 %1238, label %1316, label %1239

1239:                                             ; preds = %1237
  %1240 = getelementptr inbounds i8, ptr %795, i64 2
  store ptr %1240, ptr %5, align 8, !tbaa !38
  %1241 = icmp eq ptr %1240, %9
  br i1 %1241, label %1245, label %1242

1242:                                             ; preds = %1239
  %1243 = load ptr, ptr %5, align 8, !tbaa !38
  %1244 = icmp eq ptr %1243, %9
  br i1 %1244, label %1314, label %1246

1245:                                             ; preds = %1239
  tail call void @free(ptr noundef %64)
  br label %1316

1246:                                             ; preds = %1242, %1272
  %1247 = phi i8 [ %1273, %1272 ], [ 0, %1242 ]
  %1248 = phi ptr [ %1249, %1272 ], [ %1243, %1242 ]
  %1249 = getelementptr inbounds i8, ptr %1248, i64 1
  %1250 = load i8, ptr %1248, align 1, !tbaa !51
  br i1 %58, label %1251, label %1255

1251:                                             ; preds = %1246
  %1252 = zext i8 %1250 to i64
  %1253 = getelementptr inbounds i8, ptr %11, i64 %1252
  %1254 = load i8, ptr %1253, align 1, !tbaa !51
  br label %1255

1255:                                             ; preds = %1251, %1246
  %1256 = phi i8 [ %1254, %1251 ], [ %1250, %1246 ]
  %1257 = icmp eq i8 %1256, 46
  br i1 %1257, label %1258, label %1263

1258:                                             ; preds = %1255
  %1259 = load i8, ptr %1249, align 1, !tbaa !51
  %1260 = icmp eq i8 %1259, 93
  %1261 = icmp eq ptr %1249, %9
  %1262 = select i1 %1260, i1 true, i1 %1261
  br i1 %1262, label %1275, label %1265

1263:                                             ; preds = %1255
  %1264 = icmp eq ptr %1249, %9
  br i1 %1264, label %1275, label %1265

1265:                                             ; preds = %1258, %1263
  %1266 = icmp sgt i8 %1247, -1
  br i1 %1266, label %1267, label %1271

1267:                                             ; preds = %1265
  %1268 = zext nneg i8 %1247 to i64
  %1269 = add nuw i8 %1247, 1
  %1270 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1268
  store i8 %1256, ptr %1270, align 1, !tbaa !51
  br label %1272

1271:                                             ; preds = %1265
  store i8 0, ptr %8, align 16, !tbaa !51
  br label %1272

1272:                                             ; preds = %1271, %1267
  %1273 = phi i8 [ %1269, %1267 ], [ %1247, %1271 ]
  %1274 = icmp eq ptr %1249, %9
  br i1 %1274, label %1314, label %1246, !llvm.loop !125

1275:                                             ; preds = %1263, %1258
  store ptr %1249, ptr %5, align 8, !tbaa !38
  %1276 = zext i8 %1247 to i64
  %1277 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1276
  store i8 0, ptr %1277, align 1, !tbaa !51
  br i1 %1257, label %1278, label %1300

1278:                                             ; preds = %1275
  %1279 = load i8, ptr %1249, align 1, !tbaa !51
  %1280 = icmp eq i8 %1279, 93
  %1281 = load i8, ptr %8, align 16
  %1282 = icmp ne i8 %1281, 0
  %1283 = select i1 %1280, i1 %1282, i1 false
  br i1 %1283, label %1284, label %1300

1284:                                             ; preds = %1278
  %1285 = icmp eq i8 %1247, 1
  br i1 %1285, label %1287, label %1286

1286:                                             ; preds = %1284
  tail call void @free(ptr noundef %64)
  br label %1316

1287:                                             ; preds = %1284
  %1288 = icmp eq ptr %1249, %9
  br i1 %1288, label %1316, label %1289

1289:                                             ; preds = %1287
  %1290 = getelementptr inbounds i8, ptr %1248, i64 2
  store ptr %1290, ptr %5, align 8, !tbaa !38
  %1291 = and i8 %1281, 7
  %1292 = shl nuw i8 1, %1291
  %1293 = lshr i8 %1281, 3
  %1294 = zext nneg i8 %1293 to i64
  %1295 = getelementptr inbounds i8, ptr %773, i64 %1294
  %1296 = load i8, ptr %1295, align 1, !tbaa !51
  %1297 = or i8 %1296, %1292
  store i8 %1297, ptr %1295, align 1, !tbaa !51
  %1298 = load i8, ptr %8, align 16, !tbaa !51
  %1299 = zext i8 %1298 to i32
  br label %1316

1300:                                             ; preds = %1278, %1275
  %1301 = getelementptr inbounds i8, ptr %728, i64 12
  %1302 = getelementptr inbounds i8, ptr %728, i64 6
  %1303 = load ptr, ptr %5, align 8, !tbaa !38
  %1304 = icmp eq i8 %1247, -1
  %1305 = zext i8 %1247 to i64
  %1306 = sub nsw i64 0, %1305
  %1307 = getelementptr i8, ptr %1303, i64 -1
  %1308 = getelementptr i8, ptr %1307, i64 %1306
  %1309 = select i1 %1304, ptr %1303, ptr %1308
  store ptr %1309, ptr %5, align 8, !tbaa !38
  %1310 = load i8, ptr %1301, align 1, !tbaa !51
  %1311 = or i8 %1310, 8
  store i8 %1311, ptr %1301, align 1, !tbaa !51
  %1312 = load i8, ptr %1302, align 1, !tbaa !51
  %1313 = or i8 %1312, 64
  store i8 %1313, ptr %1302, align 1, !tbaa !51
  br label %1316

1314:                                             ; preds = %1272, %1242
  %1315 = phi ptr [ %1243, %1242 ], [ %1249, %1272 ]
  store ptr %1315, ptr %5, align 8, !tbaa !38
  br label %1316

1316:                                             ; preds = %1314, %1289, %1300, %1287, %1237, %1286, %1245
  %1317 = phi i32 [ %796, %1245 ], [ %796, %1286 ], [ %796, %1237 ], [ %796, %1287 ], [ %1299, %1289 ], [ 46, %1300 ], [ %796, %1314 ]
  %1318 = phi i8 [ %791, %1245 ], [ %791, %1286 ], [ %791, %1237 ], [ %791, %1287 ], [ 0, %1289 ], [ 0, %1300 ], [ %791, %1314 ]
  %1319 = phi i1 [ false, %1245 ], [ false, %1286 ], [ false, %1237 ], [ false, %1287 ], [ true, %1289 ], [ true, %1300 ], [ false, %1314 ]
  %1320 = phi i32 [ 7, %1245 ], [ 3, %1286 ], [ 14, %1237 ], [ 14, %1287 ], [ %790, %1289 ], [ %790, %1300 ], [ 14, %1314 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #21
  br i1 %1319, label %1329, label %1350

1321:                                             ; preds = %893, %888
  %1322 = and i8 %804, 7
  %1323 = shl nuw i8 1, %1322
  %1324 = lshr i32 %830, 3
  %1325 = zext nneg i32 %1324 to i64
  %1326 = getelementptr inbounds i8, ptr %773, i64 %1325
  %1327 = load i8, ptr %1326, align 1, !tbaa !51
  %1328 = or i8 %1327, %1323
  store i8 %1328, ptr %1326, align 1, !tbaa !51
  br label %1329

1329:                                             ; preds = %884, %1232, %1316, %1321, %1150, %868
  %1330 = phi i32 [ %885, %884 ], [ %1151, %1150 ], [ %1233, %1232 ], [ %1317, %1316 ], [ %830, %1321 ], [ %869, %868 ]
  %1331 = phi i8 [ %791, %884 ], [ %1152, %1150 ], [ %1234, %1232 ], [ %1318, %1316 ], [ 0, %1321 ], [ %791, %868 ]
  %1332 = phi i32 [ %887, %884 ], [ %1154, %1150 ], [ %1236, %1232 ], [ %1320, %1316 ], [ %790, %1321 ], [ %870, %868 ]
  %1333 = load ptr, ptr %5, align 8, !tbaa !38
  %1334 = icmp eq ptr %1333, %9
  br i1 %1334, label %793, label %788, !llvm.loop !120

1335:                                             ; preds = %834, %1343
  %1336 = phi i8 [ %1344, %1343 ], [ %835, %834 ]
  %1337 = zext i8 %1336 to i64
  %1338 = add nuw nsw i64 %1337, 4294967295
  %1339 = and i64 %1338, 4294967295
  %1340 = getelementptr inbounds i8, ptr %773, i64 %1339
  %1341 = load i8, ptr %1340, align 1, !tbaa !51
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1343, label %1346

1343:                                             ; preds = %1335
  %1344 = add i8 %1336, -1
  store i8 %1344, ptr %728, align 1, !tbaa !51
  %1345 = icmp eq i8 %1344, 0
  br i1 %1345, label %1346, label %1335, !llvm.loop !126

1346:                                             ; preds = %1335, %1343, %834
  %1347 = phi i8 [ %835, %834 ], [ %1336, %1335 ], [ 0, %1343 ]
  %1348 = zext i8 %1347 to i64
  %1349 = getelementptr inbounds i8, ptr %773, i64 %1348
  br label %1350

1350:                                             ; preds = %656, %703, %762, %1316, %1232, %1150, %868, %884, %1346, %844, %809, %793, %616
  %1351 = phi i1 [ false, %616 ], [ false, %793 ], [ false, %809 ], [ true, %1346 ], [ false, %844 ], [ false, %884 ], [ false, %868 ], [ false, %1150 ], [ false, %1232 ], [ false, %1316 ], [ false, %762 ], [ false, %703 ], [ false, %656 ]
  %1352 = phi ptr [ %68, %616 ], [ %724, %793 ], [ %724, %809 ], [ %724, %1346 ], [ %724, %844 ], [ %724, %884 ], [ %724, %868 ], [ %724, %1150 ], [ %724, %1232 ], [ %724, %1316 ], [ %764, %762 ], [ %705, %703 ], [ %658, %656 ]
  %1353 = phi ptr [ %67, %616 ], [ %725, %793 ], [ %725, %809 ], [ %725, %1346 ], [ %725, %844 ], [ %725, %884 ], [ %725, %868 ], [ %725, %1150 ], [ %725, %1232 ], [ %725, %1316 ], [ %765, %762 ], [ %706, %703 ], [ %659, %656 ]
  %1354 = phi ptr [ %66, %616 ], [ %726, %793 ], [ %726, %809 ], [ %726, %1346 ], [ %726, %844 ], [ %726, %884 ], [ %726, %868 ], [ %726, %1150 ], [ %726, %1232 ], [ %726, %1316 ], [ %766, %762 ], [ %707, %703 ], [ %660, %656 ]
  %1355 = phi ptr [ %65, %616 ], [ %727, %793 ], [ %727, %809 ], [ %727, %1346 ], [ %727, %844 ], [ %727, %884 ], [ %727, %868 ], [ %727, %1150 ], [ %727, %1232 ], [ %727, %1316 ], [ %767, %762 ], [ %708, %703 ], [ %661, %656 ]
  %1356 = phi ptr [ %62, %616 ], [ %773, %793 ], [ %773, %809 ], [ %1349, %1346 ], [ %773, %844 ], [ %773, %884 ], [ %773, %868 ], [ %773, %1150 ], [ %773, %1232 ], [ %773, %1316 ], [ %768, %762 ], [ %709, %703 ], [ %662, %656 ]
  %1357 = phi i32 [ 7, %616 ], [ 7, %793 ], [ 5, %809 ], [ %790, %1346 ], [ 11, %844 ], [ %1320, %1316 ], [ %1236, %1232 ], [ %1154, %1150 ], [ %870, %868 ], [ %887, %884 ], [ %769, %762 ], [ %710, %703 ], [ %663, %656 ]
  br i1 %1351, label %2714, label %2788

1358:                                             ; preds = %76
  %1359 = and i64 %2, 8192
  %1360 = icmp eq i64 %1359, 0
  br i1 %1360, label %2567, label %1382

1361:                                             ; preds = %76
  %1362 = and i64 %2, 8192
  %1363 = icmp eq i64 %1362, 0
  br i1 %1363, label %2567, label %1472

1364:                                             ; preds = %76
  %1365 = and i64 %2, 2048
  %1366 = icmp eq i64 %1365, 0
  br i1 %1366, label %2567, label %1630

1367:                                             ; preds = %76
  %1368 = and i64 %2, 32768
  %1369 = icmp eq i64 %1368, 0
  br i1 %1369, label %2567, label %1630

1370:                                             ; preds = %76
  %1371 = and i64 %2, 4608
  %1372 = icmp eq i64 %1371, 4608
  br i1 %1372, label %1745, label %2567

1373:                                             ; preds = %76
  %1374 = icmp eq ptr %70, %9
  br i1 %1374, label %1375, label %1376

1375:                                             ; preds = %1373
  tail call void @free(ptr noundef %64)
  br label %2788

1376:                                             ; preds = %1373
  %1377 = getelementptr inbounds i8, ptr %60, i64 2
  store ptr %1377, ptr %5, align 8, !tbaa !38
  %1378 = load i8, ptr %70, align 1, !tbaa !51
  switch i8 %1378, label %2555 [
    i8 40, label %1379
    i8 41, label %1463
    i8 124, label %1627
    i8 123, label %1742
    i8 119, label %2064
    i8 87, label %2116
    i8 60, label %2168
    i8 62, label %2220
    i8 98, label %2272
    i8 66, label %2324
    i8 96, label %2376
    i8 39, label %2428
    i8 49, label %2480
    i8 50, label %2480
    i8 51, label %2480
    i8 52, label %2480
    i8 53, label %2480
    i8 54, label %2480
    i8 55, label %2480
    i8 56, label %2480
    i8 57, label %2480
    i8 43, label %2552
    i8 63, label %2552
  ]

1379:                                             ; preds = %1376
  %1380 = and i64 %2, 8192
  %1381 = icmp eq i64 %1380, 0
  br i1 %1381, label %1382, label %2555

1382:                                             ; preds = %1379, %1358
  %1383 = load i64, ptr %20, align 8, !tbaa !66
  %1384 = add i64 %1383, 1
  store i64 %1384, ptr %20, align 8, !tbaa !66
  %1385 = add i32 %69, 1
  %1386 = lshr i64 %63, 32
  %1387 = trunc i64 %1386 to i32
  %1388 = trunc i64 %63 to i32
  %1389 = icmp eq i32 %1387, %1388
  br i1 %1389, label %1390, label %1399

1390:                                             ; preds = %1382
  %1391 = shl i64 %63, 1
  %1392 = and i64 %1391, 4294967294
  %1393 = mul nuw nsw i64 %1392, 40
  %1394 = tail call ptr @realloc(ptr noundef %64, i64 noundef %1393) #24
  %1395 = icmp eq ptr %1394, null
  br i1 %1395, label %2788, label %1396

1396:                                             ; preds = %1390
  %1397 = and i64 %63, -4294967296
  %1398 = or disjoint i64 %1392, %1397
  br label %1399

1399:                                             ; preds = %1396, %1382
  %1400 = phi ptr [ %1394, %1396 ], [ %64, %1382 ]
  %1401 = phi i64 [ %1398, %1396 ], [ %63, %1382 ]
  %1402 = load ptr, ptr %3, align 8, !tbaa !49
  %1403 = ptrtoint ptr %67 to i64
  %1404 = ptrtoint ptr %1402 to i64
  %1405 = sub i64 %1403, %1404
  %1406 = lshr i64 %1401, 32
  %1407 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1400, i64 %1406
  store i64 %1405, ptr %1407, align 8, !tbaa !127
  %1408 = icmp eq ptr %68, null
  %1409 = ptrtoint ptr %68 to i64
  %1410 = add i64 %1409, 1
  %1411 = sub i64 %1410, %1404
  %1412 = select i1 %1408, i64 0, i64 %1411
  %1413 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1400, i64 %1406, i32 1
  store i64 %1412, ptr %1413, align 8, !tbaa !129
  %1414 = ptrtoint ptr %62 to i64
  %1415 = sub i64 %1414, %1404
  %1416 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1400, i64 %1406, i32 3
  store i64 %1415, ptr %1416, align 8, !tbaa !130
  %1417 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1400, i64 %1406, i32 4
  store i32 %1385, ptr %1417, align 8, !tbaa !131
  %1418 = icmp ult i32 %1385, 256
  br i1 %1418, label %1419, label %1456

1419:                                             ; preds = %1399
  %1420 = add nsw i64 %1415, 2
  %1421 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1400, i64 %1406, i32 2
  store i64 %1420, ptr %1421, align 8, !tbaa !132
  br label %1422

1422:                                             ; preds = %1447, %1419
  %1423 = phi ptr [ %62, %1419 ], [ %1449, %1447 ]
  %1424 = phi i32 [ %61, %1419 ], [ %1450, %1447 ]
  %1425 = load ptr, ptr %3, align 8, !tbaa !49
  %1426 = ptrtoint ptr %1423 to i64
  %1427 = ptrtoint ptr %1425 to i64
  %1428 = add i64 %1426, 3
  %1429 = sub i64 %1428, %1427
  %1430 = load i64, ptr %38, align 8, !tbaa !108
  %1431 = icmp ugt i64 %1429, %1430
  br i1 %1431, label %1432, label %1451

1432:                                             ; preds = %1422
  %1433 = icmp eq i64 %1430, 65536
  br i1 %1433, label %1447, label %1434

1434:                                             ; preds = %1432
  %1435 = shl i64 %1430, 1
  %1436 = tail call i64 @llvm.umin.i64(i64 %1435, i64 65536)
  store i64 %1436, ptr %38, align 8, !tbaa !108
  %1437 = tail call ptr @realloc(ptr noundef %1425, i64 noundef %1436) #24
  store ptr %1437, ptr %3, align 8, !tbaa !49
  %1438 = icmp eq ptr %1437, null
  br i1 %1438, label %1447, label %1439

1439:                                             ; preds = %1434
  %1440 = icmp eq ptr %1425, %1437
  br i1 %1440, label %1447, label %1441

1441:                                             ; preds = %1439
  %1442 = ptrtoint ptr %1437 to i64
  %1443 = sub i64 %1442, %1427
  %1444 = shl i64 %1443, 32
  %1445 = ashr exact i64 %1444, 32
  %1446 = getelementptr inbounds i8, ptr %1423, i64 %1445
  br label %1447

1447:                                             ; preds = %1439, %1441, %1434, %1432
  %1448 = phi i1 [ false, %1432 ], [ false, %1434 ], [ true, %1441 ], [ true, %1439 ]
  %1449 = phi ptr [ %1423, %1432 ], [ %1423, %1434 ], [ %1446, %1441 ], [ %1423, %1439 ]
  %1450 = phi i32 [ 15, %1432 ], [ 12, %1434 ], [ %1424, %1441 ], [ %1424, %1439 ]
  br i1 %1448, label %1422, label %2788, !llvm.loop !133

1451:                                             ; preds = %1422
  %1452 = getelementptr inbounds i8, ptr %1423, i64 1
  store i8 6, ptr %1423, align 1, !tbaa !51
  %1453 = trunc i32 %1385 to i8
  %1454 = getelementptr inbounds i8, ptr %1423, i64 2
  store i8 %1453, ptr %1452, align 1, !tbaa !51
  %1455 = getelementptr inbounds i8, ptr %1423, i64 3
  store i8 0, ptr %1454, align 1, !tbaa !51
  br label %1456

1456:                                             ; preds = %1451, %1399
  %1457 = phi ptr [ %1455, %1451 ], [ %62, %1399 ]
  %1458 = phi i32 [ %1424, %1451 ], [ %61, %1399 ]
  %1459 = and i64 %1401, -4294967296
  %1460 = add i64 %1459, 4294967296
  %1461 = and i64 %1401, 4294967295
  %1462 = or disjoint i64 %1460, %1461
  br label %2714

1463:                                             ; preds = %1376
  %1464 = and i64 %2, 8192
  %1465 = icmp eq i64 %1464, 0
  br i1 %1465, label %1466, label %2555

1466:                                             ; preds = %1463
  %1467 = icmp ult i64 %63, 4294967296
  br i1 %1467, label %1468, label %1472

1468:                                             ; preds = %1466
  %1469 = and i64 %2, 131072
  %1470 = icmp eq i64 %1469, 0
  br i1 %1470, label %1471, label %2555

1471:                                             ; preds = %1468
  tail call void @free(ptr noundef %64)
  br label %2788

1472:                                             ; preds = %1466, %1361
  %1473 = phi i8 [ %1378, %1466 ], [ %77, %1361 ]
  %1474 = icmp eq ptr %68, null
  br i1 %1474, label %1533, label %1475

1475:                                             ; preds = %1472, %1514
  %1476 = phi ptr [ %1516, %1514 ], [ %68, %1472 ]
  %1477 = phi ptr [ %1517, %1514 ], [ %67, %1472 ]
  %1478 = phi ptr [ %1518, %1514 ], [ %66, %1472 ]
  %1479 = phi ptr [ %1519, %1514 ], [ %65, %1472 ]
  %1480 = phi ptr [ %1520, %1514 ], [ %62, %1472 ]
  %1481 = phi i32 [ %1521, %1514 ], [ %61, %1472 ]
  %1482 = load ptr, ptr %3, align 8, !tbaa !49
  %1483 = ptrtoint ptr %1480 to i64
  %1484 = ptrtoint ptr %1482 to i64
  %1485 = add i64 %1483, 1
  %1486 = sub i64 %1485, %1484
  %1487 = load i64, ptr %38, align 8, !tbaa !108
  %1488 = icmp ugt i64 %1486, %1487
  br i1 %1488, label %1489, label %1522

1489:                                             ; preds = %1475
  %1490 = icmp eq i64 %1487, 65536
  br i1 %1490, label %1514, label %1491

1491:                                             ; preds = %1489
  %1492 = shl i64 %1487, 1
  %1493 = tail call i64 @llvm.umin.i64(i64 %1492, i64 65536)
  store i64 %1493, ptr %38, align 8, !tbaa !108
  %1494 = tail call ptr @realloc(ptr noundef %1482, i64 noundef %1493) #24
  store ptr %1494, ptr %3, align 8, !tbaa !49
  %1495 = icmp eq ptr %1494, null
  br i1 %1495, label %1514, label %1496

1496:                                             ; preds = %1491
  %1497 = icmp eq ptr %1482, %1494
  br i1 %1497, label %1514, label %1498

1498:                                             ; preds = %1496
  %1499 = ptrtoint ptr %1494 to i64
  %1500 = sub i64 %1499, %1484
  %1501 = shl i64 %1500, 32
  %1502 = ashr exact i64 %1501, 32
  %1503 = getelementptr inbounds i8, ptr %1480, i64 %1502
  %1504 = getelementptr inbounds i8, ptr %1477, i64 %1502
  %1505 = icmp eq ptr %1476, null
  %1506 = getelementptr inbounds i8, ptr %1476, i64 %1502
  %1507 = select i1 %1505, ptr null, ptr %1506
  %1508 = icmp eq ptr %1478, null
  %1509 = getelementptr inbounds i8, ptr %1478, i64 %1502
  %1510 = select i1 %1508, ptr null, ptr %1509
  %1511 = icmp eq ptr %1479, null
  %1512 = getelementptr inbounds i8, ptr %1479, i64 %1502
  %1513 = select i1 %1511, ptr null, ptr %1512
  br label %1514

1514:                                             ; preds = %1496, %1498, %1491, %1489
  %1515 = phi i1 [ false, %1489 ], [ false, %1491 ], [ true, %1498 ], [ true, %1496 ]
  %1516 = phi ptr [ %1476, %1489 ], [ %1476, %1491 ], [ %1507, %1498 ], [ %1476, %1496 ]
  %1517 = phi ptr [ %1477, %1489 ], [ %1477, %1491 ], [ %1504, %1498 ], [ %1477, %1496 ]
  %1518 = phi ptr [ %1478, %1489 ], [ %1478, %1491 ], [ %1510, %1498 ], [ %1478, %1496 ]
  %1519 = phi ptr [ %1479, %1489 ], [ %1479, %1491 ], [ %1513, %1498 ], [ %1479, %1496 ]
  %1520 = phi ptr [ %1480, %1489 ], [ %1480, %1491 ], [ %1503, %1498 ], [ %1480, %1496 ]
  %1521 = phi i32 [ 15, %1489 ], [ 12, %1491 ], [ %1481, %1498 ], [ %1481, %1496 ]
  br i1 %1515, label %1475, label %2788, !llvm.loop !134

1522:                                             ; preds = %1475
  %1523 = getelementptr inbounds i8, ptr %1480, i64 1
  store i8 20, ptr %1480, align 1, !tbaa !51
  %1524 = ptrtoint ptr %1476 to i64
  %1525 = sub i64 %1483, %1524
  %1526 = trunc i64 %1525 to i32
  %1527 = add i32 %1526, -3
  store i8 14, ptr %1476, align 1, !tbaa !51
  %1528 = trunc i32 %1527 to i8
  %1529 = getelementptr inbounds i8, ptr %1476, i64 1
  store i8 %1528, ptr %1529, align 1, !tbaa !51
  %1530 = lshr i32 %1527, 8
  %1531 = trunc i32 %1530 to i8
  %1532 = getelementptr inbounds i8, ptr %1476, i64 2
  store i8 %1531, ptr %1532, align 1, !tbaa !51
  br label %1533

1533:                                             ; preds = %1522, %1472
  %1534 = phi ptr [ %1476, %1522 ], [ null, %1472 ]
  %1535 = phi ptr [ %1477, %1522 ], [ %67, %1472 ]
  %1536 = phi ptr [ %1478, %1522 ], [ %66, %1472 ]
  %1537 = phi ptr [ %1479, %1522 ], [ %65, %1472 ]
  %1538 = phi ptr [ %1523, %1522 ], [ %62, %1472 ]
  %1539 = phi i32 [ %1481, %1522 ], [ %61, %1472 ]
  %1540 = icmp ult i64 %63, 4294967296
  br i1 %1540, label %1541, label %1545

1541:                                             ; preds = %1533
  %1542 = and i64 %2, 131072
  %1543 = icmp eq i64 %1542, 0
  br i1 %1543, label %1544, label %2567

1544:                                             ; preds = %1541
  tail call void @free(ptr noundef %64)
  br label %2788

1545:                                             ; preds = %1533
  %1546 = and i64 %63, -4294967296
  %1547 = add i64 %1546, -4294967296
  %1548 = and i64 %63, 4294967295
  %1549 = or disjoint i64 %1547, %1548
  %1550 = load ptr, ptr %3, align 8, !tbaa !49
  %1551 = lshr exact i64 %1547, 32
  %1552 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %64, i64 %1551
  %1553 = load i64, ptr %1552, align 8, !tbaa !127
  %1554 = getelementptr inbounds i8, ptr %1550, i64 %1553
  %1555 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %64, i64 %1551, i32 1
  %1556 = load i64, ptr %1555, align 8, !tbaa !129
  %1557 = icmp eq i64 %1556, 0
  %1558 = getelementptr inbounds i8, ptr %1550, i64 %1556
  %1559 = getelementptr inbounds i8, ptr %1558, i64 -1
  %1560 = select i1 %1557, ptr null, ptr %1559
  %1561 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %64, i64 %1551, i32 3
  %1562 = load i64, ptr %1561, align 8, !tbaa !130
  %1563 = getelementptr inbounds i8, ptr %1550, i64 %1562
  %1564 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %64, i64 %1551, i32 4
  %1565 = load i32, ptr %1564, align 8, !tbaa !131
  %1566 = icmp ult i32 %1565, 256
  br i1 %1566, label %1567, label %1620

1567:                                             ; preds = %1545
  %1568 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %64, i64 %1551, i32 2
  %1569 = load i64, ptr %1568, align 8, !tbaa !132
  %1570 = getelementptr inbounds i8, ptr %1550, i64 %1569
  %1571 = sub i32 %69, %1565
  %1572 = trunc i32 %1571 to i8
  store i8 %1572, ptr %1570, align 1, !tbaa !51
  br label %1573

1573:                                             ; preds = %1608, %1567
  %1574 = phi ptr [ %1560, %1567 ], [ %1610, %1608 ]
  %1575 = phi ptr [ %1554, %1567 ], [ %1611, %1608 ]
  %1576 = phi ptr [ %1563, %1567 ], [ %1612, %1608 ]
  %1577 = phi ptr [ %1538, %1567 ], [ %1613, %1608 ]
  %1578 = phi i32 [ %1539, %1567 ], [ %1614, %1608 ]
  %1579 = load ptr, ptr %3, align 8, !tbaa !49
  %1580 = ptrtoint ptr %1577 to i64
  %1581 = ptrtoint ptr %1579 to i64
  %1582 = add i64 %1580, 3
  %1583 = sub i64 %1582, %1581
  %1584 = load i64, ptr %38, align 8, !tbaa !108
  %1585 = icmp ule i64 %1583, %1584
  br i1 %1585, label %1615, label %1586

1586:                                             ; preds = %1573
  %1587 = icmp eq i64 %1584, 65536
  br i1 %1587, label %1608, label %1588

1588:                                             ; preds = %1586
  %1589 = shl i64 %1584, 1
  %1590 = tail call i64 @llvm.umin.i64(i64 %1589, i64 65536)
  store i64 %1590, ptr %38, align 8, !tbaa !108
  %1591 = tail call ptr @realloc(ptr noundef %1579, i64 noundef %1590) #24
  store ptr %1591, ptr %3, align 8, !tbaa !49
  %1592 = icmp eq ptr %1591, null
  br i1 %1592, label %1608, label %1593

1593:                                             ; preds = %1588
  %1594 = icmp eq ptr %1579, %1591
  br i1 %1594, label %1608, label %1595

1595:                                             ; preds = %1593
  %1596 = ptrtoint ptr %1591 to i64
  %1597 = sub i64 %1596, %1581
  %1598 = shl i64 %1597, 32
  %1599 = ashr exact i64 %1598, 32
  %1600 = getelementptr inbounds i8, ptr %1577, i64 %1599
  %1601 = getelementptr inbounds i8, ptr %1575, i64 %1599
  %1602 = icmp eq ptr %1574, null
  %1603 = getelementptr inbounds i8, ptr %1574, i64 %1599
  %1604 = select i1 %1602, ptr null, ptr %1603
  %1605 = icmp eq ptr %1576, null
  %1606 = getelementptr inbounds i8, ptr %1576, i64 %1599
  %1607 = select i1 %1605, ptr null, ptr %1606
  br label %1608

1608:                                             ; preds = %1593, %1595, %1588, %1586
  %1609 = phi i1 [ false, %1586 ], [ false, %1588 ], [ true, %1595 ], [ true, %1593 ]
  %1610 = phi ptr [ %1574, %1586 ], [ %1574, %1588 ], [ %1604, %1595 ], [ %1574, %1593 ]
  %1611 = phi ptr [ %1575, %1586 ], [ %1575, %1588 ], [ %1601, %1595 ], [ %1575, %1593 ]
  %1612 = phi ptr [ %1576, %1586 ], [ %1576, %1588 ], [ %1607, %1595 ], [ %1576, %1593 ]
  %1613 = phi ptr [ %1577, %1586 ], [ %1577, %1588 ], [ %1600, %1595 ], [ %1577, %1593 ]
  %1614 = phi i32 [ 15, %1586 ], [ 12, %1588 ], [ %1578, %1595 ], [ %1578, %1593 ]
  br i1 %1609, label %1573, label %1620, !llvm.loop !135

1615:                                             ; preds = %1573
  %1616 = getelementptr inbounds i8, ptr %1577, i64 1
  store i8 7, ptr %1577, align 1, !tbaa !51
  %1617 = trunc i32 %1565 to i8
  %1618 = getelementptr inbounds i8, ptr %1577, i64 2
  store i8 %1617, ptr %1616, align 1, !tbaa !51
  %1619 = getelementptr inbounds i8, ptr %1577, i64 3
  store i8 %1572, ptr %1618, align 1, !tbaa !51
  br label %1620

1620:                                             ; preds = %1608, %1615, %1545
  %1621 = phi i1 [ true, %1545 ], [ %1585, %1615 ], [ %1585, %1608 ]
  %1622 = phi ptr [ %1560, %1545 ], [ %1574, %1615 ], [ %1610, %1608 ]
  %1623 = phi ptr [ %1554, %1545 ], [ %1575, %1615 ], [ %1611, %1608 ]
  %1624 = phi ptr [ %1563, %1545 ], [ %1576, %1615 ], [ %1612, %1608 ]
  %1625 = phi ptr [ %1538, %1545 ], [ %1619, %1615 ], [ %1613, %1608 ]
  %1626 = phi i32 [ %1539, %1545 ], [ %1578, %1615 ], [ %1614, %1608 ]
  br i1 %1621, label %2714, label %2788

1627:                                             ; preds = %1376
  %1628 = and i64 %2, 33792
  %1629 = icmp eq i64 %1628, 0
  br i1 %1629, label %1630, label %2555

1630:                                             ; preds = %1627, %1367, %1364
  %1631 = phi i8 [ %77, %1364 ], [ %77, %1367 ], [ %1378, %1627 ]
  %1632 = and i64 %2, 1024
  %1633 = icmp eq i64 %1632, 0
  br i1 %1633, label %1634, label %2567

1634:                                             ; preds = %1630, %1665
  %1635 = phi ptr [ %1667, %1665 ], [ %68, %1630 ]
  %1636 = phi ptr [ %1668, %1665 ], [ %67, %1630 ]
  %1637 = phi ptr [ %1669, %1665 ], [ %62, %1630 ]
  %1638 = phi i32 [ %1670, %1665 ], [ %61, %1630 ]
  %1639 = load ptr, ptr %3, align 8, !tbaa !49
  %1640 = ptrtoint ptr %1637 to i64
  %1641 = ptrtoint ptr %1639 to i64
  %1642 = add i64 %1640, 3
  %1643 = sub i64 %1642, %1641
  %1644 = load i64, ptr %38, align 8, !tbaa !108
  %1645 = icmp ugt i64 %1643, %1644
  br i1 %1645, label %1646, label %1671

1646:                                             ; preds = %1634
  %1647 = icmp eq i64 %1644, 65536
  br i1 %1647, label %1665, label %1648

1648:                                             ; preds = %1646
  %1649 = shl i64 %1644, 1
  %1650 = tail call i64 @llvm.umin.i64(i64 %1649, i64 65536)
  store i64 %1650, ptr %38, align 8, !tbaa !108
  %1651 = tail call ptr @realloc(ptr noundef %1639, i64 noundef %1650) #24
  store ptr %1651, ptr %3, align 8, !tbaa !49
  %1652 = icmp eq ptr %1651, null
  br i1 %1652, label %1665, label %1653

1653:                                             ; preds = %1648
  %1654 = icmp eq ptr %1639, %1651
  br i1 %1654, label %1665, label %1655

1655:                                             ; preds = %1653
  %1656 = ptrtoint ptr %1651 to i64
  %1657 = sub i64 %1656, %1641
  %1658 = shl i64 %1657, 32
  %1659 = ashr exact i64 %1658, 32
  %1660 = getelementptr inbounds i8, ptr %1637, i64 %1659
  %1661 = getelementptr inbounds i8, ptr %1636, i64 %1659
  %1662 = icmp eq ptr %1635, null
  %1663 = getelementptr inbounds i8, ptr %1635, i64 %1659
  %1664 = select i1 %1662, ptr null, ptr %1663
  br label %1665

1665:                                             ; preds = %1653, %1655, %1648, %1646
  %1666 = phi i1 [ false, %1646 ], [ false, %1648 ], [ true, %1655 ], [ true, %1653 ]
  %1667 = phi ptr [ %1635, %1646 ], [ %1635, %1648 ], [ %1664, %1655 ], [ %1635, %1653 ]
  %1668 = phi ptr [ %1636, %1646 ], [ %1636, %1648 ], [ %1661, %1655 ], [ %1636, %1653 ]
  %1669 = phi ptr [ %1637, %1646 ], [ %1637, %1648 ], [ %1660, %1655 ], [ %1637, %1653 ]
  %1670 = phi i32 [ 15, %1646 ], [ 12, %1648 ], [ %1638, %1655 ], [ %1638, %1653 ]
  br i1 %1666, label %1634, label %2788, !llvm.loop !136

1671:                                             ; preds = %1634
  %1672 = getelementptr inbounds i8, ptr %1637, i64 6
  %1673 = ptrtoint ptr %1672 to i64
  %1674 = ptrtoint ptr %1636 to i64
  %1675 = sub i64 %1673, %1674
  %1676 = trunc i64 %1675 to i32
  %1677 = add i32 %1676, -3
  %1678 = getelementptr inbounds i8, ptr %1637, i64 3
  %1679 = icmp eq ptr %1637, %1636
  br i1 %1679, label %1687, label %1680

1680:                                             ; preds = %1671, %1680
  %1681 = phi ptr [ %1685, %1680 ], [ %1678, %1671 ]
  %1682 = phi ptr [ %1683, %1680 ], [ %1637, %1671 ]
  %1683 = getelementptr inbounds i8, ptr %1682, i64 -1
  %1684 = load i8, ptr %1683, align 1, !tbaa !51
  %1685 = getelementptr inbounds i8, ptr %1681, i64 -1
  store i8 %1684, ptr %1685, align 1, !tbaa !51
  %1686 = icmp eq ptr %1683, %1636
  br i1 %1686, label %1687, label %1680, !llvm.loop !114

1687:                                             ; preds = %1680, %1671
  store i8 15, ptr %1636, align 1, !tbaa !51
  %1688 = trunc i32 %1677 to i8
  %1689 = getelementptr inbounds i8, ptr %1636, i64 1
  store i8 %1688, ptr %1689, align 1, !tbaa !51
  %1690 = lshr i32 %1677, 8
  %1691 = trunc i32 %1690 to i8
  %1692 = getelementptr inbounds i8, ptr %1636, i64 2
  store i8 %1691, ptr %1692, align 1, !tbaa !51
  %1693 = icmp eq ptr %1635, null
  br i1 %1693, label %1705, label %1694

1694:                                             ; preds = %1687
  %1695 = ptrtoint ptr %1678 to i64
  %1696 = ptrtoint ptr %1635 to i64
  %1697 = sub i64 %1695, %1696
  %1698 = trunc i64 %1697 to i32
  %1699 = add i32 %1698, -3
  store i8 14, ptr %1635, align 1, !tbaa !51
  %1700 = trunc i32 %1699 to i8
  %1701 = getelementptr inbounds i8, ptr %1635, i64 1
  store i8 %1700, ptr %1701, align 1, !tbaa !51
  %1702 = lshr i32 %1699, 8
  %1703 = trunc i32 %1702 to i8
  %1704 = getelementptr inbounds i8, ptr %1635, i64 2
  store i8 %1703, ptr %1704, align 1, !tbaa !51
  br label %1705

1705:                                             ; preds = %1694, %1687
  br label %1706

1706:                                             ; preds = %1705, %1735
  %1707 = phi ptr [ %1737, %1735 ], [ %1678, %1705 ]
  %1708 = phi ptr [ %1738, %1735 ], [ %1678, %1705 ]
  %1709 = phi i32 [ %1739, %1735 ], [ %1638, %1705 ]
  %1710 = load ptr, ptr %3, align 8, !tbaa !49
  %1711 = ptrtoint ptr %1708 to i64
  %1712 = ptrtoint ptr %1710 to i64
  %1713 = add i64 %1711, 3
  %1714 = sub i64 %1713, %1712
  %1715 = load i64, ptr %38, align 8, !tbaa !108
  %1716 = icmp ugt i64 %1714, %1715
  br i1 %1716, label %1717, label %1740

1717:                                             ; preds = %1706
  %1718 = icmp eq i64 %1715, 65536
  br i1 %1718, label %1735, label %1719

1719:                                             ; preds = %1717
  %1720 = shl i64 %1715, 1
  %1721 = tail call i64 @llvm.umin.i64(i64 %1720, i64 65536)
  store i64 %1721, ptr %38, align 8, !tbaa !108
  %1722 = tail call ptr @realloc(ptr noundef %1710, i64 noundef %1721) #24
  store ptr %1722, ptr %3, align 8, !tbaa !49
  %1723 = icmp eq ptr %1722, null
  br i1 %1723, label %1735, label %1724

1724:                                             ; preds = %1719
  %1725 = icmp eq ptr %1710, %1722
  br i1 %1725, label %1735, label %1726

1726:                                             ; preds = %1724
  %1727 = ptrtoint ptr %1722 to i64
  %1728 = sub i64 %1727, %1712
  %1729 = shl i64 %1728, 32
  %1730 = ashr exact i64 %1729, 32
  %1731 = getelementptr inbounds i8, ptr %1708, i64 %1730
  %1732 = icmp eq ptr %1707, null
  %1733 = getelementptr inbounds i8, ptr %1707, i64 %1730
  %1734 = select i1 %1732, ptr null, ptr %1733
  br label %1735

1735:                                             ; preds = %1724, %1726, %1719, %1717
  %1736 = phi i1 [ false, %1717 ], [ false, %1719 ], [ true, %1726 ], [ true, %1724 ]
  %1737 = phi ptr [ %1707, %1717 ], [ %1707, %1719 ], [ %1734, %1726 ], [ %1707, %1724 ]
  %1738 = phi ptr [ %1708, %1717 ], [ %1708, %1719 ], [ %1731, %1726 ], [ %1708, %1724 ]
  %1739 = phi i32 [ 15, %1717 ], [ 12, %1719 ], [ %1709, %1726 ], [ %1709, %1724 ]
  br i1 %1736, label %1706, label %2788, !llvm.loop !137

1740:                                             ; preds = %1706
  %1741 = getelementptr inbounds i8, ptr %1708, i64 3
  br label %2714

1742:                                             ; preds = %1376
  %1743 = and i64 %2, 4608
  %1744 = icmp eq i64 %1743, 512
  br i1 %1744, label %1745, label %2555

1745:                                             ; preds = %1742, %1370
  %1746 = phi i8 [ %77, %1370 ], [ %1378, %1742 ]
  %1747 = load ptr, ptr %5, align 8, !tbaa !38
  %1748 = icmp eq ptr %1747, %9
  br i1 %1748, label %2043, label %1749

1749:                                             ; preds = %1745
  %1750 = load ptr, ptr %5, align 8, !tbaa !38
  %1751 = icmp eq ptr %1750, %9
  br i1 %1751, label %1776, label %1752

1752:                                             ; preds = %1749, %1773
  %1753 = phi i32 [ %1774, %1773 ], [ -1, %1749 ]
  %1754 = phi ptr [ %1755, %1773 ], [ %1750, %1749 ]
  %1755 = getelementptr inbounds i8, ptr %1754, i64 1
  %1756 = load i8, ptr %1754, align 1, !tbaa !51
  br i1 %58, label %1757, label %1761

1757:                                             ; preds = %1752
  %1758 = zext i8 %1756 to i64
  %1759 = getelementptr inbounds i8, ptr %11, i64 %1758
  %1760 = load i8, ptr %1759, align 1, !tbaa !51
  br label %1761

1761:                                             ; preds = %1757, %1752
  %1762 = phi i8 [ %1760, %1757 ], [ %1756, %1752 ]
  %1763 = zext i8 %1762 to i32
  %1764 = add i8 %1762, -58
  %1765 = icmp ult i8 %1764, -10
  br i1 %1765, label %1776, label %1766

1766:                                             ; preds = %1761
  %1767 = icmp slt i32 %1753, 32768
  br i1 %1767, label %1768, label %1773

1768:                                             ; preds = %1766
  %1769 = tail call i32 @llvm.smax.i32(i32 %1753, i32 0)
  %1770 = mul nsw i32 %1769, 10
  %1771 = add nsw i32 %1770, -48
  %1772 = add i32 %1771, %1763
  br label %1773

1773:                                             ; preds = %1768, %1766
  %1774 = phi i32 [ %1772, %1768 ], [ %1753, %1766 ]
  %1775 = icmp eq ptr %1755, %9
  br i1 %1775, label %1776, label %1752, !llvm.loop !138

1776:                                             ; preds = %1773, %1761, %1749
  %1777 = phi ptr [ %1750, %1749 ], [ %1755, %1761 ], [ %1755, %1773 ]
  %1778 = phi i32 [ -1, %1749 ], [ %1774, %1773 ], [ %1753, %1761 ]
  %1779 = phi i8 [ %1746, %1749 ], [ %1762, %1761 ], [ %1762, %1773 ]
  store ptr %1777, ptr %5, align 8, !tbaa !38
  %1780 = icmp eq i8 %1779, 44
  br i1 %1780, label %1781, label %1814

1781:                                             ; preds = %1776
  %1782 = load ptr, ptr %5, align 8, !tbaa !38
  %1783 = icmp eq ptr %1782, %9
  br i1 %1783, label %1808, label %1784

1784:                                             ; preds = %1781, %1805
  %1785 = phi i32 [ %1806, %1805 ], [ -1, %1781 ]
  %1786 = phi ptr [ %1787, %1805 ], [ %1782, %1781 ]
  %1787 = getelementptr inbounds i8, ptr %1786, i64 1
  %1788 = load i8, ptr %1786, align 1, !tbaa !51
  br i1 %58, label %1789, label %1793

1789:                                             ; preds = %1784
  %1790 = zext i8 %1788 to i64
  %1791 = getelementptr inbounds i8, ptr %11, i64 %1790
  %1792 = load i8, ptr %1791, align 1, !tbaa !51
  br label %1793

1793:                                             ; preds = %1789, %1784
  %1794 = phi i8 [ %1792, %1789 ], [ %1788, %1784 ]
  %1795 = zext i8 %1794 to i32
  %1796 = add i8 %1794, -58
  %1797 = icmp ult i8 %1796, -10
  br i1 %1797, label %1808, label %1798

1798:                                             ; preds = %1793
  %1799 = icmp slt i32 %1785, 32768
  br i1 %1799, label %1800, label %1805

1800:                                             ; preds = %1798
  %1801 = tail call i32 @llvm.smax.i32(i32 %1785, i32 0)
  %1802 = mul nsw i32 %1801, 10
  %1803 = add nsw i32 %1802, -48
  %1804 = add i32 %1803, %1795
  br label %1805

1805:                                             ; preds = %1800, %1798
  %1806 = phi i32 [ %1804, %1800 ], [ %1785, %1798 ]
  %1807 = icmp eq ptr %1787, %9
  br i1 %1807, label %1808, label %1784, !llvm.loop !139

1808:                                             ; preds = %1805, %1793, %1781
  %1809 = phi ptr [ %1782, %1781 ], [ %1787, %1793 ], [ %1787, %1805 ]
  %1810 = phi i32 [ -1, %1781 ], [ %1806, %1805 ], [ %1785, %1793 ]
  %1811 = phi i8 [ %1779, %1781 ], [ %1794, %1793 ], [ %1794, %1805 ]
  store ptr %1809, ptr %5, align 8, !tbaa !38
  %1812 = icmp slt i32 %1810, 0
  %1813 = select i1 %1812, i32 32767, i32 %1810
  br label %1814

1814:                                             ; preds = %1776, %1808
  %1815 = phi i32 [ %1813, %1808 ], [ %1778, %1776 ]
  %1816 = phi i8 [ %1811, %1808 ], [ %1779, %1776 ]
  %1817 = icmp slt i32 %1778, 0
  %1818 = icmp sgt i32 %1778, %1815
  %1819 = select i1 %1817, i1 true, i1 %1818
  br i1 %1819, label %2043, label %1820

1820:                                             ; preds = %1814
  %1821 = and i64 %2, 4096
  %1822 = icmp eq i64 %1821, 0
  br i1 %1822, label %1823, label %1835

1823:                                             ; preds = %1820
  %1824 = icmp eq i8 %1816, 92
  br i1 %1824, label %1825, label %2043

1825:                                             ; preds = %1823
  %1826 = load ptr, ptr %5, align 8, !tbaa !38
  %1827 = icmp eq ptr %1826, %9
  br i1 %1827, label %2043, label %1828

1828:                                             ; preds = %1825
  %1829 = getelementptr inbounds i8, ptr %1826, i64 1
  store ptr %1829, ptr %5, align 8, !tbaa !38
  %1830 = load i8, ptr %1826, align 1, !tbaa !51
  br i1 %58, label %1831, label %1835

1831:                                             ; preds = %1828
  %1832 = zext i8 %1830 to i64
  %1833 = getelementptr inbounds i8, ptr %11, i64 %1832
  %1834 = load i8, ptr %1833, align 1, !tbaa !51
  br label %1835

1835:                                             ; preds = %1828, %1831, %1820
  %1836 = phi i8 [ %1816, %1820 ], [ %1834, %1831 ], [ %1830, %1828 ]
  %1837 = icmp eq i8 %1836, 125
  br i1 %1837, label %1838, label %2043

1838:                                             ; preds = %1835
  %1839 = icmp eq ptr %66, null
  br i1 %1839, label %1840, label %1847

1840:                                             ; preds = %1838
  %1841 = and i64 %2, 2097184
  %1842 = icmp eq i64 %1841, 32
  br i1 %1842, label %1843, label %1844

1843:                                             ; preds = %1840
  tail call void @free(ptr noundef %64)
  br label %2055

1844:                                             ; preds = %1840
  %1845 = and i64 %2, 16
  %1846 = icmp eq i64 %1845, 0
  br i1 %1846, label %2051, label %1847

1847:                                             ; preds = %1844, %1838
  %1848 = phi ptr [ %66, %1838 ], [ %62, %1844 ]
  %1849 = icmp sgt i32 %1815, 32767
  br i1 %1849, label %1850, label %1851

1850:                                             ; preds = %1847
  tail call void @free(ptr noundef %64)
  br label %2055

1851:                                             ; preds = %1847
  %1852 = icmp eq i32 %1815, 0
  br i1 %1852, label %1853, label %1921

1853:                                             ; preds = %1851, %1892
  %1854 = phi ptr [ %1894, %1892 ], [ %68, %1851 ]
  %1855 = phi ptr [ %1895, %1892 ], [ %67, %1851 ]
  %1856 = phi ptr [ %1896, %1892 ], [ %1848, %1851 ]
  %1857 = phi ptr [ %1897, %1892 ], [ %65, %1851 ]
  %1858 = phi ptr [ %1898, %1892 ], [ %62, %1851 ]
  %1859 = phi i32 [ %1899, %1892 ], [ %61, %1851 ]
  %1860 = load ptr, ptr %3, align 8, !tbaa !49
  %1861 = ptrtoint ptr %1858 to i64
  %1862 = ptrtoint ptr %1860 to i64
  %1863 = add i64 %1861, 3
  %1864 = sub i64 %1863, %1862
  %1865 = load i64, ptr %38, align 8, !tbaa !108
  %1866 = icmp ugt i64 %1864, %1865
  br i1 %1866, label %1867, label %1900

1867:                                             ; preds = %1853
  %1868 = icmp eq i64 %1865, 65536
  br i1 %1868, label %1892, label %1869

1869:                                             ; preds = %1867
  %1870 = shl i64 %1865, 1
  %1871 = tail call i64 @llvm.umin.i64(i64 %1870, i64 65536)
  store i64 %1871, ptr %38, align 8, !tbaa !108
  %1872 = tail call ptr @realloc(ptr noundef %1860, i64 noundef %1871) #24
  store ptr %1872, ptr %3, align 8, !tbaa !49
  %1873 = icmp eq ptr %1872, null
  br i1 %1873, label %1892, label %1874

1874:                                             ; preds = %1869
  %1875 = icmp eq ptr %1860, %1872
  br i1 %1875, label %1892, label %1876

1876:                                             ; preds = %1874
  %1877 = ptrtoint ptr %1872 to i64
  %1878 = sub i64 %1877, %1862
  %1879 = shl i64 %1878, 32
  %1880 = ashr exact i64 %1879, 32
  %1881 = getelementptr inbounds i8, ptr %1858, i64 %1880
  %1882 = getelementptr inbounds i8, ptr %1855, i64 %1880
  %1883 = icmp eq ptr %1854, null
  %1884 = getelementptr inbounds i8, ptr %1854, i64 %1880
  %1885 = select i1 %1883, ptr null, ptr %1884
  %1886 = icmp eq ptr %1856, null
  %1887 = getelementptr inbounds i8, ptr %1856, i64 %1880
  %1888 = select i1 %1886, ptr null, ptr %1887
  %1889 = icmp eq ptr %1857, null
  %1890 = getelementptr inbounds i8, ptr %1857, i64 %1880
  %1891 = select i1 %1889, ptr null, ptr %1890
  br label %1892

1892:                                             ; preds = %1874, %1876, %1869, %1867
  %1893 = phi i1 [ false, %1867 ], [ false, %1869 ], [ true, %1876 ], [ true, %1874 ]
  %1894 = phi ptr [ %1854, %1867 ], [ %1854, %1869 ], [ %1885, %1876 ], [ %1854, %1874 ]
  %1895 = phi ptr [ %1855, %1867 ], [ %1855, %1869 ], [ %1882, %1876 ], [ %1855, %1874 ]
  %1896 = phi ptr [ %1856, %1867 ], [ %1856, %1869 ], [ %1888, %1876 ], [ %1856, %1874 ]
  %1897 = phi ptr [ %1857, %1867 ], [ %1857, %1869 ], [ %1891, %1876 ], [ %1857, %1874 ]
  %1898 = phi ptr [ %1858, %1867 ], [ %1858, %1869 ], [ %1881, %1876 ], [ %1858, %1874 ]
  %1899 = phi i32 [ 15, %1867 ], [ 12, %1869 ], [ %1859, %1876 ], [ %1859, %1874 ]
  br i1 %1893, label %1853, label %2055, !llvm.loop !140

1900:                                             ; preds = %1853
  %1901 = getelementptr inbounds i8, ptr %1858, i64 3
  %1902 = ptrtoint ptr %1901 to i64
  %1903 = ptrtoint ptr %1856 to i64
  %1904 = sub i64 %1902, %1903
  %1905 = trunc i64 %1904 to i32
  %1906 = add i32 %1905, -3
  %1907 = icmp eq ptr %1858, %1856
  br i1 %1907, label %1915, label %1908

1908:                                             ; preds = %1900, %1908
  %1909 = phi ptr [ %1913, %1908 ], [ %1901, %1900 ]
  %1910 = phi ptr [ %1911, %1908 ], [ %1858, %1900 ]
  %1911 = getelementptr inbounds i8, ptr %1910, i64 -1
  %1912 = load i8, ptr %1911, align 1, !tbaa !51
  %1913 = getelementptr inbounds i8, ptr %1909, i64 -1
  store i8 %1912, ptr %1913, align 1, !tbaa !51
  %1914 = icmp eq ptr %1911, %1856
  br i1 %1914, label %1915, label %1908, !llvm.loop !114

1915:                                             ; preds = %1908, %1900
  store i8 13, ptr %1856, align 1, !tbaa !51
  %1916 = trunc i32 %1906 to i8
  %1917 = getelementptr inbounds i8, ptr %1856, i64 1
  store i8 %1916, ptr %1917, align 1, !tbaa !51
  %1918 = lshr i32 %1906, 8
  %1919 = trunc i32 %1918 to i8
  %1920 = getelementptr inbounds i8, ptr %1856, i64 2
  store i8 %1919, ptr %1920, align 1, !tbaa !51
  br label %2055

1921:                                             ; preds = %1851
  %1922 = icmp sgt i32 %1815, 1
  %1923 = select i1 %1922, i64 20, i64 10
  br label %1924

1924:                                             ; preds = %1963, %1921
  %1925 = phi ptr [ %68, %1921 ], [ %1965, %1963 ]
  %1926 = phi ptr [ %67, %1921 ], [ %1966, %1963 ]
  %1927 = phi ptr [ %1848, %1921 ], [ %1967, %1963 ]
  %1928 = phi ptr [ %65, %1921 ], [ %1968, %1963 ]
  %1929 = phi ptr [ %62, %1921 ], [ %1969, %1963 ]
  %1930 = phi i32 [ %61, %1921 ], [ %1970, %1963 ]
  %1931 = load ptr, ptr %3, align 8, !tbaa !49
  %1932 = ptrtoint ptr %1929 to i64
  %1933 = ptrtoint ptr %1931 to i64
  %1934 = add i64 %1923, %1932
  %1935 = sub i64 %1934, %1933
  %1936 = load i64, ptr %38, align 8, !tbaa !108
  %1937 = icmp ugt i64 %1935, %1936
  br i1 %1937, label %1938, label %1971

1938:                                             ; preds = %1924
  %1939 = icmp eq i64 %1936, 65536
  br i1 %1939, label %1963, label %1940

1940:                                             ; preds = %1938
  %1941 = shl i64 %1936, 1
  %1942 = tail call i64 @llvm.umin.i64(i64 %1941, i64 65536)
  store i64 %1942, ptr %38, align 8, !tbaa !108
  %1943 = tail call ptr @realloc(ptr noundef %1931, i64 noundef %1942) #24
  store ptr %1943, ptr %3, align 8, !tbaa !49
  %1944 = icmp eq ptr %1943, null
  br i1 %1944, label %1963, label %1945

1945:                                             ; preds = %1940
  %1946 = icmp eq ptr %1931, %1943
  br i1 %1946, label %1963, label %1947

1947:                                             ; preds = %1945
  %1948 = ptrtoint ptr %1943 to i64
  %1949 = sub i64 %1948, %1933
  %1950 = shl i64 %1949, 32
  %1951 = ashr exact i64 %1950, 32
  %1952 = getelementptr inbounds i8, ptr %1929, i64 %1951
  %1953 = getelementptr inbounds i8, ptr %1926, i64 %1951
  %1954 = icmp eq ptr %1925, null
  %1955 = getelementptr inbounds i8, ptr %1925, i64 %1951
  %1956 = select i1 %1954, ptr null, ptr %1955
  %1957 = icmp eq ptr %1927, null
  %1958 = getelementptr inbounds i8, ptr %1927, i64 %1951
  %1959 = select i1 %1957, ptr null, ptr %1958
  %1960 = icmp eq ptr %1928, null
  %1961 = getelementptr inbounds i8, ptr %1928, i64 %1951
  %1962 = select i1 %1960, ptr null, ptr %1961
  br label %1963

1963:                                             ; preds = %1945, %1947, %1940, %1938
  %1964 = phi i1 [ false, %1938 ], [ false, %1940 ], [ true, %1947 ], [ true, %1945 ]
  %1965 = phi ptr [ %1925, %1938 ], [ %1925, %1940 ], [ %1956, %1947 ], [ %1925, %1945 ]
  %1966 = phi ptr [ %1926, %1938 ], [ %1926, %1940 ], [ %1953, %1947 ], [ %1926, %1945 ]
  %1967 = phi ptr [ %1927, %1938 ], [ %1927, %1940 ], [ %1959, %1947 ], [ %1927, %1945 ]
  %1968 = phi ptr [ %1928, %1938 ], [ %1928, %1940 ], [ %1962, %1947 ], [ %1928, %1945 ]
  %1969 = phi ptr [ %1929, %1938 ], [ %1929, %1940 ], [ %1952, %1947 ], [ %1929, %1945 ]
  %1970 = phi i32 [ 15, %1938 ], [ 12, %1940 ], [ %1930, %1947 ], [ %1930, %1945 ]
  br i1 %1964, label %1924, label %2055, !llvm.loop !141

1971:                                             ; preds = %1924
  %1972 = getelementptr inbounds i8, ptr %1929, i64 5
  %1973 = select i1 %1922, i64 5, i64 0
  %1974 = getelementptr inbounds i8, ptr %1972, i64 %1973
  %1975 = ptrtoint ptr %1974 to i64
  %1976 = ptrtoint ptr %1927 to i64
  %1977 = sub i64 %1975, %1976
  %1978 = trunc i64 %1977 to i32
  %1979 = add i32 %1978, -3
  %1980 = icmp eq ptr %1929, %1927
  br i1 %1980, label %1988, label %1981

1981:                                             ; preds = %1971, %1981
  %1982 = phi ptr [ %1986, %1981 ], [ %1972, %1971 ]
  %1983 = phi ptr [ %1984, %1981 ], [ %1929, %1971 ]
  %1984 = getelementptr inbounds i8, ptr %1983, i64 -1
  %1985 = load i8, ptr %1984, align 1, !tbaa !51
  %1986 = getelementptr inbounds i8, ptr %1982, i64 -1
  store i8 %1985, ptr %1986, align 1, !tbaa !51
  %1987 = icmp eq ptr %1984, %1927
  br i1 %1987, label %1988, label %1981, !llvm.loop !142

1988:                                             ; preds = %1981, %1971
  store i8 21, ptr %1927, align 1, !tbaa !51
  %1989 = trunc i32 %1979 to i8
  %1990 = getelementptr inbounds i8, ptr %1927, i64 1
  store i8 %1989, ptr %1990, align 1, !tbaa !51
  %1991 = lshr i32 %1979, 8
  %1992 = trunc i32 %1991 to i8
  %1993 = getelementptr inbounds i8, ptr %1927, i64 2
  store i8 %1992, ptr %1993, align 1, !tbaa !51
  %1994 = trunc i32 %1778 to i8
  %1995 = getelementptr inbounds i8, ptr %1927, i64 3
  store i8 %1994, ptr %1995, align 1, !tbaa !51
  %1996 = lshr i32 %1778, 8
  %1997 = trunc i32 %1996 to i8
  %1998 = getelementptr inbounds i8, ptr %1927, i64 4
  store i8 %1997, ptr %1998, align 1, !tbaa !51
  %1999 = getelementptr inbounds i8, ptr %1929, i64 10
  %2000 = icmp eq ptr %1972, %1927
  br i1 %2000, label %2008, label %2001

2001:                                             ; preds = %1988, %2001
  %2002 = phi ptr [ %2006, %2001 ], [ %1999, %1988 ]
  %2003 = phi ptr [ %2004, %2001 ], [ %1972, %1988 ]
  %2004 = getelementptr inbounds i8, ptr %2003, i64 -1
  %2005 = load i8, ptr %2004, align 1, !tbaa !51
  %2006 = getelementptr inbounds i8, ptr %2002, i64 -1
  store i8 %2005, ptr %2006, align 1, !tbaa !51
  %2007 = icmp eq ptr %2004, %1927
  br i1 %2007, label %2008, label %2001, !llvm.loop !142

2008:                                             ; preds = %2001, %1988
  store i8 23, ptr %1927, align 1, !tbaa !51
  store i8 5, ptr %1990, align 1, !tbaa !51
  store i8 0, ptr %1993, align 1, !tbaa !51
  store i8 %1994, ptr %1995, align 1, !tbaa !51
  store i8 %1997, ptr %1998, align 1, !tbaa !51
  br i1 %1922, label %2009, label %2055

2009:                                             ; preds = %2008
  %2010 = getelementptr inbounds i8, ptr %1927, i64 5
  %2011 = ptrtoint ptr %2010 to i64
  %2012 = ptrtoint ptr %1999 to i64
  %2013 = sub i64 %2011, %2012
  %2014 = trunc i64 %2013 to i32
  %2015 = add i32 %2014, -3
  %2016 = add nsw i32 %1815, -1
  store i8 22, ptr %1999, align 1, !tbaa !51
  %2017 = trunc i32 %2015 to i8
  %2018 = getelementptr inbounds i8, ptr %1929, i64 11
  store i8 %2017, ptr %2018, align 1, !tbaa !51
  %2019 = lshr i32 %2015, 8
  %2020 = trunc i32 %2019 to i8
  %2021 = getelementptr inbounds i8, ptr %1929, i64 12
  store i8 %2020, ptr %2021, align 1, !tbaa !51
  %2022 = trunc i32 %2016 to i8
  %2023 = getelementptr inbounds i8, ptr %1929, i64 13
  store i8 %2022, ptr %2023, align 1, !tbaa !51
  %2024 = lshr i32 %2016, 8
  %2025 = trunc i32 %2024 to i8
  %2026 = getelementptr inbounds i8, ptr %1929, i64 14
  store i8 %2025, ptr %2026, align 1, !tbaa !51
  %2027 = getelementptr inbounds i8, ptr %1929, i64 15
  %2028 = ptrtoint ptr %2027 to i64
  %2029 = sub i64 %2028, %1976
  %2030 = getelementptr inbounds i8, ptr %1929, i64 20
  %2031 = icmp eq ptr %2027, %1927
  br i1 %2031, label %2039, label %2032

2032:                                             ; preds = %2009, %2032
  %2033 = phi ptr [ %2037, %2032 ], [ %2030, %2009 ]
  %2034 = phi ptr [ %2035, %2032 ], [ %2027, %2009 ]
  %2035 = getelementptr inbounds i8, ptr %2034, i64 -1
  %2036 = load i8, ptr %2035, align 1, !tbaa !51
  %2037 = getelementptr inbounds i8, ptr %2033, i64 -1
  store i8 %2036, ptr %2037, align 1, !tbaa !51
  %2038 = icmp eq ptr %2035, %1927
  br i1 %2038, label %2039, label %2032, !llvm.loop !142

2039:                                             ; preds = %2032, %2009
  store i8 23, ptr %1927, align 1, !tbaa !51
  %2040 = trunc i64 %2029 to i8
  store i8 %2040, ptr %1990, align 1, !tbaa !51
  %2041 = lshr i64 %2029, 8
  %2042 = trunc i64 %2041 to i8
  store i8 %2042, ptr %1993, align 1, !tbaa !51
  store i8 %2022, ptr %1995, align 1, !tbaa !51
  store i8 %2025, ptr %1998, align 1, !tbaa !51
  br label %2055

2043:                                             ; preds = %1814, %1835, %1823, %1825, %1745
  %2044 = phi i8 [ %1746, %1745 ], [ %1836, %1835 ], [ %1816, %1823 ], [ %1816, %1825 ], [ %1816, %1814 ]
  %2045 = and i64 %2, 2097152
  %2046 = icmp eq i64 %2045, 0
  br i1 %2046, label %2047, label %2051

2047:                                             ; preds = %2043
  tail call void @free(ptr noundef %64)
  %2048 = load ptr, ptr %5, align 8, !tbaa !38
  %2049 = icmp eq ptr %2048, %9
  %2050 = select i1 %2049, i32 9, i32 10
  br label %2055

2051:                                             ; preds = %2043, %1844
  %2052 = and i64 %2, 4096
  %2053 = icmp eq i64 %2052, 0
  %2054 = select i1 %2053, i32 111, i32 13
  store ptr %1747, ptr %5, align 8, !tbaa !38
  br label %2055

2055:                                             ; preds = %1963, %1892, %2039, %2008, %2051, %1915, %2047, %1850, %1843
  %2056 = phi i32 [ 1, %2047 ], [ 1, %1850 ], [ 1, %1843 ], [ 110, %1915 ], [ %2054, %2051 ], [ 110, %2039 ], [ 110, %2008 ], [ 1, %1892 ], [ 1, %1963 ]
  %2057 = phi ptr [ %68, %2047 ], [ %68, %1850 ], [ %68, %1843 ], [ %1854, %1915 ], [ %68, %2051 ], [ %1925, %2039 ], [ %1925, %2008 ], [ %1894, %1892 ], [ %1965, %1963 ]
  %2058 = phi ptr [ %67, %2047 ], [ %67, %1850 ], [ %67, %1843 ], [ %1855, %1915 ], [ %67, %2051 ], [ %1926, %2039 ], [ %1926, %2008 ], [ %1895, %1892 ], [ %1966, %1963 ]
  %2059 = phi ptr [ %66, %2047 ], [ %1848, %1850 ], [ null, %1843 ], [ %1856, %1915 ], [ %66, %2051 ], [ %1927, %2039 ], [ %1927, %2008 ], [ %1896, %1892 ], [ %1967, %1963 ]
  %2060 = phi ptr [ %65, %2047 ], [ %65, %1850 ], [ %65, %1843 ], [ null, %1915 ], [ %65, %2051 ], [ null, %2039 ], [ null, %2008 ], [ %1897, %1892 ], [ %1968, %1963 ]
  %2061 = phi ptr [ %62, %2047 ], [ %62, %1850 ], [ %62, %1843 ], [ %1901, %1915 ], [ %62, %2051 ], [ %2030, %2039 ], [ %1999, %2008 ], [ %1898, %1892 ], [ %1969, %1963 ]
  %2062 = phi i8 [ %2044, %2047 ], [ %1836, %1850 ], [ %1836, %1843 ], [ %1836, %1915 ], [ 123, %2051 ], [ %1836, %2039 ], [ %1836, %2008 ], [ %1836, %1892 ], [ %1836, %1963 ]
  %2063 = phi i32 [ %2050, %2047 ], [ 10, %1850 ], [ 13, %1843 ], [ %1859, %1915 ], [ %61, %2051 ], [ %1930, %2039 ], [ %1930, %2008 ], [ %1899, %1892 ], [ %1970, %1963 ]
  switch i32 %2056, label %2788 [
    i32 110, label %2714
    i32 111, label %2555
    i32 13, label %2567
  ]

2064:                                             ; preds = %1376
  %2065 = and i64 %2, 524288
  %2066 = icmp eq i64 %2065, 0
  br i1 %2066, label %2067, label %2567

2067:                                             ; preds = %2064, %2106
  %2068 = phi ptr [ %2108, %2106 ], [ %68, %2064 ]
  %2069 = phi ptr [ %2109, %2106 ], [ %67, %2064 ]
  %2070 = phi ptr [ %2110, %2106 ], [ %62, %2064 ]
  %2071 = phi ptr [ %2111, %2106 ], [ %65, %2064 ]
  %2072 = phi ptr [ %2112, %2106 ], [ %62, %2064 ]
  %2073 = phi i32 [ %2113, %2106 ], [ %61, %2064 ]
  %2074 = load ptr, ptr %3, align 8, !tbaa !49
  %2075 = ptrtoint ptr %2072 to i64
  %2076 = ptrtoint ptr %2074 to i64
  %2077 = add i64 %2075, 1
  %2078 = sub i64 %2077, %2076
  %2079 = load i64, ptr %38, align 8, !tbaa !108
  %2080 = icmp ugt i64 %2078, %2079
  br i1 %2080, label %2081, label %2114

2081:                                             ; preds = %2067
  %2082 = icmp eq i64 %2079, 65536
  br i1 %2082, label %2106, label %2083

2083:                                             ; preds = %2081
  %2084 = shl i64 %2079, 1
  %2085 = tail call i64 @llvm.umin.i64(i64 %2084, i64 65536)
  store i64 %2085, ptr %38, align 8, !tbaa !108
  %2086 = tail call ptr @realloc(ptr noundef %2074, i64 noundef %2085) #24
  store ptr %2086, ptr %3, align 8, !tbaa !49
  %2087 = icmp eq ptr %2086, null
  br i1 %2087, label %2106, label %2088

2088:                                             ; preds = %2083
  %2089 = icmp eq ptr %2074, %2086
  br i1 %2089, label %2106, label %2090

2090:                                             ; preds = %2088
  %2091 = ptrtoint ptr %2086 to i64
  %2092 = sub i64 %2091, %2076
  %2093 = shl i64 %2092, 32
  %2094 = ashr exact i64 %2093, 32
  %2095 = getelementptr inbounds i8, ptr %2072, i64 %2094
  %2096 = getelementptr inbounds i8, ptr %2069, i64 %2094
  %2097 = icmp eq ptr %2068, null
  %2098 = getelementptr inbounds i8, ptr %2068, i64 %2094
  %2099 = select i1 %2097, ptr null, ptr %2098
  %2100 = icmp eq ptr %2070, null
  %2101 = getelementptr inbounds i8, ptr %2070, i64 %2094
  %2102 = select i1 %2100, ptr null, ptr %2101
  %2103 = icmp eq ptr %2071, null
  %2104 = getelementptr inbounds i8, ptr %2071, i64 %2094
  %2105 = select i1 %2103, ptr null, ptr %2104
  br label %2106

2106:                                             ; preds = %2088, %2090, %2083, %2081
  %2107 = phi i1 [ false, %2081 ], [ false, %2083 ], [ true, %2090 ], [ true, %2088 ]
  %2108 = phi ptr [ %2068, %2081 ], [ %2068, %2083 ], [ %2099, %2090 ], [ %2068, %2088 ]
  %2109 = phi ptr [ %2069, %2081 ], [ %2069, %2083 ], [ %2096, %2090 ], [ %2069, %2088 ]
  %2110 = phi ptr [ %2070, %2081 ], [ %2070, %2083 ], [ %2102, %2090 ], [ %2070, %2088 ]
  %2111 = phi ptr [ %2071, %2081 ], [ %2071, %2083 ], [ %2105, %2090 ], [ %2071, %2088 ]
  %2112 = phi ptr [ %2072, %2081 ], [ %2072, %2083 ], [ %2095, %2090 ], [ %2072, %2088 ]
  %2113 = phi i32 [ 15, %2081 ], [ 12, %2083 ], [ %2073, %2090 ], [ %2073, %2088 ]
  br i1 %2107, label %2067, label %2788, !llvm.loop !143

2114:                                             ; preds = %2067
  %2115 = getelementptr inbounds i8, ptr %2072, i64 1
  store i8 24, ptr %2072, align 1, !tbaa !51
  br label %2714

2116:                                             ; preds = %1376
  %2117 = and i64 %2, 524288
  %2118 = icmp eq i64 %2117, 0
  br i1 %2118, label %2119, label %2567

2119:                                             ; preds = %2116, %2158
  %2120 = phi ptr [ %2160, %2158 ], [ %68, %2116 ]
  %2121 = phi ptr [ %2161, %2158 ], [ %67, %2116 ]
  %2122 = phi ptr [ %2162, %2158 ], [ %62, %2116 ]
  %2123 = phi ptr [ %2163, %2158 ], [ %65, %2116 ]
  %2124 = phi ptr [ %2164, %2158 ], [ %62, %2116 ]
  %2125 = phi i32 [ %2165, %2158 ], [ %61, %2116 ]
  %2126 = load ptr, ptr %3, align 8, !tbaa !49
  %2127 = ptrtoint ptr %2124 to i64
  %2128 = ptrtoint ptr %2126 to i64
  %2129 = add i64 %2127, 1
  %2130 = sub i64 %2129, %2128
  %2131 = load i64, ptr %38, align 8, !tbaa !108
  %2132 = icmp ugt i64 %2130, %2131
  br i1 %2132, label %2133, label %2166

2133:                                             ; preds = %2119
  %2134 = icmp eq i64 %2131, 65536
  br i1 %2134, label %2158, label %2135

2135:                                             ; preds = %2133
  %2136 = shl i64 %2131, 1
  %2137 = tail call i64 @llvm.umin.i64(i64 %2136, i64 65536)
  store i64 %2137, ptr %38, align 8, !tbaa !108
  %2138 = tail call ptr @realloc(ptr noundef %2126, i64 noundef %2137) #24
  store ptr %2138, ptr %3, align 8, !tbaa !49
  %2139 = icmp eq ptr %2138, null
  br i1 %2139, label %2158, label %2140

2140:                                             ; preds = %2135
  %2141 = icmp eq ptr %2126, %2138
  br i1 %2141, label %2158, label %2142

2142:                                             ; preds = %2140
  %2143 = ptrtoint ptr %2138 to i64
  %2144 = sub i64 %2143, %2128
  %2145 = shl i64 %2144, 32
  %2146 = ashr exact i64 %2145, 32
  %2147 = getelementptr inbounds i8, ptr %2124, i64 %2146
  %2148 = getelementptr inbounds i8, ptr %2121, i64 %2146
  %2149 = icmp eq ptr %2120, null
  %2150 = getelementptr inbounds i8, ptr %2120, i64 %2146
  %2151 = select i1 %2149, ptr null, ptr %2150
  %2152 = icmp eq ptr %2122, null
  %2153 = getelementptr inbounds i8, ptr %2122, i64 %2146
  %2154 = select i1 %2152, ptr null, ptr %2153
  %2155 = icmp eq ptr %2123, null
  %2156 = getelementptr inbounds i8, ptr %2123, i64 %2146
  %2157 = select i1 %2155, ptr null, ptr %2156
  br label %2158

2158:                                             ; preds = %2140, %2142, %2135, %2133
  %2159 = phi i1 [ false, %2133 ], [ false, %2135 ], [ true, %2142 ], [ true, %2140 ]
  %2160 = phi ptr [ %2120, %2133 ], [ %2120, %2135 ], [ %2151, %2142 ], [ %2120, %2140 ]
  %2161 = phi ptr [ %2121, %2133 ], [ %2121, %2135 ], [ %2148, %2142 ], [ %2121, %2140 ]
  %2162 = phi ptr [ %2122, %2133 ], [ %2122, %2135 ], [ %2154, %2142 ], [ %2122, %2140 ]
  %2163 = phi ptr [ %2123, %2133 ], [ %2123, %2135 ], [ %2157, %2142 ], [ %2123, %2140 ]
  %2164 = phi ptr [ %2124, %2133 ], [ %2124, %2135 ], [ %2147, %2142 ], [ %2124, %2140 ]
  %2165 = phi i32 [ 15, %2133 ], [ 12, %2135 ], [ %2125, %2142 ], [ %2125, %2140 ]
  br i1 %2159, label %2119, label %2788, !llvm.loop !144

2166:                                             ; preds = %2119
  %2167 = getelementptr inbounds i8, ptr %2124, i64 1
  store i8 25, ptr %2124, align 1, !tbaa !51
  br label %2714

2168:                                             ; preds = %1376
  %2169 = and i64 %2, 524288
  %2170 = icmp eq i64 %2169, 0
  br i1 %2170, label %2171, label %2567

2171:                                             ; preds = %2168, %2210
  %2172 = phi ptr [ %2212, %2210 ], [ %68, %2168 ]
  %2173 = phi ptr [ %2213, %2210 ], [ %67, %2168 ]
  %2174 = phi ptr [ %2214, %2210 ], [ %66, %2168 ]
  %2175 = phi ptr [ %2215, %2210 ], [ %65, %2168 ]
  %2176 = phi ptr [ %2216, %2210 ], [ %62, %2168 ]
  %2177 = phi i32 [ %2217, %2210 ], [ %61, %2168 ]
  %2178 = load ptr, ptr %3, align 8, !tbaa !49
  %2179 = ptrtoint ptr %2176 to i64
  %2180 = ptrtoint ptr %2178 to i64
  %2181 = add i64 %2179, 1
  %2182 = sub i64 %2181, %2180
  %2183 = load i64, ptr %38, align 8, !tbaa !108
  %2184 = icmp ugt i64 %2182, %2183
  br i1 %2184, label %2185, label %2218

2185:                                             ; preds = %2171
  %2186 = icmp eq i64 %2183, 65536
  br i1 %2186, label %2210, label %2187

2187:                                             ; preds = %2185
  %2188 = shl i64 %2183, 1
  %2189 = tail call i64 @llvm.umin.i64(i64 %2188, i64 65536)
  store i64 %2189, ptr %38, align 8, !tbaa !108
  %2190 = tail call ptr @realloc(ptr noundef %2178, i64 noundef %2189) #24
  store ptr %2190, ptr %3, align 8, !tbaa !49
  %2191 = icmp eq ptr %2190, null
  br i1 %2191, label %2210, label %2192

2192:                                             ; preds = %2187
  %2193 = icmp eq ptr %2178, %2190
  br i1 %2193, label %2210, label %2194

2194:                                             ; preds = %2192
  %2195 = ptrtoint ptr %2190 to i64
  %2196 = sub i64 %2195, %2180
  %2197 = shl i64 %2196, 32
  %2198 = ashr exact i64 %2197, 32
  %2199 = getelementptr inbounds i8, ptr %2176, i64 %2198
  %2200 = getelementptr inbounds i8, ptr %2173, i64 %2198
  %2201 = icmp eq ptr %2172, null
  %2202 = getelementptr inbounds i8, ptr %2172, i64 %2198
  %2203 = select i1 %2201, ptr null, ptr %2202
  %2204 = icmp eq ptr %2174, null
  %2205 = getelementptr inbounds i8, ptr %2174, i64 %2198
  %2206 = select i1 %2204, ptr null, ptr %2205
  %2207 = icmp eq ptr %2175, null
  %2208 = getelementptr inbounds i8, ptr %2175, i64 %2198
  %2209 = select i1 %2207, ptr null, ptr %2208
  br label %2210

2210:                                             ; preds = %2192, %2194, %2187, %2185
  %2211 = phi i1 [ false, %2185 ], [ false, %2187 ], [ true, %2194 ], [ true, %2192 ]
  %2212 = phi ptr [ %2172, %2185 ], [ %2172, %2187 ], [ %2203, %2194 ], [ %2172, %2192 ]
  %2213 = phi ptr [ %2173, %2185 ], [ %2173, %2187 ], [ %2200, %2194 ], [ %2173, %2192 ]
  %2214 = phi ptr [ %2174, %2185 ], [ %2174, %2187 ], [ %2206, %2194 ], [ %2174, %2192 ]
  %2215 = phi ptr [ %2175, %2185 ], [ %2175, %2187 ], [ %2209, %2194 ], [ %2175, %2192 ]
  %2216 = phi ptr [ %2176, %2185 ], [ %2176, %2187 ], [ %2199, %2194 ], [ %2176, %2192 ]
  %2217 = phi i32 [ 15, %2185 ], [ 12, %2187 ], [ %2177, %2194 ], [ %2177, %2192 ]
  br i1 %2211, label %2171, label %2788, !llvm.loop !145

2218:                                             ; preds = %2171
  %2219 = getelementptr inbounds i8, ptr %2176, i64 1
  store i8 26, ptr %2176, align 1, !tbaa !51
  br label %2714

2220:                                             ; preds = %1376
  %2221 = and i64 %2, 524288
  %2222 = icmp eq i64 %2221, 0
  br i1 %2222, label %2223, label %2567

2223:                                             ; preds = %2220, %2262
  %2224 = phi ptr [ %2264, %2262 ], [ %68, %2220 ]
  %2225 = phi ptr [ %2265, %2262 ], [ %67, %2220 ]
  %2226 = phi ptr [ %2266, %2262 ], [ %66, %2220 ]
  %2227 = phi ptr [ %2267, %2262 ], [ %65, %2220 ]
  %2228 = phi ptr [ %2268, %2262 ], [ %62, %2220 ]
  %2229 = phi i32 [ %2269, %2262 ], [ %61, %2220 ]
  %2230 = load ptr, ptr %3, align 8, !tbaa !49
  %2231 = ptrtoint ptr %2228 to i64
  %2232 = ptrtoint ptr %2230 to i64
  %2233 = add i64 %2231, 1
  %2234 = sub i64 %2233, %2232
  %2235 = load i64, ptr %38, align 8, !tbaa !108
  %2236 = icmp ugt i64 %2234, %2235
  br i1 %2236, label %2237, label %2270

2237:                                             ; preds = %2223
  %2238 = icmp eq i64 %2235, 65536
  br i1 %2238, label %2262, label %2239

2239:                                             ; preds = %2237
  %2240 = shl i64 %2235, 1
  %2241 = tail call i64 @llvm.umin.i64(i64 %2240, i64 65536)
  store i64 %2241, ptr %38, align 8, !tbaa !108
  %2242 = tail call ptr @realloc(ptr noundef %2230, i64 noundef %2241) #24
  store ptr %2242, ptr %3, align 8, !tbaa !49
  %2243 = icmp eq ptr %2242, null
  br i1 %2243, label %2262, label %2244

2244:                                             ; preds = %2239
  %2245 = icmp eq ptr %2230, %2242
  br i1 %2245, label %2262, label %2246

2246:                                             ; preds = %2244
  %2247 = ptrtoint ptr %2242 to i64
  %2248 = sub i64 %2247, %2232
  %2249 = shl i64 %2248, 32
  %2250 = ashr exact i64 %2249, 32
  %2251 = getelementptr inbounds i8, ptr %2228, i64 %2250
  %2252 = getelementptr inbounds i8, ptr %2225, i64 %2250
  %2253 = icmp eq ptr %2224, null
  %2254 = getelementptr inbounds i8, ptr %2224, i64 %2250
  %2255 = select i1 %2253, ptr null, ptr %2254
  %2256 = icmp eq ptr %2226, null
  %2257 = getelementptr inbounds i8, ptr %2226, i64 %2250
  %2258 = select i1 %2256, ptr null, ptr %2257
  %2259 = icmp eq ptr %2227, null
  %2260 = getelementptr inbounds i8, ptr %2227, i64 %2250
  %2261 = select i1 %2259, ptr null, ptr %2260
  br label %2262

2262:                                             ; preds = %2244, %2246, %2239, %2237
  %2263 = phi i1 [ false, %2237 ], [ false, %2239 ], [ true, %2246 ], [ true, %2244 ]
  %2264 = phi ptr [ %2224, %2237 ], [ %2224, %2239 ], [ %2255, %2246 ], [ %2224, %2244 ]
  %2265 = phi ptr [ %2225, %2237 ], [ %2225, %2239 ], [ %2252, %2246 ], [ %2225, %2244 ]
  %2266 = phi ptr [ %2226, %2237 ], [ %2226, %2239 ], [ %2258, %2246 ], [ %2226, %2244 ]
  %2267 = phi ptr [ %2227, %2237 ], [ %2227, %2239 ], [ %2261, %2246 ], [ %2227, %2244 ]
  %2268 = phi ptr [ %2228, %2237 ], [ %2228, %2239 ], [ %2251, %2246 ], [ %2228, %2244 ]
  %2269 = phi i32 [ 15, %2237 ], [ 12, %2239 ], [ %2229, %2246 ], [ %2229, %2244 ]
  br i1 %2263, label %2223, label %2788, !llvm.loop !146

2270:                                             ; preds = %2223
  %2271 = getelementptr inbounds i8, ptr %2228, i64 1
  store i8 27, ptr %2228, align 1, !tbaa !51
  br label %2714

2272:                                             ; preds = %1376
  %2273 = and i64 %2, 524288
  %2274 = icmp eq i64 %2273, 0
  br i1 %2274, label %2275, label %2567

2275:                                             ; preds = %2272, %2314
  %2276 = phi ptr [ %2316, %2314 ], [ %68, %2272 ]
  %2277 = phi ptr [ %2317, %2314 ], [ %67, %2272 ]
  %2278 = phi ptr [ %2318, %2314 ], [ %66, %2272 ]
  %2279 = phi ptr [ %2319, %2314 ], [ %65, %2272 ]
  %2280 = phi ptr [ %2320, %2314 ], [ %62, %2272 ]
  %2281 = phi i32 [ %2321, %2314 ], [ %61, %2272 ]
  %2282 = load ptr, ptr %3, align 8, !tbaa !49
  %2283 = ptrtoint ptr %2280 to i64
  %2284 = ptrtoint ptr %2282 to i64
  %2285 = add i64 %2283, 1
  %2286 = sub i64 %2285, %2284
  %2287 = load i64, ptr %38, align 8, !tbaa !108
  %2288 = icmp ugt i64 %2286, %2287
  br i1 %2288, label %2289, label %2322

2289:                                             ; preds = %2275
  %2290 = icmp eq i64 %2287, 65536
  br i1 %2290, label %2314, label %2291

2291:                                             ; preds = %2289
  %2292 = shl i64 %2287, 1
  %2293 = tail call i64 @llvm.umin.i64(i64 %2292, i64 65536)
  store i64 %2293, ptr %38, align 8, !tbaa !108
  %2294 = tail call ptr @realloc(ptr noundef %2282, i64 noundef %2293) #24
  store ptr %2294, ptr %3, align 8, !tbaa !49
  %2295 = icmp eq ptr %2294, null
  br i1 %2295, label %2314, label %2296

2296:                                             ; preds = %2291
  %2297 = icmp eq ptr %2282, %2294
  br i1 %2297, label %2314, label %2298

2298:                                             ; preds = %2296
  %2299 = ptrtoint ptr %2294 to i64
  %2300 = sub i64 %2299, %2284
  %2301 = shl i64 %2300, 32
  %2302 = ashr exact i64 %2301, 32
  %2303 = getelementptr inbounds i8, ptr %2280, i64 %2302
  %2304 = getelementptr inbounds i8, ptr %2277, i64 %2302
  %2305 = icmp eq ptr %2276, null
  %2306 = getelementptr inbounds i8, ptr %2276, i64 %2302
  %2307 = select i1 %2305, ptr null, ptr %2306
  %2308 = icmp eq ptr %2278, null
  %2309 = getelementptr inbounds i8, ptr %2278, i64 %2302
  %2310 = select i1 %2308, ptr null, ptr %2309
  %2311 = icmp eq ptr %2279, null
  %2312 = getelementptr inbounds i8, ptr %2279, i64 %2302
  %2313 = select i1 %2311, ptr null, ptr %2312
  br label %2314

2314:                                             ; preds = %2296, %2298, %2291, %2289
  %2315 = phi i1 [ false, %2289 ], [ false, %2291 ], [ true, %2298 ], [ true, %2296 ]
  %2316 = phi ptr [ %2276, %2289 ], [ %2276, %2291 ], [ %2307, %2298 ], [ %2276, %2296 ]
  %2317 = phi ptr [ %2277, %2289 ], [ %2277, %2291 ], [ %2304, %2298 ], [ %2277, %2296 ]
  %2318 = phi ptr [ %2278, %2289 ], [ %2278, %2291 ], [ %2310, %2298 ], [ %2278, %2296 ]
  %2319 = phi ptr [ %2279, %2289 ], [ %2279, %2291 ], [ %2313, %2298 ], [ %2279, %2296 ]
  %2320 = phi ptr [ %2280, %2289 ], [ %2280, %2291 ], [ %2303, %2298 ], [ %2280, %2296 ]
  %2321 = phi i32 [ 15, %2289 ], [ 12, %2291 ], [ %2281, %2298 ], [ %2281, %2296 ]
  br i1 %2315, label %2275, label %2788, !llvm.loop !147

2322:                                             ; preds = %2275
  %2323 = getelementptr inbounds i8, ptr %2280, i64 1
  store i8 28, ptr %2280, align 1, !tbaa !51
  br label %2714

2324:                                             ; preds = %1376
  %2325 = and i64 %2, 524288
  %2326 = icmp eq i64 %2325, 0
  br i1 %2326, label %2327, label %2567

2327:                                             ; preds = %2324, %2366
  %2328 = phi ptr [ %2368, %2366 ], [ %68, %2324 ]
  %2329 = phi ptr [ %2369, %2366 ], [ %67, %2324 ]
  %2330 = phi ptr [ %2370, %2366 ], [ %66, %2324 ]
  %2331 = phi ptr [ %2371, %2366 ], [ %65, %2324 ]
  %2332 = phi ptr [ %2372, %2366 ], [ %62, %2324 ]
  %2333 = phi i32 [ %2373, %2366 ], [ %61, %2324 ]
  %2334 = load ptr, ptr %3, align 8, !tbaa !49
  %2335 = ptrtoint ptr %2332 to i64
  %2336 = ptrtoint ptr %2334 to i64
  %2337 = add i64 %2335, 1
  %2338 = sub i64 %2337, %2336
  %2339 = load i64, ptr %38, align 8, !tbaa !108
  %2340 = icmp ugt i64 %2338, %2339
  br i1 %2340, label %2341, label %2374

2341:                                             ; preds = %2327
  %2342 = icmp eq i64 %2339, 65536
  br i1 %2342, label %2366, label %2343

2343:                                             ; preds = %2341
  %2344 = shl i64 %2339, 1
  %2345 = tail call i64 @llvm.umin.i64(i64 %2344, i64 65536)
  store i64 %2345, ptr %38, align 8, !tbaa !108
  %2346 = tail call ptr @realloc(ptr noundef %2334, i64 noundef %2345) #24
  store ptr %2346, ptr %3, align 8, !tbaa !49
  %2347 = icmp eq ptr %2346, null
  br i1 %2347, label %2366, label %2348

2348:                                             ; preds = %2343
  %2349 = icmp eq ptr %2334, %2346
  br i1 %2349, label %2366, label %2350

2350:                                             ; preds = %2348
  %2351 = ptrtoint ptr %2346 to i64
  %2352 = sub i64 %2351, %2336
  %2353 = shl i64 %2352, 32
  %2354 = ashr exact i64 %2353, 32
  %2355 = getelementptr inbounds i8, ptr %2332, i64 %2354
  %2356 = getelementptr inbounds i8, ptr %2329, i64 %2354
  %2357 = icmp eq ptr %2328, null
  %2358 = getelementptr inbounds i8, ptr %2328, i64 %2354
  %2359 = select i1 %2357, ptr null, ptr %2358
  %2360 = icmp eq ptr %2330, null
  %2361 = getelementptr inbounds i8, ptr %2330, i64 %2354
  %2362 = select i1 %2360, ptr null, ptr %2361
  %2363 = icmp eq ptr %2331, null
  %2364 = getelementptr inbounds i8, ptr %2331, i64 %2354
  %2365 = select i1 %2363, ptr null, ptr %2364
  br label %2366

2366:                                             ; preds = %2348, %2350, %2343, %2341
  %2367 = phi i1 [ false, %2341 ], [ false, %2343 ], [ true, %2350 ], [ true, %2348 ]
  %2368 = phi ptr [ %2328, %2341 ], [ %2328, %2343 ], [ %2359, %2350 ], [ %2328, %2348 ]
  %2369 = phi ptr [ %2329, %2341 ], [ %2329, %2343 ], [ %2356, %2350 ], [ %2329, %2348 ]
  %2370 = phi ptr [ %2330, %2341 ], [ %2330, %2343 ], [ %2362, %2350 ], [ %2330, %2348 ]
  %2371 = phi ptr [ %2331, %2341 ], [ %2331, %2343 ], [ %2365, %2350 ], [ %2331, %2348 ]
  %2372 = phi ptr [ %2332, %2341 ], [ %2332, %2343 ], [ %2355, %2350 ], [ %2332, %2348 ]
  %2373 = phi i32 [ 15, %2341 ], [ 12, %2343 ], [ %2333, %2350 ], [ %2333, %2348 ]
  br i1 %2367, label %2327, label %2788, !llvm.loop !148

2374:                                             ; preds = %2327
  %2375 = getelementptr inbounds i8, ptr %2332, i64 1
  store i8 29, ptr %2332, align 1, !tbaa !51
  br label %2714

2376:                                             ; preds = %1376
  %2377 = and i64 %2, 524288
  %2378 = icmp eq i64 %2377, 0
  br i1 %2378, label %2379, label %2567

2379:                                             ; preds = %2376, %2418
  %2380 = phi ptr [ %2420, %2418 ], [ %68, %2376 ]
  %2381 = phi ptr [ %2421, %2418 ], [ %67, %2376 ]
  %2382 = phi ptr [ %2422, %2418 ], [ %66, %2376 ]
  %2383 = phi ptr [ %2423, %2418 ], [ %65, %2376 ]
  %2384 = phi ptr [ %2424, %2418 ], [ %62, %2376 ]
  %2385 = phi i32 [ %2425, %2418 ], [ %61, %2376 ]
  %2386 = load ptr, ptr %3, align 8, !tbaa !49
  %2387 = ptrtoint ptr %2384 to i64
  %2388 = ptrtoint ptr %2386 to i64
  %2389 = add i64 %2387, 1
  %2390 = sub i64 %2389, %2388
  %2391 = load i64, ptr %38, align 8, !tbaa !108
  %2392 = icmp ugt i64 %2390, %2391
  br i1 %2392, label %2393, label %2426

2393:                                             ; preds = %2379
  %2394 = icmp eq i64 %2391, 65536
  br i1 %2394, label %2418, label %2395

2395:                                             ; preds = %2393
  %2396 = shl i64 %2391, 1
  %2397 = tail call i64 @llvm.umin.i64(i64 %2396, i64 65536)
  store i64 %2397, ptr %38, align 8, !tbaa !108
  %2398 = tail call ptr @realloc(ptr noundef %2386, i64 noundef %2397) #24
  store ptr %2398, ptr %3, align 8, !tbaa !49
  %2399 = icmp eq ptr %2398, null
  br i1 %2399, label %2418, label %2400

2400:                                             ; preds = %2395
  %2401 = icmp eq ptr %2386, %2398
  br i1 %2401, label %2418, label %2402

2402:                                             ; preds = %2400
  %2403 = ptrtoint ptr %2398 to i64
  %2404 = sub i64 %2403, %2388
  %2405 = shl i64 %2404, 32
  %2406 = ashr exact i64 %2405, 32
  %2407 = getelementptr inbounds i8, ptr %2384, i64 %2406
  %2408 = getelementptr inbounds i8, ptr %2381, i64 %2406
  %2409 = icmp eq ptr %2380, null
  %2410 = getelementptr inbounds i8, ptr %2380, i64 %2406
  %2411 = select i1 %2409, ptr null, ptr %2410
  %2412 = icmp eq ptr %2382, null
  %2413 = getelementptr inbounds i8, ptr %2382, i64 %2406
  %2414 = select i1 %2412, ptr null, ptr %2413
  %2415 = icmp eq ptr %2383, null
  %2416 = getelementptr inbounds i8, ptr %2383, i64 %2406
  %2417 = select i1 %2415, ptr null, ptr %2416
  br label %2418

2418:                                             ; preds = %2400, %2402, %2395, %2393
  %2419 = phi i1 [ false, %2393 ], [ false, %2395 ], [ true, %2402 ], [ true, %2400 ]
  %2420 = phi ptr [ %2380, %2393 ], [ %2380, %2395 ], [ %2411, %2402 ], [ %2380, %2400 ]
  %2421 = phi ptr [ %2381, %2393 ], [ %2381, %2395 ], [ %2408, %2402 ], [ %2381, %2400 ]
  %2422 = phi ptr [ %2382, %2393 ], [ %2382, %2395 ], [ %2414, %2402 ], [ %2382, %2400 ]
  %2423 = phi ptr [ %2383, %2393 ], [ %2383, %2395 ], [ %2417, %2402 ], [ %2383, %2400 ]
  %2424 = phi ptr [ %2384, %2393 ], [ %2384, %2395 ], [ %2407, %2402 ], [ %2384, %2400 ]
  %2425 = phi i32 [ 15, %2393 ], [ 12, %2395 ], [ %2385, %2402 ], [ %2385, %2400 ]
  br i1 %2419, label %2379, label %2788, !llvm.loop !149

2426:                                             ; preds = %2379
  %2427 = getelementptr inbounds i8, ptr %2384, i64 1
  store i8 11, ptr %2384, align 1, !tbaa !51
  br label %2714

2428:                                             ; preds = %1376
  %2429 = and i64 %2, 524288
  %2430 = icmp eq i64 %2429, 0
  br i1 %2430, label %2431, label %2567

2431:                                             ; preds = %2428, %2470
  %2432 = phi ptr [ %2472, %2470 ], [ %68, %2428 ]
  %2433 = phi ptr [ %2473, %2470 ], [ %67, %2428 ]
  %2434 = phi ptr [ %2474, %2470 ], [ %66, %2428 ]
  %2435 = phi ptr [ %2475, %2470 ], [ %65, %2428 ]
  %2436 = phi ptr [ %2476, %2470 ], [ %62, %2428 ]
  %2437 = phi i32 [ %2477, %2470 ], [ %61, %2428 ]
  %2438 = load ptr, ptr %3, align 8, !tbaa !49
  %2439 = ptrtoint ptr %2436 to i64
  %2440 = ptrtoint ptr %2438 to i64
  %2441 = add i64 %2439, 1
  %2442 = sub i64 %2441, %2440
  %2443 = load i64, ptr %38, align 8, !tbaa !108
  %2444 = icmp ugt i64 %2442, %2443
  br i1 %2444, label %2445, label %2478

2445:                                             ; preds = %2431
  %2446 = icmp eq i64 %2443, 65536
  br i1 %2446, label %2470, label %2447

2447:                                             ; preds = %2445
  %2448 = shl i64 %2443, 1
  %2449 = tail call i64 @llvm.umin.i64(i64 %2448, i64 65536)
  store i64 %2449, ptr %38, align 8, !tbaa !108
  %2450 = tail call ptr @realloc(ptr noundef %2438, i64 noundef %2449) #24
  store ptr %2450, ptr %3, align 8, !tbaa !49
  %2451 = icmp eq ptr %2450, null
  br i1 %2451, label %2470, label %2452

2452:                                             ; preds = %2447
  %2453 = icmp eq ptr %2438, %2450
  br i1 %2453, label %2470, label %2454

2454:                                             ; preds = %2452
  %2455 = ptrtoint ptr %2450 to i64
  %2456 = sub i64 %2455, %2440
  %2457 = shl i64 %2456, 32
  %2458 = ashr exact i64 %2457, 32
  %2459 = getelementptr inbounds i8, ptr %2436, i64 %2458
  %2460 = getelementptr inbounds i8, ptr %2433, i64 %2458
  %2461 = icmp eq ptr %2432, null
  %2462 = getelementptr inbounds i8, ptr %2432, i64 %2458
  %2463 = select i1 %2461, ptr null, ptr %2462
  %2464 = icmp eq ptr %2434, null
  %2465 = getelementptr inbounds i8, ptr %2434, i64 %2458
  %2466 = select i1 %2464, ptr null, ptr %2465
  %2467 = icmp eq ptr %2435, null
  %2468 = getelementptr inbounds i8, ptr %2435, i64 %2458
  %2469 = select i1 %2467, ptr null, ptr %2468
  br label %2470

2470:                                             ; preds = %2452, %2454, %2447, %2445
  %2471 = phi i1 [ false, %2445 ], [ false, %2447 ], [ true, %2454 ], [ true, %2452 ]
  %2472 = phi ptr [ %2432, %2445 ], [ %2432, %2447 ], [ %2463, %2454 ], [ %2432, %2452 ]
  %2473 = phi ptr [ %2433, %2445 ], [ %2433, %2447 ], [ %2460, %2454 ], [ %2433, %2452 ]
  %2474 = phi ptr [ %2434, %2445 ], [ %2434, %2447 ], [ %2466, %2454 ], [ %2434, %2452 ]
  %2475 = phi ptr [ %2435, %2445 ], [ %2435, %2447 ], [ %2469, %2454 ], [ %2435, %2452 ]
  %2476 = phi ptr [ %2436, %2445 ], [ %2436, %2447 ], [ %2459, %2454 ], [ %2436, %2452 ]
  %2477 = phi i32 [ 15, %2445 ], [ 12, %2447 ], [ %2437, %2454 ], [ %2437, %2452 ]
  br i1 %2471, label %2431, label %2788, !llvm.loop !150

2478:                                             ; preds = %2431
  %2479 = getelementptr inbounds i8, ptr %2436, i64 1
  store i8 12, ptr %2436, align 1, !tbaa !51
  br label %2714

2480:                                             ; preds = %1376, %1376, %1376, %1376, %1376, %1376, %1376, %1376, %1376
  %2481 = and i64 %2, 16384
  %2482 = icmp eq i64 %2481, 0
  br i1 %2482, label %2483, label %2567

2483:                                             ; preds = %2480
  %2484 = add i8 %1378, -48
  %2485 = zext i8 %2484 to i32
  %2486 = icmp ult i32 %69, %2485
  br i1 %2486, label %2487, label %2488

2487:                                             ; preds = %2483
  tail call void @free(ptr noundef %64)
  br label %2788

2488:                                             ; preds = %2483
  %2489 = lshr i64 %63, 32
  br label %2490

2490:                                             ; preds = %2495, %2488
  %2491 = phi i64 [ %2492, %2495 ], [ %2489, %2488 ]
  %2492 = add nsw i64 %2491, -1
  %2493 = and i64 %2492, 2147483648
  %2494 = icmp eq i64 %2493, 0
  br i1 %2494, label %2495, label %2501

2495:                                             ; preds = %2490
  %2496 = and i64 %2492, 2147483647
  %2497 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %64, i64 %2496, i32 4
  %2498 = load i32, ptr %2497, align 8, !tbaa !131
  %2499 = icmp eq i32 %2498, %2485
  br i1 %2499, label %2500, label %2490, !llvm.loop !151

2500:                                             ; preds = %2495
  br i1 %2494, label %2567, label %2501

2501:                                             ; preds = %2490, %2500
  br label %2502

2502:                                             ; preds = %2501, %2541
  %2503 = phi ptr [ %2543, %2541 ], [ %68, %2501 ]
  %2504 = phi ptr [ %2544, %2541 ], [ %67, %2501 ]
  %2505 = phi ptr [ %2545, %2541 ], [ %62, %2501 ]
  %2506 = phi ptr [ %2546, %2541 ], [ %65, %2501 ]
  %2507 = phi ptr [ %2547, %2541 ], [ %62, %2501 ]
  %2508 = phi i32 [ %2548, %2541 ], [ %61, %2501 ]
  %2509 = load ptr, ptr %3, align 8, !tbaa !49
  %2510 = ptrtoint ptr %2507 to i64
  %2511 = ptrtoint ptr %2509 to i64
  %2512 = add i64 %2510, 2
  %2513 = sub i64 %2512, %2511
  %2514 = load i64, ptr %38, align 8, !tbaa !108
  %2515 = icmp ugt i64 %2513, %2514
  br i1 %2515, label %2516, label %2549

2516:                                             ; preds = %2502
  %2517 = icmp eq i64 %2514, 65536
  br i1 %2517, label %2541, label %2518

2518:                                             ; preds = %2516
  %2519 = shl i64 %2514, 1
  %2520 = tail call i64 @llvm.umin.i64(i64 %2519, i64 65536)
  store i64 %2520, ptr %38, align 8, !tbaa !108
  %2521 = tail call ptr @realloc(ptr noundef %2509, i64 noundef %2520) #24
  store ptr %2521, ptr %3, align 8, !tbaa !49
  %2522 = icmp eq ptr %2521, null
  br i1 %2522, label %2541, label %2523

2523:                                             ; preds = %2518
  %2524 = icmp eq ptr %2509, %2521
  br i1 %2524, label %2541, label %2525

2525:                                             ; preds = %2523
  %2526 = ptrtoint ptr %2521 to i64
  %2527 = sub i64 %2526, %2511
  %2528 = shl i64 %2527, 32
  %2529 = ashr exact i64 %2528, 32
  %2530 = getelementptr inbounds i8, ptr %2507, i64 %2529
  %2531 = getelementptr inbounds i8, ptr %2504, i64 %2529
  %2532 = icmp eq ptr %2503, null
  %2533 = getelementptr inbounds i8, ptr %2503, i64 %2529
  %2534 = select i1 %2532, ptr null, ptr %2533
  %2535 = icmp eq ptr %2505, null
  %2536 = getelementptr inbounds i8, ptr %2505, i64 %2529
  %2537 = select i1 %2535, ptr null, ptr %2536
  %2538 = icmp eq ptr %2506, null
  %2539 = getelementptr inbounds i8, ptr %2506, i64 %2529
  %2540 = select i1 %2538, ptr null, ptr %2539
  br label %2541

2541:                                             ; preds = %2523, %2525, %2518, %2516
  %2542 = phi i1 [ false, %2516 ], [ false, %2518 ], [ true, %2525 ], [ true, %2523 ]
  %2543 = phi ptr [ %2503, %2516 ], [ %2503, %2518 ], [ %2534, %2525 ], [ %2503, %2523 ]
  %2544 = phi ptr [ %2504, %2516 ], [ %2504, %2518 ], [ %2531, %2525 ], [ %2504, %2523 ]
  %2545 = phi ptr [ %2505, %2516 ], [ %2505, %2518 ], [ %2537, %2525 ], [ %2505, %2523 ]
  %2546 = phi ptr [ %2506, %2516 ], [ %2506, %2518 ], [ %2540, %2525 ], [ %2506, %2523 ]
  %2547 = phi ptr [ %2507, %2516 ], [ %2507, %2518 ], [ %2530, %2525 ], [ %2507, %2523 ]
  %2548 = phi i32 [ 15, %2516 ], [ 12, %2518 ], [ %2508, %2525 ], [ %2508, %2523 ]
  br i1 %2542, label %2502, label %2788, !llvm.loop !152

2549:                                             ; preds = %2502
  %2550 = getelementptr inbounds i8, ptr %2507, i64 1
  store i8 8, ptr %2507, align 1, !tbaa !51
  %2551 = getelementptr inbounds i8, ptr %2507, i64 2
  store i8 %2484, ptr %2550, align 1, !tbaa !51
  br label %2714

2552:                                             ; preds = %1376, %1376
  %2553 = and i64 %2, 2
  %2554 = icmp eq i64 %2553, 0
  br i1 %2554, label %2555, label %246

2555:                                             ; preds = %2552, %1742, %1379, %1376, %1627, %1468, %1463, %2055
  %2556 = phi ptr [ %2057, %2055 ], [ %68, %1627 ], [ %68, %1463 ], [ %68, %1468 ], [ %68, %1376 ], [ %68, %1379 ], [ %68, %1742 ], [ %68, %2552 ]
  %2557 = phi ptr [ %2058, %2055 ], [ %67, %1627 ], [ %67, %1463 ], [ %67, %1468 ], [ %67, %1376 ], [ %67, %1379 ], [ %67, %1742 ], [ %67, %2552 ]
  %2558 = phi ptr [ %2059, %2055 ], [ %66, %1627 ], [ %66, %1463 ], [ %66, %1468 ], [ %66, %1376 ], [ %66, %1379 ], [ %66, %1742 ], [ %66, %2552 ]
  %2559 = phi ptr [ %2060, %2055 ], [ %65, %1627 ], [ %65, %1463 ], [ %65, %1468 ], [ %65, %1376 ], [ %65, %1379 ], [ %65, %1742 ], [ %65, %2552 ]
  %2560 = phi ptr [ %2061, %2055 ], [ %62, %1627 ], [ %62, %1463 ], [ %62, %1468 ], [ %62, %1376 ], [ %62, %1379 ], [ %62, %1742 ], [ %62, %2552 ]
  %2561 = phi i8 [ %2062, %2055 ], [ %1378, %1627 ], [ %1378, %1463 ], [ %1378, %1468 ], [ %1378, %1376 ], [ %1378, %1379 ], [ %1378, %1742 ], [ %1378, %2552 ]
  %2562 = phi i32 [ %2063, %2055 ], [ %61, %1627 ], [ %61, %1463 ], [ %61, %1468 ], [ %61, %1376 ], [ %61, %1379 ], [ %61, %1742 ], [ %61, %2552 ]
  br i1 %58, label %2563, label %2567

2563:                                             ; preds = %2555
  %2564 = zext i8 %2561 to i64
  %2565 = getelementptr inbounds i8, ptr %11, i64 %2564
  %2566 = load i8, ptr %2565, align 1, !tbaa !51
  br label %2567

2567:                                             ; preds = %2555, %76, %2563, %2500, %2480, %2428, %2376, %2324, %2272, %2220, %2168, %2116, %2064, %1630, %1541, %1370, %1367, %1364, %1361, %1358, %253, %243, %190, %104, %2055
  %2568 = phi ptr [ %68, %253 ], [ %68, %2480 ], [ %68, %2500 ], [ %68, %2428 ], [ %68, %2376 ], [ %68, %2324 ], [ %68, %2272 ], [ %68, %2220 ], [ %68, %2168 ], [ %68, %2116 ], [ %68, %2064 ], [ %2057, %2055 ], [ %68, %1630 ], [ %1534, %1541 ], [ %68, %1370 ], [ %68, %1367 ], [ %68, %1364 ], [ %68, %1361 ], [ %68, %1358 ], [ %68, %243 ], [ %68, %190 ], [ %68, %104 ], [ %2556, %2563 ], [ %68, %76 ], [ %2556, %2555 ]
  %2569 = phi ptr [ %67, %253 ], [ %67, %2480 ], [ %67, %2500 ], [ %67, %2428 ], [ %67, %2376 ], [ %67, %2324 ], [ %67, %2272 ], [ %67, %2220 ], [ %67, %2168 ], [ %67, %2116 ], [ %67, %2064 ], [ %2058, %2055 ], [ %67, %1630 ], [ %1535, %1541 ], [ %67, %1370 ], [ %67, %1367 ], [ %67, %1364 ], [ %67, %1361 ], [ %67, %1358 ], [ %67, %243 ], [ %67, %190 ], [ %67, %104 ], [ %2557, %2563 ], [ %67, %76 ], [ %2557, %2555 ]
  %2570 = phi ptr [ null, %253 ], [ %66, %2480 ], [ %66, %2500 ], [ %66, %2428 ], [ %66, %2376 ], [ %66, %2324 ], [ %66, %2272 ], [ %66, %2220 ], [ %66, %2168 ], [ %66, %2116 ], [ %66, %2064 ], [ %2059, %2055 ], [ %66, %1630 ], [ %1536, %1541 ], [ %66, %1370 ], [ %66, %1367 ], [ %66, %1364 ], [ %66, %1361 ], [ %66, %1358 ], [ %66, %243 ], [ %66, %190 ], [ %66, %104 ], [ %2558, %2563 ], [ %66, %76 ], [ %2558, %2555 ]
  %2571 = phi ptr [ %65, %253 ], [ %65, %2480 ], [ %65, %2500 ], [ %65, %2428 ], [ %65, %2376 ], [ %65, %2324 ], [ %65, %2272 ], [ %65, %2220 ], [ %65, %2168 ], [ %65, %2116 ], [ %65, %2064 ], [ %2060, %2055 ], [ %65, %1630 ], [ %1537, %1541 ], [ %65, %1370 ], [ %65, %1367 ], [ %65, %1364 ], [ %65, %1361 ], [ %65, %1358 ], [ %65, %243 ], [ %65, %190 ], [ %65, %104 ], [ %2559, %2563 ], [ %65, %76 ], [ %2559, %2555 ]
  %2572 = phi ptr [ %62, %253 ], [ %62, %2480 ], [ %62, %2500 ], [ %62, %2428 ], [ %62, %2376 ], [ %62, %2324 ], [ %62, %2272 ], [ %62, %2220 ], [ %62, %2168 ], [ %62, %2116 ], [ %62, %2064 ], [ %2061, %2055 ], [ %62, %1630 ], [ %1538, %1541 ], [ %62, %1370 ], [ %62, %1367 ], [ %62, %1364 ], [ %62, %1361 ], [ %62, %1358 ], [ %62, %243 ], [ %62, %190 ], [ %62, %104 ], [ %2560, %2563 ], [ %62, %76 ], [ %2560, %2555 ]
  %2573 = phi i8 [ %247, %253 ], [ %1378, %2480 ], [ %1378, %2500 ], [ %1378, %2428 ], [ %1378, %2376 ], [ %1378, %2324 ], [ %1378, %2272 ], [ %1378, %2220 ], [ %1378, %2168 ], [ %1378, %2116 ], [ %1378, %2064 ], [ %2062, %2055 ], [ %1631, %1630 ], [ %1473, %1541 ], [ %77, %1370 ], [ %77, %1367 ], [ %77, %1364 ], [ %77, %1361 ], [ %77, %1358 ], [ %77, %243 ], [ %77, %190 ], [ %77, %104 ], [ %2566, %2563 ], [ %77, %76 ], [ %2561, %2555 ]
  %2574 = phi i32 [ %61, %253 ], [ %61, %2480 ], [ %61, %2500 ], [ %61, %2428 ], [ %61, %2376 ], [ %61, %2324 ], [ %61, %2272 ], [ %61, %2220 ], [ %61, %2168 ], [ %61, %2116 ], [ %61, %2064 ], [ %2063, %2055 ], [ %61, %1630 ], [ %1539, %1541 ], [ %61, %1370 ], [ %61, %1367 ], [ %61, %1364 ], [ %61, %1361 ], [ %61, %1358 ], [ %61, %243 ], [ %61, %190 ], [ %61, %104 ], [ %2562, %2563 ], [ %61, %76 ], [ %2562, %2555 ]
  %2575 = icmp eq ptr %2571, null
  br i1 %2575, label %2610, label %2576

2576:                                             ; preds = %2567
  %2577 = load i8, ptr %2571, align 1, !tbaa !51
  %2578 = zext i8 %2577 to i64
  %2579 = getelementptr inbounds i8, ptr %2571, i64 %2578
  %2580 = getelementptr inbounds i8, ptr %2579, i64 1
  %2581 = icmp ne ptr %2580, %2572
  %2582 = icmp eq i8 %2577, -1
  %2583 = or i1 %2582, %2581
  br i1 %2583, label %2610, label %2584

2584:                                             ; preds = %2576
  %2585 = load ptr, ptr %5, align 8, !tbaa !38
  %2586 = load i8, ptr %2585, align 1, !tbaa !51
  switch i8 %2586, label %2587 [
    i8 42, label %2610
    i8 94, label %2610
  ]

2587:                                             ; preds = %2584
  %2588 = and i64 %2, 2
  %2589 = icmp eq i64 %2588, 0
  br i1 %2589, label %2595, label %2590

2590:                                             ; preds = %2587
  %2591 = icmp eq i8 %2586, 92
  br i1 %2591, label %2592, label %2596

2592:                                             ; preds = %2590
  %2593 = getelementptr inbounds i8, ptr %2585, i64 1
  %2594 = load i8, ptr %2593, align 1, !tbaa !51
  switch i8 %2594, label %2596 [
    i8 43, label %2610
    i8 63, label %2610
  ]

2595:                                             ; preds = %2587
  switch i8 %2586, label %2596 [
    i8 43, label %2610
    i8 63, label %2610
  ]

2596:                                             ; preds = %2592, %2595, %2590
  %2597 = and i64 %2, 512
  %2598 = icmp eq i64 %2597, 0
  br i1 %2598, label %2656, label %2599

2599:                                             ; preds = %2596
  %2600 = and i64 %2, 4096
  %2601 = icmp eq i64 %2600, 0
  br i1 %2601, label %2604, label %2602

2602:                                             ; preds = %2599
  %2603 = icmp eq i8 %2586, 123
  br i1 %2603, label %2610, label %2656

2604:                                             ; preds = %2599
  %2605 = icmp eq i8 %2586, 92
  br i1 %2605, label %2606, label %2656

2606:                                             ; preds = %2604
  %2607 = getelementptr inbounds i8, ptr %2585, i64 1
  %2608 = load i8, ptr %2607, align 1, !tbaa !51
  %2609 = icmp eq i8 %2608, 123
  br i1 %2609, label %2610, label %2656

2610:                                             ; preds = %2595, %2595, %2592, %2592, %2584, %2584, %2606, %2602, %2576, %2567
  br label %2611

2611:                                             ; preds = %2610, %2646
  %2612 = phi ptr [ %2648, %2646 ], [ %2568, %2610 ]
  %2613 = phi ptr [ %2649, %2646 ], [ %2569, %2610 ]
  %2614 = phi ptr [ %2650, %2646 ], [ %2572, %2610 ]
  %2615 = phi ptr [ %2651, %2646 ], [ %2572, %2610 ]
  %2616 = phi i32 [ %2652, %2646 ], [ %2574, %2610 ]
  %2617 = load ptr, ptr %3, align 8, !tbaa !49
  %2618 = ptrtoint ptr %2615 to i64
  %2619 = ptrtoint ptr %2617 to i64
  %2620 = add i64 %2618, 2
  %2621 = sub i64 %2620, %2619
  %2622 = load i64, ptr %38, align 8, !tbaa !108
  %2623 = icmp ugt i64 %2621, %2622
  br i1 %2623, label %2624, label %2653

2624:                                             ; preds = %2611
  %2625 = icmp eq i64 %2622, 65536
  br i1 %2625, label %2646, label %2626

2626:                                             ; preds = %2624
  %2627 = shl i64 %2622, 1
  %2628 = tail call i64 @llvm.umin.i64(i64 %2627, i64 65536)
  store i64 %2628, ptr %38, align 8, !tbaa !108
  %2629 = tail call ptr @realloc(ptr noundef %2617, i64 noundef %2628) #24
  store ptr %2629, ptr %3, align 8, !tbaa !49
  %2630 = icmp eq ptr %2629, null
  br i1 %2630, label %2646, label %2631

2631:                                             ; preds = %2626
  %2632 = icmp eq ptr %2617, %2629
  br i1 %2632, label %2646, label %2633

2633:                                             ; preds = %2631
  %2634 = ptrtoint ptr %2629 to i64
  %2635 = sub i64 %2634, %2619
  %2636 = shl i64 %2635, 32
  %2637 = ashr exact i64 %2636, 32
  %2638 = getelementptr inbounds i8, ptr %2615, i64 %2637
  %2639 = getelementptr inbounds i8, ptr %2613, i64 %2637
  %2640 = icmp eq ptr %2612, null
  %2641 = getelementptr inbounds i8, ptr %2612, i64 %2637
  %2642 = select i1 %2640, ptr null, ptr %2641
  %2643 = icmp eq ptr %2614, null
  %2644 = getelementptr inbounds i8, ptr %2614, i64 %2637
  %2645 = select i1 %2643, ptr null, ptr %2644
  br label %2646

2646:                                             ; preds = %2631, %2633, %2626, %2624
  %2647 = phi i1 [ false, %2624 ], [ false, %2626 ], [ true, %2633 ], [ true, %2631 ]
  %2648 = phi ptr [ %2612, %2624 ], [ %2612, %2626 ], [ %2642, %2633 ], [ %2612, %2631 ]
  %2649 = phi ptr [ %2613, %2624 ], [ %2613, %2626 ], [ %2639, %2633 ], [ %2613, %2631 ]
  %2650 = phi ptr [ %2614, %2624 ], [ %2614, %2626 ], [ %2645, %2633 ], [ %2614, %2631 ]
  %2651 = phi ptr [ %2615, %2624 ], [ %2615, %2626 ], [ %2638, %2633 ], [ %2615, %2631 ]
  %2652 = phi i32 [ 15, %2624 ], [ 12, %2626 ], [ %2616, %2633 ], [ %2616, %2631 ]
  br i1 %2647, label %2611, label %2788, !llvm.loop !153

2653:                                             ; preds = %2611
  %2654 = getelementptr inbounds i8, ptr %2615, i64 1
  store i8 2, ptr %2615, align 1, !tbaa !51
  %2655 = getelementptr inbounds i8, ptr %2615, i64 2
  store i8 0, ptr %2654, align 1, !tbaa !51
  br label %2656

2656:                                             ; preds = %2606, %2602, %2596, %2604, %2653
  %2657 = phi ptr [ %2568, %2606 ], [ %2568, %2602 ], [ %2568, %2596 ], [ %2568, %2604 ], [ %2612, %2653 ]
  %2658 = phi ptr [ %2569, %2606 ], [ %2569, %2602 ], [ %2569, %2596 ], [ %2569, %2604 ], [ %2613, %2653 ]
  %2659 = phi ptr [ %2570, %2606 ], [ %2570, %2602 ], [ %2570, %2596 ], [ %2570, %2604 ], [ %2614, %2653 ]
  %2660 = phi ptr [ %2571, %2606 ], [ %2571, %2602 ], [ %2571, %2596 ], [ %2571, %2604 ], [ %2654, %2653 ]
  %2661 = phi ptr [ %2572, %2606 ], [ %2572, %2602 ], [ %2572, %2596 ], [ %2572, %2604 ], [ %2655, %2653 ]
  %2662 = phi i32 [ %2574, %2606 ], [ %2574, %2602 ], [ %2574, %2596 ], [ %2574, %2604 ], [ %2616, %2653 ]
  br label %2663

2663:                                             ; preds = %2656, %2702
  %2664 = phi ptr [ %2704, %2702 ], [ %2657, %2656 ]
  %2665 = phi ptr [ %2705, %2702 ], [ %2658, %2656 ]
  %2666 = phi ptr [ %2706, %2702 ], [ %2659, %2656 ]
  %2667 = phi ptr [ %2707, %2702 ], [ %2660, %2656 ]
  %2668 = phi ptr [ %2708, %2702 ], [ %2661, %2656 ]
  %2669 = phi i32 [ %2709, %2702 ], [ %2662, %2656 ]
  %2670 = load ptr, ptr %3, align 8, !tbaa !49
  %2671 = ptrtoint ptr %2668 to i64
  %2672 = ptrtoint ptr %2670 to i64
  %2673 = add i64 %2671, 1
  %2674 = sub i64 %2673, %2672
  %2675 = load i64, ptr %38, align 8, !tbaa !108
  %2676 = icmp ugt i64 %2674, %2675
  br i1 %2676, label %2677, label %2710

2677:                                             ; preds = %2663
  %2678 = icmp eq i64 %2675, 65536
  br i1 %2678, label %2702, label %2679

2679:                                             ; preds = %2677
  %2680 = shl i64 %2675, 1
  %2681 = tail call i64 @llvm.umin.i64(i64 %2680, i64 65536)
  store i64 %2681, ptr %38, align 8, !tbaa !108
  %2682 = tail call ptr @realloc(ptr noundef %2670, i64 noundef %2681) #24
  store ptr %2682, ptr %3, align 8, !tbaa !49
  %2683 = icmp eq ptr %2682, null
  br i1 %2683, label %2702, label %2684

2684:                                             ; preds = %2679
  %2685 = icmp eq ptr %2670, %2682
  br i1 %2685, label %2702, label %2686

2686:                                             ; preds = %2684
  %2687 = ptrtoint ptr %2682 to i64
  %2688 = sub i64 %2687, %2672
  %2689 = shl i64 %2688, 32
  %2690 = ashr exact i64 %2689, 32
  %2691 = getelementptr inbounds i8, ptr %2668, i64 %2690
  %2692 = getelementptr inbounds i8, ptr %2665, i64 %2690
  %2693 = icmp eq ptr %2664, null
  %2694 = getelementptr inbounds i8, ptr %2664, i64 %2690
  %2695 = select i1 %2693, ptr null, ptr %2694
  %2696 = icmp eq ptr %2666, null
  %2697 = getelementptr inbounds i8, ptr %2666, i64 %2690
  %2698 = select i1 %2696, ptr null, ptr %2697
  %2699 = icmp eq ptr %2667, null
  %2700 = getelementptr inbounds i8, ptr %2667, i64 %2690
  %2701 = select i1 %2699, ptr null, ptr %2700
  br label %2702

2702:                                             ; preds = %2684, %2686, %2679, %2677
  %2703 = phi i1 [ false, %2677 ], [ false, %2679 ], [ true, %2686 ], [ true, %2684 ]
  %2704 = phi ptr [ %2664, %2677 ], [ %2664, %2679 ], [ %2695, %2686 ], [ %2664, %2684 ]
  %2705 = phi ptr [ %2665, %2677 ], [ %2665, %2679 ], [ %2692, %2686 ], [ %2665, %2684 ]
  %2706 = phi ptr [ %2666, %2677 ], [ %2666, %2679 ], [ %2698, %2686 ], [ %2666, %2684 ]
  %2707 = phi ptr [ %2667, %2677 ], [ %2667, %2679 ], [ %2701, %2686 ], [ %2667, %2684 ]
  %2708 = phi ptr [ %2668, %2677 ], [ %2668, %2679 ], [ %2691, %2686 ], [ %2668, %2684 ]
  %2709 = phi i32 [ 15, %2677 ], [ 12, %2679 ], [ %2669, %2686 ], [ %2669, %2684 ]
  br i1 %2703, label %2663, label %2788, !llvm.loop !154

2710:                                             ; preds = %2663
  %2711 = getelementptr inbounds i8, ptr %2668, i64 1
  store i8 %2573, ptr %2668, align 1, !tbaa !51
  %2712 = load i8, ptr %2667, align 1, !tbaa !51
  %2713 = add i8 %2712, 1
  store i8 %2713, ptr %2667, align 1, !tbaa !51
  br label %2714

2714:                                             ; preds = %557, %1456, %1740, %2055, %2114, %2166, %2218, %2270, %2322, %2374, %2426, %2478, %2549, %1620, %1350, %2710, %612, %557, %241, %155
  %2715 = phi i32 [ %69, %2710 ], [ %69, %557 ], [ %69, %2549 ], [ %69, %2478 ], [ %69, %2426 ], [ %69, %2374 ], [ %69, %2322 ], [ %69, %2270 ], [ %69, %2218 ], [ %69, %2166 ], [ %69, %2114 ], [ %69, %2055 ], [ %69, %1740 ], [ %69, %1620 ], [ %1385, %1456 ], [ %69, %1350 ], [ %69, %612 ], [ %69, %241 ], [ %69, %155 ], [ %69, %557 ]
  %2716 = phi ptr [ %2664, %2710 ], [ %559, %557 ], [ %2503, %2549 ], [ %2432, %2478 ], [ %2380, %2426 ], [ %2328, %2374 ], [ %2276, %2322 ], [ %2224, %2270 ], [ %2172, %2218 ], [ %2120, %2166 ], [ %2068, %2114 ], [ %2057, %2055 ], [ %1707, %1740 ], [ %1622, %1620 ], [ null, %1456 ], [ %1352, %1350 ], [ %566, %612 ], [ %195, %241 ], [ %109, %155 ], [ %559, %557 ]
  %2717 = phi ptr [ %2665, %2710 ], [ %560, %557 ], [ %2504, %2549 ], [ %2433, %2478 ], [ %2381, %2426 ], [ %2329, %2374 ], [ %2277, %2322 ], [ %2225, %2270 ], [ %2173, %2218 ], [ %2121, %2166 ], [ %2069, %2114 ], [ %2058, %2055 ], [ %1741, %1740 ], [ %1623, %1620 ], [ %1457, %1456 ], [ %1353, %1350 ], [ %567, %612 ], [ %196, %241 ], [ %110, %155 ], [ %560, %557 ]
  %2718 = phi ptr [ %2666, %2710 ], [ %561, %557 ], [ %2505, %2549 ], [ %2434, %2478 ], [ %2382, %2426 ], [ %2330, %2374 ], [ %2278, %2322 ], [ %2226, %2270 ], [ %2174, %2218 ], [ %2122, %2166 ], [ %2070, %2114 ], [ %2059, %2055 ], [ null, %1740 ], [ %1624, %1620 ], [ null, %1456 ], [ %1354, %1350 ], [ %568, %612 ], [ %197, %241 ], [ %111, %155 ], [ %561, %557 ]
  %2719 = phi ptr [ %2667, %2710 ], [ %562, %557 ], [ %2506, %2549 ], [ %2435, %2478 ], [ %2383, %2426 ], [ %2331, %2374 ], [ %2279, %2322 ], [ %2227, %2270 ], [ %2175, %2218 ], [ %2123, %2166 ], [ %2071, %2114 ], [ %2060, %2055 ], [ null, %1740 ], [ null, %1620 ], [ null, %1456 ], [ %1355, %1350 ], [ %569, %612 ], [ %198, %241 ], [ %112, %155 ], [ %562, %557 ]
  %2720 = phi ptr [ %64, %2710 ], [ %64, %557 ], [ %64, %2549 ], [ %64, %2478 ], [ %64, %2426 ], [ %64, %2374 ], [ %64, %2322 ], [ %64, %2270 ], [ %64, %2218 ], [ %64, %2166 ], [ %64, %2114 ], [ %64, %2055 ], [ %64, %1740 ], [ %64, %1620 ], [ %1400, %1456 ], [ %64, %1350 ], [ %64, %612 ], [ %64, %241 ], [ %64, %155 ], [ %64, %557 ]
  %2721 = phi i64 [ %63, %2710 ], [ %63, %557 ], [ %63, %2549 ], [ %63, %2478 ], [ %63, %2426 ], [ %63, %2374 ], [ %63, %2322 ], [ %63, %2270 ], [ %63, %2218 ], [ %63, %2166 ], [ %63, %2114 ], [ %63, %2055 ], [ %63, %1740 ], [ %1549, %1620 ], [ %1462, %1456 ], [ %63, %1350 ], [ %63, %612 ], [ %63, %241 ], [ %63, %155 ], [ %63, %557 ]
  %2722 = phi ptr [ %2711, %2710 ], [ %563, %557 ], [ %2551, %2549 ], [ %2479, %2478 ], [ %2427, %2426 ], [ %2375, %2374 ], [ %2323, %2322 ], [ %2271, %2270 ], [ %2219, %2218 ], [ %2167, %2166 ], [ %2115, %2114 ], [ %2061, %2055 ], [ %1741, %1740 ], [ %1625, %1620 ], [ %1457, %1456 ], [ %1356, %1350 ], [ %613, %612 ], [ %242, %241 ], [ %156, %155 ], [ %563, %557 ]
  %2723 = phi i32 [ %2669, %2710 ], [ %564, %557 ], [ %2508, %2549 ], [ %2437, %2478 ], [ %2385, %2426 ], [ %2333, %2374 ], [ %2281, %2322 ], [ %2229, %2270 ], [ %2177, %2218 ], [ %2125, %2166 ], [ %2073, %2114 ], [ %2063, %2055 ], [ %1709, %1740 ], [ %1626, %1620 ], [ %1458, %1456 ], [ %1357, %1350 ], [ %571, %612 ], [ %200, %241 ], [ %114, %155 ], [ %564, %557 ]
  %2724 = load ptr, ptr %5, align 8, !tbaa !38
  %2725 = icmp eq ptr %2724, %9
  br i1 %2725, label %2726, label %59, !llvm.loop !155

2726:                                             ; preds = %2714
  %2727 = icmp ult i64 %2721, 4294967296
  br label %2728

2728:                                             ; preds = %2726, %53
  %2729 = phi ptr [ null, %53 ], [ %2716, %2726 ]
  %2730 = phi ptr [ %12, %53 ], [ %2720, %2726 ]
  %2731 = phi i1 [ true, %53 ], [ %2727, %2726 ]
  %2732 = phi ptr [ %54, %53 ], [ %2722, %2726 ]
  %2733 = phi i32 [ undef, %53 ], [ %2723, %2726 ]
  %2734 = icmp eq ptr %2729, null
  br i1 %2734, label %2746, label %2735

2735:                                             ; preds = %2728
  %2736 = ptrtoint ptr %2732 to i64
  %2737 = ptrtoint ptr %2729 to i64
  %2738 = sub i64 %2736, %2737
  %2739 = trunc i64 %2738 to i32
  %2740 = add i32 %2739, -3
  store i8 14, ptr %2729, align 1, !tbaa !51
  %2741 = trunc i32 %2740 to i8
  %2742 = getelementptr inbounds i8, ptr %2729, i64 1
  store i8 %2741, ptr %2742, align 1, !tbaa !51
  %2743 = lshr i32 %2740, 8
  %2744 = trunc i32 %2743 to i8
  %2745 = getelementptr inbounds i8, ptr %2729, i64 2
  store i8 %2744, ptr %2745, align 1, !tbaa !51
  br label %2746

2746:                                             ; preds = %2735, %2728
  br i1 %2731, label %2748, label %2747

2747:                                             ; preds = %2746
  tail call void @free(ptr noundef %2730)
  br label %2788

2748:                                             ; preds = %2746
  %2749 = and i64 %2, 262144
  %2750 = icmp eq i64 %2749, 0
  br i1 %2750, label %2782, label %2751

2751:                                             ; preds = %2748, %2776
  %2752 = phi ptr [ %2778, %2776 ], [ %2732, %2748 ]
  %2753 = phi i32 [ %2779, %2776 ], [ %2733, %2748 ]
  %2754 = load ptr, ptr %3, align 8, !tbaa !49
  %2755 = ptrtoint ptr %2752 to i64
  %2756 = ptrtoint ptr %2754 to i64
  %2757 = add i64 %2755, 1
  %2758 = sub i64 %2757, %2756
  %2759 = load i64, ptr %38, align 8, !tbaa !108
  %2760 = icmp ugt i64 %2758, %2759
  br i1 %2760, label %2761, label %2780

2761:                                             ; preds = %2751
  %2762 = icmp eq i64 %2759, 65536
  br i1 %2762, label %2776, label %2763

2763:                                             ; preds = %2761
  %2764 = shl i64 %2759, 1
  %2765 = tail call i64 @llvm.umin.i64(i64 %2764, i64 65536)
  store i64 %2765, ptr %38, align 8, !tbaa !108
  %2766 = tail call ptr @realloc(ptr noundef %2754, i64 noundef %2765) #24
  store ptr %2766, ptr %3, align 8, !tbaa !49
  %2767 = icmp eq ptr %2766, null
  br i1 %2767, label %2776, label %2768

2768:                                             ; preds = %2763
  %2769 = icmp eq ptr %2754, %2766
  br i1 %2769, label %2776, label %2770

2770:                                             ; preds = %2768
  %2771 = ptrtoint ptr %2766 to i64
  %2772 = sub i64 %2771, %2756
  %2773 = shl i64 %2772, 32
  %2774 = ashr exact i64 %2773, 32
  %2775 = getelementptr inbounds i8, ptr %2752, i64 %2774
  br label %2776

2776:                                             ; preds = %2768, %2770, %2763, %2761
  %2777 = phi i1 [ false, %2761 ], [ false, %2763 ], [ true, %2770 ], [ true, %2768 ]
  %2778 = phi ptr [ %2752, %2761 ], [ %2752, %2763 ], [ %2775, %2770 ], [ %2752, %2768 ]
  %2779 = phi i32 [ 15, %2761 ], [ 12, %2763 ], [ %2753, %2770 ], [ %2753, %2768 ]
  br i1 %2777, label %2751, label %2788, !llvm.loop !156

2780:                                             ; preds = %2751
  %2781 = getelementptr inbounds i8, ptr %2752, i64 1
  store i8 1, ptr %2752, align 1, !tbaa !51
  br label %2782

2782:                                             ; preds = %2780, %2748
  %2783 = phi ptr [ %2781, %2780 ], [ %2732, %2748 ]
  tail call void @free(ptr noundef %2730)
  %2784 = load ptr, ptr %3, align 8, !tbaa !49
  %2785 = ptrtoint ptr %2783 to i64
  %2786 = ptrtoint ptr %2784 to i64
  %2787 = sub i64 %2785, %2786
  store i64 %2787, ptr %19, align 8, !tbaa !50
  br label %2788

2788:                                             ; preds = %2055, %1620, %1350, %557, %1390, %2541, %2470, %2418, %2366, %2314, %2262, %2210, %2158, %2106, %1665, %1735, %1514, %1447, %604, %233, %147, %2646, %2702, %2776, %4, %2782, %2747, %2487, %1544, %1471, %1375, %252, %51
  %2789 = phi i32 [ 5, %1375 ], [ 13, %252 ], [ 6, %2487 ], [ 16, %1471 ], [ 16, %1544 ], [ 0, %2782 ], [ 8, %2747 ], [ 12, %51 ], [ 12, %4 ], [ %2779, %2776 ], [ %2709, %2702 ], [ %2652, %2646 ], [ %154, %147 ], [ %240, %233 ], [ %611, %604 ], [ %1450, %1447 ], [ %1521, %1514 ], [ %1739, %1735 ], [ %1670, %1665 ], [ %2113, %2106 ], [ %2165, %2158 ], [ %2217, %2210 ], [ %2269, %2262 ], [ %2321, %2314 ], [ %2373, %2366 ], [ %2425, %2418 ], [ %2477, %2470 ], [ %2548, %2541 ], [ 12, %1390 ], [ %564, %557 ], [ %1357, %1350 ], [ %1626, %1620 ], [ %2063, %2055 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret i32 %2789
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @xre_comp(ptr noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @re_comp_buf, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %2, label %5, label %7

5:                                                ; preds = %1
  %6 = select i1 %4, ptr @.str, ptr null
  br label %25

7:                                                ; preds = %1
  br i1 %4, label %8, label %14

8:                                                ; preds = %7
  %9 = tail call dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #23
  store ptr %9, ptr @re_comp_buf, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  store i64 200, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 1), align 8, !tbaa !108
  %12 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #23
  store ptr %12, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 4), align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %7
  %15 = load i8, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 7), align 8
  %16 = or i8 %15, -128
  store i8 %16, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 7), align 8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %18 = load i64, ptr @xre_syntax_options, align 8, !tbaa !44
  %19 = tail call fastcc i32 @byte_regex_compile(ptr noundef nonnull %0, i64 noundef %17, i64 noundef %18, ptr noundef nonnull @re_comp_buf)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  br label %25

25:                                               ; preds = %11, %14, %8, %5, %21
  %26 = phi ptr [ %24, %21 ], [ %6, %5 ], [ @.str.25, %8 ], [ null, %14 ], [ @.str.25, %11 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local i32 @xre_exec(ptr noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @xre_search_2(ptr noundef nonnull @re_comp_buf, ptr noundef null, i32 noundef 0, ptr noundef %0, i32 noundef %3, i32 noundef 0, i32 noundef %3, ptr noundef null, i32 noundef %3)
  %5 = icmp sgt i32 %4, -1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @xregcomp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !34 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 66246, i64 242428
  %7 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #23
  %8 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %7, ptr %8, align 8, !tbaa !47
  %9 = and i32 %2, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %3
  %12 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #23
  %13 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !62
  %14 = icmp eq ptr %12, null
  br i1 %14, label %74, label %15

15:                                               ; preds = %11, %29
  %16 = phi i64 [ %34, %29 ], [ 0, %11 ]
  %17 = tail call ptr @__ctype_b_loc() #21
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds i16, ptr %18, i64 %16
  %20 = load i16, ptr %19, align 2, !tbaa !105
  %21 = and i16 %20, 256
  %22 = icmp eq i16 %21, 0
  %23 = trunc i64 %16 to i32
  br i1 %22, label %29, label %24

24:                                               ; preds = %15
  %25 = tail call ptr @__ctype_tolower_loc() #21
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds i32, ptr %26, i64 %16
  %28 = load i32, ptr %27, align 4, !tbaa !42
  br label %29

29:                                               ; preds = %15, %24
  %30 = phi i32 [ %28, %24 ], [ %23, %15 ]
  %31 = trunc i32 %30 to i8
  %32 = load ptr, ptr %13, align 8, !tbaa !62
  %33 = getelementptr inbounds i8, ptr %32, i64 %16
  store i8 %31, ptr %33, align 1, !tbaa !51
  %34 = add nuw nsw i64 %16, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %36, label %15, !llvm.loop !157

36:                                               ; preds = %29
  br i1 %14, label %74, label %39

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  store ptr null, ptr %38, align 8, !tbaa !62
  br label %39

39:                                               ; preds = %36, %37
  %40 = and i32 %2, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = and i64 %6, 242366
  %44 = or disjoint i64 %43, 256
  %45 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %46 = load i8, ptr %45, align 8
  %47 = or i8 %46, -128
  store i8 %47, ptr %45, align 8
  br label %52

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 127
  store i8 %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i64 [ %44, %42 ], [ %6, %48 ]
  %54 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %55 = trunc i32 %2 to i8
  %56 = load i8, ptr %54, align 8
  %57 = shl i8 %55, 1
  %58 = and i8 %57, 16
  %59 = and i8 %56, -17
  %60 = or disjoint i8 %59, %58
  store i8 %60, ptr %54, align 8
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %62 = tail call fastcc i32 @byte_regex_compile(ptr noundef %1, i64 noundef %61, i64 noundef %53, ptr noundef nonnull %0)
  %63 = icmp eq i32 %62, 16
  %64 = select i1 %63, i32 8, i32 %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load ptr, ptr %8, align 8, !tbaa !47
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @byte_re_compile_fastmap(ptr noundef nonnull %0), !range !46
  %71 = icmp eq i32 %70, -2
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load ptr, ptr %8, align 8, !tbaa !47
  tail call void @free(ptr noundef %73)
  store ptr null, ptr %8, align 8, !tbaa !47
  br label %74

74:                                               ; preds = %11, %52, %66, %72, %69, %36
  %75 = phi i32 [ 12, %36 ], [ %64, %69 ], [ %64, %72 ], [ %64, %66 ], [ %64, %52 ], [ 12, %11 ]
  ret i32 %75
}

declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local i32 @xregexec(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #7 !prof !34 {
  %6 = alloca %struct.re_registers, align 8
  %7 = alloca %struct.re_pattern_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #21
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  %14 = icmp ne i64 %2, 0
  %15 = and i1 %14, %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !158
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %7, i64 0, i32 7
  %17 = trunc i32 %4 to i8
  %18 = load i8, ptr %16, align 8
  %19 = shl i8 %17, 5
  %20 = and i8 %18, -103
  %21 = and i8 %19, 96
  %22 = or disjoint i8 %21, %20
  %23 = or disjoint i8 %22, 4
  store i8 %23, ptr %16, align 8
  br i1 %15, label %24, label %33

24:                                               ; preds = %5
  %25 = trunc i64 %2 to i32
  store i32 %25, ptr %6, align 8, !tbaa !58
  %26 = shl i64 %2, 3
  %27 = tail call ptr @malloc(i64 noundef %26) #23
  %28 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !60
  %29 = icmp eq ptr %27, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds i32, ptr %27, i64 %2
  %32 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !61
  br label %33

33:                                               ; preds = %30, %5
  %34 = phi ptr [ %6, %30 ], [ null, %5 ]
  %35 = call i32 @xre_search_2(ptr noundef nonnull %7, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %9, i32 noundef 0, i32 noundef %9, ptr noundef %34, i32 noundef %9)
  br i1 %15, label %36, label %58

36:                                               ; preds = %33
  %37 = icmp sgt i32 %35, -1
  br i1 %37, label %38, label %55

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  br label %43

43:                                               ; preds = %38, %43
  %44 = phi i64 [ 0, %38 ], [ %53, %43 ]
  %45 = phi i32 [ 0, %38 ], [ %52, %43 ]
  %46 = getelementptr inbounds i32, ptr %40, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !42
  %48 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %44
  store i32 %47, ptr %48, align 4, !tbaa !159
  %49 = getelementptr inbounds i32, ptr %42, i64 %44
  %50 = load i32, ptr %49, align 4, !tbaa !42
  %51 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %44, i32 1
  store i32 %50, ptr %51, align 4, !tbaa !161
  %52 = add i32 %45, 1
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %53, %2
  br i1 %54, label %43, label %55, !llvm.loop !162

55:                                               ; preds = %43, %36
  %56 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  call void @free(ptr noundef %57)
  br label %58

58:                                               ; preds = %55, %33
  %59 = lshr i32 %35, 31
  br label %60

60:                                               ; preds = %24, %58
  %61 = phi i32 [ %59, %58 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  ret i32 %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local i64 @xregerror(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #7 !prof !34 {
  %5 = icmp ugt i32 %0, 16
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @abort() #22
  unreachable

7:                                                ; preds = %4
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10)
  %12 = add i64 %11, 1
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = icmp ugt i64 %12, %3
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = add i64 %3, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %10, i64 %17, i1 false)
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  store i8 0, ptr %18, align 1, !tbaa !51
  br label %20

19:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %10, i64 %12, i1 false)
  br label %20

20:                                               ; preds = %16, %19, %7
  ret i64 %12
}

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #13

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @xregfree(ptr nocapture noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef %2)
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @free(ptr noundef %7)
  br label %10

10:                                               ; preds = %9, %5
  store ptr null, ptr %6, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -9
  store i8 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @free(ptr noundef %15)
  br label %18

18:                                               ; preds = %17, %10
  store ptr null, ptr %14, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_group_match_null_string_p(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #17 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %6, ptr %4, align 8, !tbaa !38
  %7 = icmp ult ptr %6, %1
  br i1 %7, label %8, label %83

8:                                                ; preds = %3, %80
  %9 = phi ptr [ %81, %80 ], [ %6, %3 ]
  %10 = load i8, ptr %9, align 1, !tbaa !51
  switch i8 %10, label %71 [
    i8 15, label %11
    i8 7, label %69
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %12, ptr %4, align 8, !tbaa !38
  %13 = load i8, ptr %12, align 1, !tbaa !51
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %9, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !51
  %17 = sext i8 %16 to i32
  %18 = shl nsw i32 %17, 8
  %19 = or disjoint i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %9, i64 3
  store ptr %20, ptr %4, align 8, !tbaa !38
  %21 = icmp sgt i32 %19, -1
  br i1 %21, label %22, label %77

22:                                               ; preds = %11
  %23 = load ptr, ptr %4, align 8, !tbaa !38
  br label %24

24:                                               ; preds = %22, %38
  %25 = phi ptr [ %47, %38 ], [ %23, %22 ]
  %26 = phi i32 [ %46, %38 ], [ %19, %22 ]
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, ptr %25, i64 %27
  %29 = getelementptr i8, ptr %28, i64 -3
  %30 = load i8, ptr %29, align 1, !tbaa !51
  %31 = icmp eq i8 %30, 14
  br i1 %31, label %32, label %54

32:                                               ; preds = %24
  %33 = tail call fastcc signext i8 @byte_alt_match_null_string_p(ptr noundef %25, ptr noundef nonnull %29, ptr noundef %2), !range !81
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %82, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr %28, align 1, !tbaa !51
  %37 = icmp eq i8 %36, 15
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %28, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !51
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %28, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !51
  %44 = sext i8 %43 to i32
  %45 = shl nsw i32 %44, 8
  %46 = or disjoint i32 %45, %41
  %47 = getelementptr inbounds i8, ptr %28, i64 3
  %48 = sext i32 %46 to i64
  %49 = getelementptr i8, ptr %47, i64 %48
  %50 = getelementptr i8, ptr %49, i64 -3
  %51 = load i8, ptr %50, align 1, !tbaa !51
  %52 = icmp eq i8 %51, 14
  br i1 %52, label %24, label %53, !llvm.loop !163

53:                                               ; preds = %38
  store ptr %47, ptr %4, align 8, !tbaa !38
  br label %54

54:                                               ; preds = %24, %35, %53
  %55 = phi ptr [ %28, %53 ], [ %28, %35 ], [ %25, %24 ]
  store ptr %55, ptr %4, align 8, !tbaa !38
  %56 = getelementptr inbounds i8, ptr %55, i64 -2
  %57 = load i8, ptr %56, align 1, !tbaa !51
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds i8, ptr %55, i64 -1
  %60 = load i8, ptr %59, align 1, !tbaa !51
  %61 = sext i8 %60 to i32
  %62 = shl nsw i32 %61, 8
  %63 = or disjoint i32 %62, %58
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %55, i64 %64
  %66 = tail call fastcc signext i8 @byte_alt_match_null_string_p(ptr noundef %55, ptr noundef %65, ptr noundef %2), !range !81
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %54
  store ptr %65, ptr %4, align 8, !tbaa !38
  br label %77

69:                                               ; preds = %8
  %70 = getelementptr inbounds i8, ptr %9, i64 2
  store ptr %70, ptr %0, align 8, !tbaa !38
  br label %83

71:                                               ; preds = %8
  %72 = call fastcc signext i8 @byte_common_op_match_null_string_p(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %2), !range !81
  %73 = icmp ne i8 %72, 0
  %74 = load ptr, ptr %4, align 8
  %75 = icmp ult ptr %74, %1
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %80, label %83

77:                                               ; preds = %11, %68
  %78 = load ptr, ptr %4, align 8, !tbaa !38
  %79 = icmp ult ptr %78, %1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %71
  %81 = phi ptr [ %78, %77 ], [ %74, %71 ]
  br label %8, !llvm.loop !164

82:                                               ; preds = %32
  store ptr %25, ptr %4, align 8, !tbaa !38
  br label %83

83:                                               ; preds = %71, %77, %54, %3, %82, %69
  %84 = phi i8 [ 1, %69 ], [ 0, %82 ], [ 0, %3 ], [ 0, %54 ], [ 0, %77 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %84
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_alt_match_null_string_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #17 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr %0, ptr %4, align 8, !tbaa !38
  %5 = icmp ult ptr %0, %1
  br i1 %5, label %6, label %28

6:                                                ; preds = %3, %25
  %7 = phi ptr [ %26, %25 ], [ %0, %3 ]
  %8 = load i8, ptr %7, align 1, !tbaa !51
  %9 = icmp eq i8 %8, 15
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %11, ptr %4, align 8, !tbaa !38
  %12 = load i8, ptr %11, align 1, !tbaa !51
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %7, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !51
  %16 = sext i8 %15 to i32
  %17 = shl nsw i32 %16, 8
  %18 = or disjoint i32 %17, %13
  %19 = getelementptr inbounds i8, ptr %7, i64 3
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %21, ptr %4, align 8, !tbaa !38
  br label %25

22:                                               ; preds = %6
  %23 = call fastcc signext i8 @byte_common_op_match_null_string_p(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %2), !range !81
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %10
  %26 = load ptr, ptr %4, align 8, !tbaa !38
  %27 = icmp ult ptr %26, %1
  br i1 %27, label %6, label %28, !llvm.loop !165

28:                                               ; preds = %22, %25, %3
  %29 = phi i8 [ 1, %3 ], [ 0, %22 ], [ 1, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %29
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_common_op_match_null_string_p(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #17 !prof !34 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %4, align 8, !tbaa !38
  %7 = load i8, ptr %5, align 1, !tbaa !51
  switch i8 %7, label %66 [
    i8 0, label %64
    i8 9, label %64
    i8 10, label %64
    i8 11, label %64
    i8 12, label %64
    i8 26, label %64
    i8 27, label %64
    i8 28, label %64
    i8 29, label %64
    i8 6, label %8
    i8 13, label %21
    i8 21, label %34
    i8 8, label %55
    i8 23, label %62
  ]

8:                                                ; preds = %3
  %9 = load i8, ptr %6, align 1, !tbaa !51
  %10 = call fastcc signext i8 @byte_group_match_null_string_p(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2), !range !81
  %11 = zext i8 %9 to i64
  %12 = getelementptr inbounds %union.byte_register_info_type, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 3
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = and i8 %13, -4
  %18 = or disjoint i8 %17, %10
  store i8 %18, ptr %12, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = icmp eq i8 %10, 0
  br i1 %20, label %66, label %64

21:                                               ; preds = %3
  %22 = load i8, ptr %6, align 1, !tbaa !51
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %5, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !51
  %26 = sext i8 %25 to i32
  %27 = shl nsw i32 %26, 8
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr inbounds i8, ptr %5, i64 3
  store ptr %29, ptr %4, align 8, !tbaa !38
  %30 = icmp sgt i32 %28, -1
  br i1 %30, label %31, label %66

31:                                               ; preds = %21
  %32 = zext nneg i32 %28 to i64
  %33 = getelementptr inbounds i8, ptr %29, i64 %32
  store ptr %33, ptr %4, align 8, !tbaa !38
  br label %64

34:                                               ; preds = %3
  %35 = getelementptr inbounds i8, ptr %5, i64 3
  store ptr %35, ptr %4, align 8, !tbaa !38
  %36 = load i8, ptr %35, align 1, !tbaa !51
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %5, i64 4
  %39 = load i8, ptr %38, align 1, !tbaa !51
  %40 = sext i8 %39 to i32
  %41 = shl nsw i32 %40, 8
  %42 = or disjoint i32 %41, %37
  %43 = getelementptr inbounds i8, ptr %5, i64 5
  store ptr %43, ptr %4, align 8, !tbaa !38
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %34
  store ptr %6, ptr %4, align 8, !tbaa !38
  %46 = load i8, ptr %6, align 1, !tbaa !51
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %5, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !51
  %50 = sext i8 %49 to i32
  %51 = shl nsw i32 %50, 8
  %52 = or disjoint i32 %51, %47
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %35, i64 %53
  store ptr %54, ptr %4, align 8, !tbaa !38
  br label %64

55:                                               ; preds = %3
  %56 = load i8, ptr %6, align 1, !tbaa !51
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds %union.byte_register_info_type, ptr %2, i64 %57
  %59 = load i8, ptr %58, align 8
  %60 = and i8 %59, 3
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %64

62:                                               ; preds = %3
  %63 = getelementptr inbounds i8, ptr %5, i64 5
  store ptr %63, ptr %4, align 8, !tbaa !38
  br label %66

64:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %55, %19, %3, %45, %31
  %65 = load ptr, ptr %4, align 8, !tbaa !38
  store ptr %65, ptr %0, align 8, !tbaa !38
  br label %66

66:                                               ; preds = %55, %19, %62, %3, %34, %21, %64
  %67 = phi i8 [ 1, %64 ], [ 0, %21 ], [ 0, %34 ], [ 0, %3 ], [ 0, %62 ], [ 0, %19 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %67
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @byte_compile_range(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr noundef readonly %3, i64 noundef %4, ptr nocapture noundef %5) unnamed_addr #18 !prof !34 {
  %7 = load ptr, ptr %1, align 8, !tbaa !38
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %70, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %10, ptr %1, align 8, !tbaa !38
  %11 = and i64 %4, 65536
  %12 = icmp eq i64 %11, 0
  %13 = select i1 %12, i32 0, i32 11
  %14 = icmp eq ptr %3, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = and i32 %0, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %3, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !51
  %20 = sext i8 %19 to i32
  br label %24

21:                                               ; preds = %9
  %22 = shl i32 %0, 24
  %23 = ashr exact i32 %22, 24
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %20, %15 ], [ %23, %21 ]
  br i1 %14, label %30, label %26

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !tbaa !51
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i8, ptr %3, i64 %28
  br label %30

30:                                               ; preds = %24, %26
  %31 = phi ptr [ %29, %26 ], [ %7, %24 ]
  %32 = load i8, ptr %31, align 1, !tbaa !51
  %33 = zext i8 %32 to i32
  %34 = icmp ugt i32 %25, %33
  br i1 %34, label %70, label %35

35:                                               ; preds = %30, %59
  %36 = phi i32 [ %68, %59 ], [ %25, %30 ]
  br i1 %14, label %43, label %37

37:                                               ; preds = %35
  %38 = and i32 %36, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %3, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !51
  %42 = zext i8 %41 to i32
  br label %46

43:                                               ; preds = %35
  %44 = shl i32 %36, 24
  %45 = ashr exact i32 %44, 24
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %42, %37 ], [ %45, %43 ]
  %48 = and i32 %47, 7
  %49 = shl nuw nsw i32 1, %48
  br i1 %14, label %56, label %50

50:                                               ; preds = %46
  %51 = and i32 %36, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %3, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !51
  %55 = zext i8 %54 to i32
  br label %59

56:                                               ; preds = %46
  %57 = shl i32 %36, 24
  %58 = ashr exact i32 %57, 24
  br label %59

59:                                               ; preds = %56, %50
  %60 = phi i32 [ %55, %50 ], [ %58, %56 ]
  %61 = lshr i32 %60, 3
  %62 = and i32 %61, 31
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %5, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !51
  %66 = trunc i32 %49 to i8
  %67 = or i8 %65, %66
  store i8 %67, ptr %64, align 1, !tbaa !51
  %68 = add nsw i32 %36, 1
  %69 = icmp eq i32 %36, %33
  br i1 %69, label %70, label %35, !llvm.loop !166

70:                                               ; preds = %59, %30, %6
  %71 = phi i32 [ 11, %6 ], [ %13, %30 ], [ 0, %59 ]
  ret i32 %71
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { allocsize(0) }
attributes #24 = { allocsize(1) }

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
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !40, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !40, i64 0}
!46 = !{i32 -2, i32 1}
!47 = !{!48, !39, i64 32}
!48 = !{!"re_pattern_buffer", !39, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !39, i64 32, !39, i64 40, !45, i64 48, !43, i64 56, !43, i64 56, !43, i64 56, !43, i64 56, !43, i64 56, !43, i64 56, !43, i64 56}
!49 = !{!48, !39, i64 0}
!50 = !{!48, !45, i64 16}
!51 = !{!40, !40, i64 0}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !36, !37}
!54 = distinct !{!54, !36, !37}
!55 = distinct !{!55, !36, !37}
!56 = distinct !{!56, !36, !37}
!57 = !{!48, !45, i64 24}
!58 = !{!59, !43, i64 0}
!59 = !{!"re_registers", !43, i64 0, !39, i64 8, !39, i64 16}
!60 = !{!59, !39, i64 8}
!61 = !{!59, !39, i64 16}
!62 = !{!48, !39, i64 40}
!63 = distinct !{!63, !36, !37}
!64 = distinct !{!64, !36, !37}
!65 = distinct !{!65, !37}
!66 = !{!48, !45, i64 48}
!67 = distinct !{!67, !36, !37}
!68 = distinct !{!68, !36, !37}
!69 = distinct !{!69, !36, !37}
!70 = distinct !{!70, !36, !37}
!71 = distinct !{!71, !36, !37}
!72 = distinct !{!72, !36, !37}
!73 = distinct !{!73, !36, !37}
!74 = distinct !{!74, !36, !37}
!75 = distinct !{!75, !36, !37}
!76 = distinct !{!76, !36, !37}
!77 = distinct !{!77, !36, !37}
!78 = distinct !{!78, !36, !37}
!79 = distinct !{!79, !36, !37}
!80 = distinct !{!80, !36, !37}
!81 = !{i8 0, i8 2}
!82 = distinct !{!82, !36, !37}
!83 = distinct !{!83, !36, !37}
!84 = distinct !{!84, !36, !37}
!85 = distinct !{!85, !36, !37}
!86 = distinct !{!86, !36, !37}
!87 = distinct !{!87, !36, !37}
!88 = distinct !{!88, !36, !37}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !36, !37}
!91 = distinct !{!91, !36, !37}
!92 = distinct !{!92, !36, !37}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !36, !37}
!95 = distinct !{!95, !36, !37}
!96 = distinct !{!96, !36, !37}
!97 = distinct !{!97, !36, !37}
!98 = distinct !{!98, !36, !37}
!99 = distinct !{!99, !36, !37}
!100 = distinct !{!100, !36, !37}
!101 = distinct !{!101, !36, !37}
!102 = distinct !{!102, !36, !37}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !36, !37}
!105 = !{!106, !106, i64 0}
!106 = !{!"short", !40, i64 0}
!107 = distinct !{!107, !36, !37}
!108 = !{!48, !45, i64 8}
!109 = distinct !{!109, !36, !37}
!110 = distinct !{!110, !36, !37}
!111 = distinct !{!111, !37}
!112 = distinct !{!112, !36, !37}
!113 = distinct !{!113, !36, !37}
!114 = distinct !{!114, !36, !37}
!115 = distinct !{!115, !36, !37}
!116 = distinct !{!116, !36, !37}
!117 = distinct !{!117, !36, !37}
!118 = distinct !{!118, !36, !37}
!119 = distinct !{!119, !36, !37}
!120 = distinct !{!120, !37}
!121 = !{i32 0, i32 12}
!122 = distinct !{!122, !37}
!123 = distinct !{!123, !36, !37}
!124 = distinct !{!124, !37}
!125 = distinct !{!125, !37}
!126 = distinct !{!126, !36, !37}
!127 = !{!128, !45, i64 0}
!128 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !43, i64 32}
!129 = !{!128, !45, i64 8}
!130 = !{!128, !45, i64 24}
!131 = !{!128, !43, i64 32}
!132 = !{!128, !45, i64 16}
!133 = distinct !{!133, !36, !37}
!134 = distinct !{!134, !36, !37}
!135 = distinct !{!135, !36, !37}
!136 = distinct !{!136, !36, !37}
!137 = distinct !{!137, !36, !37}
!138 = distinct !{!138, !36, !37}
!139 = distinct !{!139, !36, !37}
!140 = distinct !{!140, !36, !37}
!141 = distinct !{!141, !36, !37}
!142 = distinct !{!142, !36, !37}
!143 = distinct !{!143, !36, !37}
!144 = distinct !{!144, !36, !37}
!145 = distinct !{!145, !36, !37}
!146 = distinct !{!146, !36, !37}
!147 = distinct !{!147, !36, !37}
!148 = distinct !{!148, !36, !37}
!149 = distinct !{!149, !36, !37}
!150 = distinct !{!150, !36, !37}
!151 = distinct !{!151, !36, !37}
!152 = distinct !{!152, !36, !37}
!153 = distinct !{!153, !36, !37}
!154 = distinct !{!154, !36, !37}
!155 = distinct !{!155, !36, !37}
!156 = distinct !{!156, !36, !37}
!157 = distinct !{!157, !36, !37}
!158 = !{i64 0, i64 8, !38, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !38, i64 40, i64 8, !38, i64 48, i64 8, !44, i64 56, i64 4, !42, i64 56, i64 4, !42, i64 56, i64 4, !42, i64 56, i64 4, !42, i64 56, i64 4, !42, i64 56, i64 4, !42, i64 56, i64 4, !42}
!159 = !{!160, !43, i64 0}
!160 = !{!"", !43, i64 0, !43, i64 4}
!161 = !{!160, !43, i64 4}
!162 = distinct !{!162, !36, !37}
!163 = distinct !{!163, !36, !37}
!164 = distinct !{!164, !36, !37}
!165 = distinct !{!165, !36, !37}
!166 = distinct !{!166, !36, !37}
