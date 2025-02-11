; ModuleID = 'c-ppoutput.c'
source_filename = "c-ppoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.cset_converter = type { ptr, i32, i32 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct._cpp_dir_only_callbacks = type { ptr, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.macro_queue = type { ptr, ptr }

@flag_no_output = external local_unnamed_addr global i8, align 1
@flag_dump_macros = external local_unnamed_addr global i8, align 1
@print.0 = internal unnamed_addr global ptr null, align 8
@print.1 = internal unnamed_addr global ptr null, align 8
@print.2 = internal unnamed_addr global ptr null, align 8
@print.3 = internal unnamed_addr global i32 0, align 8
@print.4 = internal unnamed_addr global i1 false, align 4
@print.5 = internal unnamed_addr global i1 false, align 8
@parse_in = external local_unnamed_addr global ptr, align 8
@flag_dump_includes = external local_unnamed_addr global i8, align 1
@flag_pch_preprocess = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [12 x i8] c"# 1 \22%s//\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flag_no_line_commands = external local_unnamed_addr global i8, align 1
@input_location = external local_unnamed_addr global i32, align 4
@line_table = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c" 1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" 2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"#pragma \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@define_queue = internal unnamed_addr global ptr null, align 8
@undef_queue = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"#ident %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"#define \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"#undef %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"#%s <%s>\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"#%s \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"# %u \22%s\22%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" 3 4\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c" 3\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"#pragma GCC pch_preprocess \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @preprocess_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @flag_no_output, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.cpp_buffer, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4, %9
  tail call void @cpp_scan_nooutput(ptr noundef nonnull %0) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !8
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !27
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !29

14:                                               ; preds = %9, %4
  tail call void @cpp_scan_nooutput(ptr noundef nonnull %0) #9
  br label %33

15:                                               ; preds = %1
  %16 = tail call ptr @cpp_get_options(ptr noundef %0) #9
  %17 = getelementptr inbounds %struct.cpp_options, ptr %16, i64 0, i32 36
  %18 = load i8, ptr %17, align 2, !tbaa !31
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call fastcc void @scan_translation_unit_trad(ptr noundef %0) #10
  br label %33

21:                                               ; preds = %15
  %22 = tail call ptr @cpp_get_options(ptr noundef %0) #9
  %23 = getelementptr inbounds %struct.cpp_options, ptr %22, i64 0, i32 52
  %24 = load i8, ptr %23, align 4, !tbaa !32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @cpp_get_options(ptr noundef %0) #9
  %28 = getelementptr inbounds %struct.cpp_options, ptr %27, i64 0, i32 32
  %29 = load i8, ptr %28, align 2, !tbaa !33
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call fastcc void @scan_translation_unit_directives_only(ptr noundef %0) #10
  br label %33

32:                                               ; preds = %26, %21
  tail call fastcc void @scan_translation_unit(ptr noundef %0) #10
  br label %33

33:                                               ; preds = %20, %32, %31, %14
  %34 = load i8, ptr @flag_dump_macros, align 1, !tbaa !5
  %35 = icmp eq i8 %34, 77
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @dump_macro, ptr noundef null) #9
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i1, ptr @print.4, align 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load ptr, ptr @print.0, align 8, !tbaa !34
  %41 = tail call i32 @putc(i32 noundef 10, ptr noundef %40) #10
  br label %42

42:                                               ; preds = %39, %37
  ret void
}

; Function Attrs: optsize
declare void @cpp_scan_nooutput(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_translation_unit_trad(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @_cpp_read_logical_line_trad(ptr noundef %0) #9
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 3
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  br label %9

9:                                                ; preds = %4, %23
  %10 = load ptr, ptr %6, align 8, !tbaa !36
  %11 = load ptr, ptr %5, align 8, !tbaa !37
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = load i32, ptr %7, align 8, !tbaa !38
  tail call void @maybe_print_line(i32 noundef %15) #10
  %16 = load ptr, ptr %5, align 8, !tbaa !37
  %17 = load ptr, ptr @print.0, align 8, !tbaa !34
  %18 = tail call i64 @fwrite(ptr noundef %16, i64 noundef 1, i64 noundef %14, ptr noundef %17) #10
  store i1 true, ptr @print.4, align 4
  %19 = load i8, ptr %8, align 1, !tbaa !39
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = load ptr, ptr %5, align 8, !tbaa !37
  tail call fastcc void @account_for_newlines(ptr noundef %22, i64 noundef %14) #10
  br label %23

23:                                               ; preds = %21, %9
  %24 = tail call zeroext i8 @_cpp_read_logical_line_trad(ptr noundef nonnull %0) #9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !40

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_translation_unit_directives_only(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._cpp_dir_only_callbacks, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  store ptr @print_lines_directives_only, ptr %2, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct._cpp_dir_only_callbacks, ptr %2, i64 0, i32 1
  store ptr @maybe_print_line, ptr %3, align 8, !tbaa !43
  call void @_cpp_preprocess_dir_only(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scan_translation_unit(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %6 = tail call ptr @cpp_get_options(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.cpp_options, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = icmp ne i32 %8, 9
  %10 = load i8, ptr @flag_no_line_commands, align 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  store ptr null, ptr @print.2, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %143, %1
  %14 = phi i8 [ 0, %1 ], [ %144, %143 ]
  %15 = phi i8 [ 0, %1 ], [ %145, %143 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %16 = call ptr @cpp_get_token_with_location(ptr noundef %0, ptr noundef nonnull %2) #9
  %17 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  switch i8 %18, label %36 [
    i8 72, label %19
    i8 22, label %146
  ]

19:                                               ; preds = %13
  %20 = load ptr, ptr @print.2, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  br label %34

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.cpp_token, ptr %20, i64 0, i32 2
  %27 = load i16, ptr %26, align 2, !tbaa !47
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %143

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %143

34:                                               ; preds = %22, %30
  %35 = phi ptr [ %24, %22 ], [ null, %30 ]
  store ptr %35, ptr @print.2, align 8, !tbaa !46
  br label %143

36:                                               ; preds = %13
  %37 = icmp eq i8 %15, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr @line_table, align 8, !tbaa !44
  %40 = load i32, ptr %2, align 4, !tbaa !48
  %41 = call ptr @linemap_lookup(ptr noundef %39, i32 noundef %40) #9
  %42 = load i32, ptr %2, align 4, !tbaa !48
  %43 = getelementptr inbounds %struct.line_map, ptr %41, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !49
  %45 = sub i32 %42, %44
  %46 = getelementptr inbounds %struct.line_map, ptr %41, i64 0, i32 6
  %47 = load i8, ptr %46, align 2
  %48 = zext nneg i8 %47 to i32
  %49 = lshr i32 %45, %48
  %50 = getelementptr inbounds %struct.line_map, ptr %41, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !51
  %52 = add i32 %49, %51
  %53 = load ptr, ptr @print.2, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  store ptr %16, ptr @print.2, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %55, %38
  %57 = phi ptr [ %16, %55 ], [ %53, %38 ]
  %58 = load i32, ptr @print.3, align 8, !tbaa !52
  %59 = icmp ne i32 %52, %58
  %60 = select i1 %59, i1 %12, i1 false
  %61 = icmp eq i8 %14, 0
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %105, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.cpp_token, ptr %57, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !47
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %63
  %69 = load ptr, ptr @print.1, align 8, !tbaa !53
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = call i32 @cpp_avoid_paste(ptr noundef %0, ptr noundef nonnull %69, ptr noundef nonnull %16) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load ptr, ptr @print.1, align 8, !tbaa !53
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %110

77:                                               ; preds = %68, %74
  %78 = load i8, ptr %17, align 4
  %79 = icmp eq i8 %78, 37
  br i1 %79, label %107, label %112

80:                                               ; preds = %36
  %81 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !47
  %83 = and i16 %82, 1
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr @line_table, align 8, !tbaa !44
  %87 = load i32, ptr %2, align 4, !tbaa !48
  %88 = call ptr @linemap_lookup(ptr noundef %86, i32 noundef %87) #9
  %89 = load i32, ptr %2, align 4, !tbaa !48
  %90 = getelementptr inbounds %struct.line_map, ptr %88, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !49
  %92 = sub i32 %89, %91
  %93 = getelementptr inbounds %struct.line_map, ptr %88, i64 0, i32 6
  %94 = load i8, ptr %93, align 2
  %95 = zext nneg i8 %94 to i32
  %96 = lshr i32 %92, %95
  %97 = getelementptr inbounds %struct.line_map, ptr %88, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !51
  %99 = add i32 %96, %98
  %100 = load i32, ptr @print.3, align 8, !tbaa !52
  %101 = icmp ne i32 %99, %100
  %102 = select i1 %101, i1 %12, i1 false
  %103 = icmp eq i8 %14, 0
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %107

105:                                              ; preds = %85, %56
  %106 = phi i32 [ %42, %56 ], [ %89, %85 ]
  call fastcc void @do_line_change(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %106, i32 noundef 0) #10
  br label %107

107:                                              ; preds = %105, %85, %63, %71, %77
  %108 = load ptr, ptr @print.0, align 8, !tbaa !34
  %109 = call i32 @putc(i32 noundef 32, ptr noundef %108) #10
  br label %110

110:                                              ; preds = %107, %80, %74
  %111 = load i8, ptr %17, align 4
  br label %112

112:                                              ; preds = %110, %77
  %113 = phi i8 [ %111, %110 ], [ %78, %77 ]
  store ptr null, ptr @print.2, align 8, !tbaa !46
  store ptr %16, ptr @print.1, align 8, !tbaa !53
  switch i8 %113, label %131 [
    i8 70, label %114
    i8 71, label %129
  ]

114:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %115 = load i32, ptr %16, align 8, !tbaa !54
  call void @maybe_print_line(i32 noundef %115) #10
  %116 = load ptr, ptr @print.0, align 8, !tbaa !34
  %117 = call i32 @fputs(ptr noundef nonnull @.str.4, ptr noundef %116) #10
  %118 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 3
  %119 = load i32, ptr %118, align 8, !tbaa !5
  call void @c_pp_lookup_pragma(i32 noundef %119, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %120 = load ptr, ptr %3, align 8, !tbaa !44
  %121 = icmp eq ptr %120, null
  %122 = load ptr, ptr @print.0, align 8, !tbaa !34
  %123 = load ptr, ptr %4, align 8, !tbaa !44
  br i1 %121, label %126, label %124

124:                                              ; preds = %114
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.5, ptr noundef nonnull %120, ptr noundef %123) #10
  br label %128

126:                                              ; preds = %114
  %127 = call i32 @fputs(ptr %123, ptr %122)
  br label %128

128:                                              ; preds = %126, %124
  store i1 true, ptr @print.4, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %133

129:                                              ; preds = %112
  %130 = load i32, ptr %16, align 8, !tbaa !54
  call void @maybe_print_line(i32 noundef %130) #10
  br label %133

131:                                              ; preds = %112
  %132 = load ptr, ptr @print.0, align 8, !tbaa !34
  call void @cpp_output_token(ptr noundef nonnull %16, ptr noundef %132) #9
  br label %133

133:                                              ; preds = %129, %131, %128
  %134 = phi i8 [ 1, %128 ], [ 0, %129 ], [ %14, %131 ]
  %135 = load i8, ptr %17, align 4
  %136 = icmp eq i8 %135, 68
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 3
  %139 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 3, i32 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = load i32, ptr %138, align 8, !tbaa !5
  %142 = zext i32 %141 to i64
  call fastcc void @account_for_newlines(ptr noundef %140, i64 noundef %142) #10
  br label %143

143:                                              ; preds = %133, %137, %25, %30, %34
  %144 = phi i8 [ %14, %34 ], [ %14, %30 ], [ %14, %25 ], [ %134, %137 ], [ %134, %133 ]
  %145 = phi i8 [ 1, %34 ], [ 1, %30 ], [ 1, %25 ], [ 0, %137 ], [ 0, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %13

146:                                              ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: optsize
declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_macro(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 319
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = load ptr, ptr @print.0, align 8, !tbaa !34
  %10 = tail call i32 @fputs(ptr noundef nonnull @.str.8, ptr noundef %9) #10
  %11 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef nonnull %1) #9
  %12 = load ptr, ptr @print.0, align 8, !tbaa !34
  %13 = tail call i32 @fputs(ptr noundef %11, ptr noundef %12) #10
  %14 = load ptr, ptr @print.0, align 8, !tbaa !34
  %15 = tail call i32 @putc(i32 noundef 10, ptr noundef %14) #10
  %16 = load i32, ptr @print.3, align 8, !tbaa !52
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @print.3, align 8, !tbaa !52
  br label %18

18:                                               ; preds = %8, %3
  ret i32 1
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_pp_output(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %3 = tail call ptr @cpp_get_callbacks(ptr noundef %2) #9
  %4 = load i8, ptr @flag_no_output, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  store ptr @cb_line_change, ptr %3, align 8, !tbaa !55
  %7 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %8 = tail call ptr @cpp_get_options(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 6
  store ptr @cb_ident, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 7
  store ptr @cb_def_pragma, ptr %14, align 8, !tbaa !57
  br label %15

15:                                               ; preds = %6, %12, %1
  %16 = load i8, ptr @flag_dump_includes, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 3
  store ptr @cb_include, ptr %19, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8, ptr @flag_pch_preprocess, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 8
  store ptr @c_common_valid_pch, ptr %24, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 9
  store ptr @cb_read_pch, ptr %25, align 8, !tbaa !60
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i8, ptr @flag_dump_macros, align 1
  switch i8 %27, label %35 [
    i8 78, label %28
    i8 68, label %28
    i8 85, label %31
  ]

28:                                               ; preds = %26, %26
  %29 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 4
  store ptr @cb_define, ptr %29, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 5
  store ptr @cb_undef, ptr %30, align 8, !tbaa !62
  br label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 15
  store ptr @dump_queued_macros, ptr %32, align 8, !tbaa !63
  %33 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 13
  store ptr @cb_used_define, ptr %33, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 14
  store ptr @cb_used_undef, ptr %34, align 8, !tbaa !65
  br label %35

35:                                               ; preds = %26, %28, %31
  store i32 1, ptr @print.3, align 8, !tbaa !52
  store i1 false, ptr @print.4, align 4
  store ptr null, ptr @print.1, align 8, !tbaa !53
  store ptr %0, ptr @print.0, align 8, !tbaa !34
  store i1 true, ptr @print.5, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_line_change(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !54
  tail call fastcc void @do_line_change(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %4, i32 noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_ident(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @maybe_print_line(i32 noundef %1) #10
  %4 = load ptr, ptr @print.0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.cpp_string, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %6) #10
  %8 = load i32, ptr @print.3, align 8, !tbaa !52
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @print.3, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_def_pragma(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @maybe_print_line(i32 noundef %1) #10
  %3 = load ptr, ptr @print.0, align 8, !tbaa !34
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.4, ptr noundef %3) #10
  %5 = load ptr, ptr @print.0, align 8, !tbaa !34
  tail call void @cpp_output_line(ptr noundef %0, ptr noundef %5) #9
  %6 = load i32, ptr @print.3, align 8, !tbaa !52
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @print.3, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_include(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly %5) #0 {
  tail call void @maybe_print_line(i32 noundef %1) #10
  %7 = icmp eq i32 %4, 0
  %8 = load ptr, ptr @print.0, align 8, !tbaa !34
  %9 = select i1 %7, ptr @.str.11, ptr @.str.10
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3) #10
  %11 = icmp eq ptr %5, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %5, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %26
  %16 = phi ptr [ %30, %26 ], [ %13, %12 ]
  %17 = phi ptr [ %29, %26 ], [ %5, %12 ]
  %18 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 2
  %19 = load i16, ptr %18, align 2, !tbaa !47
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @print.0, align 8, !tbaa !34
  %24 = tail call i32 @putc(i32 noundef 32, ptr noundef %23) #10
  %25 = load ptr, ptr %17, align 8, !tbaa !44
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi ptr [ %25, %22 ], [ %16, %15 ]
  %28 = load ptr, ptr @print.0, align 8, !tbaa !34
  tail call void @cpp_output_token(ptr noundef %27, ptr noundef %28) #9
  %29 = getelementptr inbounds ptr, ptr %17, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !68

32:                                               ; preds = %26, %12, %6
  %33 = load ptr, ptr @print.0, align 8, !tbaa !34
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %33) #10
  %35 = load i32, ptr @print.3, align 8, !tbaa !52
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @print.3, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare i32 @c_common_valid_pch(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  tail call void @c_common_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9
  %5 = load ptr, ptr @print.0, align 8, !tbaa !34
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef %1) #10
  %7 = load i32, ptr @print.3, align 8, !tbaa !52
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @print.3, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_define(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  tail call void @maybe_print_line(i32 noundef %1) #10
  %4 = load ptr, ptr @print.0, align 8, !tbaa !34
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.8, ptr noundef %4) #10
  %6 = load i8, ptr @flag_dump_macros, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 68
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %2) #9
  br label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %2, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = load ptr, ptr @print.0, align 8, !tbaa !34
  %15 = tail call i32 @fputs(ptr noundef %13, ptr noundef %14) #10
  %16 = load ptr, ptr @print.0, align 8, !tbaa !34
  %17 = tail call i32 @putc(i32 noundef 10, ptr noundef %16) #10
  %18 = load ptr, ptr @line_table, align 8, !tbaa !44
  %19 = tail call ptr @linemap_lookup(ptr noundef %18, i32 noundef %1) #9
  %20 = getelementptr inbounds %struct.line_map, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, ptr @print.3, align 8, !tbaa !52
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @print.3, align 8, !tbaa !52
  br label %26

26:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_undef(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @maybe_print_line(i32 noundef %1) #10
  %4 = load ptr, ptr @print.0, align 8, !tbaa !34
  %5 = load ptr, ptr %2, align 8, !tbaa !69
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef %5) #10
  %7 = load i32, ptr @print.3, align 8, !tbaa !52
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @print.3, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dump_queued_macros(ptr nocapture readnone %0) #0 {
  %2 = load i1, ptr @print.4, align 4
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load ptr, ptr @print.0, align 8, !tbaa !34
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %4) #10
  %6 = load i32, ptr @print.3, align 8, !tbaa !52
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @print.3, align 8, !tbaa !52
  store i1 false, ptr @print.4, align 4
  br label %8

8:                                                ; preds = %3, %1
  %9 = load ptr, ptr @define_queue, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %23, %11 ], [ %9, %8 ]
  %13 = load ptr, ptr @print.0, align 8, !tbaa !34
  %14 = tail call i32 @fputs(ptr noundef nonnull @.str.8, ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.macro_queue, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load ptr, ptr @print.0, align 8, !tbaa !34
  %18 = tail call i32 @fputs(ptr noundef %16, ptr noundef %17) #10
  %19 = load ptr, ptr @print.0, align 8, !tbaa !34
  %20 = tail call i32 @putc(i32 noundef 10, ptr noundef %19) #10
  %21 = load i32, ptr @print.3, align 8, !tbaa !52
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr @print.3, align 8, !tbaa !52
  %23 = load ptr, ptr %12, align 8, !tbaa !74
  %24 = load ptr, ptr %15, align 8, !tbaa !72
  tail call void @free(ptr noundef %24) #10
  tail call void @free(ptr noundef nonnull %12) #10
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %11, !llvm.loop !75

26:                                               ; preds = %11, %8
  store ptr null, ptr @define_queue, align 8, !tbaa !44
  %27 = load ptr, ptr @undef_queue, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %37, %29 ], [ %27, %26 ]
  %31 = load ptr, ptr @print.0, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.macro_queue, ptr %30, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef %33) #10
  %35 = load i32, ptr @print.3, align 8, !tbaa !52
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @print.3, align 8, !tbaa !52
  %37 = load ptr, ptr %30, align 8, !tbaa !74
  %38 = load ptr, ptr %32, align 8, !tbaa !72
  tail call void @free(ptr noundef %38) #10
  tail call void @free(ptr noundef nonnull %30) #10
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %29, !llvm.loop !76

40:                                               ; preds = %29, %26
  store ptr null, ptr @undef_queue, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_used_define(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call ptr @xmalloc(i64 noundef 16) #9
  %10 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef nonnull %2) #9
  %11 = tail call ptr @xstrdup(ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.macro_queue, ptr %9, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !72
  %13 = load ptr, ptr @define_queue, align 8, !tbaa !44
  store ptr %13, ptr %9, align 8, !tbaa !74
  store ptr %9, ptr @define_queue, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cb_used_undef(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xmalloc(i64 noundef 16) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !69
  %6 = tail call ptr @xstrdup(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.macro_queue, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !72
  %8 = load ptr, ptr @undef_queue, align 8, !tbaa !44
  store ptr %8, ptr %4, align 8, !tbaa !74
  store ptr %4, ptr @undef_queue, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_dir_change(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %4 = shl i64 %3, 2
  %5 = or disjoint i64 %4, 1
  %6 = alloca i8, i64 %5, align 16
  %7 = trunc i64 %3 to i32
  %8 = call ptr @cpp_quote_string(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %7) #9
  store i8 0, ptr %8, align 1, !tbaa !5
  %9 = load ptr, ptr @print.0, align 8, !tbaa !34
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull %6) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @cpp_quote_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pp_file_change(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @flag_no_line_commands, align 1, !tbaa !5
  %3 = icmp ne i8 %2, 0
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %51, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !49
  store i32 %8, ptr @input_location, align 4, !tbaa !48
  %9 = load i1, ptr @print.5, align 8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %12 = tail call ptr @cpp_get_options(ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.cpp_options, ptr %12, i64 0, i32 32
  %14 = load i8, ptr %13, align 2, !tbaa !33
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, ptr %7, align 4, !tbaa !49
  tail call fastcc void @print_line(i32 noundef %17, ptr noundef nonnull @.str.1) #10
  br label %18

18:                                               ; preds = %16, %10
  store i1 false, ptr @print.5, align 8
  br label %51

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load ptr, ptr @line_table, align 8, !tbaa !44
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !79
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.line_map, ptr %25, i64 %28
  %30 = getelementptr inbounds %struct.line_map, ptr %29, i64 1, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.line_map, ptr %25, i64 %28, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !49
  %34 = xor i32 %33, -1
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds %struct.line_map, ptr %25, i64 %28, i32 6
  %37 = load i8, ptr %36, align 2
  %38 = zext nneg i8 %37 to i32
  %39 = shl nsw i32 -1, %38
  %40 = and i32 %39, %35
  %41 = add i32 %40, %33
  tail call void @maybe_print_line(i32 noundef %41) #10
  %42 = load i8, ptr %20, align 4
  %43 = load i32, ptr %7, align 4, !tbaa !49
  br label %44

44:                                               ; preds = %23, %19
  %45 = phi i32 [ %43, %23 ], [ %8, %19 ]
  %46 = phi i8 [ %42, %23 ], [ %21, %19 ]
  %47 = icmp eq i8 %46, 1
  %48 = select i1 %47, ptr @.str.3, ptr @.str.1
  %49 = icmp eq i8 %46, 0
  %50 = select i1 %49, ptr @.str.2, ptr %48
  tail call fastcc void @print_line(i32 noundef %45, ptr noundef nonnull %50) #10
  br label %51

51:                                               ; preds = %44, %18, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_line(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i1, ptr @print.4, align 4
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @print.0, align 8, !tbaa !34
  %6 = tail call i32 @putc(i32 noundef 10, ptr noundef %5) #10
  br label %7

7:                                                ; preds = %4, %2
  store i1 false, ptr @print.4, align 4
  %8 = load i8, ptr @flag_no_line_commands, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load ptr, ptr @line_table, align 8, !tbaa !44
  %12 = tail call ptr @linemap_lookup(ptr noundef %11, i32 noundef %0) #9
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #10
  %15 = shl i64 %14, 2
  %16 = or disjoint i64 %15, 1
  %17 = alloca i8, i64 %16, align 16
  %18 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !49
  %20 = sub i32 %0, %19
  %21 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 6
  %22 = load i8, ptr %21, align 2
  %23 = zext nneg i8 %22 to i32
  %24 = lshr i32 %20, %23
  %25 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = add i32 %24, %26
  store i32 %27, ptr @print.3, align 8, !tbaa !52
  %28 = trunc i64 %14 to i32
  %29 = call ptr @cpp_quote_string(ptr noundef nonnull %17, ptr noundef %13, i32 noundef %28) #9
  store i8 0, ptr %29, align 1, !tbaa !5
  %30 = load ptr, ptr @print.0, align 8, !tbaa !34
  %31 = load i32, ptr @print.3, align 8
  %32 = call i32 @llvm.umax.i32(i32 %31, i32 1)
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %32, ptr noundef nonnull %17, ptr noundef %1) #10
  %34 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 5
  %35 = load i8, ptr %34, align 1, !tbaa !81
  switch i8 %35, label %41 [
    i8 2, label %37
    i8 1, label %36
  ]

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %10, %36
  %38 = phi ptr [ @.str.14, %36 ], [ @.str.13, %10 ]
  %39 = load ptr, ptr @print.0, align 8, !tbaa !34
  %40 = call i32 @fputs(ptr noundef nonnull %38, ptr noundef %39) #10
  br label %41

41:                                               ; preds = %37, %10
  %42 = load ptr, ptr @print.0, align 8, !tbaa !34
  %43 = call i32 @putc(i32 noundef 10, ptr noundef %42) #10
  br label %44

44:                                               ; preds = %41, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @maybe_print_line(i32 noundef %0) #0 {
  %2 = load ptr, ptr @line_table, align 8, !tbaa !44
  %3 = tail call ptr @linemap_lookup(ptr noundef %2, i32 noundef %0) #9
  %4 = getelementptr inbounds %struct.line_map, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = sub i32 %0, %5
  %7 = getelementptr inbounds %struct.line_map, ptr %3, i64 0, i32 6
  %8 = load i8, ptr %7, align 2
  %9 = zext nneg i8 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = getelementptr inbounds %struct.line_map, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = add i32 %10, %12
  %14 = load i1, ptr @print.4, align 4
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, ptr @print.3, align 8, !tbaa !52
  br label %22

17:                                               ; preds = %1
  %18 = load ptr, ptr @print.0, align 8, !tbaa !34
  %19 = tail call i32 @putc(i32 noundef 10, ptr noundef %18) #10
  %20 = load i32, ptr @print.3, align 8, !tbaa !52
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @print.3, align 8, !tbaa !52
  store i1 false, ptr @print.4, align 4
  br label %22

22:                                               ; preds = %15, %17
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = icmp sge i32 %13, %23
  %25 = add nsw i32 %23, 8
  %26 = icmp slt i32 %13, %25
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = icmp sgt i32 %13, %23
  br i1 %29, label %30, label %37

30:                                               ; preds = %28, %30
  %31 = load ptr, ptr @print.0, align 8, !tbaa !34
  %32 = tail call i32 @putc(i32 noundef 10, ptr noundef %31) #10
  %33 = load i32, ptr @print.3, align 8, !tbaa !52
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @print.3, align 8, !tbaa !52
  %35 = icmp sgt i32 %13, %34
  br i1 %35, label %30, label %37, !llvm.loop !82

36:                                               ; preds = %22
  tail call fastcc void @print_line(i32 noundef %0, ptr noundef nonnull @.str.1) #10
  br label %37

37:                                               ; preds = %30, %28, %36
  ret void
}

; Function Attrs: optsize
declare ptr @cpp_get_token_with_location(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_line_change(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @define_queue, align 8, !tbaa !44
  %6 = icmp ne ptr %5, null
  %7 = load ptr, ptr @undef_queue, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @dump_queued_macros(ptr poison) #10
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 22
  %15 = icmp ne i32 %3, 0
  %16 = or i1 %15, %14
  br i1 %16, label %42, label %17

17:                                               ; preds = %11
  tail call void @maybe_print_line(i32 noundef %2) #10
  store ptr null, ptr @print.1, align 8, !tbaa !53
  store ptr null, ptr @print.2, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %19 = load i8, ptr %18, align 2, !tbaa !83
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load ptr, ptr @line_table, align 8, !tbaa !44
  %23 = tail call ptr @linemap_lookup(ptr noundef %22, i32 noundef %2) #9
  %24 = getelementptr inbounds %struct.line_map, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !49
  %26 = sub i32 %2, %25
  %27 = getelementptr inbounds %struct.line_map, ptr %23, i64 0, i32 6
  %28 = load i8, ptr %27, align 2
  %29 = zext nneg i8 %28 to i32
  %30 = shl nsw i32 -1, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %26, %31
  store i1 true, ptr @print.4, align 4
  %33 = icmp ugt i32 %32, 2
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = add nsw i32 %32, -2
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i32 [ %38, %36 ], [ %35, %34 ]
  %38 = add nsw i32 %37, -1
  %39 = load ptr, ptr @print.0, align 8, !tbaa !34
  %40 = tail call i32 @putc(i32 noundef 32, ptr noundef %39) #10
  %41 = icmp sgt i32 %37, 1
  br i1 %41, label %36, label %42, !llvm.loop !84

42:                                               ; preds = %36, %21, %11, %17
  ret void
}

; Function Attrs: optsize
declare i32 @cpp_avoid_paste(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_pp_lookup_pragma(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_output_token(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @account_for_newlines(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr @print.3, align 8, !tbaa !52
  br label %6

6:                                                ; preds = %4, %16
  %7 = phi i64 [ %10, %16 ], [ %1, %4 ]
  %8 = phi ptr [ %11, %16 ], [ %0, %4 ]
  %9 = phi i32 [ %17, %16 ], [ %5, %4 ]
  %10 = add i64 %7, -1
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = load i8, ptr %8, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = add nsw i32 %9, 1
  store i32 %15, ptr @print.3, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ %9, %6 ]
  %18 = icmp eq i64 %10, 0
  br i1 %18, label %19, label %6, !llvm.loop !85

19:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @print_lines_directives_only(i32 noundef %0, ptr nocapture noundef %1, i64 noundef %2) #6 {
  %4 = load i32, ptr @print.3, align 8, !tbaa !52
  %5 = add nsw i32 %4, %0
  store i32 %5, ptr @print.3, align 8, !tbaa !52
  %6 = load ptr, ptr @print.0, align 8, !tbaa !34
  %7 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %6) #10
  ret void
}

; Function Attrs: optsize
declare void @_cpp_preprocess_dir_only(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @_cpp_read_logical_line_trad(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cpp_macro_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @cpp_output_line(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @c_common_read_pch(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"cpp_reader", !10, i64 0, !10, i64 8, !11, i64 16, !10, i64 40, !12, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !10, i64 136, !10, i64 144, !14, i64 152, !12, i64 176, !6, i64 180, !10, i64 184, !10, i64 192, !16, i64 200, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !18, i64 312, !6, i64 400, !6, i64 401, !10, i64 408, !10, i64 416, !6, i64 424, !10, i64 432, !19, i64 440, !10, i64 472, !12, i64 480, !12, i64 484, !10, i64 488, !12, i64 496, !20, i64 504, !20, i64 520, !20, i64 536, !20, i64 552, !20, i64 568, !10, i64 584, !10, i64 592, !14, i64 600, !14, i64 624, !10, i64 648, !18, i64 656, !18, i64 744, !10, i64 832, !21, i64 840, !10, i64 976, !10, i64 984, !10, i64 992, !22, i64 1000, !24, i64 1128, !6, i64 1160, !25, i64 1168, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !12, i64 1232, !26, i64 1240, !10, i64 1256}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"lexer_state", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !6, i64 10, !12, i64 12, !6, i64 16, !6, i64 17}
!12 = !{!"int", !6, i64 0}
!13 = !{!"cpp_context", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 32, !10, i64 40, !6, i64 48}
!14 = !{!"cpp_token", !12, i64 0, !12, i64 4, !15, i64 6, !6, i64 8}
!15 = !{!"short", !6, i64 0}
!16 = !{!"cpp_dir", !10, i64 0, !10, i64 8, !12, i64 16, !6, i64 20, !6, i64 21, !10, i64 24, !10, i64 32, !10, i64 40, !17, i64 48, !17, i64 56}
!17 = !{!"long", !6, i64 0}
!18 = !{!"obstack", !17, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !17, i64 40, !12, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!19 = !{!"tokenrun", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!20 = !{!"cset_converter", !10, i64 0, !12, i64 8, !12, i64 12}
!21 = !{!"cpp_callbacks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!22 = !{!"cpp_options", !12, i64 0, !12, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !6, i64 13, !6, i64 14, !6, i64 15, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !6, i64 24, !6, i64 25, !6, i64 26, !6, i64 27, !6, i64 28, !6, i64 29, !6, i64 30, !6, i64 31, !6, i64 32, !6, i64 33, !6, i64 34, !6, i64 35, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !10, i64 48, !10, i64 56, !10, i64 64, !12, i64 72, !6, i64 76, !6, i64 77, !23, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !6, i64 120, !6, i64 121, !6, i64 122, !6, i64 123, !6, i64 124}
!23 = !{!"", !12, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!24 = !{!"spec_nodes", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!25 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24}
!26 = !{!"", !10, i64 0, !12, i64 8, !12, i64 12}
!27 = !{!28, !10, i64 64}
!28 = !{!"cpp_buffer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !6, i64 96, !12, i64 97, !12, i64 97, !12, i64 97, !6, i64 98, !16, i64 104, !20, i64 168}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!22, !6, i64 42}
!32 = !{!22, !6, i64 124}
!33 = !{!22, !6, i64 38}
!34 = !{!35, !10, i64 0}
!35 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !6, i64 28, !6, i64 29}
!36 = !{!9, !10, i64 1184}
!37 = !{!9, !10, i64 1168}
!38 = !{!9, !12, i64 1192}
!39 = !{!9, !6, i64 1011}
!40 = distinct !{!40, !30}
!41 = !{!42, !10, i64 0}
!42 = !{!"_cpp_dir_only_callbacks", !10, i64 0, !10, i64 8}
!43 = !{!42, !10, i64 8}
!44 = !{!10, !10, i64 0}
!45 = !{!22, !12, i64 4}
!46 = !{!35, !10, i64 16}
!47 = !{!14, !15, i64 6}
!48 = !{!12, !12, i64 0}
!49 = !{!50, !12, i64 12}
!50 = !{!"line_map", !10, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 21, !12, i64 22}
!51 = !{!50, !12, i64 8}
!52 = !{!35, !12, i64 24}
!53 = !{!35, !10, i64 8}
!54 = !{!14, !12, i64 0}
!55 = !{!21, !10, i64 0}
!56 = !{!21, !10, i64 48}
!57 = !{!21, !10, i64 56}
!58 = !{!21, !10, i64 24}
!59 = !{!21, !10, i64 64}
!60 = !{!21, !10, i64 72}
!61 = !{!21, !10, i64 32}
!62 = !{!21, !10, i64 40}
!63 = !{!21, !10, i64 120}
!64 = !{!21, !10, i64 104}
!65 = !{!21, !10, i64 112}
!66 = !{!67, !10, i64 8}
!67 = !{!"cpp_string", !12, i64 0, !10, i64 8}
!68 = distinct !{!68, !30}
!69 = !{!70, !10, i64 0}
!70 = !{!"cpp_hashnode", !71, i64 0, !12, i64 16, !12, i64 16, !6, i64 17, !12, i64 18, !12, i64 18, !6, i64 24}
!71 = !{!"ht_identifier", !10, i64 0, !12, i64 8, !12, i64 12}
!72 = !{!73, !10, i64 8}
!73 = !{!"macro_queue", !10, i64 0, !10, i64 8}
!74 = !{!73, !10, i64 0}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = !{!78, !10, i64 0}
!78 = !{!"line_maps", !10, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !6, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !10, i64 48}
!79 = !{!50, !12, i64 16}
!80 = !{!50, !10, i64 0}
!81 = !{!50, !6, i64 21}
!82 = distinct !{!82, !30}
!83 = !{!9, !6, i64 1042}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
