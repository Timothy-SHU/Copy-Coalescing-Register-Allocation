; ModuleID = 'lto-section-in.c'
source_filename = "lto-section-in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lto_stats_d = type { i64, i64, i64, i64, i64, [10 x i64], i64, [188 x i64], i64, i64, i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.lto_input_block = type { ptr, i32, i32 }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_renaming_slot = type { ptr, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"decls\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"function_body\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"static_initializer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cgraph\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ipa_pure_const\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ipa_reference\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"symtab\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"wpa_fixup\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"opts\00", align 1
@lto_section_name = dso_local local_unnamed_addr global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr null], align 16
@.str.9 = private unnamed_addr constant [75 x i8] c"bytecode stream: trying to read %d bytes after the end of the input buffer\00", align 1
@file_decl_data = internal unnamed_addr global ptr null, align 8
@get_section_f = internal unnamed_addr global ptr null, align 8
@free_section_f = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"lto-section-in.c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lto_stats = external local_unnamed_addr global %struct.lto_stats_d, align 8
@flag_ltrans = external local_unnamed_addr global i32, align 4
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
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
  %5 = tail call ptr @__ctype_tolower_loc() #17
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
  %5 = tail call ptr @__ctype_toupper_loc() #17
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
define dso_local zeroext i8 @lto_input_1_unsigned(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = sub i32 %3, %5
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9, i32 noundef %8) #17
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr %0, align 8, !tbaa !57
  %11 = load i32, ptr %2, align 8, !tbaa !54
  %12 = add i32 %11, 1
  store i32 %12, ptr %2, align 8, !tbaa !54
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !46
  ret i8 %15
}

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lto_input_uleb128(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %23, %12 ], [ 0, %1 ]
  %6 = phi i64 [ %22, %12 ], [ 0, %1 ]
  %7 = load i32, ptr %2, align 8, !tbaa !54
  %8 = load i32, ptr %3, align 4, !tbaa !56
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = sub i32 %7, %8
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9, i32 noundef %11) #17
  br label %12

12:                                               ; preds = %4, %10
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  %14 = load i32, ptr %2, align 8, !tbaa !54
  %15 = add i32 %14, 1
  store i32 %15, ptr %2, align 8, !tbaa !54
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = and i8 %18, 127
  %20 = zext nneg i8 %19 to i64
  %21 = shl i64 %20, %5
  %22 = or i64 %21, %6
  %23 = add nuw i64 %5, 7
  %24 = icmp sgt i8 %18, -1
  br i1 %24, label %25, label %4, !llvm.loop !58

25:                                               ; preds = %12
  ret i64 %22
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lto_input_widest_uint_uleb128(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %23, %12 ], [ 0, %1 ]
  %6 = phi i64 [ %22, %12 ], [ 0, %1 ]
  %7 = load i32, ptr %2, align 8, !tbaa !54
  %8 = load i32, ptr %3, align 4, !tbaa !56
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = sub i32 %7, %8
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9, i32 noundef %11) #17
  br label %12

12:                                               ; preds = %4, %10
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  %14 = load i32, ptr %2, align 8, !tbaa !54
  %15 = add i32 %14, 1
  store i32 %15, ptr %2, align 8, !tbaa !54
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = and i8 %18, 127
  %20 = zext nneg i8 %19 to i64
  %21 = shl i64 %20, %5
  %22 = or i64 %21, %6
  %23 = add nuw i64 %5, 7
  %24 = icmp sgt i8 %18, -1
  br i1 %24, label %25, label %4, !llvm.loop !59

25:                                               ; preds = %12
  ret i64 %22
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lto_input_sleb128(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.lto_input_block, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %23, %12 ], [ 0, %1 ]
  %6 = phi i64 [ %22, %12 ], [ 0, %1 ]
  %7 = load i32, ptr %2, align 8, !tbaa !54
  %8 = load i32, ptr %3, align 4, !tbaa !56
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = sub i32 %7, %8
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9, i32 noundef %11) #17
  br label %12

12:                                               ; preds = %4, %10
  %13 = load ptr, ptr %0, align 8, !tbaa !57
  %14 = load i32, ptr %2, align 8, !tbaa !54
  %15 = add i32 %14, 1
  store i32 %15, ptr %2, align 8, !tbaa !54
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = and i8 %18, 127
  %20 = zext nneg i8 %19 to i64
  %21 = shl i64 %20, %5
  %22 = or i64 %21, %6
  %23 = add nuw i64 %5, 7
  %24 = icmp sgt i8 %18, -1
  br i1 %24, label %25, label %4, !llvm.loop !60

25:                                               ; preds = %12
  %26 = trunc i64 %5 to i32
  %27 = icmp ugt i32 %26, 56
  %28 = icmp ult i8 %18, 64
  %29 = or i1 %27, %28
  %30 = and i64 %23, 4294967295
  %31 = shl nsw i64 -1, %30
  %32 = select i1 %29, i64 0, i64 %31
  %33 = or i64 %22, %32
  ret i64 %33
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @lto_set_in_hooks(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !34 {
  store ptr %0, ptr @file_decl_data, align 8, !tbaa !35
  store ptr %1, ptr @get_section_f, align 8, !tbaa !35
  store ptr %2, ptr @free_section_f, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_get_file_decl_data() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @file_decl_data, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 166, ptr noundef nonnull @.str.11) #17
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @file_decl_data, align 8, !tbaa !35
  ret ptr %5
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_get_section_data(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = load ptr, ptr @get_section_f, align 8, !tbaa !35
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #17
  %7 = load i64, ptr %3, align 8, !tbaa !61
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.lto_stats_d, ptr @lto_stats, i64 0, i32 5, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !61
  %11 = add i64 %10, %7
  store i64 %11, ptr %9, align 8, !tbaa !61
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_free_section_data(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds i8, ptr %3, i64 -16
  %7 = load ptr, ptr @free_section_f, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 269, ptr noundef nonnull @.str.11) #17
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i32, ptr @flag_ltrans, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr @free_section_f, align 8, !tbaa !35
  br i1 %12, label %15, label %14

14:                                               ; preds = %10
  tail call void %13(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #17
  br label %19

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8, !tbaa !62
  %17 = getelementptr inbounds i8, ptr %3, i64 -8
  %18 = load i64, ptr %17, align 8, !tbaa !64
  tail call void %13(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %16, i64 noundef %18) #17
  tail call void @free(ptr noundef %6)
  br label %19

19:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lto_create_simple_input_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = load ptr, ptr @get_section_f, align 8, !tbaa !35
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %3) #17
  %7 = load i64, ptr %3, align 8, !tbaa !61
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.lto_stats_d, ptr @lto_stats, i64 0, i32 5, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !61
  %11 = add i64 %10, %7
  store i64 %11, ptr %9, align 8, !tbaa !61
  %12 = icmp eq ptr %6, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @xmalloc(i64 noundef 16) #17
  store ptr %6, ptr %2, align 8, !tbaa !35
  %15 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %15, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.lto_input_block, ptr %14, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.lto_simple_header, ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = getelementptr inbounds %struct.lto_input_block, ptr %14, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !56
  br label %20

20:                                               ; preds = %4, %13
  %21 = phi ptr [ %14, %13 ], [ null, %4 ]
  ret ptr %21
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_destroy_simple_input_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #9 !prof !34 {
  tail call void @free(ptr noundef %2)
  tail call void @lto_free_section_data(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_create_renaming_table() local_unnamed_addr #9 !prof !34 {
  %1 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull @hash_name, ptr noundef nonnull @eq_name, ptr noundef nonnull @renaming_slot_free) #17
  ret ptr %1
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_name(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_renaming_slot, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = tail call i32 @htab_hash_string(ptr noundef %3) #17
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !34 {
  %3 = getelementptr inbounds %struct.lto_renaming_slot, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.lto_renaming_slot, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal void @renaming_slot_free(ptr nocapture noundef %0) #13 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  tail call void @free(ptr noundef %2)
  %3 = getelementptr inbounds %struct.lto_renaming_slot, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  tail call void @free(ptr noundef %4)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_record_renamed_decl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.lto_renaming_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.lto_renaming_slot, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = call ptr @htab_find_slot(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 1) #17
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = call ptr @xmalloc(i64 noundef 16) #17
  %13 = call ptr @xstrdup(ptr noundef %1) #17
  store ptr %13, ptr %12, align 8, !tbaa !70
  %14 = call ptr @xstrdup(ptr noundef %2) #17
  %15 = getelementptr inbounds %struct.lto_renaming_slot, ptr %12, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !68
  store ptr %12, ptr %8, align 8, !tbaa !35
  br label %17

16:                                               ; preds = %3
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 404, ptr noundef nonnull @.str.11) #17
  br label %17

17:                                               ; preds = %16, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_get_decl_name_mapping(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.lto_renaming_slot, align 8
  %4 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %6 = getelementptr inbounds %struct.lto_renaming_slot, ptr %3, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !68
  %7 = call ptr @htab_find(ptr noundef %5, ptr noundef nonnull %3) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !70
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %1, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret ptr %12
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lto_new_in_decl_state() local_unnamed_addr #9 !prof !34 {
  %1 = tail call ptr @xmalloc(i64 noundef 120) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %1, i8 0, i64 120, i1 false)
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_delete_in_decl_state(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %0, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @free(ptr noundef %5)
  br label %8

8:                                                ; preds = %2, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 7
  br i1 %10, label %11, label %2, !llvm.loop !75

11:                                               ; preds = %8
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lto_hash_in_decl_state(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.lto_in_decl_state, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = tail call i32 %2(ptr noundef %4) #17
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lto_eq_in_decl_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !34 {
  %3 = getelementptr inbounds %struct.lto_in_decl_state, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.lto_in_decl_state, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_get_function_in_decl_state(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.lto_in_decl_state, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.lto_in_decl_state, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.lto_file_decl_data, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = call ptr @htab_find_slot(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 0) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #17
  ret ptr %12
}

declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }

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
!54 = !{!55, !41, i64 8}
!55 = !{!"lto_input_block", !36, i64 0, !41, i64 8, !41, i64 12}
!56 = !{!55, !41, i64 12}
!57 = !{!55, !36, i64 0}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !53}
!61 = !{!42, !42, i64 0}
!62 = !{!63, !36, i64 0}
!63 = !{!"lto_data_header", !36, i64 0, !42, i64 8}
!64 = !{!63, !42, i64 8}
!65 = !{!66, !41, i64 8}
!66 = !{!"lto_simple_header", !67, i64 0, !41, i64 8, !41, i64 12}
!67 = !{!"lto_header", !43, i64 0, !43, i64 2, !41, i64 4}
!68 = !{!69, !36, i64 8}
!69 = !{!"lto_renaming_slot", !36, i64 0, !36, i64 8}
!70 = !{!69, !36, i64 0}
!71 = !{!72, !36, i64 56}
!72 = !{!"lto_file_decl_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !36, i64 48, !36, i64 56}
!73 = !{!74, !36, i64 0}
!74 = !{!"lto_tree_ref_table", !36, i64 0, !41, i64 8}
!75 = distinct !{!75, !52, !53}
!76 = !{!77, !36, i64 112}
!77 = !{!"lto_in_decl_state", !37, i64 0, !36, i64 112}
!78 = !{!72, !36, i64 24}
