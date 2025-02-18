; ModuleID = 'pretty-print.c'
source_filename = "pretty-print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.chunk_info = type { ptr, [60 x ptr] }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"pretty-print.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@open_quote = external local_unnamed_addr global ptr, align 8
@close_quote = external local_unnamed_addr global ptr, align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"qwl+#\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%llo\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@locale_utf8 = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\\U%08x\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !55 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !56
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !55 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !56
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !66

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !60
  %11 = load i8, ptr %3, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !55 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !55 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !66

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !68
  store i8 %12, ptr %4, align 1, !tbaa !67
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !55 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !55 {
  %2 = load i32, ptr %0, align 8, !tbaa !70
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !55 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !55 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !72

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !55 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_write_text_to_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !55 {
  %2 = tail call ptr @pp_base_formatted_text(ptr noundef %0)
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = tail call i32 @fputs(ptr noundef %2, ptr noundef %5)
  tail call void @pp_base_clear_output_area(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @pp_base_formatted_text(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %12, !prof !85

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef %4, i32 noundef 1) #20
  br label %12

12:                                               ; preds = %1, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.output_buffer, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.obstack, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %18, ptr %16, align 8, !tbaa !83
  store i8 0, ptr %17, align 1, !tbaa !67
  %19 = load ptr, ptr %0, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.output_buffer, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = getelementptr inbounds %struct.obstack, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  ret ptr %23
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_clear_output_area(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !88
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %23, !prof !89

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = icmp slt i64 %11, %18
  br i1 %19, label %20, label %23, !prof !89

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %8, i64 %11
  store ptr %21, ptr %5, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !83
  br label %25

23:                                               ; preds = %14, %1
  %24 = getelementptr inbounds i8, ptr %8, i64 %11
  tail call void @obstack_free(ptr noundef %4, ptr noundef %24) #20
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr %0, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.output_buffer, ptr %26, i64 0, i32 5
  store i32 0, ptr %27, align 8, !tbaa !90
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_indent(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !55 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32)
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %9, label %5, !llvm.loop !92

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_character(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = load ptr, ptr %0, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !90
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %38, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.obstack, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = getelementptr inbounds %struct.obstack, ptr %15, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = icmp ugt ptr %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call void @_obstack_newchunk(ptr noundef %15, i32 noundef 1) #20
  br label %23

23:                                               ; preds = %13, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.output_buffer, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = getelementptr inbounds %struct.obstack, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %27, align 8, !tbaa !83
  store i8 10, ptr %28, align 1, !tbaa !67
  %30 = load ptr, ptr %0, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct.output_buffer, ptr %30, i64 0, i32 5
  store i32 0, ptr %31, align 8, !tbaa !90
  %32 = and i32 %1, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !95
  %36 = and i16 %35, 64
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %23, %6, %2
  %39 = load ptr, ptr %0, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.output_buffer, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  %42 = getelementptr inbounds %struct.obstack, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  %45 = getelementptr inbounds %struct.obstack, ptr %41, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !84
  %47 = icmp ugt ptr %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  tail call void @_obstack_newchunk(ptr noundef %41, i32 noundef 1) #20
  br label %49

49:                                               ; preds = %38, %48
  %50 = trunc i32 %1 to i8
  %51 = load ptr, ptr %0, align 8, !tbaa !75
  %52 = getelementptr inbounds %struct.output_buffer, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = getelementptr inbounds %struct.obstack, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !83
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %56, ptr %54, align 8, !tbaa !83
  store i8 %50, ptr %55, align 1, !tbaa !67
  %57 = load ptr, ptr %0, align 8, !tbaa !75
  %58 = getelementptr inbounds %struct.output_buffer, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !90
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !90
  br label %61

61:                                               ; preds = %23, %49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_format(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !81 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #20
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 5
  store i64 488, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp slt i64 %16, 488
  br i1 %17, label %18, label %19, !prof !85

18:                                               ; preds = %2
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 488) #20
  br label %19

19:                                               ; preds = %2, %18
  %20 = load i64, ptr %9, align 8, !tbaa !96
  %21 = load ptr, ptr %12, align 8, !tbaa !98
  %22 = getelementptr inbounds i8, ptr %21, i64 %20
  store ptr %22, ptr %12, align 8, !tbaa !98
  %23 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %30, !prof !85

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %28 = load i8, ptr %27, align 8
  %29 = or i8 %28, 2
  store i8 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %19, %26
  %31 = load ptr, ptr %23, align 8, !tbaa !99
  %32 = ptrtoint ptr %31 to i64
  store i64 %32, ptr %9, align 8, !tbaa !96
  %33 = ptrtoint ptr %22 to i64
  %34 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !100
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %33
  %38 = xor i32 %35, -1
  %39 = sext i32 %38 to i64
  %40 = and i64 %37, %39
  %41 = inttoptr i64 %40 to ptr
  store ptr %41, ptr %12, align 8, !tbaa !98
  %42 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !101
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %40, %44
  %46 = load ptr, ptr %10, align 8, !tbaa !97
  %47 = ptrtoint ptr %46 to i64
  %48 = sub i64 %47, %44
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51, !prof !85

50:                                               ; preds = %30
  store ptr %46, ptr %12, align 8, !tbaa !98
  br label %51

51:                                               ; preds = %30, %50
  %52 = load ptr, ptr %12, align 8, !tbaa !98
  store ptr %52, ptr %23, align 8, !tbaa !99
  %53 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !102
  store ptr %54, ptr %31, align 8, !tbaa !103
  store ptr %31, ptr %53, align 8, !tbaa !102
  %55 = getelementptr inbounds %struct.chunk_info, ptr %31, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %3, i8 0, i64 240, i1 false)
  %56 = load ptr, ptr %1, align 8, !tbaa !105
  %57 = load i8, ptr %56, align 1, !tbaa !67
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %382, label %59, !prof !85

59:                                               ; preds = %51, %360
  %60 = phi ptr [ %338, %360 ], [ %56, %51 ]
  %61 = phi i32 [ %337, %360 ], [ 0, %51 ]
  %62 = phi i32 [ %379, %360 ], [ 0, %51 ]
  %63 = phi i8 [ %215, %360 ], [ 0, %51 ]
  %64 = phi i8 [ %214, %360 ], [ 0, %51 ]
  br label %65

65:                                               ; preds = %79, %59
  %66 = phi ptr [ %60, %59 ], [ %80, %79 ]
  %67 = load i8, ptr %66, align 1, !tbaa !67
  switch i8 %67, label %68 [
    i8 0, label %382
    i8 37, label %81
  ], !prof !107

68:                                               ; preds = %65
  %69 = load ptr, ptr %12, align 8, !tbaa !98
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  %71 = load ptr, ptr %10, align 8, !tbaa !97
  %72 = icmp ugt ptr %70, %71
  br i1 %72, label %73, label %74, !prof !108

73:                                               ; preds = %68
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %74

74:                                               ; preds = %68, %73
  %75 = load i8, ptr %66, align 1, !tbaa !67
  %76 = load ptr, ptr %12, align 8, !tbaa !98
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %77, ptr %12, align 8, !tbaa !98
  store i8 %75, ptr %76, align 1, !tbaa !67
  %78 = getelementptr inbounds i8, ptr %66, i64 1
  br label %79

79:                                               ; preds = %74, %94
  %80 = phi ptr [ %78, %74 ], [ %95, %94 ]
  br label %65, !llvm.loop !109

81:                                               ; preds = %65
  %82 = getelementptr inbounds i8, ptr %66, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !67
  switch i8 %83, label %147 [
    i8 0, label %84
    i8 37, label %85
    i8 60, label %98
    i8 62, label %114
    i8 39, label %114
    i8 109, label %130
  ], !prof !110

84:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @.str.1) #20
  br label %85

85:                                               ; preds = %81, %84
  %86 = load ptr, ptr %12, align 8, !tbaa !98
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load ptr, ptr %10, align 8, !tbaa !97
  %89 = icmp ugt ptr %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %91

91:                                               ; preds = %85, %90
  %92 = load ptr, ptr %12, align 8, !tbaa !98
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %93, ptr %12, align 8, !tbaa !98
  store i8 37, ptr %92, align 1, !tbaa !67
  br label %94

94:                                               ; preds = %91, %107, %123, %141
  %95 = getelementptr inbounds i8, ptr %66, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !67
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %382, label %79, !prof !85

98:                                               ; preds = %81
  %99 = load ptr, ptr @open_quote, align 8, !tbaa !56
  %100 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %99)
  store i64 %100, ptr %9, align 8, !tbaa !96
  %101 = load ptr, ptr %12, align 8, !tbaa !98
  %102 = getelementptr inbounds i8, ptr %101, i64 %100
  %103 = load ptr, ptr %10, align 8, !tbaa !97
  %104 = icmp ugt ptr %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = trunc i64 %100 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %106) #20
  br label %107

107:                                              ; preds = %98, %105
  %108 = load ptr, ptr %12, align 8, !tbaa !98
  %109 = load ptr, ptr @open_quote, align 8, !tbaa !56
  %110 = load i64, ptr %9, align 8, !tbaa !96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %108, ptr align 1 %109, i64 %110, i1 false)
  %111 = load i64, ptr %9, align 8, !tbaa !96
  %112 = load ptr, ptr %12, align 8, !tbaa !98
  %113 = getelementptr inbounds i8, ptr %112, i64 %111
  store ptr %113, ptr %12, align 8, !tbaa !98
  br label %94

114:                                              ; preds = %81, %81
  %115 = load ptr, ptr @close_quote, align 8, !tbaa !56
  %116 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %115)
  store i64 %116, ptr %9, align 8, !tbaa !96
  %117 = load ptr, ptr %12, align 8, !tbaa !98
  %118 = getelementptr inbounds i8, ptr %117, i64 %116
  %119 = load ptr, ptr %10, align 8, !tbaa !97
  %120 = icmp ugt ptr %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = trunc i64 %116 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %122) #20
  br label %123

123:                                              ; preds = %114, %121
  %124 = load ptr, ptr %12, align 8, !tbaa !98
  %125 = load ptr, ptr @close_quote, align 8, !tbaa !56
  %126 = load i64, ptr %9, align 8, !tbaa !96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %125, i64 %126, i1 false)
  %127 = load i64, ptr %9, align 8, !tbaa !96
  %128 = load ptr, ptr %12, align 8, !tbaa !98
  %129 = getelementptr inbounds i8, ptr %128, i64 %127
  store ptr %129, ptr %12, align 8, !tbaa !98
  br label %94

130:                                              ; preds = %81
  %131 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !111
  %133 = tail call ptr @xstrerror(i32 noundef %132) #20
  %134 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %133)
  store i64 %134, ptr %9, align 8, !tbaa !96
  %135 = load ptr, ptr %12, align 8, !tbaa !98
  %136 = getelementptr inbounds i8, ptr %135, i64 %134
  %137 = load ptr, ptr %10, align 8, !tbaa !97
  %138 = icmp ugt ptr %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = trunc i64 %134 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef %140) #20
  br label %141

141:                                              ; preds = %130, %139
  %142 = load ptr, ptr %12, align 8, !tbaa !98
  %143 = load i64, ptr %9, align 8, !tbaa !96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %142, ptr align 1 %133, i64 %143, i1 false)
  %144 = load i64, ptr %9, align 8, !tbaa !96
  %145 = load ptr, ptr %12, align 8, !tbaa !98
  %146 = getelementptr inbounds i8, ptr %145, i64 %144
  store ptr %146, ptr %12, align 8, !tbaa !98
  br label %94

147:                                              ; preds = %81
  %148 = getelementptr inbounds i8, ptr %66, i64 1
  %149 = load ptr, ptr %12, align 8, !tbaa !98
  %150 = getelementptr inbounds i8, ptr %149, i64 1
  %151 = load ptr, ptr %10, align 8, !tbaa !97
  %152 = icmp ugt ptr %150, %151
  br i1 %152, label %153, label %154, !prof !85

153:                                              ; preds = %147
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %154

154:                                              ; preds = %147, %153
  %155 = load ptr, ptr %12, align 8, !tbaa !98
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %156, ptr %12, align 8, !tbaa !98
  store i8 0, ptr %155, align 1, !tbaa !67
  %157 = icmp ult i32 %62, 60
  br i1 %157, label %159, label %158, !prof !89

158:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 282, ptr noundef nonnull @.str.1) #20
  br label %159

159:                                              ; preds = %154, %158
  %160 = load ptr, ptr %12, align 8, !tbaa !98
  %161 = load ptr, ptr %23, align 8, !tbaa !99
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %163, label %167, !prof !85

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %165 = load i8, ptr %164, align 8
  %166 = or i8 %165, 2
  store i8 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %159, %163
  %168 = load ptr, ptr %23, align 8, !tbaa !99
  %169 = ptrtoint ptr %168 to i64
  store i64 %169, ptr %9, align 8, !tbaa !96
  %170 = ptrtoint ptr %160 to i64
  %171 = load i32, ptr %34, align 8, !tbaa !100
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = xor i32 %171, -1
  %175 = sext i32 %174 to i64
  %176 = and i64 %173, %175
  %177 = inttoptr i64 %176 to ptr
  store ptr %177, ptr %12, align 8, !tbaa !98
  %178 = load ptr, ptr %42, align 8, !tbaa !101
  %179 = ptrtoint ptr %178 to i64
  %180 = sub i64 %176, %179
  %181 = load ptr, ptr %10, align 8, !tbaa !97
  %182 = ptrtoint ptr %181 to i64
  %183 = sub i64 %182, %179
  %184 = icmp sgt i64 %180, %183
  %185 = select i1 %184, ptr %181, ptr %177, !prof !85
  store ptr %185, ptr %12, align 8
  store ptr %185, ptr %23, align 8, !tbaa !99
  %186 = or disjoint i32 %62, 1
  %187 = zext i32 %62 to i64
  %188 = getelementptr inbounds ptr, ptr %55, i64 %187
  store ptr %168, ptr %188, align 8, !tbaa !56
  %189 = load i8, ptr %148, align 1, !tbaa !67
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !95
  %193 = and i16 %192, 4
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %208, label %195, !prof !89

195:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %196 = call i64 @strtoul(ptr noundef nonnull %148, ptr noundef nonnull %4, i32 noundef 10)
  %197 = trunc i64 %196 to i32
  %198 = add i32 %197, -1
  %199 = load ptr, ptr %4, align 8, !tbaa !56
  %200 = load i8, ptr %199, align 1, !tbaa !67
  %201 = icmp eq i8 %200, 36
  br i1 %201, label %203, label %202

202:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.1) #20
  br label %203

203:                                              ; preds = %195, %202
  %204 = getelementptr inbounds i8, ptr %199, i64 1
  %205 = icmp eq i8 %63, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 296, ptr noundef nonnull @.str.1) #20
  br label %207

207:                                              ; preds = %203, %206
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %212

208:                                              ; preds = %167
  %209 = add i32 %61, 1
  %210 = icmp eq i8 %64, 0
  br i1 %210, label %212, label %211, !prof !89

211:                                              ; preds = %208
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.1) #20
  br label %212

212:                                              ; preds = %211, %208, %207
  %213 = phi i1 [ false, %207 ], [ false, %211 ], [ true, %208 ]
  %214 = phi i8 [ 1, %207 ], [ 1, %211 ], [ 0, %208 ]
  %215 = phi i8 [ %63, %207 ], [ 1, %211 ], [ 1, %208 ]
  %216 = phi i32 [ %198, %207 ], [ %61, %211 ], [ %61, %208 ]
  %217 = phi i32 [ %61, %207 ], [ %209, %211 ], [ %209, %208 ]
  %218 = phi ptr [ %204, %207 ], [ %148, %211 ], [ %148, %208 ]
  %219 = icmp ult i32 %216, 30
  br i1 %219, label %221, label %220, !prof !89

220:                                              ; preds = %212
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 304, ptr noundef nonnull @.str.1) #20
  br label %221

221:                                              ; preds = %212, %220
  %222 = zext i32 %216 to i64
  %223 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !56
  %225 = icmp eq ptr %224, null
  br i1 %225, label %227, label %226, !prof !89

226:                                              ; preds = %221
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.1) #20
  br label %227

227:                                              ; preds = %221, %226
  %228 = zext i32 %186 to i64
  %229 = getelementptr inbounds ptr, ptr %55, i64 %228
  store ptr %229, ptr %223, align 8, !tbaa !56
  br label %230

230:                                              ; preds = %237, %227
  %231 = phi ptr [ %218, %227 ], [ %241, %237 ]
  %232 = load ptr, ptr %12, align 8, !tbaa !98
  %233 = getelementptr inbounds i8, ptr %232, i64 1
  %234 = load ptr, ptr %10, align 8, !tbaa !97
  %235 = icmp ugt ptr %233, %234
  br i1 %235, label %236, label %237, !prof !112

236:                                              ; preds = %230
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %237

237:                                              ; preds = %230, %236
  %238 = load i8, ptr %231, align 1, !tbaa !67
  %239 = load ptr, ptr %12, align 8, !tbaa !98
  %240 = getelementptr inbounds i8, ptr %239, i64 1
  store ptr %240, ptr %12, align 8, !tbaa !98
  store i8 %238, ptr %239, align 1, !tbaa !67
  %241 = getelementptr inbounds i8, ptr %231, i64 1
  %242 = load i8, ptr %231, align 1, !tbaa !67
  %243 = sext i8 %242 to i32
  %244 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.2, i32 %243, i64 6)
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %230, !prof !113, !llvm.loop !114

246:                                              ; preds = %237
  %247 = icmp eq i8 %242, 46
  br i1 %247, label %248, label %336, !prof !85

248:                                              ; preds = %246
  %249 = load i8, ptr %241, align 1, !tbaa !67
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !95
  %253 = and i16 %252, 4
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %276, label %255

255:                                              ; preds = %248, %262
  %256 = phi ptr [ %266, %262 ], [ %241, %248 ]
  %257 = load ptr, ptr %12, align 8, !tbaa !98
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  %259 = load ptr, ptr %10, align 8, !tbaa !97
  %260 = icmp ugt ptr %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %262

262:                                              ; preds = %255, %261
  %263 = load i8, ptr %256, align 1, !tbaa !67
  %264 = load ptr, ptr %12, align 8, !tbaa !98
  %265 = getelementptr inbounds i8, ptr %264, i64 1
  store ptr %265, ptr %12, align 8, !tbaa !98
  store i8 %263, ptr %264, align 1, !tbaa !67
  %266 = getelementptr inbounds i8, ptr %256, i64 1
  %267 = load i8, ptr %256, align 1, !tbaa !67
  %268 = zext i8 %267 to i64
  %269 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %268
  %270 = load i16, ptr %269, align 2, !tbaa !95
  %271 = and i16 %270, 4
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %273, label %255, !llvm.loop !115

273:                                              ; preds = %262
  %274 = icmp eq i8 %267, 115
  br i1 %274, label %336, label %275

275:                                              ; preds = %273
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #20
  br label %336

276:                                              ; preds = %248
  %277 = icmp eq i8 %249, 42
  br i1 %277, label %279, label %278

278:                                              ; preds = %276
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.1) #20
  br label %279

279:                                              ; preds = %276, %278
  %280 = load ptr, ptr %12, align 8, !tbaa !98
  %281 = getelementptr inbounds i8, ptr %280, i64 1
  %282 = load ptr, ptr %10, align 8, !tbaa !97
  %283 = icmp ugt ptr %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %285

285:                                              ; preds = %279, %284
  %286 = load ptr, ptr %12, align 8, !tbaa !98
  %287 = getelementptr inbounds i8, ptr %286, i64 1
  store ptr %287, ptr %12, align 8, !tbaa !98
  store i8 42, ptr %286, align 1, !tbaa !67
  %288 = getelementptr inbounds i8, ptr %231, i64 2
  %289 = load i8, ptr %288, align 1, !tbaa !67
  %290 = zext i8 %289 to i64
  %291 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %290
  %292 = load i16, ptr %291, align 2, !tbaa !95
  %293 = and i16 %292, 4
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %313, label %295

295:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %296 = call i64 @strtoul(ptr noundef nonnull %288, ptr noundef nonnull %5, i32 noundef 10)
  %297 = trunc i64 %296 to i32
  %298 = add i64 %296, 4294967295
  %299 = load ptr, ptr %5, align 8, !tbaa !56
  %300 = icmp eq i32 %216, %297
  br i1 %300, label %302, label %301

301:                                              ; preds = %295
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #20
  br label %302

302:                                              ; preds = %295, %301
  %303 = icmp eq i8 %215, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %302
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.1) #20
  br label %305

305:                                              ; preds = %302, %304
  %306 = load i8, ptr %299, align 1, !tbaa !67
  %307 = icmp eq i8 %306, 36
  br i1 %307, label %309, label %308

308:                                              ; preds = %305
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.1) #20
  br label %309

309:                                              ; preds = %305, %308
  %310 = getelementptr inbounds i8, ptr %299, i64 1
  %311 = and i64 %298, 4294967295
  %312 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %311
  store ptr %229, ptr %312, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %320

313:                                              ; preds = %285
  br i1 %213, label %315, label %314

314:                                              ; preds = %313
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 348, ptr noundef nonnull @.str.1) #20
  br label %315

315:                                              ; preds = %313, %314
  %316 = add i32 %216, 1
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %317
  store ptr %229, ptr %318, align 8, !tbaa !56
  %319 = add i32 %217, 1
  br label %320

320:                                              ; preds = %315, %309
  %321 = phi i32 [ %217, %309 ], [ %319, %315 ]
  %322 = phi ptr [ %310, %309 ], [ %288, %315 ]
  %323 = load i8, ptr %322, align 1, !tbaa !67
  %324 = icmp eq i8 %323, 115
  br i1 %324, label %326, label %325

325:                                              ; preds = %320
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 352, ptr noundef nonnull @.str.1) #20
  br label %326

326:                                              ; preds = %320, %325
  %327 = load ptr, ptr %12, align 8, !tbaa !98
  %328 = getelementptr inbounds i8, ptr %327, i64 1
  %329 = load ptr, ptr %10, align 8, !tbaa !97
  %330 = icmp ugt ptr %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %332

332:                                              ; preds = %326, %331
  %333 = load ptr, ptr %12, align 8, !tbaa !98
  %334 = getelementptr inbounds i8, ptr %333, i64 1
  store ptr %334, ptr %12, align 8, !tbaa !98
  store i8 115, ptr %333, align 1, !tbaa !67
  %335 = getelementptr inbounds i8, ptr %322, i64 1
  br label %336

336:                                              ; preds = %275, %273, %332, %246
  %337 = phi i32 [ %217, %273 ], [ %217, %275 ], [ %321, %332 ], [ %217, %246 ]
  %338 = phi ptr [ %266, %273 ], [ %266, %275 ], [ %335, %332 ], [ %241, %246 ]
  %339 = load i8, ptr %338, align 1, !tbaa !67
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %382, label %341, !prof !89

341:                                              ; preds = %336
  %342 = load ptr, ptr %12, align 8, !tbaa !98
  %343 = getelementptr inbounds i8, ptr %342, i64 1
  %344 = load ptr, ptr %10, align 8, !tbaa !97
  %345 = icmp ugt ptr %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %341
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %347

347:                                              ; preds = %341, %346
  %348 = load ptr, ptr %12, align 8, !tbaa !98
  %349 = getelementptr inbounds i8, ptr %348, i64 1
  store ptr %349, ptr %12, align 8, !tbaa !98
  store i8 0, ptr %348, align 1, !tbaa !67
  %350 = icmp ult i32 %186, 60
  br i1 %350, label %352, label %351

351:                                              ; preds = %347
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #20
  br label %352

352:                                              ; preds = %347, %351
  %353 = load ptr, ptr %12, align 8, !tbaa !98
  %354 = load ptr, ptr %23, align 8, !tbaa !99
  %355 = icmp eq ptr %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %358 = load i8, ptr %357, align 8
  %359 = or i8 %358, 2
  store i8 %359, ptr %357, align 8
  br label %360

360:                                              ; preds = %352, %356
  %361 = load ptr, ptr %23, align 8, !tbaa !99
  %362 = ptrtoint ptr %361 to i64
  store i64 %362, ptr %9, align 8, !tbaa !96
  %363 = ptrtoint ptr %353 to i64
  %364 = load i32, ptr %34, align 8, !tbaa !100
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %363
  %367 = xor i32 %364, -1
  %368 = sext i32 %367 to i64
  %369 = and i64 %366, %368
  %370 = inttoptr i64 %369 to ptr
  store ptr %370, ptr %12, align 8, !tbaa !98
  %371 = load ptr, ptr %42, align 8, !tbaa !101
  %372 = ptrtoint ptr %371 to i64
  %373 = sub i64 %369, %372
  %374 = load ptr, ptr %10, align 8, !tbaa !97
  %375 = ptrtoint ptr %374 to i64
  %376 = sub i64 %375, %372
  %377 = icmp sgt i64 %373, %376
  %378 = select i1 %377, ptr %374, ptr %370
  store ptr %378, ptr %12, align 8
  store ptr %378, ptr %23, align 8, !tbaa !99
  %379 = add i32 %62, 2
  store ptr %361, ptr %229, align 8, !tbaa !56
  %380 = load i8, ptr %338, align 1, !tbaa !67
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %59, !prof !85, !llvm.loop !109

382:                                              ; preds = %360, %336, %94, %65, %51
  %383 = phi i32 [ 0, %51 ], [ %62, %65 ], [ %62, %94 ], [ %186, %336 ], [ %379, %360 ]
  %384 = load ptr, ptr %12, align 8, !tbaa !98
  %385 = getelementptr inbounds i8, ptr %384, i64 1
  %386 = load ptr, ptr %10, align 8, !tbaa !97
  %387 = icmp ugt ptr %385, %386
  br i1 %387, label %388, label %389, !prof !85

388:                                              ; preds = %382
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %389

389:                                              ; preds = %382, %388
  %390 = load ptr, ptr %12, align 8, !tbaa !98
  %391 = getelementptr inbounds i8, ptr %390, i64 1
  store ptr %391, ptr %12, align 8, !tbaa !98
  store i8 0, ptr %390, align 1, !tbaa !67
  %392 = icmp ult i32 %383, 60
  br i1 %392, label %394, label %393, !prof !89

393:                                              ; preds = %389
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 366, ptr noundef nonnull @.str.1) #20
  br label %394

394:                                              ; preds = %389, %393
  %395 = load ptr, ptr %12, align 8, !tbaa !98
  %396 = load ptr, ptr %23, align 8, !tbaa !99
  %397 = icmp eq ptr %395, %396
  br i1 %397, label %398, label %402, !prof !85

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %400 = load i8, ptr %399, align 8
  %401 = or i8 %400, 2
  store i8 %401, ptr %399, align 8
  br label %402

402:                                              ; preds = %394, %398
  %403 = load ptr, ptr %23, align 8, !tbaa !99
  %404 = ptrtoint ptr %403 to i64
  store i64 %404, ptr %9, align 8, !tbaa !96
  %405 = ptrtoint ptr %395 to i64
  %406 = load i32, ptr %34, align 8, !tbaa !100
  %407 = sext i32 %406 to i64
  %408 = add nsw i64 %407, %405
  %409 = xor i32 %406, -1
  %410 = sext i32 %409 to i64
  %411 = and i64 %408, %410
  %412 = inttoptr i64 %411 to ptr
  store ptr %412, ptr %12, align 8, !tbaa !98
  %413 = load ptr, ptr %42, align 8, !tbaa !101
  %414 = ptrtoint ptr %413 to i64
  %415 = sub i64 %411, %414
  %416 = load ptr, ptr %10, align 8, !tbaa !97
  %417 = ptrtoint ptr %416 to i64
  %418 = sub i64 %417, %414
  %419 = icmp sgt i64 %415, %418
  %420 = select i1 %419, ptr %416, ptr %412, !prof !85
  store ptr %420, ptr %12, align 8
  store ptr %420, ptr %23, align 8, !tbaa !99
  %421 = add i32 %383, 1
  %422 = zext i32 %383 to i64
  %423 = getelementptr inbounds ptr, ptr %55, i64 %422
  store ptr %403, ptr %423, align 8, !tbaa !56
  %424 = zext i32 %421 to i64
  %425 = getelementptr inbounds ptr, ptr %55, i64 %424
  store ptr null, ptr %425, align 8, !tbaa !56
  %426 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 2
  store ptr %8, ptr %426, align 8, !tbaa !82
  %427 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %428 = load i64, ptr %427, align 4, !tbaa.struct !116
  %429 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %429, align 4, !tbaa !93
  store i32 1, ptr %427, align 4, !tbaa !117
  %430 = load ptr, ptr %3, align 16, !tbaa !56
  %431 = icmp eq ptr %430, null
  br i1 %431, label %1116, label %432, !prof !118

432:                                              ; preds = %402
  %433 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 6
  br label %434

434:                                              ; preds = %432, %1089
  %435 = phi ptr [ %430, %432 ], [ %1114, %1089 ]
  %436 = phi i32 [ 0, %432 ], [ %1111, %1089 ]
  %437 = load ptr, ptr %435, align 8, !tbaa !56
  br label %438

438:                                              ; preds = %463, %434
  %439 = phi i32 [ 0, %434 ], [ %464, %463 ]
  %440 = phi i8 [ 0, %434 ], [ %465, %463 ]
  %441 = phi i8 [ 0, %434 ], [ %466, %463 ]
  %442 = phi i8 [ 0, %434 ], [ %467, %463 ]
  %443 = phi i8 [ 0, %434 ], [ %468, %463 ]
  %444 = phi ptr [ %437, %434 ], [ %469, %463 ]
  %445 = load i8, ptr %444, align 1, !tbaa !67
  switch i8 %445, label %470 [
    i8 113, label %446
    i8 43, label %449
    i8 35, label %452
    i8 119, label %455
    i8 108, label %458
  ], !prof !119

446:                                              ; preds = %438
  %447 = icmp eq i8 %443, 0
  br i1 %447, label %463, label %448, !prof !89

448:                                              ; preds = %446
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 394, ptr noundef nonnull @.str.1) #20
  br label %463

449:                                              ; preds = %438
  %450 = icmp eq i8 %441, 0
  br i1 %450, label %463, label %451, !prof !89

451:                                              ; preds = %449
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #20
  br label %463

452:                                              ; preds = %438
  %453 = icmp eq i8 %442, 0
  br i1 %453, label %463, label %454

454:                                              ; preds = %452
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #20
  br label %463

455:                                              ; preds = %438
  %456 = icmp eq i8 %440, 0
  br i1 %456, label %463, label %457

457:                                              ; preds = %455
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 409, ptr noundef nonnull @.str.1) #20
  br label %463

458:                                              ; preds = %438
  %459 = icmp slt i32 %439, 2
  br i1 %459, label %461, label %460

460:                                              ; preds = %458
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 415, ptr noundef nonnull @.str.1) #20
  br label %461

461:                                              ; preds = %458, %460
  %462 = add nsw i32 %439, 1
  br label %463

463:                                              ; preds = %457, %455, %454, %452, %451, %449, %448, %446, %461
  %464 = phi i32 [ %462, %461 ], [ %439, %446 ], [ %439, %448 ], [ %439, %449 ], [ %439, %451 ], [ %439, %452 ], [ %439, %454 ], [ %439, %455 ], [ %439, %457 ]
  %465 = phi i8 [ %440, %461 ], [ %440, %446 ], [ %440, %448 ], [ %440, %449 ], [ %440, %451 ], [ %440, %452 ], [ %440, %454 ], [ 1, %455 ], [ 1, %457 ]
  %466 = phi i8 [ %441, %461 ], [ %441, %446 ], [ %441, %448 ], [ 1, %449 ], [ 1, %451 ], [ %441, %452 ], [ %441, %454 ], [ %441, %455 ], [ %441, %457 ]
  %467 = phi i8 [ %442, %461 ], [ %442, %446 ], [ %442, %448 ], [ %442, %449 ], [ %442, %451 ], [ 1, %452 ], [ 1, %454 ], [ %442, %455 ], [ %442, %457 ]
  %468 = phi i8 [ %443, %461 ], [ 1, %446 ], [ 1, %448 ], [ %443, %449 ], [ %443, %451 ], [ %443, %452 ], [ %443, %454 ], [ %443, %455 ], [ %443, %457 ]
  %469 = getelementptr inbounds i8, ptr %444, i64 1
  br label %438, !llvm.loop !120

470:                                              ; preds = %438
  %471 = icmp eq i8 %440, 0
  %472 = icmp eq i32 %439, 0
  %473 = select i1 %471, i1 true, i1 %472, !prof !89
  br i1 %473, label %475, label %474, !prof !89

474:                                              ; preds = %470
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 422, ptr noundef nonnull @.str.1) #20
  br label %475

475:                                              ; preds = %470, %474
  %476 = icmp eq i8 %443, 0
  br i1 %476, label %479, label %477, !prof !85

477:                                              ; preds = %475
  %478 = load ptr, ptr @open_quote, align 8, !tbaa !56
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %478)
  br label %479

479:                                              ; preds = %477, %475
  %480 = load i8, ptr %444, align 1, !tbaa !67
  switch i8 %480, label %1060 [
    i8 99, label %481
    i8 100, label %499
    i8 105, label %499
    i8 111, label %593
    i8 115, label %687
    i8 112, label %705
    i8 117, label %728
    i8 120, label %822
    i8 75, label %916
    i8 46, label %990
  ], !prof !121

481:                                              ; preds = %479
  %482 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !122
  %484 = load i32, ptr %483, align 8
  %485 = icmp ult i32 %484, 41
  br i1 %485, label %486, label %492

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.__va_list_tag, ptr %483, i64 0, i32 3
  %488 = load ptr, ptr %487, align 8
  %489 = zext nneg i32 %484 to i64
  %490 = getelementptr i8, ptr %488, i64 %489
  %491 = add nuw nsw i32 %484, 8
  store i32 %491, ptr %483, align 8
  br label %496

492:                                              ; preds = %481
  %493 = getelementptr inbounds %struct.__va_list_tag, ptr %483, i64 0, i32 2
  %494 = load ptr, ptr %493, align 8
  %495 = getelementptr i8, ptr %494, i64 8
  store ptr %495, ptr %493, align 8
  br label %496

496:                                              ; preds = %492, %486
  %497 = phi ptr [ %490, %486 ], [ %494, %492 ]
  %498 = load i32, ptr %497, align 4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %498)
  br label %1069

499:                                              ; preds = %479, %479
  br i1 %471, label %523, label %500

500:                                              ; preds = %499
  %501 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %502 = load ptr, ptr %0, align 8, !tbaa !75
  %503 = getelementptr inbounds %struct.output_buffer, ptr %502, i64 0, i32 6
  %504 = load ptr, ptr %501, align 8, !tbaa !122
  %505 = load i32, ptr %504, align 8
  %506 = icmp ult i32 %505, 41
  br i1 %506, label %507, label %513

507:                                              ; preds = %500
  %508 = getelementptr inbounds %struct.__va_list_tag, ptr %504, i64 0, i32 3
  %509 = load ptr, ptr %508, align 8
  %510 = zext nneg i32 %505 to i64
  %511 = getelementptr i8, ptr %509, i64 %510
  %512 = add nuw nsw i32 %505, 8
  store i32 %512, ptr %504, align 8
  br label %517

513:                                              ; preds = %500
  %514 = getelementptr inbounds %struct.__va_list_tag, ptr %504, i64 0, i32 2
  %515 = load ptr, ptr %514, align 8
  %516 = getelementptr i8, ptr %515, i64 8
  store ptr %516, ptr %514, align 8
  br label %517

517:                                              ; preds = %513, %507
  %518 = phi ptr [ %511, %507 ], [ %515, %513 ]
  %519 = load i64, ptr %518, align 8
  %520 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %503, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %519)
  %521 = load ptr, ptr %0, align 8, !tbaa !75
  %522 = getelementptr inbounds %struct.output_buffer, ptr %521, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %522)
  br label %1069

523:                                              ; preds = %499
  switch i32 %439, label %1069 [
    i32 0, label %524
    i32 1, label %547
    i32 2, label %570
  ]

524:                                              ; preds = %523
  %525 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %526 = load ptr, ptr %0, align 8, !tbaa !75
  %527 = getelementptr inbounds %struct.output_buffer, ptr %526, i64 0, i32 6
  %528 = load ptr, ptr %525, align 8, !tbaa !122
  %529 = load i32, ptr %528, align 8
  %530 = icmp ult i32 %529, 41
  br i1 %530, label %531, label %537

531:                                              ; preds = %524
  %532 = getelementptr inbounds %struct.__va_list_tag, ptr %528, i64 0, i32 3
  %533 = load ptr, ptr %532, align 8
  %534 = zext nneg i32 %529 to i64
  %535 = getelementptr i8, ptr %533, i64 %534
  %536 = add nuw nsw i32 %529, 8
  store i32 %536, ptr %528, align 8
  br label %541

537:                                              ; preds = %524
  %538 = getelementptr inbounds %struct.__va_list_tag, ptr %528, i64 0, i32 2
  %539 = load ptr, ptr %538, align 8
  %540 = getelementptr i8, ptr %539, i64 8
  store ptr %540, ptr %538, align 8
  br label %541

541:                                              ; preds = %537, %531
  %542 = phi ptr [ %535, %531 ], [ %539, %537 ]
  %543 = load i32, ptr %542, align 4
  %544 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %527, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %543)
  %545 = load ptr, ptr %0, align 8, !tbaa !75
  %546 = getelementptr inbounds %struct.output_buffer, ptr %545, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %546)
  br label %1069

547:                                              ; preds = %523
  %548 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %549 = load ptr, ptr %0, align 8, !tbaa !75
  %550 = getelementptr inbounds %struct.output_buffer, ptr %549, i64 0, i32 6
  %551 = load ptr, ptr %548, align 8, !tbaa !122
  %552 = load i32, ptr %551, align 8
  %553 = icmp ult i32 %552, 41
  br i1 %553, label %554, label %560

554:                                              ; preds = %547
  %555 = getelementptr inbounds %struct.__va_list_tag, ptr %551, i64 0, i32 3
  %556 = load ptr, ptr %555, align 8
  %557 = zext nneg i32 %552 to i64
  %558 = getelementptr i8, ptr %556, i64 %557
  %559 = add nuw nsw i32 %552, 8
  store i32 %559, ptr %551, align 8
  br label %564

560:                                              ; preds = %547
  %561 = getelementptr inbounds %struct.__va_list_tag, ptr %551, i64 0, i32 2
  %562 = load ptr, ptr %561, align 8
  %563 = getelementptr i8, ptr %562, i64 8
  store ptr %563, ptr %561, align 8
  br label %564

564:                                              ; preds = %560, %554
  %565 = phi ptr [ %558, %554 ], [ %562, %560 ]
  %566 = load i64, ptr %565, align 8
  %567 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %550, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %566)
  %568 = load ptr, ptr %0, align 8, !tbaa !75
  %569 = getelementptr inbounds %struct.output_buffer, ptr %568, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %569)
  br label %1069

570:                                              ; preds = %523
  %571 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %572 = load ptr, ptr %0, align 8, !tbaa !75
  %573 = getelementptr inbounds %struct.output_buffer, ptr %572, i64 0, i32 6
  %574 = load ptr, ptr %571, align 8, !tbaa !122
  %575 = load i32, ptr %574, align 8
  %576 = icmp ult i32 %575, 41
  br i1 %576, label %577, label %583

577:                                              ; preds = %570
  %578 = getelementptr inbounds %struct.__va_list_tag, ptr %574, i64 0, i32 3
  %579 = load ptr, ptr %578, align 8
  %580 = zext nneg i32 %575 to i64
  %581 = getelementptr i8, ptr %579, i64 %580
  %582 = add nuw nsw i32 %575, 8
  store i32 %582, ptr %574, align 8
  br label %587

583:                                              ; preds = %570
  %584 = getelementptr inbounds %struct.__va_list_tag, ptr %574, i64 0, i32 2
  %585 = load ptr, ptr %584, align 8
  %586 = getelementptr i8, ptr %585, i64 8
  store ptr %586, ptr %584, align 8
  br label %587

587:                                              ; preds = %583, %577
  %588 = phi ptr [ %581, %577 ], [ %585, %583 ]
  %589 = load i64, ptr %588, align 8
  %590 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %589)
  %591 = load ptr, ptr %0, align 8, !tbaa !75
  %592 = getelementptr inbounds %struct.output_buffer, ptr %591, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %592)
  br label %1069

593:                                              ; preds = %479
  br i1 %471, label %617, label %594

594:                                              ; preds = %593
  %595 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %596 = load ptr, ptr %0, align 8, !tbaa !75
  %597 = getelementptr inbounds %struct.output_buffer, ptr %596, i64 0, i32 6
  %598 = load ptr, ptr %595, align 8, !tbaa !122
  %599 = load i32, ptr %598, align 8
  %600 = icmp ult i32 %599, 41
  br i1 %600, label %601, label %607

601:                                              ; preds = %594
  %602 = getelementptr inbounds %struct.__va_list_tag, ptr %598, i64 0, i32 3
  %603 = load ptr, ptr %602, align 8
  %604 = zext nneg i32 %599 to i64
  %605 = getelementptr i8, ptr %603, i64 %604
  %606 = add nuw nsw i32 %599, 8
  store i32 %606, ptr %598, align 8
  br label %611

607:                                              ; preds = %594
  %608 = getelementptr inbounds %struct.__va_list_tag, ptr %598, i64 0, i32 2
  %609 = load ptr, ptr %608, align 8
  %610 = getelementptr i8, ptr %609, i64 8
  store ptr %610, ptr %608, align 8
  br label %611

611:                                              ; preds = %607, %601
  %612 = phi ptr [ %605, %601 ], [ %609, %607 ]
  %613 = load i64, ptr %612, align 8
  %614 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %597, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %613)
  %615 = load ptr, ptr %0, align 8, !tbaa !75
  %616 = getelementptr inbounds %struct.output_buffer, ptr %615, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %616)
  br label %1069

617:                                              ; preds = %593
  switch i32 %439, label %1069 [
    i32 0, label %618
    i32 1, label %641
    i32 2, label %664
  ]

618:                                              ; preds = %617
  %619 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %620 = load ptr, ptr %0, align 8, !tbaa !75
  %621 = getelementptr inbounds %struct.output_buffer, ptr %620, i64 0, i32 6
  %622 = load ptr, ptr %619, align 8, !tbaa !122
  %623 = load i32, ptr %622, align 8
  %624 = icmp ult i32 %623, 41
  br i1 %624, label %625, label %631

625:                                              ; preds = %618
  %626 = getelementptr inbounds %struct.__va_list_tag, ptr %622, i64 0, i32 3
  %627 = load ptr, ptr %626, align 8
  %628 = zext nneg i32 %623 to i64
  %629 = getelementptr i8, ptr %627, i64 %628
  %630 = add nuw nsw i32 %623, 8
  store i32 %630, ptr %622, align 8
  br label %635

631:                                              ; preds = %618
  %632 = getelementptr inbounds %struct.__va_list_tag, ptr %622, i64 0, i32 2
  %633 = load ptr, ptr %632, align 8
  %634 = getelementptr i8, ptr %633, i64 8
  store ptr %634, ptr %632, align 8
  br label %635

635:                                              ; preds = %631, %625
  %636 = phi ptr [ %629, %625 ], [ %633, %631 ]
  %637 = load i32, ptr %636, align 4
  %638 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %621, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %637)
  %639 = load ptr, ptr %0, align 8, !tbaa !75
  %640 = getelementptr inbounds %struct.output_buffer, ptr %639, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %640)
  br label %1069

641:                                              ; preds = %617
  %642 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %643 = load ptr, ptr %0, align 8, !tbaa !75
  %644 = getelementptr inbounds %struct.output_buffer, ptr %643, i64 0, i32 6
  %645 = load ptr, ptr %642, align 8, !tbaa !122
  %646 = load i32, ptr %645, align 8
  %647 = icmp ult i32 %646, 41
  br i1 %647, label %648, label %654

648:                                              ; preds = %641
  %649 = getelementptr inbounds %struct.__va_list_tag, ptr %645, i64 0, i32 3
  %650 = load ptr, ptr %649, align 8
  %651 = zext nneg i32 %646 to i64
  %652 = getelementptr i8, ptr %650, i64 %651
  %653 = add nuw nsw i32 %646, 8
  store i32 %653, ptr %645, align 8
  br label %658

654:                                              ; preds = %641
  %655 = getelementptr inbounds %struct.__va_list_tag, ptr %645, i64 0, i32 2
  %656 = load ptr, ptr %655, align 8
  %657 = getelementptr i8, ptr %656, i64 8
  store ptr %657, ptr %655, align 8
  br label %658

658:                                              ; preds = %654, %648
  %659 = phi ptr [ %652, %648 ], [ %656, %654 ]
  %660 = load i64, ptr %659, align 8
  %661 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %644, ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %660)
  %662 = load ptr, ptr %0, align 8, !tbaa !75
  %663 = getelementptr inbounds %struct.output_buffer, ptr %662, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %663)
  br label %1069

664:                                              ; preds = %617
  %665 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %666 = load ptr, ptr %0, align 8, !tbaa !75
  %667 = getelementptr inbounds %struct.output_buffer, ptr %666, i64 0, i32 6
  %668 = load ptr, ptr %665, align 8, !tbaa !122
  %669 = load i32, ptr %668, align 8
  %670 = icmp ult i32 %669, 41
  br i1 %670, label %671, label %677

671:                                              ; preds = %664
  %672 = getelementptr inbounds %struct.__va_list_tag, ptr %668, i64 0, i32 3
  %673 = load ptr, ptr %672, align 8
  %674 = zext nneg i32 %669 to i64
  %675 = getelementptr i8, ptr %673, i64 %674
  %676 = add nuw nsw i32 %669, 8
  store i32 %676, ptr %668, align 8
  br label %681

677:                                              ; preds = %664
  %678 = getelementptr inbounds %struct.__va_list_tag, ptr %668, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8
  %680 = getelementptr i8, ptr %679, i64 8
  store ptr %680, ptr %678, align 8
  br label %681

681:                                              ; preds = %677, %671
  %682 = phi ptr [ %675, %671 ], [ %679, %677 ]
  %683 = load i64, ptr %682, align 8
  %684 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %667, ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %683)
  %685 = load ptr, ptr %0, align 8, !tbaa !75
  %686 = getelementptr inbounds %struct.output_buffer, ptr %685, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %686)
  br label %1069

687:                                              ; preds = %479
  %688 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !122
  %690 = load i32, ptr %689, align 8
  %691 = icmp ult i32 %690, 41
  br i1 %691, label %692, label %698

692:                                              ; preds = %687
  %693 = getelementptr inbounds %struct.__va_list_tag, ptr %689, i64 0, i32 3
  %694 = load ptr, ptr %693, align 8
  %695 = zext nneg i32 %690 to i64
  %696 = getelementptr i8, ptr %694, i64 %695
  %697 = add nuw nsw i32 %690, 8
  store i32 %697, ptr %689, align 8
  br label %702

698:                                              ; preds = %687
  %699 = getelementptr inbounds %struct.__va_list_tag, ptr %689, i64 0, i32 2
  %700 = load ptr, ptr %699, align 8
  %701 = getelementptr i8, ptr %700, i64 8
  store ptr %701, ptr %699, align 8
  br label %702

702:                                              ; preds = %698, %692
  %703 = phi ptr [ %696, %692 ], [ %700, %698 ]
  %704 = load ptr, ptr %703, align 8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %704)
  br label %1069

705:                                              ; preds = %479
  %706 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %707 = load ptr, ptr %0, align 8, !tbaa !75
  %708 = getelementptr inbounds %struct.output_buffer, ptr %707, i64 0, i32 6
  %709 = load ptr, ptr %706, align 8, !tbaa !122
  %710 = load i32, ptr %709, align 8
  %711 = icmp ult i32 %710, 41
  br i1 %711, label %712, label %718

712:                                              ; preds = %705
  %713 = getelementptr inbounds %struct.__va_list_tag, ptr %709, i64 0, i32 3
  %714 = load ptr, ptr %713, align 8
  %715 = zext nneg i32 %710 to i64
  %716 = getelementptr i8, ptr %714, i64 %715
  %717 = add nuw nsw i32 %710, 8
  store i32 %717, ptr %709, align 8
  br label %722

718:                                              ; preds = %705
  %719 = getelementptr inbounds %struct.__va_list_tag, ptr %709, i64 0, i32 2
  %720 = load ptr, ptr %719, align 8
  %721 = getelementptr i8, ptr %720, i64 8
  store ptr %721, ptr %719, align 8
  br label %722

722:                                              ; preds = %718, %712
  %723 = phi ptr [ %716, %712 ], [ %720, %718 ]
  %724 = load ptr, ptr %723, align 8
  %725 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %708, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %724)
  %726 = load ptr, ptr %0, align 8, !tbaa !75
  %727 = getelementptr inbounds %struct.output_buffer, ptr %726, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %727)
  br label %1069

728:                                              ; preds = %479
  br i1 %471, label %752, label %729

729:                                              ; preds = %728
  %730 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %731 = load ptr, ptr %0, align 8, !tbaa !75
  %732 = getelementptr inbounds %struct.output_buffer, ptr %731, i64 0, i32 6
  %733 = load ptr, ptr %730, align 8, !tbaa !122
  %734 = load i32, ptr %733, align 8
  %735 = icmp ult i32 %734, 41
  br i1 %735, label %736, label %742

736:                                              ; preds = %729
  %737 = getelementptr inbounds %struct.__va_list_tag, ptr %733, i64 0, i32 3
  %738 = load ptr, ptr %737, align 8
  %739 = zext nneg i32 %734 to i64
  %740 = getelementptr i8, ptr %738, i64 %739
  %741 = add nuw nsw i32 %734, 8
  store i32 %741, ptr %733, align 8
  br label %746

742:                                              ; preds = %729
  %743 = getelementptr inbounds %struct.__va_list_tag, ptr %733, i64 0, i32 2
  %744 = load ptr, ptr %743, align 8
  %745 = getelementptr i8, ptr %744, i64 8
  store ptr %745, ptr %743, align 8
  br label %746

746:                                              ; preds = %742, %736
  %747 = phi ptr [ %740, %736 ], [ %744, %742 ]
  %748 = load i64, ptr %747, align 8
  %749 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %732, ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %748)
  %750 = load ptr, ptr %0, align 8, !tbaa !75
  %751 = getelementptr inbounds %struct.output_buffer, ptr %750, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %751)
  br label %1069

752:                                              ; preds = %728
  switch i32 %439, label %1069 [
    i32 0, label %753
    i32 1, label %776
    i32 2, label %799
  ]

753:                                              ; preds = %752
  %754 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %755 = load ptr, ptr %0, align 8, !tbaa !75
  %756 = getelementptr inbounds %struct.output_buffer, ptr %755, i64 0, i32 6
  %757 = load ptr, ptr %754, align 8, !tbaa !122
  %758 = load i32, ptr %757, align 8
  %759 = icmp ult i32 %758, 41
  br i1 %759, label %760, label %766

760:                                              ; preds = %753
  %761 = getelementptr inbounds %struct.__va_list_tag, ptr %757, i64 0, i32 3
  %762 = load ptr, ptr %761, align 8
  %763 = zext nneg i32 %758 to i64
  %764 = getelementptr i8, ptr %762, i64 %763
  %765 = add nuw nsw i32 %758, 8
  store i32 %765, ptr %757, align 8
  br label %770

766:                                              ; preds = %753
  %767 = getelementptr inbounds %struct.__va_list_tag, ptr %757, i64 0, i32 2
  %768 = load ptr, ptr %767, align 8
  %769 = getelementptr i8, ptr %768, i64 8
  store ptr %769, ptr %767, align 8
  br label %770

770:                                              ; preds = %766, %760
  %771 = phi ptr [ %764, %760 ], [ %768, %766 ]
  %772 = load i32, ptr %771, align 4
  %773 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %756, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %772)
  %774 = load ptr, ptr %0, align 8, !tbaa !75
  %775 = getelementptr inbounds %struct.output_buffer, ptr %774, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %775)
  br label %1069

776:                                              ; preds = %752
  %777 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %778 = load ptr, ptr %0, align 8, !tbaa !75
  %779 = getelementptr inbounds %struct.output_buffer, ptr %778, i64 0, i32 6
  %780 = load ptr, ptr %777, align 8, !tbaa !122
  %781 = load i32, ptr %780, align 8
  %782 = icmp ult i32 %781, 41
  br i1 %782, label %783, label %789

783:                                              ; preds = %776
  %784 = getelementptr inbounds %struct.__va_list_tag, ptr %780, i64 0, i32 3
  %785 = load ptr, ptr %784, align 8
  %786 = zext nneg i32 %781 to i64
  %787 = getelementptr i8, ptr %785, i64 %786
  %788 = add nuw nsw i32 %781, 8
  store i32 %788, ptr %780, align 8
  br label %793

789:                                              ; preds = %776
  %790 = getelementptr inbounds %struct.__va_list_tag, ptr %780, i64 0, i32 2
  %791 = load ptr, ptr %790, align 8
  %792 = getelementptr i8, ptr %791, i64 8
  store ptr %792, ptr %790, align 8
  br label %793

793:                                              ; preds = %789, %783
  %794 = phi ptr [ %787, %783 ], [ %791, %789 ]
  %795 = load i64, ptr %794, align 8
  %796 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %779, ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %795)
  %797 = load ptr, ptr %0, align 8, !tbaa !75
  %798 = getelementptr inbounds %struct.output_buffer, ptr %797, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %798)
  br label %1069

799:                                              ; preds = %752
  %800 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %801 = load ptr, ptr %0, align 8, !tbaa !75
  %802 = getelementptr inbounds %struct.output_buffer, ptr %801, i64 0, i32 6
  %803 = load ptr, ptr %800, align 8, !tbaa !122
  %804 = load i32, ptr %803, align 8
  %805 = icmp ult i32 %804, 41
  br i1 %805, label %806, label %812

806:                                              ; preds = %799
  %807 = getelementptr inbounds %struct.__va_list_tag, ptr %803, i64 0, i32 3
  %808 = load ptr, ptr %807, align 8
  %809 = zext nneg i32 %804 to i64
  %810 = getelementptr i8, ptr %808, i64 %809
  %811 = add nuw nsw i32 %804, 8
  store i32 %811, ptr %803, align 8
  br label %816

812:                                              ; preds = %799
  %813 = getelementptr inbounds %struct.__va_list_tag, ptr %803, i64 0, i32 2
  %814 = load ptr, ptr %813, align 8
  %815 = getelementptr i8, ptr %814, i64 8
  store ptr %815, ptr %813, align 8
  br label %816

816:                                              ; preds = %812, %806
  %817 = phi ptr [ %810, %806 ], [ %814, %812 ]
  %818 = load i64, ptr %817, align 8
  %819 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %802, ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %818)
  %820 = load ptr, ptr %0, align 8, !tbaa !75
  %821 = getelementptr inbounds %struct.output_buffer, ptr %820, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %821)
  br label %1069

822:                                              ; preds = %479
  br i1 %471, label %846, label %823

823:                                              ; preds = %822
  %824 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %825 = load ptr, ptr %0, align 8, !tbaa !75
  %826 = getelementptr inbounds %struct.output_buffer, ptr %825, i64 0, i32 6
  %827 = load ptr, ptr %824, align 8, !tbaa !122
  %828 = load i32, ptr %827, align 8
  %829 = icmp ult i32 %828, 41
  br i1 %829, label %830, label %836

830:                                              ; preds = %823
  %831 = getelementptr inbounds %struct.__va_list_tag, ptr %827, i64 0, i32 3
  %832 = load ptr, ptr %831, align 8
  %833 = zext nneg i32 %828 to i64
  %834 = getelementptr i8, ptr %832, i64 %833
  %835 = add nuw nsw i32 %828, 8
  store i32 %835, ptr %827, align 8
  br label %840

836:                                              ; preds = %823
  %837 = getelementptr inbounds %struct.__va_list_tag, ptr %827, i64 0, i32 2
  %838 = load ptr, ptr %837, align 8
  %839 = getelementptr i8, ptr %838, i64 8
  store ptr %839, ptr %837, align 8
  br label %840

840:                                              ; preds = %836, %830
  %841 = phi ptr [ %834, %830 ], [ %838, %836 ]
  %842 = load i64, ptr %841, align 8
  %843 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %826, ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %842)
  %844 = load ptr, ptr %0, align 8, !tbaa !75
  %845 = getelementptr inbounds %struct.output_buffer, ptr %844, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %845)
  br label %1069

846:                                              ; preds = %822
  switch i32 %439, label %1069 [
    i32 0, label %847
    i32 1, label %870
    i32 2, label %893
  ]

847:                                              ; preds = %846
  %848 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %849 = load ptr, ptr %0, align 8, !tbaa !75
  %850 = getelementptr inbounds %struct.output_buffer, ptr %849, i64 0, i32 6
  %851 = load ptr, ptr %848, align 8, !tbaa !122
  %852 = load i32, ptr %851, align 8
  %853 = icmp ult i32 %852, 41
  br i1 %853, label %854, label %860

854:                                              ; preds = %847
  %855 = getelementptr inbounds %struct.__va_list_tag, ptr %851, i64 0, i32 3
  %856 = load ptr, ptr %855, align 8
  %857 = zext nneg i32 %852 to i64
  %858 = getelementptr i8, ptr %856, i64 %857
  %859 = add nuw nsw i32 %852, 8
  store i32 %859, ptr %851, align 8
  br label %864

860:                                              ; preds = %847
  %861 = getelementptr inbounds %struct.__va_list_tag, ptr %851, i64 0, i32 2
  %862 = load ptr, ptr %861, align 8
  %863 = getelementptr i8, ptr %862, i64 8
  store ptr %863, ptr %861, align 8
  br label %864

864:                                              ; preds = %860, %854
  %865 = phi ptr [ %858, %854 ], [ %862, %860 ]
  %866 = load i32, ptr %865, align 4
  %867 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %850, ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %866)
  %868 = load ptr, ptr %0, align 8, !tbaa !75
  %869 = getelementptr inbounds %struct.output_buffer, ptr %868, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %869)
  br label %1069

870:                                              ; preds = %846
  %871 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %872 = load ptr, ptr %0, align 8, !tbaa !75
  %873 = getelementptr inbounds %struct.output_buffer, ptr %872, i64 0, i32 6
  %874 = load ptr, ptr %871, align 8, !tbaa !122
  %875 = load i32, ptr %874, align 8
  %876 = icmp ult i32 %875, 41
  br i1 %876, label %877, label %883

877:                                              ; preds = %870
  %878 = getelementptr inbounds %struct.__va_list_tag, ptr %874, i64 0, i32 3
  %879 = load ptr, ptr %878, align 8
  %880 = zext nneg i32 %875 to i64
  %881 = getelementptr i8, ptr %879, i64 %880
  %882 = add nuw nsw i32 %875, 8
  store i32 %882, ptr %874, align 8
  br label %887

883:                                              ; preds = %870
  %884 = getelementptr inbounds %struct.__va_list_tag, ptr %874, i64 0, i32 2
  %885 = load ptr, ptr %884, align 8
  %886 = getelementptr i8, ptr %885, i64 8
  store ptr %886, ptr %884, align 8
  br label %887

887:                                              ; preds = %883, %877
  %888 = phi ptr [ %881, %877 ], [ %885, %883 ]
  %889 = load i64, ptr %888, align 8
  %890 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %873, ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %889)
  %891 = load ptr, ptr %0, align 8, !tbaa !75
  %892 = getelementptr inbounds %struct.output_buffer, ptr %891, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %892)
  br label %1069

893:                                              ; preds = %846
  %894 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %895 = load ptr, ptr %0, align 8, !tbaa !75
  %896 = getelementptr inbounds %struct.output_buffer, ptr %895, i64 0, i32 6
  %897 = load ptr, ptr %894, align 8, !tbaa !122
  %898 = load i32, ptr %897, align 8
  %899 = icmp ult i32 %898, 41
  br i1 %899, label %900, label %906

900:                                              ; preds = %893
  %901 = getelementptr inbounds %struct.__va_list_tag, ptr %897, i64 0, i32 3
  %902 = load ptr, ptr %901, align 8
  %903 = zext nneg i32 %898 to i64
  %904 = getelementptr i8, ptr %902, i64 %903
  %905 = add nuw nsw i32 %898, 8
  store i32 %905, ptr %897, align 8
  br label %910

906:                                              ; preds = %893
  %907 = getelementptr inbounds %struct.__va_list_tag, ptr %897, i64 0, i32 2
  %908 = load ptr, ptr %907, align 8
  %909 = getelementptr i8, ptr %908, i64 8
  store ptr %909, ptr %907, align 8
  br label %910

910:                                              ; preds = %906, %900
  %911 = phi ptr [ %904, %900 ], [ %908, %906 ]
  %912 = load i64, ptr %911, align 8
  %913 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %896, ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %912)
  %914 = load ptr, ptr %0, align 8, !tbaa !75
  %915 = getelementptr inbounds %struct.output_buffer, ptr %914, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %915)
  br label %1069

916:                                              ; preds = %479
  %917 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %918 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  %919 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 4
  %920 = load ptr, ptr %917, align 8, !tbaa !122
  %921 = load i32, ptr %920, align 8
  %922 = icmp ult i32 %921, 41
  br i1 %922, label %923, label %929

923:                                              ; preds = %916
  %924 = getelementptr inbounds %struct.__va_list_tag, ptr %920, i64 0, i32 3
  %925 = load ptr, ptr %924, align 8
  %926 = zext nneg i32 %921 to i64
  %927 = getelementptr i8, ptr %925, i64 %926
  %928 = add nuw nsw i32 %921, 8
  store i32 %928, ptr %920, align 8
  br label %933

929:                                              ; preds = %916
  %930 = getelementptr inbounds %struct.__va_list_tag, ptr %920, i64 0, i32 2
  %931 = load ptr, ptr %930, align 8
  %932 = getelementptr i8, ptr %931, i64 8
  store ptr %932, ptr %930, align 8
  br label %933

933:                                              ; preds = %929, %923
  %934 = phi ptr [ %927, %923 ], [ %931, %929 ]
  %935 = load ptr, ptr %934, align 8
  %936 = load ptr, ptr %918, align 8, !tbaa !123
  %937 = icmp eq ptr %936, null
  br i1 %937, label %938, label %939

938:                                              ; preds = %933
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 480, ptr noundef nonnull @.str.1) #20
  br label %939

939:                                              ; preds = %933, %938
  %940 = load i64, ptr %935, align 8
  %941 = and i64 %940, 65535
  %942 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %941
  %943 = load i32, ptr %942, align 4, !tbaa !71
  %944 = add i32 %943, -4
  %945 = icmp ult i32 %944, 7
  br i1 %945, label %946, label %949

946:                                              ; preds = %939
  %947 = getelementptr inbounds %struct.tree_exp, ptr %935, i64 0, i32 1
  %948 = load i32, ptr %947, align 8, !tbaa !67
  br label %949

949:                                              ; preds = %939, %946
  %950 = phi i32 [ %948, %946 ], [ 0, %939 ]
  %951 = load ptr, ptr %918, align 8, !tbaa !123
  store i32 %950, ptr %951, align 4, !tbaa !71
  %952 = load ptr, ptr %919, align 8, !tbaa !124
  %953 = icmp eq ptr %952, null
  br i1 %953, label %954, label %955

954:                                              ; preds = %949
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 482, ptr noundef nonnull @.str.1) #20
  br label %955

955:                                              ; preds = %949, %954
  %956 = tail call ptr @tree_block(ptr noundef nonnull %935) #20
  %957 = load ptr, ptr %956, align 8, !tbaa !56
  %958 = load ptr, ptr %919, align 8, !tbaa !124
  store ptr null, ptr %958, align 8, !tbaa !56
  br label %959

959:                                              ; preds = %988, %955
  %960 = phi ptr [ %957, %955 ], [ %989, %988 ]
  %961 = icmp eq ptr %960, null
  br i1 %961, label %1069, label %962

962:                                              ; preds = %959
  %963 = load i64, ptr %960, align 8
  %964 = and i64 %963, 65535
  %965 = icmp eq i64 %964, 4
  br i1 %965, label %966, label %1069

966:                                              ; preds = %962
  %967 = getelementptr inbounds %struct.tree_block, ptr %960, i64 0, i32 7
  %968 = load ptr, ptr %967, align 8, !tbaa !67
  %969 = icmp eq ptr %968, null
  br i1 %969, label %1069, label %970

970:                                              ; preds = %966, %975
  %971 = phi ptr [ %977, %975 ], [ %968, %966 ]
  %972 = load i64, ptr %971, align 8
  %973 = and i64 %972, 65535
  %974 = icmp eq i64 %973, 4
  br i1 %974, label %975, label %981

975:                                              ; preds = %970
  %976 = getelementptr inbounds %struct.tree_block, ptr %971, i64 0, i32 7
  %977 = load ptr, ptr %976, align 8, !tbaa !67
  %978 = icmp eq ptr %977, null
  %979 = icmp eq ptr %977, %971
  %980 = or i1 %978, %979
  br i1 %980, label %981, label %970, !llvm.loop !125

981:                                              ; preds = %975, %970
  %982 = icmp eq i64 %973, 29
  br i1 %982, label %983, label %985

983:                                              ; preds = %981
  %984 = load ptr, ptr %919, align 8, !tbaa !124
  store ptr %960, ptr %984, align 8, !tbaa !56
  br label %988

985:                                              ; preds = %981
  %986 = getelementptr inbounds %struct.tree_block, ptr %960, i64 0, i32 6
  %987 = load ptr, ptr %986, align 8, !tbaa !67
  br label %988

988:                                              ; preds = %985, %983
  %989 = phi ptr [ %960, %983 ], [ %987, %985 ]
  br i1 %982, label %1069, label %959

990:                                              ; preds = %479
  %991 = getelementptr inbounds i8, ptr %444, i64 1
  %992 = load i8, ptr %991, align 1, !tbaa !67
  %993 = zext i8 %992 to i64
  %994 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %993
  %995 = load i16, ptr %994, align 2, !tbaa !95
  %996 = and i16 %995, 4
  %997 = icmp eq i16 %996, 0
  br i1 %997, label %1006, label %998

998:                                              ; preds = %990
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %999 = call i64 @strtoul(ptr noundef nonnull %991, ptr noundef nonnull %6, i32 noundef 10)
  %1000 = trunc i64 %999 to i32
  %1001 = load ptr, ptr %6, align 8, !tbaa !56
  %1002 = load i8, ptr %1001, align 1, !tbaa !67
  %1003 = icmp eq i8 %1002, 115
  br i1 %1003, label %1005, label %1004

1004:                                             ; preds = %998
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 520, ptr noundef nonnull @.str.1) #20
  br label %1005

1005:                                             ; preds = %998, %1004
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br label %1038

1006:                                             ; preds = %990
  %1007 = icmp eq i8 %992, 42
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1006
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 524, ptr noundef nonnull @.str.1) #20
  br label %1009

1009:                                             ; preds = %1006, %1008
  %1010 = getelementptr inbounds i8, ptr %444, i64 2
  %1011 = load i8, ptr %1010, align 1, !tbaa !67
  %1012 = icmp eq i8 %1011, 115
  br i1 %1012, label %1014, label %1013

1013:                                             ; preds = %1009
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 526, ptr noundef nonnull @.str.1) #20
  br label %1014

1014:                                             ; preds = %1009, %1013
  %1015 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !122
  %1017 = load i32, ptr %1016, align 8
  %1018 = icmp ult i32 %1017, 41
  br i1 %1018, label %1019, label %1025

1019:                                             ; preds = %1014
  %1020 = getelementptr inbounds %struct.__va_list_tag, ptr %1016, i64 0, i32 3
  %1021 = load ptr, ptr %1020, align 8
  %1022 = zext nneg i32 %1017 to i64
  %1023 = getelementptr i8, ptr %1021, i64 %1022
  %1024 = add nuw nsw i32 %1017, 8
  store i32 %1024, ptr %1016, align 8
  br label %1029

1025:                                             ; preds = %1014
  %1026 = getelementptr inbounds %struct.__va_list_tag, ptr %1016, i64 0, i32 2
  %1027 = load ptr, ptr %1026, align 8
  %1028 = getelementptr i8, ptr %1027, i64 8
  store ptr %1028, ptr %1026, align 8
  br label %1029

1029:                                             ; preds = %1025, %1019
  %1030 = phi ptr [ %1023, %1019 ], [ %1027, %1025 ]
  %1031 = load i32, ptr %1030, align 4
  %1032 = add i32 %436, 1
  %1033 = zext i32 %1032 to i64
  %1034 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1033
  %1035 = load ptr, ptr %1034, align 8, !tbaa !56
  %1036 = icmp eq ptr %435, %1035
  br i1 %1036, label %1038, label %1037

1037:                                             ; preds = %1029
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 530, ptr noundef nonnull @.str.1) #20
  br label %1038

1038:                                             ; preds = %1037, %1029, %1005
  %1039 = phi i32 [ %436, %1005 ], [ %1032, %1029 ], [ %1032, %1037 ]
  %1040 = phi i32 [ %1000, %1005 ], [ %1031, %1029 ], [ %1031, %1037 ]
  %1041 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %1042 = load ptr, ptr %1041, align 8, !tbaa !122
  %1043 = load i32, ptr %1042, align 8
  %1044 = icmp ult i32 %1043, 41
  br i1 %1044, label %1045, label %1051

1045:                                             ; preds = %1038
  %1046 = getelementptr inbounds %struct.__va_list_tag, ptr %1042, i64 0, i32 3
  %1047 = load ptr, ptr %1046, align 8
  %1048 = zext nneg i32 %1043 to i64
  %1049 = getelementptr i8, ptr %1047, i64 %1048
  %1050 = add nuw nsw i32 %1043, 8
  store i32 %1050, ptr %1042, align 8
  br label %1055

1051:                                             ; preds = %1038
  %1052 = getelementptr inbounds %struct.__va_list_tag, ptr %1042, i64 0, i32 2
  %1053 = load ptr, ptr %1052, align 8
  %1054 = getelementptr i8, ptr %1053, i64 8
  store ptr %1054, ptr %1052, align 8
  br label %1055

1055:                                             ; preds = %1051, %1045
  %1056 = phi ptr [ %1049, %1045 ], [ %1053, %1051 ]
  %1057 = load ptr, ptr %1056, align 8
  %1058 = sext i32 %1040 to i64
  %1059 = getelementptr inbounds i8, ptr %1057, i64 %1058
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %1057, ptr noundef %1059)
  br label %1069

1060:                                             ; preds = %479
  %1061 = load ptr, ptr %433, align 8, !tbaa !126
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1063, label %1064, !prof !85

1063:                                             ; preds = %1060
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 543, ptr noundef nonnull @.str.1) #20
  br label %1064

1064:                                             ; preds = %1060, %1063
  %1065 = load ptr, ptr %433, align 8, !tbaa !126
  %1066 = tail call zeroext i8 %1065(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %444, i32 noundef %439, i8 noundef zeroext %440, i8 noundef zeroext %441, i8 noundef zeroext %442) #20, !prof !127
  %1067 = icmp eq i8 %1066, 0
  br i1 %1067, label %1068, label %1069, !prof !85

1068:                                             ; preds = %1064
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 546, ptr noundef nonnull @.str.1) #20
  br label %1069

1069:                                             ; preds = %988, %966, %959, %962, %1068, %1064, %840, %846, %910, %887, %864, %746, %752, %816, %793, %770, %611, %617, %681, %658, %635, %517, %523, %587, %564, %541, %1055, %722, %702, %496
  %1070 = phi i32 [ %1039, %1055 ], [ %436, %840 ], [ %436, %846 ], [ %436, %910 ], [ %436, %887 ], [ %436, %864 ], [ %436, %746 ], [ %436, %752 ], [ %436, %816 ], [ %436, %793 ], [ %436, %770 ], [ %436, %722 ], [ %436, %702 ], [ %436, %611 ], [ %436, %617 ], [ %436, %681 ], [ %436, %658 ], [ %436, %635 ], [ %436, %517 ], [ %436, %523 ], [ %436, %587 ], [ %436, %564 ], [ %436, %541 ], [ %436, %496 ], [ %436, %1064 ], [ %436, %1068 ], [ %436, %962 ], [ %436, %959 ], [ %436, %966 ], [ %436, %988 ]
  br i1 %476, label %1073, label %1071, !prof !85

1071:                                             ; preds = %1069
  %1072 = load ptr, ptr @close_quote, align 8, !tbaa !56
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1072)
  br label %1073

1073:                                             ; preds = %1071, %1069
  %1074 = load ptr, ptr %12, align 8, !tbaa !98
  %1075 = getelementptr inbounds i8, ptr %1074, i64 1
  %1076 = load ptr, ptr %10, align 8, !tbaa !97
  %1077 = icmp ugt ptr %1075, %1076
  br i1 %1077, label %1078, label %1079, !prof !85

1078:                                             ; preds = %1073
  tail call void @_obstack_newchunk(ptr noundef nonnull %8, i32 noundef 1) #20
  br label %1079

1079:                                             ; preds = %1073, %1078
  %1080 = load ptr, ptr %12, align 8, !tbaa !98
  %1081 = getelementptr inbounds i8, ptr %1080, i64 1
  store ptr %1081, ptr %12, align 8, !tbaa !98
  store i8 0, ptr %1080, align 1, !tbaa !67
  %1082 = load ptr, ptr %12, align 8, !tbaa !98
  %1083 = load ptr, ptr %23, align 8, !tbaa !99
  %1084 = icmp eq ptr %1082, %1083
  br i1 %1084, label %1085, label %1089, !prof !85

1085:                                             ; preds = %1079
  %1086 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 1, i32 10
  %1087 = load i8, ptr %1086, align 8
  %1088 = or i8 %1087, 2
  store i8 %1088, ptr %1086, align 8
  br label %1089

1089:                                             ; preds = %1079, %1085
  %1090 = load ptr, ptr %23, align 8, !tbaa !99
  %1091 = ptrtoint ptr %1090 to i64
  store i64 %1091, ptr %9, align 8, !tbaa !96
  %1092 = ptrtoint ptr %1082 to i64
  %1093 = load i32, ptr %34, align 8, !tbaa !100
  %1094 = sext i32 %1093 to i64
  %1095 = add nsw i64 %1094, %1092
  %1096 = xor i32 %1093, -1
  %1097 = sext i32 %1096 to i64
  %1098 = and i64 %1095, %1097
  %1099 = inttoptr i64 %1098 to ptr
  store ptr %1099, ptr %12, align 8, !tbaa !98
  %1100 = load ptr, ptr %42, align 8, !tbaa !101
  %1101 = ptrtoint ptr %1100 to i64
  %1102 = sub i64 %1098, %1101
  %1103 = load ptr, ptr %10, align 8, !tbaa !97
  %1104 = ptrtoint ptr %1103 to i64
  %1105 = sub i64 %1104, %1101
  %1106 = icmp sgt i64 %1102, %1105
  %1107 = select i1 %1106, ptr %1103, ptr %1099, !prof !85
  store ptr %1107, ptr %12, align 8
  store ptr %1107, ptr %23, align 8, !tbaa !99
  %1108 = zext i32 %1070 to i64
  %1109 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1108
  %1110 = load ptr, ptr %1109, align 8, !tbaa !56
  store ptr %1090, ptr %1110, align 8, !tbaa !56
  %1111 = add i32 %1070, 1
  %1112 = zext i32 %1111 to i64
  %1113 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %1112
  %1114 = load ptr, ptr %1113, align 8, !tbaa !56
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1116, label %434, !prof !128, !llvm.loop !129

1116:                                             ; preds = %1089, %402
  store ptr %7, ptr %426, align 8, !tbaa !82
  %1117 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 5
  store i32 0, ptr %1117, align 8, !tbaa !90
  store i64 %428, ptr %427, align 4, !tbaa.struct !116
  %1118 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %1118, align 8, !tbaa !130
  %1119 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %1119, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #20
  ret void
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare ptr @xstrerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !131 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !132

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %5, %4 ], [ 0, %2 ]
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !93
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %111, !prof !132

12:                                               ; preds = %6
  %13 = icmp eq i64 %7, 0
  br i1 %13, label %112, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %108
  %17 = phi ptr [ %1, %14 ], [ %109, %108 ]
  %18 = load i8, ptr %17, align 1, !tbaa !67
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !95
  %22 = and i16 %21, 1
  %23 = icmp ne i16 %22, 0
  %24 = icmp eq i8 %18, 10
  %25 = or i1 %24, %23
  br i1 %25, label %39, label %35

26:                                               ; preds = %35
  %27 = load i8, ptr %37, align 1, !tbaa !67
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !95
  %31 = and i16 %30, 1
  %32 = icmp ne i16 %31, 0
  %33 = icmp eq i8 %27, 10
  %34 = or i1 %33, %32
  br i1 %34, label %39, label %35, !llvm.loop !133

35:                                               ; preds = %16, %26
  %36 = phi ptr [ %37, %26 ], [ %17, %16 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = icmp eq ptr %37, %8
  br i1 %38, label %39, label %26, !llvm.loop !133

39:                                               ; preds = %35, %26, %16
  %40 = phi ptr [ %17, %16 ], [ %37, %26 ], [ %37, %35 ]
  %41 = phi i1 [ false, %16 ], [ %38, %26 ], [ %38, %35 ]
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %17 to i64
  %44 = sub i64 %42, %43
  %45 = load i32, ptr %15, align 4, !tbaa !94
  %46 = load ptr, ptr %0, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.output_buffer, ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !90
  %49 = sub nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %44, %50
  br i1 %51, label %71, label %52

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.output_buffer, ptr %46, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !82
  %55 = getelementptr inbounds %struct.obstack, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !83
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  %58 = getelementptr inbounds %struct.obstack, ptr %54, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !84
  %60 = icmp ugt ptr %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  tail call void @_obstack_newchunk(ptr noundef %54, i32 noundef 1) #20
  br label %62

62:                                               ; preds = %61, %52
  %63 = load ptr, ptr %0, align 8, !tbaa !75
  %64 = getelementptr inbounds %struct.output_buffer, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !82
  %66 = getelementptr inbounds %struct.obstack, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !83
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %68, ptr %66, align 8, !tbaa !83
  store i8 10, ptr %67, align 1, !tbaa !67
  %69 = load ptr, ptr %0, align 8, !tbaa !75
  %70 = getelementptr inbounds %struct.output_buffer, ptr %69, i64 0, i32 5
  store i32 0, ptr %70, align 8, !tbaa !90
  br label %71

71:                                               ; preds = %62, %39
  tail call void @pp_base_append_text(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %40)
  br i1 %41, label %81, label %72

72:                                               ; preds = %71
  %73 = load i8, ptr %40, align 1, !tbaa !67
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !95
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  tail call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 32)
  %80 = getelementptr inbounds i8, ptr %40, i64 1
  br label %81

81:                                               ; preds = %79, %72, %71
  %82 = phi ptr [ %80, %79 ], [ %40, %72 ], [ %40, %71 ]
  %83 = icmp eq ptr %82, %8
  br i1 %83, label %108, label %84

84:                                               ; preds = %81
  %85 = load i8, ptr %82, align 1, !tbaa !67
  %86 = icmp eq i8 %85, 10
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load ptr, ptr %0, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.output_buffer, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !82
  %91 = getelementptr inbounds %struct.obstack, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !83
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = getelementptr inbounds %struct.obstack, ptr %90, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !84
  %96 = icmp ugt ptr %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  tail call void @_obstack_newchunk(ptr noundef %90, i32 noundef 1) #20
  br label %98

98:                                               ; preds = %97, %87
  %99 = load ptr, ptr %0, align 8, !tbaa !75
  %100 = getelementptr inbounds %struct.output_buffer, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !82
  %102 = getelementptr inbounds %struct.obstack, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !83
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %104, ptr %102, align 8, !tbaa !83
  store i8 10, ptr %103, align 1, !tbaa !67
  %105 = load ptr, ptr %0, align 8, !tbaa !75
  %106 = getelementptr inbounds %struct.output_buffer, ptr %105, i64 0, i32 5
  store i32 0, ptr %106, align 8, !tbaa !90
  %107 = getelementptr inbounds i8, ptr %82, i64 1
  br label %108

108:                                              ; preds = %98, %84, %81
  %109 = phi ptr [ %107, %98 ], [ %82, %84 ], [ %82, %81 ]
  %110 = icmp eq ptr %109, %8
  br i1 %110, label %112, label %16, !llvm.loop !134

111:                                              ; preds = %6
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %1, ptr noundef %8)
  br label %112

112:                                              ; preds = %108, %12, %111
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_append_text(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !131 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = load ptr, ptr %0, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.output_buffer, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !90
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26, !prof !135

10:                                               ; preds = %3
  tail call void @pp_base_emit_prefix(ptr noundef nonnull %0)
  %11 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !93
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %26, !prof !136

14:                                               ; preds = %10
  %15 = icmp eq ptr %1, %2
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = sub i64 %5, %4
  %18 = getelementptr i8, ptr %1, i64 %17
  br label %19

19:                                               ; preds = %16, %23
  %20 = phi ptr [ %24, %23 ], [ %1, %16 ]
  %21 = load i8, ptr %20, align 1, !tbaa !67
  %22 = icmp eq i8 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %19, !llvm.loop !137

26:                                               ; preds = %19, %23, %14, %10, %3
  %27 = phi ptr [ %1, %10 ], [ %1, %3 ], [ %1, %14 ], [ %18, %23 ], [ %20, %19 ]
  %28 = ptrtoint ptr %2 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = shl i64 %30, 32
  %33 = ashr exact i64 %32, 32
  %34 = load ptr, ptr %0, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.output_buffer, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  %37 = getelementptr inbounds %struct.obstack, ptr %36, i64 0, i32 5
  store i64 %33, ptr %37, align 8, !tbaa !88
  %38 = getelementptr inbounds %struct.obstack, ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !83
  %40 = getelementptr inbounds i8, ptr %39, i64 %33
  %41 = getelementptr inbounds %struct.obstack, ptr %36, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !84
  %43 = icmp ugt ptr %40, %42
  br i1 %43, label %44, label %45, !prof !132

44:                                               ; preds = %26
  tail call void @_obstack_newchunk(ptr noundef %36, i32 noundef %31) #20
  br label %45

45:                                               ; preds = %26, %44
  %46 = load ptr, ptr %0, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.output_buffer, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.obstack, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = getelementptr inbounds %struct.obstack, ptr %48, i64 0, i32 5
  %52 = load i64, ptr %51, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %27, i64 %52, i1 false), !prof !138
  %53 = load ptr, ptr %0, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.output_buffer, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !82
  %56 = getelementptr inbounds %struct.obstack, ptr %55, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !88
  %58 = getelementptr inbounds %struct.obstack, ptr %55, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !83
  %60 = getelementptr inbounds i8, ptr %59, i64 %57
  store ptr %60, ptr %58, align 8, !tbaa !83
  %61 = getelementptr inbounds %struct.output_buffer, ptr %53, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !90
  %63 = add nsw i32 %62, %31
  store i32 %63, ptr %61, align 8, !tbaa !90
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_output_formatted_text(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.chunk_info, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9, !prof !89

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !90
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !89

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 579, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load ptr, ptr %5, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !118

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %15 ]
  %20 = phi i32 [ %21, %18 ], [ 0, %15 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %19)
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %5, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !139, !llvm.loop !140

26:                                               ; preds = %18, %15
  %27 = load ptr, ptr %4, align 8, !tbaa !103
  store ptr %27, ptr %3, align 8, !tbaa !102
  %28 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1
  %29 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = ptrtoint ptr %4 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !96
  %35 = icmp sgt i64 %33, 0
  br i1 %35, label %36, label %46, !prof !89

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !97
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %39, %32
  %41 = icmp slt i64 %33, %40
  br i1 %41, label %42, label %46, !prof !89

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %30, i64 %33
  %44 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !99
  %45 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 1, i32 3
  store ptr %43, ptr %45, align 8, !tbaa !98
  br label %48

46:                                               ; preds = %36, %26
  %47 = getelementptr inbounds i8, ptr %30, i64 %33
  tail call void @obstack_free(ptr noundef nonnull %28, ptr noundef %47) #20
  br label %48

48:                                               ; preds = %46, %42
  ret void
}

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_format_verbatim(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !55 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 4, !tbaa.struct !116
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %5, align 4, !tbaa !93
  store i32 1, ptr %3, align 4, !tbaa !117
  tail call void @pp_base_format(ptr noundef %0, ptr noundef %1)
  tail call void @pp_base_output_formatted_text(ptr noundef %0)
  store i64 %4, ptr %3, align 4, !tbaa.struct !116
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_flush(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !81 {
  %2 = tail call ptr @pp_base_formatted_text(ptr noundef %0)
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = tail call i32 @fputs(ptr noundef %2, ptr noundef %5)
  tail call void @pp_base_clear_output_area(ptr noundef nonnull %0)
  %7 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %7, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !91
  %9 = load ptr, ptr %0, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = tail call i32 @fputc(i32 noundef 10, ptr noundef %11)
  %13 = load ptr, ptr %0, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.output_buffer, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = tail call i32 @fflush(ptr noundef %15)
  %17 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 8
  store i8 0, ptr %17, align 1, !tbaa !141
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_line_maximum_length(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !55 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !93
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0)
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pp_set_real_maximum_length(ptr nocapture noundef %0) unnamed_addr #14 !prof !142 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !93
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22, !prof !136

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !117
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11)
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %9 ]
  %18 = sub nsw i32 %3, %17
  %19 = icmp slt i32 %18, 32
  %20 = add nuw nsw i32 %3, 32
  %21 = select i1 %19, i32 %20, i32 %3
  br label %22

22:                                               ; preds = %16, %1, %5
  %23 = phi i32 [ %3, %5 ], [ %3, %1 ], [ %21, %16 ]
  %24 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !94
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @pp_base_set_prefix(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !81 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !144
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef %0)
  %4 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !91
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @pp_base_destroy_prefix(ptr nocapture noundef %0) local_unnamed_addr #15 !prof !81 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !85

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  store ptr null, ptr %2, align 8, !tbaa !144
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #16

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_emit_prefix(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !142 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5, !prof !145

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !117
  switch i32 %7, label %58 [
    i32 2, label %22
    i32 0, label %8
  ], !prof !146

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !130
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !91
  br i1 %11, label %20, label %14, !prof !89

14:                                               ; preds = %8
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %18, %16 ], [ 0, %14 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32)
  %18 = add nuw nsw i32 %17, 1
  %19 = icmp eq i32 %18, %13
  br i1 %19, label %58, label %16, !llvm.loop !92

20:                                               ; preds = %8
  %21 = add nsw i32 %13, 3
  store i32 %21, ptr %12, align 8, !tbaa !91
  br label %22

22:                                               ; preds = %5, %20
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %24 = trunc i64 %23 to i32
  %25 = shl i64 %23, 32
  %26 = ashr exact i64 %25, 32
  %27 = load ptr, ptr %0, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  %30 = getelementptr inbounds %struct.obstack, ptr %29, i64 0, i32 5
  store i64 %26, ptr %30, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.obstack, ptr %29, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = getelementptr inbounds i8, ptr %32, i64 %26
  %34 = getelementptr inbounds %struct.obstack, ptr %29, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  %36 = icmp ugt ptr %33, %35
  br i1 %36, label %37, label %38, !prof !85

37:                                               ; preds = %22
  tail call void @_obstack_newchunk(ptr noundef %29, i32 noundef %24) #20
  br label %38

38:                                               ; preds = %22, %37
  %39 = load ptr, ptr %0, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.output_buffer, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  %42 = getelementptr inbounds %struct.obstack, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.obstack, ptr %41, i64 0, i32 5
  %45 = load i64, ptr %44, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr nonnull align 1 %3, i64 %45, i1 false), !prof !147
  %46 = load ptr, ptr %0, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.output_buffer, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.obstack, ptr %48, i64 0, i32 5
  %50 = load i64, ptr %49, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.obstack, ptr %48, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !83
  %53 = getelementptr inbounds i8, ptr %52, i64 %50
  store ptr %53, ptr %51, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.output_buffer, ptr %46, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !90
  %56 = add nsw i32 %55, %24
  store i32 %56, ptr %54, align 8, !tbaa !90
  %57 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 1, ptr %57, align 8, !tbaa !130
  br label %58

58:                                               ; preds = %16, %14, %38, %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_construct(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !81 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 336) #20
  store ptr %4, ptr %0, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 1
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  %7 = load ptr, ptr %0, align 8, !tbaa !75
  %8 = tail call i32 @_obstack_begin(ptr noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  %9 = load ptr, ptr %0, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !82
  %11 = load ptr, ptr @stderr, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 %2, ptr %14, align 4, !tbaa !93
  store i32 0, ptr %13, align 4, !tbaa !117
  %15 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !144
  tail call fastcc void @pp_set_real_maximum_length(ptr noundef nonnull %0)
  %16 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 7
  store i8 0, ptr %16, align 8, !tbaa !130
  %17 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 4
  store i32 0, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  store i8 1, ptr %18, align 2, !tbaa !148
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @pp_base_last_position_in_text(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = icmp eq ptr %6, %8
  %10 = getelementptr inbounds i8, ptr %8, i64 -1
  %11 = select i1 %9, ptr null, ptr %10
  ret ptr %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pp_base_remaining_character_count_for_line(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !55 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = load ptr, ptr %0, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.output_buffer, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !90
  %7 = sub nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_printf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #9 !prof !55 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #20
  %6 = load i32, ptr %5, align 4, !tbaa !71
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !122
  store ptr %1, ptr %3, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !123
  call void @pp_base_format(ptr noundef %0, ptr noundef nonnull %3)
  call void @pp_base_output_formatted_text(ptr noundef %0)
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_verbatim(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #9 !prof !55 {
  %3 = alloca %struct.text_info, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__errno_location() #20
  %6 = load i32, ptr %5, align 4, !tbaa !71
  %7 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !122
  store ptr %1, ptr %3, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.text_info, ptr %3, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 4, !tbaa.struct !116
  %12 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %12, align 4, !tbaa !93
  store i32 1, ptr %10, align 4, !tbaa !117
  call void @pp_base_format(ptr noundef %0, ptr noundef nonnull %3)
  call void @pp_base_output_formatted_text(ptr noundef %0)
  store i64 %11, ptr %10, align 4, !tbaa.struct !116
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_newline(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.output_buffer, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = getelementptr inbounds %struct.obstack, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp ugt ptr %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef %4, i32 noundef 1) #20
  br label %12

12:                                               ; preds = %1, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.output_buffer, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.obstack, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %18, ptr %16, align 8, !tbaa !83
  store i8 10, ptr %17, align 1, !tbaa !67
  %19 = load ptr, ptr %0, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.output_buffer, ptr %19, i64 0, i32 5
  store i32 0, ptr %20, align 8, !tbaa !90
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_maybe_space(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !55 {
  %2 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !149
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32)
  store i32 0, ptr %2, align 8, !tbaa !149
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pp_base_tree_identifier(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !55 {
  %3 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !148
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  br i1 %5, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @identifier_to_locale(ptr noundef %7)
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9)
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %9, ptr noundef %11)
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !67
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %7, i64 %15
  tail call void @pp_base_append_text(ptr noundef %0, ptr noundef %7, ptr noundef %16)
  br label %17

17:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @identifier_to_locale(ptr noundef readonly %0) local_unnamed_addr #10 !prof !150 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi i64 [ 0, %1 ], [ %25, %10 ]
  %7 = phi i8 [ 1, %1 ], [ %26, %10 ]
  %8 = phi i8 [ 1, %1 ], [ %27, %10 ]
  %9 = icmp ult i64 %6, %4
  br i1 %9, label %10, label %28, !prof !151

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %11 = getelementptr inbounds i8, ptr %0, i64 %6
  %12 = sub i64 %4, %6
  %13 = call fastcc i32 @decode_utf8_char(ptr noundef %11, i64 noundef %12, ptr noundef nonnull %2)
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr %2, align 4
  %16 = icmp ult i32 %15, 32
  %17 = select i1 %14, i1 true, i1 %16, !prof !152
  %18 = add i32 %15, -127
  %19 = icmp ult i32 %18, 33
  %20 = select i1 %17, i1 true, i1 %19, !prof !152
  %21 = sext i32 %13 to i64
  %22 = icmp ugt i32 %13, 1
  %23 = select i1 %22, i8 0, i8 %7
  %24 = select i1 %20, i64 0, i64 %21, !prof !152
  %25 = add i64 %24, %6
  %26 = select i1 %20, i8 %7, i8 %23, !prof !152
  %27 = select i1 %20, i8 0, i8 %8, !prof !152
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br i1 %20, label %28, label %5, !prof !152

28:                                               ; preds = %10, %5
  %29 = phi i8 [ %7, %5 ], [ %26, %10 ]
  %30 = phi i8 [ %8, %5 ], [ %27, %10 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %54, !prof !153

32:                                               ; preds = %28
  %33 = shl i64 %4, 2
  %34 = or disjoint i64 %33, 1
  %35 = tail call ptr @ggc_alloc_stat(i64 noundef %34) #20
  %36 = icmp eq i64 %4, 0
  br i1 %36, label %83, label %37

37:                                               ; preds = %32, %50
  %38 = phi ptr [ %51, %50 ], [ %35, %32 ]
  %39 = phi i64 [ %52, %50 ], [ 0, %32 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !67
  %42 = add i8 %41, -32
  %43 = icmp ult i8 %42, 95
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %41, ptr %38, align 1, !tbaa !67
  br label %50

46:                                               ; preds = %37
  %47 = zext i8 %41 to i32
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %47)
  %49 = getelementptr inbounds i8, ptr %38, i64 4
  br label %50

50:                                               ; preds = %44, %46
  %51 = phi ptr [ %45, %44 ], [ %49, %46 ]
  %52 = add nuw i64 %39, 1
  %53 = icmp eq i64 %52, %4
  br i1 %53, label %83, label %37, !llvm.loop !154

54:                                               ; preds = %28
  %55 = icmp ne i8 %29, 0
  %56 = load i8, ptr @locale_utf8, align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 true, i1 %57, !prof !155
  br i1 %58, label %86, label %59, !prof !155

59:                                               ; preds = %54
  %60 = mul i64 %4, 10
  %61 = or disjoint i64 %60, 1
  %62 = tail call ptr @ggc_alloc_stat(i64 noundef %61) #20
  %63 = icmp eq i64 %4, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %59, %79
  %65 = phi ptr [ %80, %79 ], [ %62, %59 ]
  %66 = phi i64 [ %81, %79 ], [ 0, %59 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %67 = getelementptr inbounds i8, ptr %0, i64 %66
  %68 = sub i64 %4, %66
  %69 = call fastcc i32 @decode_utf8_char(ptr noundef %67, i64 noundef %68, ptr noundef nonnull %3)
  %70 = sext i32 %69 to i64
  %71 = icmp eq i32 %69, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i8, ptr %67, align 1, !tbaa !67
  %74 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %73, ptr %65, align 1, !tbaa !67
  br label %79

75:                                               ; preds = %64
  %76 = load i32, ptr %3, align 4, !tbaa !71
  %77 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %76)
  %78 = getelementptr inbounds i8, ptr %65, i64 10
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi ptr [ %74, %72 ], [ %78, %75 ]
  %81 = add i64 %66, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %82 = icmp ult i64 %81, %4
  br i1 %82, label %64, label %83, !llvm.loop !156

83:                                               ; preds = %79, %50, %59, %32
  %84 = phi ptr [ %35, %32 ], [ %62, %59 ], [ %51, %50 ], [ %80, %79 ]
  %85 = phi ptr [ %35, %32 ], [ %62, %59 ], [ %35, %50 ], [ %62, %79 ]
  store i8 0, ptr %84, align 1, !tbaa !67
  br label %86

86:                                               ; preds = %83, %54
  %87 = phi ptr [ %0, %54 ], [ %85, %83 ]
  ret ptr %87
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_utf8_char(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !157 !PGOFuncName !158 {
  %4 = load i8, ptr %0, align 1, !tbaa !67
  %5 = zext i8 %4 to i32
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %8, !prof !152

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 862, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp sgt i8 %4, -1
  br i1 %9, label %78, label %10, !prof !159

10:                                               ; preds = %8
  %11 = load i8, ptr %0, align 1, !tbaa !67
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i8 %11, -1
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %17, %14 ], [ 0, %10 ]
  %16 = phi i32 [ %18, %14 ], [ %12, %10 ]
  %17 = add i64 %15, 1
  %18 = shl i32 %16, 1
  %19 = and i32 %16, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %14, !llvm.loop !160

21:                                               ; preds = %14, %10
  %22 = phi i64 [ 0, %10 ], [ %17, %14 ]
  %23 = icmp ugt i64 %22, %1
  %24 = add i64 %22, -7
  %25 = icmp ult i64 %24, -5
  %26 = or i1 %23, %25
  br i1 %26, label %78, label %27

27:                                               ; preds = %21
  %28 = trunc i64 %22 to i32
  %29 = sub i32 7, %28
  %30 = shl nsw i32 -1, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %31, %12
  %33 = icmp ugt i64 %22, 1
  br i1 %33, label %37, label %52

34:                                               ; preds = %50
  %35 = add nuw i64 %38, 1
  %36 = icmp eq i64 %35, %22
  br i1 %36, label %52, label %37, !llvm.loop !161

37:                                               ; preds = %27, %34
  %38 = phi i64 [ %35, %34 ], [ 1, %27 ]
  %39 = phi i32 [ %51, %34 ], [ %32, %27 ]
  %40 = getelementptr inbounds i8, ptr %0, i64 %38
  %41 = load i8, ptr %40, align 1, !tbaa !67
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 192
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 -1, ptr %2, align 4, !tbaa !71
  br label %50

46:                                               ; preds = %37
  %47 = shl i32 %39, 6
  %48 = and i32 %42, 63
  %49 = or disjoint i32 %48, %47
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i32 [ %39, %45 ], [ %49, %46 ]
  br i1 %44, label %34, label %81

52:                                               ; preds = %34, %27
  %53 = phi i32 [ %32, %27 ], [ %51, %34 ]
  %54 = icmp ult i32 %53, 128
  %55 = icmp ugt i64 %22, 1
  %56 = and i1 %54, %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %52
  %58 = icmp ult i32 %53, 2048
  %59 = icmp ugt i64 %22, 2
  %60 = and i1 %58, %59
  br i1 %60, label %78, label %61

61:                                               ; preds = %57
  %62 = icmp ult i32 %53, 65536
  %63 = icmp ugt i64 %22, 3
  %64 = and i1 %62, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = icmp ult i32 %53, 2097152
  %67 = icmp ugt i64 %22, 4
  %68 = and i1 %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = icmp ult i32 %53, 67108864
  %71 = icmp ugt i64 %22, 5
  %72 = and i1 %70, %71
  %73 = and i32 %53, -2048
  %74 = icmp eq i32 %73, 55296
  %75 = or i1 %72, %74
  %76 = select i1 %75, i32 -1, i32 %53
  %77 = select i1 %75, i32 0, i32 %28
  br label %78

78:                                               ; preds = %69, %8, %52, %57, %61, %65, %21
  %79 = phi i32 [ -1, %21 ], [ -1, %65 ], [ -1, %61 ], [ -1, %57 ], [ -1, %52 ], [ %5, %8 ], [ %76, %69 ]
  %80 = phi i32 [ 0, %21 ], [ 0, %65 ], [ 0, %61 ], [ 0, %57 ], [ 0, %52 ], [ 1, %8 ], [ %77, %69 ]
  store i32 %79, ptr %2, align 4, !tbaa !71
  br label %81

81:                                               ; preds = %50, %78
  %82 = phi i32 [ %80, %78 ], [ 0, %50 ]
  ret i32 %82
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #19

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!54}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @pp_base_format, ptr @memchr, i64 3}
!36 = !{ptr @pp_base_format, ptr @pp_base_string, i64 2}
!37 = !{ptr @pp_base_string, ptr @strlen, i64 5}
!38 = !{ptr @pp_base_string, ptr @pp_base_append_text, i64 5}
!39 = !{ptr @pp_base_append_text, ptr @pp_base_emit_prefix, i64 2}
!40 = !{ptr @pp_base_output_formatted_text, ptr @pp_base_string, i64 2}
!41 = !{ptr @pp_base_flush, ptr @pp_base_formatted_text, i64 1}
!42 = !{ptr @pp_base_flush, ptr @fputs, i64 1}
!43 = !{ptr @pp_base_flush, ptr @pp_base_clear_output_area, i64 1}
!44 = !{ptr @pp_base_flush, ptr @fputc, i64 1}
!45 = !{ptr @pp_base_flush, ptr @fflush, i64 1}
!46 = !{ptr @pp_base_set_prefix, ptr @pp_set_real_maximum_length, i64 1}
!47 = !{ptr @pp_base_destroy_prefix, ptr @free, i64 1}
!48 = !{ptr @pp_base_emit_prefix, ptr @strlen, i64 1}
!49 = !{ptr @pp_construct, ptr @xcalloc, i64 1}
!50 = !{ptr @pp_construct, ptr @_obstack_begin, i64 2}
!51 = !{ptr @pp_construct, ptr @pp_set_real_maximum_length, i64 1}
!52 = !{ptr @identifier_to_locale, ptr @strlen, i64 307}
!53 = !{ptr @identifier_to_locale, ptr @decode_utf8_char, i64 3020}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !{!61, !57, i64 8}
!61 = !{!"_IO_FILE", !62, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96, !57, i64 104, !62, i64 112, !62, i64 116, !63, i64 120, !64, i64 128, !58, i64 130, !58, i64 131, !57, i64 136, !63, i64 144, !57, i64 152, !57, i64 160, !57, i64 168, !57, i64 176, !63, i64 184, !62, i64 192, !58, i64 196}
!62 = !{!"int", !58, i64 0}
!63 = !{!"long", !58, i64 0}
!64 = !{!"short", !58, i64 0}
!65 = !{!61, !57, i64 16}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!58, !58, i64 0}
!68 = !{!61, !57, i64 40}
!69 = !{!61, !57, i64 48}
!70 = !{!61, !62, i64 0}
!71 = !{!62, !62, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!76, !57, i64 0}
!76 = !{!"pretty_print_info", !57, i64 0, !57, i64 8, !62, i64 16, !62, i64 20, !62, i64 24, !77, i64 28, !57, i64 40, !58, i64 48, !58, i64 49, !58, i64 50}
!77 = !{!"", !62, i64 0, !62, i64 4}
!78 = !{!79, !57, i64 192}
!79 = !{!"", !80, i64 0, !80, i64 88, !57, i64 176, !57, i64 184, !57, i64 192, !62, i64 200, !58, i64 204}
!80 = !{!"obstack", !63, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !63, i64 40, !62, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !62, i64 80, !62, i64 80, !62, i64 80}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!79, !57, i64 176}
!83 = !{!80, !57, i64 24}
!84 = !{!80, !57, i64 32}
!85 = !{!"branch_weights", i32 0, i32 1}
!86 = !{!80, !57, i64 16}
!87 = !{!80, !57, i64 8}
!88 = !{!80, !63, i64 40}
!89 = !{!"branch_weights", i32 1, i32 0}
!90 = !{!79, !62, i64 200}
!91 = !{!76, !62, i64 24}
!92 = distinct !{!92, !73, !74}
!93 = !{!76, !62, i64 32}
!94 = !{!76, !62, i64 20}
!95 = !{!64, !64, i64 0}
!96 = !{!79, !63, i64 128}
!97 = !{!79, !57, i64 120}
!98 = !{!79, !57, i64 112}
!99 = !{!79, !57, i64 104}
!100 = !{!79, !62, i64 136}
!101 = !{!79, !57, i64 96}
!102 = !{!79, !57, i64 184}
!103 = !{!104, !57, i64 0}
!104 = !{!"chunk_info", !57, i64 0, !58, i64 8}
!105 = !{!106, !57, i64 0}
!106 = !{!"", !57, i64 0, !57, i64 8, !62, i64 16, !57, i64 24, !57, i64 32}
!107 = !{!"branch_weights", i32 40, i32 0, i32 1}
!108 = !{!"branch_weights", i32 0, i32 40}
!109 = distinct !{!109, !73, !74}
!110 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!111 = !{!106, !62, i64 16}
!112 = !{!"branch_weights", i32 0, i32 3}
!113 = !{!"branch_weights", i32 1, i32 2}
!114 = distinct !{!114, !73, !74}
!115 = distinct !{!115, !73, !74}
!116 = !{i64 0, i64 4, !71, i64 4, i64 4, !71}
!117 = !{!76, !62, i64 28}
!118 = !{!"branch_weights", i32 1, i32 127}
!119 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!120 = distinct !{!120, !74}
!121 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!122 = !{!106, !57, i64 8}
!123 = !{!106, !57, i64 24}
!124 = !{!106, !57, i64 32}
!125 = distinct !{!125, !73, !74}
!126 = !{!76, !57, i64 40}
!127 = !{!"VP", i32 0, i64 1, i64 -3714824692348766867, i64 1}
!128 = !{!"branch_weights", i32 127, i32 1}
!129 = distinct !{!129, !73, !74}
!130 = !{!76, !58, i64 48}
!131 = !{!"function_entry_count", i64 5}
!132 = !{!"branch_weights", i32 0, i32 5}
!133 = distinct !{!133, !73, !74}
!134 = distinct !{!134, !73, !74}
!135 = !{!"branch_weights", i32 2, i32 3}
!136 = !{!"branch_weights", i32 0, i32 2}
!137 = distinct !{!137, !73, !74}
!138 = !{!"VP", i32 1, i64 5, i64 1, i64 2, i64 7, i64 1, i64 33, i64 1, i64 9, i64 1}
!139 = !{!"branch_weights", i32 127, i32 129}
!140 = distinct !{!140, !73, !74}
!141 = !{!76, !58, i64 49}
!142 = !{!"function_entry_count", i64 2}
!143 = !{!"pretty-print.c;pp_set_real_maximum_length"}
!144 = !{!76, !57, i64 8}
!145 = !{!"branch_weights", i32 1, i32 1}
!146 = !{!"branch_weights", i32 0, i32 0, i32 1}
!147 = !{!"VP", i32 1, i64 1, i64 17, i64 1}
!148 = !{!76, !58, i64 50}
!149 = !{!76, !62, i64 16}
!150 = !{!"function_entry_count", i64 307}
!151 = !{!"branch_weights", i32 3020, i32 307}
!152 = !{!"branch_weights", i32 0, i32 3020}
!153 = !{!"branch_weights", i32 0, i32 307}
!154 = distinct !{!154, !73, !74}
!155 = !{!"branch_weights", i32 307, i32 0}
!156 = distinct !{!156, !73, !74}
!157 = !{!"function_entry_count", i64 3020}
!158 = !{!"pretty-print.c;decode_utf8_char"}
!159 = !{!"branch_weights", i32 3020, i32 0}
!160 = distinct !{!160, !73, !74}
!161 = distinct !{!161, !73, !74}
