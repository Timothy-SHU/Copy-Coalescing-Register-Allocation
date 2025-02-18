; ModuleID = 'c-ppoutput.c'
source_filename = "c-ppoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct._cpp_dir_only_callbacks = type { ptr, ptr }
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
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.macro_queue = type { ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @preprocess_file(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._cpp_dir_only_callbacks, align 8
  %6 = load i8, ptr @flag_no_output, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8, %13
  tail call void @cpp_scan_nooutput(ptr noundef nonnull %0) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %14, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !71

18:                                               ; preds = %13, %8
  tail call void @cpp_scan_nooutput(ptr noundef nonnull %0) #14
  br label %232

19:                                               ; preds = %1
  %20 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %21 = getelementptr inbounds %struct.cpp_options, ptr %20, i64 0, i32 36
  %22 = load i8, ptr %21, align 2, !tbaa !72
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %19
  %25 = tail call zeroext i8 @_cpp_read_logical_line_trad(ptr noundef %0) #14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %232, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 3
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  br label %32

32:                                               ; preds = %27, %62
  %33 = load ptr, ptr %29, align 8, !tbaa !73
  %34 = load ptr, ptr %28, align 8, !tbaa !74
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i32, ptr %30, align 8, !tbaa !75
  tail call void @maybe_print_line(i32 noundef %38)
  %39 = load ptr, ptr %28, align 8, !tbaa !74
  %40 = load ptr, ptr @print.0, align 8, !tbaa !76
  %41 = tail call i64 @fwrite(ptr noundef %39, i64 noundef 1, i64 noundef %37, ptr noundef %40)
  store i1 true, ptr @print.4, align 4
  %42 = load i8, ptr %31, align 1, !tbaa !78
  %43 = icmp ne i8 %42, 0
  %44 = icmp eq ptr %33, %34
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %32
  %47 = load i32, ptr @print.3, align 8, !tbaa !79
  %48 = load ptr, ptr %28, align 8, !tbaa !74
  br label %49

49:                                               ; preds = %46, %59
  %50 = phi i64 [ %53, %59 ], [ %37, %46 ]
  %51 = phi ptr [ %54, %59 ], [ %48, %46 ]
  %52 = phi i32 [ %60, %59 ], [ %47, %46 ]
  %53 = add i64 %50, -1
  %54 = getelementptr inbounds i8, ptr %51, i64 1
  %55 = load i8, ptr %51, align 1, !tbaa !46
  %56 = icmp eq i8 %55, 10
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = add nsw i32 %52, 1
  store i32 %58, ptr @print.3, align 8, !tbaa !79
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi i32 [ %58, %57 ], [ %52, %49 ]
  %61 = icmp eq i64 %53, 0
  br i1 %61, label %62, label %49, !llvm.loop !80

62:                                               ; preds = %59, %32
  %63 = tail call zeroext i8 @_cpp_read_logical_line_trad(ptr noundef %0) #14
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %232, label %32, !llvm.loop !81

65:                                               ; preds = %19
  %66 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %67 = getelementptr inbounds %struct.cpp_options, ptr %66, i64 0, i32 52
  %68 = load i8, ptr %67, align 4, !tbaa !82
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = tail call ptr @cpp_get_options(ptr noundef %0) #14
  %72 = getelementptr inbounds %struct.cpp_options, ptr %71, i64 0, i32 32
  %73 = load i8, ptr %72, align 2, !tbaa !83
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  store ptr @print_lines_directives_only, ptr %5, align 8, !tbaa !84
  %76 = getelementptr inbounds %struct._cpp_dir_only_callbacks, ptr %5, i64 0, i32 1
  store ptr @maybe_print_line, ptr %76, align 8, !tbaa !86
  call void @_cpp_preprocess_dir_only(ptr noundef %0, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %232

77:                                               ; preds = %70, %65
  %78 = load ptr, ptr @parse_in, align 8, !tbaa !35
  %79 = tail call ptr @cpp_get_options(ptr noundef %78) #14
  %80 = getelementptr inbounds %struct.cpp_options, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !87
  %82 = icmp ne i32 %81, 9
  %83 = load i8, ptr @flag_no_line_commands, align 1
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %82, i1 %84, i1 false
  store ptr null, ptr @print.2, align 8, !tbaa !88
  br label %86

86:                                               ; preds = %228, %77
  %87 = phi i8 [ 0, %77 ], [ %230, %228 ]
  %88 = phi i8 [ 0, %77 ], [ %231, %228 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %89 = call ptr @cpp_get_token_with_location(ptr noundef %0, ptr noundef nonnull %2) #14
  %90 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 1
  %91 = load i8, ptr %90, align 4
  switch i8 %91, label %107 [
    i8 72, label %92
    i8 22, label %228
  ]

92:                                               ; preds = %86
  %93 = load ptr, ptr @print.2, align 8, !tbaa !88
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.cpp_token, ptr %93, i64 0, i32 2
  %97 = load i16, ptr %96, align 2, !tbaa !89
  %98 = and i16 %97, 1
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %228, !llvm.loop !90

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %228, !llvm.loop !90

104:                                              ; preds = %100, %92
  %105 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  store ptr %106, ptr @print.2, align 8, !tbaa !88
  br label %228, !llvm.loop !90

107:                                              ; preds = %86
  %108 = icmp eq i8 %88, 0
  br i1 %108, label %151, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr @line_table, align 8, !tbaa !35
  %111 = load i32, ptr %2, align 4, !tbaa !50
  %112 = call ptr @linemap_lookup(ptr noundef %110, i32 noundef %111) #14
  %113 = load i32, ptr %2, align 4, !tbaa !50
  %114 = getelementptr inbounds %struct.line_map, ptr %112, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !91
  %116 = sub i32 %113, %115
  %117 = getelementptr inbounds %struct.line_map, ptr %112, i64 0, i32 6
  %118 = load i8, ptr %117, align 2
  %119 = zext nneg i8 %118 to i32
  %120 = lshr i32 %116, %119
  %121 = getelementptr inbounds %struct.line_map, ptr %112, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !93
  %123 = add i32 %120, %122
  %124 = load ptr, ptr @print.2, align 8, !tbaa !88
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %109
  store ptr %89, ptr @print.2, align 8, !tbaa !88
  br label %127

127:                                              ; preds = %126, %109
  %128 = load i32, ptr @print.3, align 8, !tbaa !79
  %129 = icmp ne i32 %123, %128
  %130 = select i1 %129, i1 %85, i1 false
  %131 = icmp eq i8 %87, 0
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %176, label %133

133:                                              ; preds = %127
  %134 = load ptr, ptr @print.2, align 8, !tbaa !88
  %135 = getelementptr inbounds %struct.cpp_token, ptr %134, i64 0, i32 2
  %136 = load i16, ptr %135, align 2, !tbaa !89
  %137 = and i16 %136, 1
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %133
  %140 = load ptr, ptr @print.1, align 8, !tbaa !94
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = call i32 @cpp_avoid_paste(ptr noundef %0, ptr noundef nonnull %140, ptr noundef %89) #14
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %178

145:                                              ; preds = %142, %139
  %146 = load ptr, ptr @print.1, align 8, !tbaa !94
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %181

148:                                              ; preds = %145
  %149 = load i8, ptr %90, align 4
  %150 = icmp eq i8 %149, 37
  br i1 %150, label %178, label %181

151:                                              ; preds = %107
  %152 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 2
  %153 = load i16, ptr %152, align 2, !tbaa !89
  %154 = and i16 %153, 1
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %181, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr @line_table, align 8, !tbaa !35
  %158 = load i32, ptr %2, align 4, !tbaa !50
  %159 = call ptr @linemap_lookup(ptr noundef %157, i32 noundef %158) #14
  %160 = load i32, ptr %2, align 4, !tbaa !50
  %161 = getelementptr inbounds %struct.line_map, ptr %159, i64 0, i32 2
  %162 = load i32, ptr %161, align 4, !tbaa !91
  %163 = sub i32 %160, %162
  %164 = getelementptr inbounds %struct.line_map, ptr %159, i64 0, i32 6
  %165 = load i8, ptr %164, align 2
  %166 = zext nneg i8 %165 to i32
  %167 = lshr i32 %163, %166
  %168 = getelementptr inbounds %struct.line_map, ptr %159, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !93
  %170 = add i32 %167, %169
  %171 = load i32, ptr @print.3, align 8, !tbaa !79
  %172 = icmp ne i32 %170, %171
  %173 = select i1 %172, i1 %85, i1 false
  %174 = icmp eq i8 %87, 0
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %178

176:                                              ; preds = %156, %127
  %177 = phi i32 [ %113, %127 ], [ %160, %156 ]
  call fastcc void @do_line_change(ptr noundef %0, ptr noundef %89, i32 noundef %177, i32 noundef 0)
  br label %178

178:                                              ; preds = %176, %156, %133, %142, %148
  %179 = load ptr, ptr @print.0, align 8, !tbaa !76
  %180 = call i32 @putc(i32 noundef 32, ptr noundef %179)
  br label %181

181:                                              ; preds = %178, %148, %151, %145
  store ptr null, ptr @print.2, align 8, !tbaa !88
  store ptr %89, ptr @print.1, align 8, !tbaa !94
  %182 = load i8, ptr %90, align 4
  switch i8 %182, label %200 [
    i8 70, label %183
    i8 71, label %198
  ]

183:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %184 = load i32, ptr %89, align 8, !tbaa !95
  call void @maybe_print_line(i32 noundef %184)
  %185 = load ptr, ptr @print.0, align 8, !tbaa !76
  %186 = call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %185)
  %187 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 3
  %188 = load i32, ptr %187, align 8, !tbaa !46
  call void @c_pp_lookup_pragma(i32 noundef %188, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %189 = load ptr, ptr %3, align 8, !tbaa !35
  %190 = icmp eq ptr %189, null
  %191 = load ptr, ptr @print.0, align 8, !tbaa !76
  %192 = load ptr, ptr %4, align 8, !tbaa !35
  br i1 %190, label %195, label %193

193:                                              ; preds = %183
  %194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.5, ptr noundef nonnull %189, ptr noundef %192)
  br label %197

195:                                              ; preds = %183
  %196 = call i32 @fputs(ptr %192, ptr %191)
  br label %197

197:                                              ; preds = %195, %193
  store i1 true, ptr @print.4, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %202

198:                                              ; preds = %181
  %199 = load i32, ptr %89, align 8, !tbaa !95
  call void @maybe_print_line(i32 noundef %199)
  br label %202

200:                                              ; preds = %181
  %201 = load ptr, ptr @print.0, align 8, !tbaa !76
  call void @cpp_output_token(ptr noundef %89, ptr noundef %201) #14
  br label %202

202:                                              ; preds = %200, %198, %197
  %203 = phi i8 [ 1, %197 ], [ 0, %198 ], [ %87, %200 ]
  %204 = load i8, ptr %90, align 4
  %205 = icmp eq i8 %204, 68
  br i1 %205, label %206, label %228

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 3
  %208 = load i32, ptr %207, align 8, !tbaa !46
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %228, label %210

210:                                              ; preds = %206
  %211 = load i32, ptr @print.3, align 8, !tbaa !79
  %212 = zext i32 %208 to i64
  %213 = getelementptr inbounds %struct.cpp_token, ptr %89, i64 0, i32 3, i32 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  br label %215

215:                                              ; preds = %210, %225
  %216 = phi i64 [ %219, %225 ], [ %212, %210 ]
  %217 = phi ptr [ %220, %225 ], [ %214, %210 ]
  %218 = phi i32 [ %226, %225 ], [ %211, %210 ]
  %219 = add nsw i64 %216, -1
  %220 = getelementptr inbounds i8, ptr %217, i64 1
  %221 = load i8, ptr %217, align 1, !tbaa !46
  %222 = icmp eq i8 %221, 10
  br i1 %222, label %223, label %225

223:                                              ; preds = %215
  %224 = add nsw i32 %218, 1
  store i32 %224, ptr @print.3, align 8, !tbaa !79
  br label %225

225:                                              ; preds = %223, %215
  %226 = phi i32 [ %224, %223 ], [ %218, %215 ]
  %227 = icmp eq i64 %219, 0
  br i1 %227, label %228, label %215, !llvm.loop !80

228:                                              ; preds = %225, %206, %86, %202, %104, %100, %95
  %229 = phi i1 [ false, %104 ], [ false, %100 ], [ false, %95 ], [ false, %202 ], [ true, %86 ], [ false, %206 ], [ false, %225 ]
  %230 = phi i8 [ %87, %104 ], [ %87, %100 ], [ %87, %95 ], [ %203, %202 ], [ %87, %86 ], [ %203, %206 ], [ %203, %225 ]
  %231 = phi i8 [ 1, %104 ], [ 1, %100 ], [ 1, %95 ], [ 0, %202 ], [ %88, %86 ], [ 0, %206 ], [ 0, %225 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br i1 %229, label %232, label %86

232:                                              ; preds = %62, %228, %24, %75, %18
  %233 = load i8, ptr @flag_dump_macros, align 1, !tbaa !46
  %234 = icmp eq i8 %233, 77
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @dump_macro, ptr noundef null) #14
  br label %236

236:                                              ; preds = %235, %232
  %237 = load i1, ptr @print.4, align 4
  br i1 %237, label %238, label %241

238:                                              ; preds = %236
  %239 = load ptr, ptr @print.0, align 8, !tbaa !76
  %240 = call i32 @putc(i32 noundef 10, ptr noundef %239)
  br label %241

241:                                              ; preds = %238, %236
  ret void
}

declare void @cpp_scan_nooutput(ptr noundef) local_unnamed_addr #3

declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #3

declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_macro(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 319
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = load ptr, ptr @print.0, align 8, !tbaa !76
  %10 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %9)
  %11 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %1) #14
  %12 = load ptr, ptr @print.0, align 8, !tbaa !76
  %13 = tail call i32 @fputs(ptr noundef %11, ptr noundef %12)
  %14 = load ptr, ptr @print.0, align 8, !tbaa !76
  %15 = tail call i32 @putc(i32 noundef 10, ptr noundef %14)
  %16 = load i32, ptr @print.3, align 8, !tbaa !79
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @print.3, align 8, !tbaa !79
  br label %18

18:                                               ; preds = %8, %3
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @init_pp_output(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @parse_in, align 8, !tbaa !35
  %3 = tail call ptr @cpp_get_callbacks(ptr noundef %2) #14
  %4 = load i8, ptr @flag_no_output, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  store ptr @cb_line_change, ptr %3, align 8, !tbaa !96
  %7 = load ptr, ptr @parse_in, align 8, !tbaa !35
  %8 = tail call ptr @cpp_get_options(ptr noundef %7) #14
  %9 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !87
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 6
  store ptr @cb_ident, ptr %13, align 8, !tbaa !97
  %14 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 7
  store ptr @cb_def_pragma, ptr %14, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %6, %12, %1
  %16 = load i8, ptr @flag_dump_includes, align 1, !tbaa !46
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 3
  store ptr @cb_include, ptr %19, align 8, !tbaa !99
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8, ptr @flag_pch_preprocess, align 1, !tbaa !46
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 8
  store ptr @c_common_valid_pch, ptr %24, align 8, !tbaa !100
  %25 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 9
  store ptr @cb_read_pch, ptr %25, align 8, !tbaa !101
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i8, ptr @flag_dump_macros, align 1
  switch i8 %27, label %36 [
    i8 78, label %28
    i8 68, label %28
    i8 85, label %32
  ]

28:                                               ; preds = %26, %26
  %29 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 4
  store ptr @cb_define, ptr %29, align 8, !tbaa !102
  %30 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 5
  store ptr @cb_undef, ptr %30, align 8, !tbaa !103
  %31 = icmp eq i8 %27, 85
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %28
  %33 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 15
  store ptr @dump_queued_macros, ptr %33, align 8, !tbaa !104
  %34 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 13
  store ptr @cb_used_define, ptr %34, align 8, !tbaa !105
  %35 = getelementptr inbounds %struct.cpp_callbacks, ptr %3, i64 0, i32 14
  store ptr @cb_used_undef, ptr %35, align 8, !tbaa !106
  br label %36

36:                                               ; preds = %26, %32, %28
  store i32 1, ptr @print.3, align 8, !tbaa !79
  store i1 false, ptr @print.4, align 4
  store ptr null, ptr @print.1, align 8, !tbaa !94
  store ptr %0, ptr @print.0, align 8, !tbaa !76
  store i1 true, ptr @print.5, align 8
  ret void
}

declare ptr @cpp_get_callbacks(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @cb_line_change(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #9 !prof !34 {
  %4 = load i32, ptr %1, align 8, !tbaa !95
  tail call fastcc void @do_line_change(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %4, i32 noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_ident(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  tail call void @maybe_print_line(i32 noundef %1)
  %4 = load ptr, ptr @print.0, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.cpp_string, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %6)
  %8 = load i32, ptr @print.3, align 8, !tbaa !79
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @print.3, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_def_pragma(ptr noundef %0, i32 noundef %1) #9 !prof !34 {
  tail call void @maybe_print_line(i32 noundef %1)
  %3 = load ptr, ptr @print.0, align 8, !tbaa !76
  %4 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %3)
  %5 = load ptr, ptr @print.0, align 8, !tbaa !76
  tail call void @cpp_output_line(ptr noundef %0, ptr noundef %5) #14
  %6 = load i32, ptr @print.3, align 8, !tbaa !79
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @print.3, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_include(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly %5) #9 !prof !34 {
  tail call void @maybe_print_line(i32 noundef %1)
  %7 = icmp eq i32 %4, 0
  %8 = load ptr, ptr @print.0, align 8, !tbaa !76
  %9 = select i1 %7, ptr @.str.11, ptr @.str.10
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3)
  %11 = icmp eq ptr %5, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %5, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %12, %25
  %16 = phi ptr [ %29, %25 ], [ %13, %12 ]
  %17 = phi ptr [ %28, %25 ], [ %5, %12 ]
  %18 = getelementptr inbounds %struct.cpp_token, ptr %16, i64 0, i32 2
  %19 = load i16, ptr %18, align 2, !tbaa !89
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr @print.0, align 8, !tbaa !76
  %24 = tail call i32 @putc(i32 noundef 32, ptr noundef %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load ptr, ptr %17, align 8, !tbaa !35
  %27 = load ptr, ptr @print.0, align 8, !tbaa !76
  tail call void @cpp_output_token(ptr noundef %26, ptr noundef %27) #14
  %28 = getelementptr inbounds ptr, ptr %17, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !109

31:                                               ; preds = %25, %12, %6
  %32 = load ptr, ptr @print.0, align 8, !tbaa !76
  %33 = tail call i32 @putc(i32 noundef 10, ptr noundef %32)
  %34 = load i32, ptr @print.3, align 8, !tbaa !79
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @print.3, align 8, !tbaa !79
  ret void
}

declare i32 @c_common_valid_pch(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @cb_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 !prof !34 {
  tail call void @c_common_read_pch(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #14
  %5 = load ptr, ptr @print.0, align 8, !tbaa !76
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef %1)
  %7 = load i32, ptr @print.3, align 8, !tbaa !79
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @print.3, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_define(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9 !prof !34 {
  tail call void @maybe_print_line(i32 noundef %1)
  %4 = load ptr, ptr @print.0, align 8, !tbaa !76
  %5 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %4)
  %6 = load i8, ptr @flag_dump_macros, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 68
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %2) #14
  br label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %2, align 8, !tbaa !110
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = load ptr, ptr @print.0, align 8, !tbaa !76
  %15 = tail call i32 @fputs(ptr noundef %13, ptr noundef %14)
  %16 = load ptr, ptr @print.0, align 8, !tbaa !76
  %17 = tail call i32 @putc(i32 noundef 10, ptr noundef %16)
  %18 = load ptr, ptr @line_table, align 8, !tbaa !35
  %19 = tail call ptr @linemap_lookup(ptr noundef %18, i32 noundef %1) #14
  %20 = getelementptr inbounds %struct.line_map, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !93
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, ptr @print.3, align 8, !tbaa !79
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @print.3, align 8, !tbaa !79
  br label %26

26:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_undef(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  tail call void @maybe_print_line(i32 noundef %1)
  %4 = load ptr, ptr @print.0, align 8, !tbaa !76
  %5 = load ptr, ptr %2, align 8, !tbaa !110
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef %5)
  %7 = load i32, ptr @print.3, align 8, !tbaa !79
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @print.3, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dump_queued_macros(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load i1, ptr @print.4, align 4
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load ptr, ptr @print.0, align 8, !tbaa !76
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %4)
  %6 = load i32, ptr @print.3, align 8, !tbaa !79
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @print.3, align 8, !tbaa !79
  store i1 false, ptr @print.4, align 4
  br label %8

8:                                                ; preds = %3, %1
  %9 = load ptr, ptr @define_queue, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %23, %11 ], [ %9, %8 ]
  %13 = load ptr, ptr @print.0, align 8, !tbaa !76
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %13)
  %15 = getelementptr inbounds %struct.macro_queue, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = load ptr, ptr @print.0, align 8, !tbaa !76
  %18 = tail call i32 @fputs(ptr noundef %16, ptr noundef %17)
  %19 = load ptr, ptr @print.0, align 8, !tbaa !76
  %20 = tail call i32 @putc(i32 noundef 10, ptr noundef %19)
  %21 = load i32, ptr @print.3, align 8, !tbaa !79
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr @print.3, align 8, !tbaa !79
  %23 = load ptr, ptr %12, align 8, !tbaa !115
  %24 = load ptr, ptr %15, align 8, !tbaa !113
  tail call void @free(ptr noundef %24)
  tail call void @free(ptr noundef %12)
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %11, !llvm.loop !116

26:                                               ; preds = %11, %8
  store ptr null, ptr @define_queue, align 8, !tbaa !35
  %27 = load ptr, ptr @undef_queue, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %37, %29 ], [ %27, %26 ]
  %31 = load ptr, ptr @print.0, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.macro_queue, ptr %30, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef %33)
  %35 = load i32, ptr @print.3, align 8, !tbaa !79
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @print.3, align 8, !tbaa !79
  %37 = load ptr, ptr %30, align 8, !tbaa !115
  %38 = load ptr, ptr %32, align 8, !tbaa !113
  tail call void @free(ptr noundef %38)
  tail call void @free(ptr noundef %30)
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %29, !llvm.loop !117

40:                                               ; preds = %29, %26
  store ptr null, ptr @undef_queue, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_used_define(ptr noundef %0, i32 %1, ptr noundef %2) #9 !prof !34 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %2, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call ptr @xmalloc(i64 noundef 16) #14
  %10 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %2) #14
  %11 = tail call ptr @xstrdup(ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.macro_queue, ptr %9, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !113
  %13 = load ptr, ptr @define_queue, align 8, !tbaa !35
  store ptr %13, ptr %9, align 8, !tbaa !115
  store ptr %9, ptr @define_queue, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @cb_used_undef(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  %4 = tail call ptr @xmalloc(i64 noundef 16) #14
  %5 = load ptr, ptr %2, align 8, !tbaa !110
  %6 = tail call ptr @xstrdup(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.macro_queue, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !113
  %8 = load ptr, ptr @undef_queue, align 8, !tbaa !35
  store ptr %8, ptr %4, align 8, !tbaa !115
  store ptr %4, ptr @undef_queue, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_dir_change(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %4 = shl i64 %3, 2
  %5 = or disjoint i64 %4, 1
  %6 = alloca i8, i64 %5, align 16
  %7 = trunc i64 %3 to i32
  %8 = call ptr @cpp_quote_string(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %7) #14
  store i8 0, ptr %8, align 1, !tbaa !46
  %9 = load ptr, ptr @print.0, align 8, !tbaa !76
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull %6)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare ptr @cpp_quote_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_file_change(ptr noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i8, ptr @flag_no_line_commands, align 1, !tbaa !46
  %3 = icmp ne i8 %2, 0
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %49, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !91
  store i32 %8, ptr @input_location, align 4, !tbaa !50
  %9 = load i1, ptr @print.5, align 8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load ptr, ptr @parse_in, align 8, !tbaa !35
  %12 = tail call ptr @cpp_get_options(ptr noundef %11) #14
  %13 = getelementptr inbounds %struct.cpp_options, ptr %12, i64 0, i32 32
  %14 = load i8, ptr %13, align 2, !tbaa !83
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, ptr %7, align 4, !tbaa !91
  tail call fastcc void @print_line(i32 noundef %17, ptr noundef nonnull @.str.1)
  br label %18

18:                                               ; preds = %16, %10
  store i1 false, ptr @print.5, align 8
  br label %49

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load ptr, ptr @line_table, align 8, !tbaa !35
  %25 = load ptr, ptr %24, align 8, !tbaa !118
  %26 = getelementptr inbounds %struct.line_map, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !120
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.line_map, ptr %25, i64 %28
  %30 = getelementptr inbounds %struct.line_map, ptr %29, i64 1, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !91
  %32 = getelementptr inbounds %struct.line_map, ptr %25, i64 %28, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !91
  %34 = xor i32 %33, -1
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds %struct.line_map, ptr %25, i64 %28, i32 6
  %37 = load i8, ptr %36, align 2
  %38 = zext nneg i8 %37 to i32
  %39 = shl nsw i32 -1, %38
  %40 = and i32 %39, %35
  %41 = add i32 %40, %33
  tail call void @maybe_print_line(i32 noundef %41)
  br label %42

42:                                               ; preds = %23, %19
  %43 = load i8, ptr %20, align 4
  %44 = icmp eq i8 %43, 1
  %45 = select i1 %44, ptr @.str.3, ptr @.str.1
  %46 = icmp eq i8 %43, 0
  %47 = select i1 %46, ptr @.str.2, ptr %45
  %48 = load i32, ptr %7, align 4, !tbaa !91
  tail call fastcc void @print_line(i32 noundef %48, ptr noundef nonnull %47)
  br label %49

49:                                               ; preds = %42, %18, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_line(i32 noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i1, ptr @print.4, align 4
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @print.0, align 8, !tbaa !76
  %6 = tail call i32 @putc(i32 noundef 10, ptr noundef %5)
  br label %7

7:                                                ; preds = %4, %2
  store i1 false, ptr @print.4, align 4
  %8 = load i8, ptr @flag_no_line_commands, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  %11 = load ptr, ptr @line_table, align 8, !tbaa !35
  %12 = tail call ptr @linemap_lookup(ptr noundef %11, i32 noundef %0) #14
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13)
  %15 = shl i64 %14, 2
  %16 = or disjoint i64 %15, 1
  %17 = alloca i8, i64 %16, align 16
  %18 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !91
  %20 = sub i32 %0, %19
  %21 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 6
  %22 = load i8, ptr %21, align 2
  %23 = zext nneg i8 %22 to i32
  %24 = lshr i32 %20, %23
  %25 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !93
  %27 = add i32 %24, %26
  store i32 %27, ptr @print.3, align 8, !tbaa !79
  %28 = trunc i64 %14 to i32
  %29 = call ptr @cpp_quote_string(ptr noundef nonnull %17, ptr noundef %13, i32 noundef %28) #14
  store i8 0, ptr %29, align 1, !tbaa !46
  %30 = load ptr, ptr @print.0, align 8, !tbaa !76
  %31 = load i32, ptr @print.3, align 8
  %32 = call i32 @llvm.umax.i32(i32 %31, i32 1)
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %32, ptr noundef nonnull %17, ptr noundef %1)
  %34 = getelementptr inbounds %struct.line_map, ptr %12, i64 0, i32 5
  %35 = load i8, ptr %34, align 1, !tbaa !122
  switch i8 %35, label %42 [
    i8 2, label %36
    i8 1, label %39
  ]

36:                                               ; preds = %10
  %37 = load ptr, ptr @print.0, align 8, !tbaa !76
  %38 = call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %37)
  br label %42

39:                                               ; preds = %10
  %40 = load ptr, ptr @print.0, align 8, !tbaa !76
  %41 = call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr %40)
  br label %42

42:                                               ; preds = %10, %39, %36
  %43 = load ptr, ptr @print.0, align 8, !tbaa !76
  %44 = call i32 @putc(i32 noundef 10, ptr noundef %43)
  br label %45

45:                                               ; preds = %42, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @maybe_print_line(i32 noundef %0) #9 !prof !34 {
  %2 = load ptr, ptr @line_table, align 8, !tbaa !35
  %3 = tail call ptr @linemap_lookup(ptr noundef %2, i32 noundef %0) #14
  %4 = getelementptr inbounds %struct.line_map, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !91
  %6 = sub i32 %0, %5
  %7 = getelementptr inbounds %struct.line_map, ptr %3, i64 0, i32 6
  %8 = load i8, ptr %7, align 2
  %9 = zext nneg i8 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = getelementptr inbounds %struct.line_map, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = add i32 %10, %12
  %14 = load i1, ptr @print.4, align 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load ptr, ptr @print.0, align 8, !tbaa !76
  %17 = tail call i32 @putc(i32 noundef 10, ptr noundef %16)
  %18 = load i32, ptr @print.3, align 8, !tbaa !79
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr @print.3, align 8, !tbaa !79
  store i1 false, ptr @print.4, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, ptr @print.3, align 8, !tbaa !79
  %22 = icmp sge i32 %13, %21
  %23 = add nsw i32 %21, 8
  %24 = icmp slt i32 %13, %23
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, ptr @print.3, align 8, !tbaa !79
  %28 = icmp sgt i32 %13, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %29
  %30 = load ptr, ptr @print.0, align 8, !tbaa !76
  %31 = tail call i32 @putc(i32 noundef 10, ptr noundef %30)
  %32 = load i32, ptr @print.3, align 8, !tbaa !79
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @print.3, align 8, !tbaa !79
  %34 = icmp sgt i32 %13, %33
  br i1 %34, label %29, label %36, !llvm.loop !123

35:                                               ; preds = %20
  tail call fastcc void @print_line(i32 noundef %0, ptr noundef nonnull @.str.1)
  br label %36

36:                                               ; preds = %29, %26, %35
  ret void
}

declare ptr @cpp_get_token_with_location(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_line_change(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load ptr, ptr @define_queue, align 8, !tbaa !35
  %6 = icmp ne ptr %5, null
  %7 = load ptr, ptr @undef_queue, align 8
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @dump_queued_macros(ptr poison)
  br label %11

11:                                               ; preds = %4, %10
  %12 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 22
  %15 = icmp ne i32 %3, 0
  %16 = or i1 %15, %14
  br i1 %16, label %42, label %17

17:                                               ; preds = %11
  tail call void @maybe_print_line(i32 noundef %2)
  store ptr null, ptr @print.1, align 8, !tbaa !94
  store ptr null, ptr @print.2, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %19 = load i8, ptr %18, align 2, !tbaa !124
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load ptr, ptr @line_table, align 8, !tbaa !35
  %23 = tail call ptr @linemap_lookup(ptr noundef %22, i32 noundef %2) #14
  %24 = getelementptr inbounds %struct.line_map, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !91
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
  %39 = load ptr, ptr @print.0, align 8, !tbaa !76
  %40 = tail call i32 @putc(i32 noundef 32, ptr noundef %39)
  %41 = icmp sgt i32 %37, 1
  br i1 %41, label %36, label %42, !llvm.loop !125

42:                                               ; preds = %36, %21, %11, %17
  ret void
}

declare i32 @cpp_avoid_paste(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

declare void @c_pp_lookup_pragma(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cpp_output_token(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal void @print_lines_directives_only(i32 noundef %0, ptr nocapture noundef %1, i64 noundef %2) #11 !prof !34 {
  %4 = load i32, ptr @print.3, align 8, !tbaa !79
  %5 = add nsw i32 %4, %0
  store i32 %5, ptr @print.3, align 8, !tbaa !79
  %6 = load ptr, ptr @print.0, align 8, !tbaa !76
  %7 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %6)
  ret void
}

declare void @_cpp_preprocess_dir_only(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_read_logical_line_trad(ptr noundef) local_unnamed_addr #3

declare ptr @cpp_macro_definition(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare void @cpp_output_line(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @c_common_read_pch(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

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
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 0}
!55 = !{!"cpp_reader", !36, i64 0, !36, i64 8, !56, i64 16, !36, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !57, i64 80, !36, i64 136, !36, i64 144, !58, i64 152, !41, i64 176, !37, i64 180, !36, i64 184, !36, i64 192, !59, i64 200, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !60, i64 312, !37, i64 400, !37, i64 401, !36, i64 408, !36, i64 416, !37, i64 424, !36, i64 432, !61, i64 440, !36, i64 472, !41, i64 480, !41, i64 484, !36, i64 488, !41, i64 496, !62, i64 504, !62, i64 520, !62, i64 536, !62, i64 552, !62, i64 568, !36, i64 584, !36, i64 592, !58, i64 600, !58, i64 624, !36, i64 648, !60, i64 656, !60, i64 744, !36, i64 832, !63, i64 840, !36, i64 976, !36, i64 984, !36, i64 992, !64, i64 1000, !66, i64 1128, !37, i64 1160, !67, i64 1168, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !41, i64 1232, !68, i64 1240, !36, i64 1256}
!56 = !{!"lexer_state", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8, !37, i64 9, !37, i64 10, !41, i64 12, !37, i64 16, !37, i64 17}
!57 = !{!"cpp_context", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !36, i64 40, !37, i64 48}
!58 = !{!"cpp_token", !41, i64 0, !41, i64 4, !43, i64 6, !37, i64 8}
!59 = !{!"cpp_dir", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 20, !37, i64 21, !36, i64 24, !36, i64 32, !36, i64 40, !42, i64 48, !42, i64 56}
!60 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!61 = !{!"tokenrun", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!62 = !{!"cset_converter", !36, i64 0, !41, i64 8, !41, i64 12}
!63 = !{!"cpp_callbacks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!64 = !{!"cpp_options", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15, !37, i64 16, !37, i64 17, !37, i64 18, !37, i64 19, !37, i64 20, !37, i64 21, !37, i64 22, !37, i64 23, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !37, i64 28, !37, i64 29, !37, i64 30, !37, i64 31, !37, i64 32, !37, i64 33, !37, i64 34, !37, i64 35, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !37, i64 40, !37, i64 41, !37, i64 42, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !37, i64 76, !37, i64 77, !65, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !37, i64 120, !37, i64 121, !37, i64 122, !37, i64 123, !37, i64 124}
!65 = !{!"", !41, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7}
!66 = !{!"spec_nodes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!67 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24}
!68 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12}
!69 = !{!70, !36, i64 64}
!70 = !{!"cpp_buffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 97, !41, i64 97, !41, i64 97, !37, i64 98, !59, i64 104, !62, i64 168}
!71 = distinct !{!71, !52, !53}
!72 = !{!64, !37, i64 42}
!73 = !{!55, !36, i64 1184}
!74 = !{!55, !36, i64 1168}
!75 = !{!55, !41, i64 1192}
!76 = !{!77, !36, i64 0}
!77 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !37, i64 28, !37, i64 29}
!78 = !{!55, !37, i64 1011}
!79 = !{!77, !41, i64 24}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = !{!64, !37, i64 124}
!83 = !{!64, !37, i64 38}
!84 = !{!85, !36, i64 0}
!85 = !{!"_cpp_dir_only_callbacks", !36, i64 0, !36, i64 8}
!86 = !{!85, !36, i64 8}
!87 = !{!64, !41, i64 4}
!88 = !{!77, !36, i64 16}
!89 = !{!58, !43, i64 6}
!90 = distinct !{!90, !53}
!91 = !{!92, !41, i64 12}
!92 = !{!"line_map", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 21, !41, i64 22}
!93 = !{!92, !41, i64 8}
!94 = !{!77, !36, i64 8}
!95 = !{!58, !41, i64 0}
!96 = !{!63, !36, i64 0}
!97 = !{!63, !36, i64 48}
!98 = !{!63, !36, i64 56}
!99 = !{!63, !36, i64 24}
!100 = !{!63, !36, i64 64}
!101 = !{!63, !36, i64 72}
!102 = !{!63, !36, i64 32}
!103 = !{!63, !36, i64 40}
!104 = !{!63, !36, i64 120}
!105 = !{!63, !36, i64 104}
!106 = !{!63, !36, i64 112}
!107 = !{!108, !36, i64 8}
!108 = !{!"cpp_string", !41, i64 0, !36, i64 8}
!109 = distinct !{!109, !52, !53}
!110 = !{!111, !36, i64 0}
!111 = !{!"cpp_hashnode", !112, i64 0, !41, i64 16, !41, i64 16, !37, i64 17, !41, i64 18, !41, i64 18, !37, i64 24}
!112 = !{!"ht_identifier", !36, i64 0, !41, i64 8, !41, i64 12}
!113 = !{!114, !36, i64 8}
!114 = !{!"macro_queue", !36, i64 0, !36, i64 8}
!115 = !{!114, !36, i64 0}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = !{!119, !36, i64 0}
!119 = !{!"line_maps", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48}
!120 = !{!92, !41, i64 16}
!121 = !{!92, !36, i64 0}
!122 = !{!92, !37, i64 21}
!123 = distinct !{!123, !52, !53}
!124 = !{!55, !37, i64 1042}
!125 = distinct !{!125, !52, !53}
