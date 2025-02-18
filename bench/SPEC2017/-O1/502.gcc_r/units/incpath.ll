; ModuleID = 'incpath.c'
source_filename = "incpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.target_c_incpath_s = type { ptr, ptr }
%struct.default_include = type { ptr, ptr, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@heads = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@tails = internal unnamed_addr global [4 x ptr] zeroinitializer, align 16
@quote_ignores_source_dir = internal unnamed_addr global i1 false, align 1
@reltable.register_include_chains = internal unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.register_include_chains to i64)) to i32)], align 4
@.str = private unnamed_addr constant [15 x i8] c"C_INCLUDE_PATH\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CPLUS_INCLUDE_PATH\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"OBJC_INCLUDE_PATH\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"OBJCPLUS_INCLUDE_PATH\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CPATH\00", align 1
@target_c_incpath = dso_local local_unnamed_addr global %struct.target_c_incpath_s { ptr @hook_void_charptr_charptr_int, ptr @hook_void_charptr_charptr_int }, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@cpp_GCC_INCLUDE_DIR_len = external local_unnamed_addr constant i64, align 8
@cpp_include_defaults = external local_unnamed_addr constant [0 x %struct.default_include], align 8
@cpp_GCC_INCLUDE_DIR = external constant [0 x i8], align 1
@dir_separator_str = internal constant [2 x i8] c"/\00", align 1
@cpp_PREFIX = external constant [0 x i8], align 1
@cpp_PREFIX_len = external local_unnamed_addr constant i64, align 8
@add_standard_paths.relocated_prefix = internal unnamed_addr global ptr null, align 8
@gcc_exec_prefix = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@cpp_EXEC_PREFIX = external constant [0 x i8], align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"#include \22...\22 search starts here:\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"#include <...> search starts here:\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"End of search list.\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s: not a directory\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ignoring duplicate directory \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"  as it is a non-system directory that duplicates a system directory\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"ignoring nonexistent directory \22%s\22\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !46 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !47
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !46 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !57

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !51
  %11 = load i8, ptr %3, align 1, !tbaa !58
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !46 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !46 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !57

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !59
  store i8 %12, ptr %4, align 1, !tbaa !58
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !46 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !46 {
  %2 = load i32, ptr %0, align 8, !tbaa !61
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !46 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !62
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !46 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !63

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !46 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @split_quote_chain() local_unnamed_addr #9 !prof !46 {
  %1 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !47
  store ptr %1, ptr @heads, align 16, !tbaa !47
  %2 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 1), align 8, !tbaa !47
  store ptr %2, ptr @tails, align 16, !tbaa !47
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !47
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 1), align 8, !tbaa !47
  store i1 true, ptr @quote_ignores_source_dir, align 1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @add_cpp_dir_path(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !46 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [4 x ptr], ptr @tails, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds [4 x ptr], ptr @heads, i64 0, i64 %3
  %8 = select i1 %6, ptr %7, ptr %5
  store ptr %0, ptr %8, align 8, !tbaa !47
  store ptr %0, ptr %4, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @add_path(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #11 !prof !46 {
  %5 = tail call ptr @xmalloc(i64 noundef 64) #19
  store ptr null, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !68
  %7 = and i32 %1, -2
  %8 = icmp eq i32 %7, 2
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i8 2, i8 1
  %11 = select i1 %8, i8 %10, i8 0
  %12 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 3
  store i8 %11, ptr %12, align 4, !tbaa !69
  %13 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 7
  store ptr null, ptr %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.cpp_dir, ptr %5, i64 0, i32 4
  store i8 %3, ptr %14, align 1, !tbaa !71
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [4 x ptr], ptr @tails, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds [4 x ptr], ptr @heads, i64 0, i64 %15
  %20 = select i1 %18, ptr %19, ptr %17
  store ptr %5, ptr %20, align 8, !tbaa !47
  store ptr %5, ptr %16, align 8, !tbaa !47
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @register_include_chains(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #11 !prof !72 {
  %8 = tail call ptr @cpp_get_options(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 4
  %10 = load i8, ptr %9, align 2, !tbaa !73
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i64 0, i64 2, !prof !76
  %13 = getelementptr inbounds %struct.cpp_options, ptr %8, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !77
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %15, i32 %5, i32 0, !prof !78
  %17 = zext i1 %15 to i64
  %18 = or disjoint i64 %12, %17
  tail call fastcc void @add_env_var_paths(ptr noundef nonnull @.str.4, i32 noundef 1)
  %19 = shl i64 %18, 2
  %20 = call ptr @llvm.load.relative.i64(ptr @reltable.register_include_chains, i64 %19)
  tail call fastcc void @add_env_var_paths(ptr noundef %20, i32 noundef 2)
  %21 = load ptr, ptr @target_c_incpath, align 8, !tbaa !79
  tail call void %21(ptr noundef %1, ptr noundef %2, i32 noundef %4) #19, !prof !81
  %22 = icmp eq i32 %4, 0
  br i1 %22, label %157, label %23, !prof !78

23:                                               ; preds = %7
  %24 = tail call zeroext i8 @cpp_relocated() #19
  %25 = icmp eq ptr %2, null
  br i1 %25, label %80, label %26, !prof !76

26:                                               ; preds = %23
  %27 = load i64, ptr @cpp_GCC_INCLUDE_DIR_len, align 8, !tbaa !82
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @cpp_include_defaults, align 8, !tbaa !83
  %31 = icmp eq ptr %30, null
  br i1 %31, label %80, label %32

32:                                               ; preds = %29
  %33 = icmp ne i32 %16, 0
  %34 = icmp eq ptr %1, null
  %35 = icmp ne ptr %3, null
  br label %36

36:                                               ; preds = %32, %76
  %37 = phi ptr [ %30, %32 ], [ %78, %76 ]
  %38 = phi ptr [ @cpp_include_defaults, %32 ], [ %77, %76 ]
  %39 = getelementptr inbounds %struct.default_include, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !85
  %41 = icmp eq i8 %40, 0
  %42 = or i1 %33, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %36
  br i1 %34, label %48, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.default_include, ptr %38, i64 0, i32 4
  %46 = load i8, ptr %45, align 2, !tbaa !86
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %44, %43
  %49 = tail call i32 @strncmp(ptr noundef nonnull %37, ptr noundef nonnull @cpp_GCC_INCLUDE_DIR, i64 noundef %27)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %37, i64 %27
  %53 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %2, ptr noundef nonnull %52, ptr noundef null) #19
  %54 = getelementptr inbounds %struct.default_include, ptr %38, i64 0, i32 5
  %55 = load i8, ptr %54, align 1, !tbaa !87
  %56 = icmp ne i8 %55, 0
  %57 = and i1 %35, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = tail call ptr (ptr, ...) @concat(ptr noundef %53, ptr noundef nonnull @dir_separator_str, ptr noundef nonnull %3, ptr noundef null) #19
  br label %60

60:                                               ; preds = %58, %51
  %61 = phi ptr [ %59, %58 ], [ %53, %51 ]
  %62 = getelementptr inbounds %struct.default_include, ptr %38, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !88
  %64 = tail call ptr @xmalloc(i64 noundef 64) #19
  store ptr null, ptr %64, align 8, !tbaa !66
  %65 = getelementptr inbounds %struct.cpp_dir, ptr %64, i64 0, i32 1
  store ptr %61, ptr %65, align 8, !tbaa !68
  %66 = icmp eq i8 %63, 0
  %67 = select i1 %66, i8 2, i8 1
  %68 = getelementptr inbounds %struct.cpp_dir, ptr %64, i64 0, i32 3
  store i8 %67, ptr %68, align 4, !tbaa !69
  %69 = getelementptr inbounds %struct.cpp_dir, ptr %64, i64 0, i32 7
  store ptr null, ptr %69, align 8, !tbaa !70
  %70 = getelementptr inbounds %struct.cpp_dir, ptr %64, i64 0, i32 4
  store i8 0, ptr %70, align 1, !tbaa !71
  %71 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 2), align 16, !tbaa !47
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  store ptr %64, ptr %71, align 8, !tbaa !66
  br label %75

74:                                               ; preds = %60
  store ptr %64, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  br label %75

75:                                               ; preds = %74, %73
  store ptr %64, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 2), align 16, !tbaa !47
  br label %76

76:                                               ; preds = %75, %48, %44, %36
  %77 = getelementptr inbounds %struct.default_include, ptr %38, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !83
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %36, !llvm.loop !89

80:                                               ; preds = %76, %29, %26, %23
  %81 = load ptr, ptr @cpp_include_defaults, align 8, !tbaa !83
  %82 = icmp eq ptr %81, null
  br i1 %82, label %157, label %83, !prof !90

83:                                               ; preds = %80
  %84 = icmp ne i32 %16, 0
  %85 = icmp eq ptr %1, null
  %86 = icmp ne i8 %24, 0
  %87 = icmp ne ptr %3, null
  br label %88

88:                                               ; preds = %83, %153
  %89 = phi ptr [ %81, %83 ], [ %155, %153 ]
  %90 = phi ptr [ @cpp_include_defaults, %83 ], [ %154, %153 ]
  %91 = getelementptr inbounds %struct.default_include, ptr %90, i64 0, i32 2
  %92 = load i8, ptr %91, align 8, !tbaa !85
  %93 = icmp eq i8 %92, 0
  %94 = or i1 %84, %93
  br i1 %94, label %95, label %153, !prof !76

95:                                               ; preds = %88
  br i1 %85, label %102, label %96, !prof !76

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.default_include, ptr %90, i64 0, i32 4
  %98 = load i8, ptr %97, align 2, !tbaa !86
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %1, ptr noundef nonnull %89, ptr noundef null) #19
  br label %129

102:                                              ; preds = %96, %95
  %103 = getelementptr inbounds %struct.default_include, ptr %90, i64 0, i32 4
  %104 = load i8, ptr %103, align 2, !tbaa !86
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i1 %86, i1 false, !prof !78
  br i1 %106, label %107, label %125, !prof !78

107:                                              ; preds = %102
  %108 = load i64, ptr @cpp_PREFIX_len, align 8
  %109 = tail call i32 @strncmp(ptr noundef nonnull %89, ptr noundef nonnull @cpp_PREFIX, i64 noundef %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load ptr, ptr @add_standard_paths.relocated_prefix, align 8, !tbaa !47
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load ptr, ptr @gcc_exec_prefix, align 8, !tbaa !47
  %116 = tail call ptr (ptr, ...) @concat(ptr noundef %115, ptr noundef nonnull @.str.6, ptr noundef null) #19
  %117 = tail call ptr @make_relative_prefix(ptr noundef %116, ptr noundef nonnull @cpp_EXEC_PREFIX, ptr noundef nonnull @cpp_PREFIX) #19
  store ptr %117, ptr @add_standard_paths.relocated_prefix, align 8, !tbaa !47
  br label %118

118:                                              ; preds = %114, %111
  %119 = load ptr, ptr @add_standard_paths.relocated_prefix, align 8, !tbaa !47
  %120 = getelementptr inbounds i8, ptr %89, i64 %108
  %121 = tail call ptr (ptr, ...) @concat(ptr noundef %119, ptr noundef nonnull %120, ptr noundef null) #19
  %122 = getelementptr inbounds %struct.default_include, ptr %90, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !91
  %124 = tail call ptr @update_path(ptr noundef %121, ptr noundef %123) #19
  br label %129

125:                                              ; preds = %107, %102
  %126 = getelementptr inbounds %struct.default_include, ptr %90, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !91
  %128 = tail call ptr @update_path(ptr noundef nonnull %89, ptr noundef %127) #19
  br label %129

129:                                              ; preds = %125, %118, %100
  %130 = phi ptr [ %101, %100 ], [ %124, %118 ], [ %128, %125 ]
  %131 = getelementptr inbounds %struct.default_include, ptr %90, i64 0, i32 5
  %132 = load i8, ptr %131, align 1, !tbaa !87
  %133 = icmp ne i8 %132, 0
  %134 = and i1 %87, %133
  br i1 %134, label %135, label %137, !prof !78

135:                                              ; preds = %129
  %136 = tail call ptr (ptr, ...) @concat(ptr noundef %130, ptr noundef nonnull @dir_separator_str, ptr noundef nonnull %3, ptr noundef null) #19
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi ptr [ %136, %135 ], [ %130, %129 ]
  %139 = getelementptr inbounds %struct.default_include, ptr %90, i64 0, i32 3
  %140 = load i8, ptr %139, align 1, !tbaa !88
  %141 = tail call ptr @xmalloc(i64 noundef 64) #19
  store ptr null, ptr %141, align 8, !tbaa !66
  %142 = getelementptr inbounds %struct.cpp_dir, ptr %141, i64 0, i32 1
  store ptr %138, ptr %142, align 8, !tbaa !68
  %143 = icmp eq i8 %140, 0
  %144 = select i1 %143, i8 2, i8 1, !prof !76
  %145 = getelementptr inbounds %struct.cpp_dir, ptr %141, i64 0, i32 3
  store i8 %144, ptr %145, align 4, !tbaa !69
  %146 = getelementptr inbounds %struct.cpp_dir, ptr %141, i64 0, i32 7
  store ptr null, ptr %146, align 8, !tbaa !70
  %147 = getelementptr inbounds %struct.cpp_dir, ptr %141, i64 0, i32 4
  store i8 0, ptr %147, align 1, !tbaa !71
  %148 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 2), align 16, !tbaa !47
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150, !prof !76

150:                                              ; preds = %137
  store ptr %141, ptr %148, align 8, !tbaa !66
  br label %152

151:                                              ; preds = %137
  store ptr %141, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  br label %152

152:                                              ; preds = %151, %150
  store ptr %141, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 2), align 16, !tbaa !47
  br label %153

153:                                              ; preds = %152, %88
  %154 = getelementptr inbounds %struct.default_include, ptr %90, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !83
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %88, !prof !92, !llvm.loop !93

157:                                              ; preds = %153, %80, %7
  %158 = load ptr, ptr getelementptr inbounds (%struct.target_c_incpath_s, ptr @target_c_incpath, i64 0, i32 1), align 8, !tbaa !94
  tail call void %158(ptr noundef %1, ptr noundef %2, i32 noundef %4) #19, !prof !81
  %159 = icmp eq ptr %1, null
  br i1 %159, label %236, label %160, !prof !76

160:                                              ; preds = %157
  %161 = load ptr, ptr @heads, align 16, !tbaa !47
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %179, %160
  %164 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !47
  %165 = icmp eq ptr %164, null
  br i1 %165, label %182, label %185

166:                                              ; preds = %160, %179
  %167 = phi ptr [ %180, %179 ], [ %161, %160 ]
  %168 = getelementptr inbounds %struct.cpp_dir, ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !68
  %170 = load i8, ptr %169, align 1, !tbaa !58
  %171 = icmp eq i8 %170, 61
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.cpp_dir, ptr %167, i64 0, i32 4
  %174 = load i8, ptr %173, align 1, !tbaa !71
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8, ptr %169, i64 1
  %178 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %1, ptr noundef nonnull %177, ptr noundef null) #19
  store ptr %178, ptr %168, align 8, !tbaa !68
  br label %179

179:                                              ; preds = %176, %172, %166
  %180 = load ptr, ptr %167, align 8, !tbaa !47
  %181 = icmp eq ptr %180, null
  br i1 %181, label %163, label %166, !llvm.loop !95

182:                                              ; preds = %198, %163
  %183 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  %184 = icmp eq ptr %183, null
  br i1 %184, label %201, label %204

185:                                              ; preds = %163, %198
  %186 = phi ptr [ %199, %198 ], [ %164, %163 ]
  %187 = getelementptr inbounds %struct.cpp_dir, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !68
  %189 = load i8, ptr %188, align 1, !tbaa !58
  %190 = icmp eq i8 %189, 61
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.cpp_dir, ptr %186, i64 0, i32 4
  %193 = load i8, ptr %192, align 1, !tbaa !71
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds i8, ptr %188, i64 1
  %197 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %1, ptr noundef nonnull %196, ptr noundef null) #19
  store ptr %197, ptr %187, align 8, !tbaa !68
  br label %198

198:                                              ; preds = %195, %191, %185
  %199 = load ptr, ptr %186, align 8, !tbaa !47
  %200 = icmp eq ptr %199, null
  br i1 %200, label %182, label %185, !llvm.loop !95

201:                                              ; preds = %217, %182
  %202 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 3), align 8, !tbaa !47
  %203 = icmp eq ptr %202, null
  br i1 %203, label %236, label %220

204:                                              ; preds = %182, %217
  %205 = phi ptr [ %218, %217 ], [ %183, %182 ]
  %206 = getelementptr inbounds %struct.cpp_dir, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !68
  %208 = load i8, ptr %207, align 1, !tbaa !58
  %209 = icmp eq i8 %208, 61
  br i1 %209, label %210, label %217

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.cpp_dir, ptr %205, i64 0, i32 4
  %212 = load i8, ptr %211, align 1, !tbaa !71
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %207, i64 1
  %216 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %1, ptr noundef nonnull %215, ptr noundef null) #19
  store ptr %216, ptr %206, align 8, !tbaa !68
  br label %217

217:                                              ; preds = %214, %210, %204
  %218 = load ptr, ptr %205, align 8, !tbaa !47
  %219 = icmp eq ptr %218, null
  br i1 %219, label %201, label %204, !llvm.loop !95

220:                                              ; preds = %201, %233
  %221 = phi ptr [ %234, %233 ], [ %202, %201 ]
  %222 = getelementptr inbounds %struct.cpp_dir, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !68
  %224 = load i8, ptr %223, align 1, !tbaa !58
  %225 = icmp eq i8 %224, 61
  br i1 %225, label %226, label %233

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.cpp_dir, ptr %221, i64 0, i32 4
  %228 = load i8, ptr %227, align 1, !tbaa !71
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds i8, ptr %223, i64 1
  %232 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %1, ptr noundef nonnull %231, ptr noundef null) #19
  store ptr %232, ptr %222, align 8, !tbaa !68
  br label %233

233:                                              ; preds = %230, %226, %220
  %234 = load ptr, ptr %221, align 8, !tbaa !47
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %220, !llvm.loop !95

236:                                              ; preds = %233, %201, %157
  %237 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  %238 = icmp eq ptr %237, null
  %239 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 3), align 8, !tbaa !47
  br i1 %238, label %242, label %240, !prof !78

240:                                              ; preds = %236
  %241 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @tails, i64 0, i64 2), align 16, !tbaa !47
  store ptr %239, ptr %241, align 8, !tbaa !66
  br label %243

242:                                              ; preds = %236
  store ptr %239, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  br label %243

243:                                              ; preds = %242, %240
  %244 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  %245 = tail call fastcc ptr @remove_duplicates(ptr noundef %0, ptr noundef %244, ptr noundef null, ptr noundef null, i32 noundef %6)
  store ptr %245, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  %246 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !47
  %247 = tail call fastcc ptr @remove_duplicates(ptr noundef %0, ptr noundef %246, ptr noundef %245, ptr noundef %245, i32 noundef %6)
  store ptr %247, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !47
  %248 = load ptr, ptr @heads, align 16, !tbaa !47
  %249 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 2), align 16, !tbaa !47
  %250 = tail call fastcc ptr @remove_duplicates(ptr noundef %0, ptr noundef %248, ptr noundef %249, ptr noundef %247, i32 noundef %6)
  store ptr %250, ptr @heads, align 16, !tbaa !47
  %251 = icmp eq i32 %6, 0
  br i1 %251, label %272, label %252, !prof !76

252:                                              ; preds = %243
  %253 = load ptr, ptr @stderr, align 8, !tbaa !47
  %254 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 35, i64 1, ptr %253) #20
  br label %255

255:                                              ; preds = %266, %252
  %256 = phi ptr [ @heads, %252 ], [ %257, %266 ]
  %257 = load ptr, ptr %256, align 8, !tbaa !47
  %258 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !47
  %259 = icmp eq ptr %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load ptr, ptr @stderr, align 8, !tbaa !47
  %262 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 35, i64 1, ptr %261) #20
  br label %263

263:                                              ; preds = %260, %255
  %264 = icmp eq ptr %257, null
  %265 = load ptr, ptr @stderr, align 8, !tbaa !47
  br i1 %264, label %270, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.cpp_dir, ptr %257, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !68
  %269 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.9, ptr noundef %268) #20
  br label %255, !llvm.loop !96

270:                                              ; preds = %263
  %271 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 20, i64 1, ptr %265) #20
  br label %272

272:                                              ; preds = %243, %270
  %273 = load ptr, ptr @heads, align 16, !tbaa !47
  %274 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @heads, i64 0, i64 1), align 8, !tbaa !47
  %275 = load i1, ptr @quote_ignores_source_dir, align 1
  %276 = zext i1 %275 to i32
  tail call void @cpp_set_include_chains(ptr noundef %0, ptr noundef %273, ptr noundef %274, i32 noundef %276) #19
  ret void
}

declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_env_var_paths(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !97 !PGOFuncName !98 {
  %3 = tail call ptr @getenv(ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5, !prof !99

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, 2
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %8, %29
  %12 = phi ptr [ %3, %8 ], [ %31, %29 ]
  br label %13

13:                                               ; preds = %11, %16
  %14 = phi ptr [ %17, %16 ], [ %12, %11 ]
  %15 = load i8, ptr %14, align 1, !tbaa !58
  switch i8 %15, label %16 [
    i8 0, label %18
    i8 58, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  br label %13, !llvm.loop !100

18:                                               ; preds = %13, %13
  %19 = icmp eq ptr %12, %14
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call ptr @xstrdup(ptr noundef nonnull @.str.5) #19
  br label %29

22:                                               ; preds = %18
  %23 = ptrtoint ptr %14 to i64
  %24 = ptrtoint ptr %12 to i64
  %25 = sub i64 %23, %24
  %26 = add nsw i64 %25, 1
  %27 = tail call ptr @xmalloc(i64 noundef %26) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr nonnull align 1 %12, i64 %25, i1 false)
  %28 = getelementptr inbounds i8, ptr %27, i64 %25
  store i8 0, ptr %28, align 1, !tbaa !58
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi ptr [ %21, %20 ], [ %27, %22 ]
  tail call void @add_path(ptr noundef %30, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 0)
  %31 = getelementptr inbounds i8, ptr %14, i64 1
  %32 = load i8, ptr %14, align 1, !tbaa !58
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %11, !llvm.loop !101

34:                                               ; preds = %29, %5, %2
  ret void
}

declare void @cpp_set_include_chains(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @hook_void_charptr_charptr_int(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #12 !prof !97 !PGOFuncName !102 {
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #13

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare zeroext i8 @cpp_relocated() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

declare ptr @make_relative_prefix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @update_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @remove_duplicates(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #11 !prof !103 !PGOFuncName !104 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.stat, align 8
  store ptr %1, ptr %6, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #19
  %8 = icmp eq ptr %1, null
  br i1 %8, label %131, label %9, !prof !105

9:                                                ; preds = %5, %127
  %10 = phi ptr [ %129, %127 ], [ %1, %5 ]
  %11 = phi ptr [ %128, %127 ], [ %6, %5 ]
  %12 = getelementptr inbounds %struct.cpp_dir, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = call i32 @stat(ptr noundef %13, ptr noundef nonnull %7)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16, !prof !76

16:                                               ; preds = %9
  %17 = tail call ptr @__errno_location() #19
  %18 = load i32, ptr %17, align 4, !tbaa !62
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %12, align 8, !tbaa !68
  %22 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef %21) #19
  br label %108

23:                                               ; preds = %16
  %24 = tail call ptr @cpp_get_options(ptr noundef %0) #19
  %25 = getelementptr inbounds %struct.cpp_options, ptr %24, i64 0, i32 14
  %26 = load i8, ptr %25, align 4, !tbaa !106
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %108, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cpp_dir, ptr %10, i64 0, i32 4
  %30 = load i8, ptr %29, align 1, !tbaa !71
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %108, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %12, align 8, !tbaa !68
  %34 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 0, ptr noundef %33) #19
  br label %108

35:                                               ; preds = %9
  %36 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !107
  %38 = and i32 %37, 61440
  %39 = icmp eq i32 %38, 16384
  br i1 %39, label %43, label %40, !prof !76

40:                                               ; preds = %35
  %41 = load ptr, ptr %12, align 8, !tbaa !68
  %42 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef %0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef %41) #19
  br label %108

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1
  %45 = icmp eq ptr %2, null
  %46 = load i64, ptr %44, align 8, !tbaa !110
  %47 = getelementptr inbounds %struct.cpp_dir, ptr %10, i64 0, i32 8
  store i64 %46, ptr %47, align 8, !tbaa !111
  %48 = load i64, ptr %7, align 8, !tbaa !112
  %49 = getelementptr inbounds %struct.cpp_dir, ptr %10, i64 0, i32 9
  store i64 %48, ptr %49, align 8, !tbaa !113
  br i1 %45, label %50, label %53, !prof !76

50:                                               ; preds = %68, %43
  %51 = load ptr, ptr %6, align 8, !tbaa !47
  %52 = icmp eq ptr %51, %10
  br i1 %52, label %89, label %71, !prof !76

53:                                               ; preds = %43, %68
  %54 = phi ptr [ %69, %68 ], [ %2, %43 ]
  %55 = getelementptr inbounds %struct.cpp_dir, ptr %54, i64 0, i32 9
  %56 = load i64, ptr %55, align 8, !tbaa !113
  %57 = icmp eq i64 %56, %48
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.cpp_dir, ptr %54, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !111
  %61 = icmp eq i64 %60, %46
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cpp_dir, ptr %10, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = getelementptr inbounds %struct.cpp_dir, ptr %54, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %108, label %68

68:                                               ; preds = %53, %58, %62
  %69 = load ptr, ptr %54, align 8, !tbaa !66
  %70 = icmp eq ptr %69, null
  br i1 %70, label %50, label %53, !prof !76, !llvm.loop !114

71:                                               ; preds = %50, %86
  %72 = phi ptr [ %87, %86 ], [ %51, %50 ]
  %73 = getelementptr inbounds %struct.cpp_dir, ptr %72, i64 0, i32 9
  %74 = load i64, ptr %73, align 8, !tbaa !113
  %75 = icmp eq i64 %48, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.cpp_dir, ptr %72, i64 0, i32 8
  %78 = load i64, ptr %77, align 8, !tbaa !111
  %79 = icmp eq i64 %46, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.cpp_dir, ptr %10, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !70
  %83 = getelementptr inbounds %struct.cpp_dir, ptr %72, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %108, label %86

86:                                               ; preds = %71, %76, %80
  %87 = load ptr, ptr %72, align 8, !tbaa !47
  %88 = icmp eq ptr %87, %10
  br i1 %88, label %89, label %71, !prof !76, !llvm.loop !115

89:                                               ; preds = %86, %50
  %90 = icmp ne ptr %3, null
  %91 = load ptr, ptr %10, align 8, !tbaa !66
  %92 = icmp eq ptr %91, null
  %93 = and i1 %90, %92
  br i1 %93, label %94, label %127, !prof !78, !llvm.loop !116

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 9
  %96 = load i64, ptr %95, align 8, !tbaa !113
  %97 = icmp eq i64 %48, %96
  br i1 %97, label %98, label %127, !llvm.loop !116

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 8
  %100 = load i64, ptr %99, align 8, !tbaa !111
  %101 = icmp eq i64 %46, %100
  br i1 %101, label %102, label %127, !llvm.loop !116

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.cpp_dir, ptr %3, i64 0, i32 7
  %104 = getelementptr inbounds %struct.cpp_dir, ptr %10, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  %106 = load ptr, ptr %103, align 8, !tbaa !70
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %127, !llvm.loop !116

108:                                              ; preds = %62, %80, %102, %23, %28, %32, %40, %20
  %109 = phi i32 [ 0, %20 ], [ 0, %40 ], [ 1, %32 ], [ 1, %28 ], [ 1, %23 ], [ 2, %102 ], [ 2, %80 ], [ 3, %62 ]
  %110 = icmp eq i32 %4, 0
  %111 = load ptr, ptr %10, align 8, !tbaa !66
  store ptr %111, ptr %11, align 8, !tbaa !47
  %112 = select i1 %110, i32 0, i32 %109
  switch i32 %112, label %125 [
    i32 2, label %113
    i32 3, label %113
    i32 1, label %121
  ]

113:                                              ; preds = %108, %108
  %114 = load ptr, ptr @stderr, align 8, !tbaa !47
  %115 = load ptr, ptr %12, align 8, !tbaa !68
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.12, ptr noundef %115) #20
  %117 = icmp eq i32 %112, 3
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load ptr, ptr @stderr, align 8, !tbaa !47
  %120 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 69, i64 1, ptr %119) #20
  br label %125

121:                                              ; preds = %108
  %122 = load ptr, ptr @stderr, align 8, !tbaa !47
  %123 = load ptr, ptr %12, align 8, !tbaa !68
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.14, ptr noundef %123) #20
  br label %125

125:                                              ; preds = %113, %108, %118, %121
  %126 = load ptr, ptr %12, align 8, !tbaa !68
  tail call void @free(ptr noundef %126)
  tail call void @free(ptr noundef %10)
  br label %127

127:                                              ; preds = %89, %94, %98, %102, %125
  %128 = phi ptr [ %11, %125 ], [ %10, %102 ], [ %10, %98 ], [ %10, %94 ], [ %10, %89 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !47
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %9, !prof !76

131:                                              ; preds = %127, %5
  %132 = phi ptr [ %6, %5 ], [ %128, %127 ]
  store ptr %3, ptr %132, align 8, !tbaa !47
  %133 = load ptr, ptr %6, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #19
  ret ptr %133
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @__errno_location() local_unnamed_addr #3

declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @register_include_chains, ptr @cpp_get_options, i64 1}
!36 = !{ptr @register_include_chains, ptr @add_env_var_paths, i64 2}
!37 = !{ptr @register_include_chains, ptr @hook_void_charptr_charptr_int, i64 2}
!38 = !{ptr @register_include_chains, ptr @cpp_relocated, i64 1}
!39 = !{ptr @register_include_chains, ptr @update_path, i64 1}
!40 = !{ptr @register_include_chains, ptr @xmalloc, i64 1}
!41 = !{ptr @register_include_chains, ptr @remove_duplicates, i64 3}
!42 = !{ptr @register_include_chains, ptr @cpp_set_include_chains, i64 1}
!43 = !{ptr @add_env_var_paths, ptr @getenv, i64 2}
!44 = !{ptr @remove_duplicates, ptr @stat, i64 1}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !48, i64 8}
!52 = !{!"_IO_FILE", !53, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !53, i64 112, !53, i64 116, !54, i64 120, !55, i64 128, !49, i64 130, !49, i64 131, !48, i64 136, !54, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !54, i64 184, !53, i64 192, !49, i64 196}
!53 = !{!"int", !49, i64 0}
!54 = !{!"long", !49, i64 0}
!55 = !{!"short", !49, i64 0}
!56 = !{!52, !48, i64 16}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!49, !49, i64 0}
!59 = !{!52, !48, i64 40}
!60 = !{!52, !48, i64 48}
!61 = !{!52, !53, i64 0}
!62 = !{!53, !53, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!67, !48, i64 0}
!67 = !{!"cpp_dir", !48, i64 0, !48, i64 8, !53, i64 16, !49, i64 20, !49, i64 21, !48, i64 24, !48, i64 32, !48, i64 40, !54, i64 48, !54, i64 56}
!68 = !{!67, !48, i64 8}
!69 = !{!67, !49, i64 20}
!70 = !{!67, !48, i64 40}
!71 = !{!67, !49, i64 21}
!72 = !{!"function_entry_count", i64 1}
!73 = !{!74, !49, i64 10}
!74 = !{!"cpp_options", !53, i64 0, !53, i64 4, !49, i64 8, !49, i64 9, !49, i64 10, !49, i64 11, !49, i64 12, !49, i64 13, !49, i64 14, !49, i64 15, !49, i64 16, !49, i64 17, !49, i64 18, !49, i64 19, !49, i64 20, !49, i64 21, !49, i64 22, !49, i64 23, !49, i64 24, !49, i64 25, !49, i64 26, !49, i64 27, !49, i64 28, !49, i64 29, !49, i64 30, !49, i64 31, !49, i64 32, !49, i64 33, !49, i64 34, !49, i64 35, !49, i64 36, !49, i64 37, !49, i64 38, !49, i64 39, !49, i64 40, !49, i64 41, !49, i64 42, !48, i64 48, !48, i64 56, !48, i64 64, !53, i64 72, !49, i64 76, !49, i64 77, !75, i64 80, !54, i64 88, !54, i64 96, !54, i64 104, !54, i64 112, !49, i64 120, !49, i64 121, !49, i64 122, !49, i64 123, !49, i64 124}
!75 = !{!"", !53, i64 0, !49, i64 4, !49, i64 5, !49, i64 6, !49, i64 7}
!76 = !{!"branch_weights", i32 1, i32 0}
!77 = !{!74, !49, i64 8}
!78 = !{!"branch_weights", i32 0, i32 1}
!79 = !{!80, !48, i64 0}
!80 = !{!"target_c_incpath_s", !48, i64 0, !48, i64 8}
!81 = !{!"VP", i32 0, i64 1, i64 -3505613486216014941, i64 1}
!82 = !{!54, !54, i64 0}
!83 = !{!84, !48, i64 0}
!84 = !{!"default_include", !48, i64 0, !48, i64 8, !49, i64 16, !49, i64 17, !49, i64 18, !49, i64 19}
!85 = !{!84, !49, i64 16}
!86 = !{!84, !49, i64 18}
!87 = !{!84, !49, i64 19}
!88 = !{!84, !49, i64 17}
!89 = distinct !{!89, !64, !65}
!90 = !{!"branch_weights", i32 1, i32 127}
!91 = !{!84, !48, i64 8}
!92 = !{!"branch_weights", i32 127, i32 1}
!93 = distinct !{!93, !64, !65}
!94 = !{!80, !48, i64 8}
!95 = distinct !{!95, !64, !65}
!96 = distinct !{!96, !65}
!97 = !{!"function_entry_count", i64 2}
!98 = !{!"incpath.c;add_env_var_paths"}
!99 = !{!"branch_weights", i32 2, i32 0}
!100 = distinct !{!100, !64, !65}
!101 = distinct !{!101, !64, !65}
!102 = !{!"incpath.c;hook_void_charptr_charptr_int"}
!103 = !{!"function_entry_count", i64 3}
!104 = !{!"incpath.c;remove_duplicates"}
!105 = !{!"branch_weights", i32 2, i32 1}
!106 = !{!74, !49, i64 20}
!107 = !{!108, !53, i64 24}
!108 = !{!"stat", !54, i64 0, !54, i64 8, !54, i64 16, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !109, i64 72, !109, i64 88, !109, i64 104, !49, i64 120}
!109 = !{!"timespec", !54, i64 0, !54, i64 8}
!110 = !{!108, !54, i64 8}
!111 = !{!67, !54, i64 48}
!112 = !{!108, !54, i64 0}
!113 = !{!67, !54, i64 56}
!114 = distinct !{!114, !64, !65}
!115 = distinct !{!115, !64, !65}
!116 = distinct !{!116, !64, !65}
