; ModuleID = 'c-aux-info.c'
source_filename = "c-aux-info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_gen_aux_info = external local_unnamed_addr global i32, align 4
@gen_aux_info_record.compiled_from_record = internal unnamed_addr global i32 0, align 4
@aux_info_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"/* compiled from: . */\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"/* %s:%d:%c%c */ %s;\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" /*%s %s*/\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@data_type = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"[0]\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"[ERROR]\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"c-aux-info.c\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"/* ??? */\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@libiberty_optr = external local_unnamed_addr global ptr, align 8
@libiberty_len = external local_unnamed_addr global i64, align 8
@libiberty_nptr = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c" \00", align 1

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

; Function Attrs: nounwind uwtable
define dso_local void @gen_aux_info_record(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !54 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = load i32, ptr @flag_gen_aux_info, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %38, label %8, !prof !55

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %10) #14
  %11 = load i32, ptr @gen_aux_info_record.compiled_from_record, align 4, !tbaa !50
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @gen_aux_info_record.compiled_from_record, align 4, !tbaa !50
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load ptr, ptr @aux_info_file, align 8, !tbaa !35
  %16 = call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr @aux_info_file, align 8, !tbaa !35
  %19 = load ptr, ptr %5, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = icmp eq i32 %2, 0
  %23 = icmp eq i32 %3, 0
  %24 = select i1 %23, i32 79, i32 78
  %25 = select i1 %22, i32 %24, i32 73
  %26 = icmp eq i32 %1, 0
  %27 = select i1 %26, i32 67, i32 70
  %28 = call fastcc ptr @gen_decl(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %21, i32 noundef %25, i32 noundef %27, ptr noundef %28)
  br i1 %26, label %35, label %30

30:                                               ; preds = %17
  %31 = load ptr, ptr @aux_info_file, align 8, !tbaa !35
  %32 = call fastcc ptr @gen_formal_list_for_func_def(ptr noundef %0, i32 noundef 1)
  %33 = call fastcc ptr @gen_formal_list_for_func_def(ptr noundef %0, i32 noundef 2)
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef %32, ptr noundef %33)
  br label %35

35:                                               ; preds = %30, %17
  %36 = load ptr, ptr @aux_info_file, align 8, !tbaa !35
  %37 = call i32 @fputc(i32 10, ptr %36)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %38

38:                                               ; preds = %35, %4
  ret void
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gen_decl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ @.str.4, %3 ]
  %12 = icmp eq i32 %2, 1
  br i1 %12, label %69, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 524288
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.5, ptr noundef %11, ptr noundef null) #14
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %11, %13 ]
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 1048576
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.6, ptr noundef %20, ptr noundef null) #14
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %25, %24 ], [ %20, %19 ]
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !35
  %28 = load i64, ptr %0, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 29
  %31 = icmp ne i32 %1, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = tail call fastcc ptr @gen_formal_list_for_func_def(ptr noundef nonnull %0, i32 noundef 0)
  %35 = tail call ptr (ptr, ...) @concat(ptr noundef %27, ptr noundef %34, ptr noundef null) #14
  %36 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  br label %38

38:                                               ; preds = %26, %33
  %39 = phi ptr [ %37, %33 ], [ %0, %26 ]
  %40 = phi ptr [ %35, %33 ], [ %27, %26 ]
  %41 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = tail call fastcc ptr @gen_type(ptr noundef %40, ptr noundef %42, i32 noundef %2)
  %44 = tail call fastcc ptr @affix_data_type(ptr noundef %43)
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 29
  br i1 %47, label %55, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 524288
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.7, ptr noundef %44, ptr noundef null) #14
  br label %55

55:                                               ; preds = %53, %48, %38
  %56 = phi ptr [ %54, %53 ], [ %44, %48 ], [ %44, %38 ]
  %57 = load i64, ptr %0, align 8
  %58 = and i64 %57, 134217728
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.8, ptr noundef %56, ptr noundef null) #14
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi ptr [ %61, %60 ], [ %56, %55 ]
  %64 = load i64, ptr %0, align 8
  %65 = and i64 %64, 134283263
  %66 = icmp eq i64 %65, 29
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.9, ptr noundef %63, ptr noundef null) #14
  br label %69

69:                                               ; preds = %62, %67, %10
  %70 = phi ptr [ %11, %10 ], [ %68, %67 ], [ %63, %62 ]
  ret ptr %70
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gen_formal_list_for_func_def(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = icmp ult i32 %1, 2
  %8 = icmp eq i32 %1, 2
  br label %9

9:                                                ; preds = %6, %24
  %10 = phi ptr [ %4, %6 ], [ %27, %24 ]
  %11 = phi ptr [ @.str.4, %6 ], [ %25, %24 ]
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = icmp ne i8 %12, 0
  %14 = and i1 %7, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %11, ptr noundef nonnull @.str.21, ptr noundef null) #14
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %19 = tail call fastcc ptr @gen_decl(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %1)
  br i1 %8, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr (ptr, ...) @concat(ptr noundef %18, ptr noundef %19, ptr noundef nonnull @.str.16, ptr noundef null) #14
  br label %24

22:                                               ; preds = %17
  %23 = tail call ptr (ptr, ...) @concat(ptr noundef %18, ptr noundef %19, ptr noundef null) #14
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9, !llvm.loop !59

29:                                               ; preds = %24, %2
  %30 = phi ptr [ @.str.4, %2 ], [ %25, %24 ]
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call ptr (ptr, ...) @concat(ptr noundef %30, ptr noundef nonnull @.str.25, ptr noundef null) #14
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %30, %32 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  br label %50

46:                                               ; preds = %50
  %47 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50, !llvm.loop !60

50:                                               ; preds = %44, %46
  %51 = phi ptr [ %42, %44 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.tree_list, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = icmp eq ptr %53, %45
  br i1 %54, label %60, label %46

55:                                               ; preds = %46, %37
  %56 = load ptr, ptr %41, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call ptr (ptr, ...) @concat(ptr noundef %38, ptr noundef nonnull @.str.32, ptr noundef null) #14
  br label %60

60:                                               ; preds = %50, %55, %58, %29
  %61 = phi ptr [ %59, %58 ], [ %38, %55 ], [ %30, %29 ], [ %38, %50 ]
  %62 = icmp ult i32 %1, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.33, ptr noundef %61, ptr noundef nonnull @.str.12, ptr noundef null) #14
  br label %65

65:                                               ; preds = %60, %63
  %66 = phi ptr [ %64, %63 ], [ %61, %60 ]
  ret ptr %66
}

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gen_type(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca [10 x i8], align 1
  br label %5

5:                                                ; preds = %44, %3
  %6 = phi ptr [ %0, %3 ], [ %45, %44 ]
  %7 = phi ptr [ %1, %3 ], [ %46, %44 ]
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 35
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_identifier, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  store ptr %19, ptr @data_type, align 8, !tbaa !35
  br label %263

20:                                               ; preds = %11, %5
  %21 = load i64, ptr %7, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %262 [
    i16 10, label %23
    i16 15, label %47
    i16 20, label %78
    i16 1, label %139
    i16 16, label %142
    i16 17, label %165
    i16 6, label %188
    i16 35, label %224
    i16 8, label %229
    i16 11, label %229
    i16 9, label %255
    i16 19, label %260
    i16 0, label %261
  ]

23:                                               ; preds = %20
  %24 = and i64 %21, 1048576
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.6, ptr noundef %6, ptr noundef null) #14
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi ptr [ %27, %26 ], [ %6, %23 ]
  %30 = load i64, ptr %7, align 8
  %31 = and i64 %30, 524288
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.5, ptr noundef %29, ptr noundef null) #14
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %29, %28 ]
  %37 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.10, ptr noundef %36, ptr noundef null) #14
  %38 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %44 [
    i16 15, label %42
    i16 20, label %42
  ]

42:                                               ; preds = %35, %35
  %43 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.11, ptr noundef %37, ptr noundef nonnull @.str.12, ptr noundef null) #14
  br label %44

44:                                               ; preds = %35, %42
  %45 = phi ptr [ %43, %42 ], [ %37, %35 ]
  %46 = load ptr, ptr %38, align 8, !tbaa !46
  br label %5

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, ptr %49, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 23
  br i1 %54, label %60, label %55

55:                                               ; preds = %51, %47
  %56 = tail call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef null) #14
  %57 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = tail call fastcc ptr @gen_type(ptr noundef %56, ptr noundef %58, i32 noundef %2)
  br label %263

60:                                               ; preds = %51
  %61 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %7) #14
  %62 = icmp eq i64 %61, 0
  %63 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  br i1 %62, label %64, label %68

64:                                               ; preds = %60
  %65 = tail call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef null) #14
  %66 = load ptr, ptr %63, align 8, !tbaa !46
  %67 = tail call fastcc ptr @gen_type(ptr noundef %65, ptr noundef %66, i32 noundef %2)
  br label %263

68:                                               ; preds = %60
  %69 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %7) #14
  %70 = load ptr, ptr %63, align 8, !tbaa !46
  %71 = tail call i64 @int_size_in_bytes(ptr noundef %70) #14
  %72 = sdiv i64 %69, %71
  %73 = trunc i64 %72 to i32
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #14
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %73)
  %75 = call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef nonnull %4, ptr noundef null) #14
  %76 = load ptr, ptr %63, align 8, !tbaa !46
  %77 = call fastcc ptr @gen_type(ptr noundef %75, ptr noundef %76, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #14
  br label %263

78:                                               ; preds = %20
  %79 = icmp eq i32 %2, 0
  br i1 %79, label %80, label %133

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tree_list, ptr %82, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %118, label %94

89:                                               ; preds = %112
  %90 = getelementptr inbounds %struct.tree_list, ptr %116, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %118, label %94, !llvm.loop !61

94:                                               ; preds = %84, %89
  %95 = phi ptr [ %90, %89 ], [ %85, %84 ]
  %96 = phi ptr [ %114, %89 ], [ @.str.4, %84 ]
  %97 = phi ptr [ %116, %89 ], [ %82, %84 ]
  %98 = load i8, ptr %96, align 1, !tbaa !46
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %96, ptr noundef nonnull @.str.21, ptr noundef null) #14
  br label %102

102:                                              ; preds = %100, %94
  %103 = phi ptr [ %101, %100 ], [ %96, %94 ]
  %104 = load ptr, ptr %95, align 8, !tbaa !46
  %105 = tail call fastcc ptr @gen_type(ptr noundef nonnull @.str.4, ptr noundef %104, i32 noundef 0)
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = tail call fastcc ptr @affix_data_type(ptr noundef nonnull %105)
  br label %112

110:                                              ; preds = %102
  %111 = load ptr, ptr @data_type, align 8, !tbaa !35
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi ptr [ %111, %110 ], [ %109, %108 ]
  %114 = tail call ptr (ptr, ...) @concat(ptr noundef %103, ptr noundef %113, ptr noundef null) #14
  %115 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %89, !llvm.loop !61

118:                                              ; preds = %89, %112, %84, %80
  %119 = phi ptr [ @.str.4, %80 ], [ @.str.4, %84 ], [ %114, %112 ], [ %114, %89 ]
  %120 = phi i1 [ %83, %80 ], [ %83, %84 ], [ %117, %112 ], [ %117, %89 ]
  %121 = load i8, ptr %119, align 1, !tbaa !46
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load ptr, ptr %81, align 8, !tbaa !46
  %125 = icmp eq ptr %124, null
  %126 = select i1 %125, ptr @.str.31, ptr @.str.25
  br label %130

127:                                              ; preds = %118
  br i1 %120, label %128, label %130

128:                                              ; preds = %127
  %129 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %119, ptr noundef nonnull @.str.32, ptr noundef null) #14
  br label %130

130:                                              ; preds = %128, %127, %123
  %131 = phi ptr [ %119, %127 ], [ %129, %128 ], [ %126, %123 ]
  %132 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.33, ptr noundef %131, ptr noundef nonnull @.str.12, ptr noundef null) #14
  br label %133

133:                                              ; preds = %78, %130
  %134 = phi ptr [ %132, %130 ], [ @.str.30, %78 ]
  %135 = tail call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef %134, ptr noundef null) #14
  %136 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = tail call fastcc ptr @gen_type(ptr noundef %135, ptr noundef %137, i32 noundef %2)
  br label %263

139:                                              ; preds = %20
  %140 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  store ptr %141, ptr @data_type, align 8, !tbaa !35
  br label %263

142:                                              ; preds = %20
  br i1 %10, label %146, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  br label %162

146:                                              ; preds = %142
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !35
  %147 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !46
  %149 = icmp eq ptr %148, null
  br i1 %149, label %159, label %150

150:                                              ; preds = %146, %150
  %151 = phi ptr [ %156, %150 ], [ %148, %146 ]
  %152 = load ptr, ptr @data_type, align 8, !tbaa !35
  %153 = tail call fastcc ptr @gen_decl(ptr noundef nonnull %151, i32 noundef 0, i32 noundef 0)
  %154 = tail call ptr (ptr, ...) @concat(ptr noundef %152, ptr noundef %153, ptr noundef null) #14
  store ptr %154, ptr @data_type, align 8, !tbaa !35
  %155 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !46
  %157 = tail call ptr (ptr, ...) @concat(ptr noundef %154, ptr noundef nonnull @.str.16, ptr noundef null) #14
  store ptr %157, ptr @data_type, align 8, !tbaa !35
  %158 = icmp eq ptr %156, null
  br i1 %158, label %159, label %150, !llvm.loop !62

159:                                              ; preds = %150, %146
  %160 = load ptr, ptr @data_type, align 8, !tbaa !35
  %161 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.17, ptr noundef %160, ptr noundef nonnull @.str.18, ptr noundef null) #14
  br label %162

162:                                              ; preds = %159, %143
  %163 = phi ptr [ %161, %159 ], [ %145, %143 ]
  store ptr %163, ptr @data_type, align 8, !tbaa !35
  %164 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.19, ptr noundef %163, ptr noundef null) #14
  store ptr %164, ptr @data_type, align 8, !tbaa !35
  br label %263

165:                                              ; preds = %20
  br i1 %10, label %169, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !46
  br label %185

169:                                              ; preds = %165
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !35
  %170 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !46
  %172 = icmp eq ptr %171, null
  br i1 %172, label %182, label %173

173:                                              ; preds = %169, %173
  %174 = phi ptr [ %179, %173 ], [ %171, %169 ]
  %175 = load ptr, ptr @data_type, align 8, !tbaa !35
  %176 = tail call fastcc ptr @gen_decl(ptr noundef nonnull %174, i32 noundef 0, i32 noundef 0)
  %177 = tail call ptr (ptr, ...) @concat(ptr noundef %175, ptr noundef %176, ptr noundef null) #14
  store ptr %177, ptr @data_type, align 8, !tbaa !35
  %178 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = tail call ptr (ptr, ...) @concat(ptr noundef %177, ptr noundef nonnull @.str.16, ptr noundef null) #14
  store ptr %180, ptr @data_type, align 8, !tbaa !35
  %181 = icmp eq ptr %179, null
  br i1 %181, label %182, label %173, !llvm.loop !63

182:                                              ; preds = %173, %169
  %183 = load ptr, ptr @data_type, align 8, !tbaa !35
  %184 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.17, ptr noundef %183, ptr noundef nonnull @.str.18, ptr noundef null) #14
  br label %185

185:                                              ; preds = %182, %166
  %186 = phi ptr [ %184, %182 ], [ %168, %166 ]
  store ptr %186, ptr @data_type, align 8, !tbaa !35
  %187 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.20, ptr noundef %186, ptr noundef null) #14
  store ptr %187, ptr @data_type, align 8, !tbaa !35
  br label %263

188:                                              ; preds = %20
  br i1 %10, label %192, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  br label %221

192:                                              ; preds = %188
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !35
  %193 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !46
  %195 = icmp eq ptr %194, null
  br i1 %195, label %218, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr @data_type, align 8, !tbaa !35
  %198 = getelementptr inbounds %struct.tree_list, ptr %194, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !46
  %200 = getelementptr inbounds %struct.tree_identifier, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  %202 = tail call ptr (ptr, ...) @concat(ptr noundef %197, ptr noundef %201, ptr noundef null) #14
  store ptr %202, ptr @data_type, align 8, !tbaa !35
  %203 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !46
  %205 = icmp eq ptr %204, null
  br i1 %205, label %218, label %206

206:                                              ; preds = %196, %206
  %207 = phi ptr [ %216, %206 ], [ %204, %196 ]
  %208 = phi ptr [ %214, %206 ], [ %202, %196 ]
  %209 = tail call ptr (ptr, ...) @concat(ptr noundef %208, ptr noundef nonnull @.str.21, ptr noundef null) #14
  store ptr %209, ptr @data_type, align 8, !tbaa !35
  %210 = getelementptr inbounds %struct.tree_list, ptr %207, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !46
  %212 = getelementptr inbounds %struct.tree_identifier, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !46
  %214 = tail call ptr (ptr, ...) @concat(ptr noundef %209, ptr noundef %213, ptr noundef null) #14
  store ptr %214, ptr @data_type, align 8, !tbaa !35
  %215 = getelementptr inbounds %struct.tree_common, ptr %207, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %206

218:                                              ; preds = %206, %196, %192
  %219 = load ptr, ptr @data_type, align 8, !tbaa !35
  %220 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.17, ptr noundef %219, ptr noundef nonnull @.str.22, ptr noundef null) #14
  br label %221

221:                                              ; preds = %218, %189
  %222 = phi ptr [ %220, %218 ], [ %191, %189 ]
  store ptr %222, ptr @data_type, align 8, !tbaa !35
  %223 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef %222, ptr noundef null) #14
  store ptr %223, ptr @data_type, align 8, !tbaa !35
  br label %263

224:                                              ; preds = %20
  %225 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !46
  %227 = getelementptr inbounds %struct.tree_identifier, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !46
  store ptr %228, ptr @data_type, align 8, !tbaa !35
  br label %263

229:                                              ; preds = %20, %20
  %230 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !46
  %232 = getelementptr inbounds %struct.tree_identifier, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  store ptr %233, ptr @data_type, align 8, !tbaa !35
  %234 = and i64 %21, 2097152
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %263, label %236

236:                                              ; preds = %229
  %237 = trunc i64 %21 to i32
  %238 = lshr i32 %237, 20
  %239 = and i32 %238, 1
  %240 = lshr i32 %237, 18
  %241 = and i32 %240, 2
  %242 = or disjoint i32 %239, %241
  %243 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %244 = load i32, ptr %243, align 4
  %245 = lshr i32 %244, 11
  %246 = and i32 %245, 4
  %247 = lshr i64 %21, 48
  %248 = trunc i64 %247 to i32
  %249 = and i32 %248, 65280
  %250 = or disjoint i32 %242, %249
  %251 = or disjoint i32 %250, %246
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %263, label %253

253:                                              ; preds = %236
  %254 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.24, ptr noundef %233, ptr noundef null) #14
  store ptr %254, ptr @data_type, align 8, !tbaa !35
  br label %263

255:                                              ; preds = %20
  %256 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  %258 = getelementptr inbounds %struct.tree_identifier, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !46
  store ptr %259, ptr @data_type, align 8, !tbaa !35
  br label %263

260:                                              ; preds = %20
  store ptr @.str.25, ptr @data_type, align 8, !tbaa !35
  br label %263

261:                                              ; preds = %20
  store ptr @.str.26, ptr @data_type, align 8, !tbaa !35
  br label %263

262:                                              ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 450, ptr noundef nonnull @.str.28) #14
  br label %263

263:                                              ; preds = %133, %139, %162, %185, %221, %224, %255, %260, %261, %262, %64, %68, %55, %253, %236, %229, %15
  %264 = phi ptr [ %6, %15 ], [ %6, %262 ], [ %6, %261 ], [ %6, %260 ], [ %6, %255 ], [ %6, %253 ], [ %6, %236 ], [ %6, %229 ], [ %6, %224 ], [ %6, %221 ], [ %6, %185 ], [ %6, %162 ], [ %6, %139 ], [ %138, %133 ], [ %59, %55 ], [ %67, %64 ], [ %77, %68 ]
  %265 = load i64, ptr %7, align 8
  %266 = and i64 %265, 1048576
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %263
  %269 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.6, ptr noundef %264, ptr noundef null) #14
  br label %270

270:                                              ; preds = %268, %263
  %271 = phi ptr [ %269, %268 ], [ %264, %263 ]
  %272 = load i64, ptr %7, align 8
  %273 = and i64 %272, 524288
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %270
  %276 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.5, ptr noundef %271, ptr noundef null) #14
  br label %277

277:                                              ; preds = %275, %270
  %278 = phi ptr [ %276, %275 ], [ %271, %270 ]
  %279 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 8192
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %277
  %284 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.29, ptr noundef %278, ptr noundef null) #14
  br label %285

285:                                              ; preds = %277, %283
  %286 = phi ptr [ %284, %283 ], [ %278, %277 ]
  ret ptr %286
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @affix_data_type(ptr noundef %0) unnamed_addr #10 !prof !34 {
  store ptr %0, ptr @libiberty_optr, align 8, !tbaa !35
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %3 = add i64 %2, 1
  store i64 %3, ptr @libiberty_len, align 8, !tbaa !64
  %4 = alloca i8, i64 %3, align 16
  store ptr %4, ptr @libiberty_nptr, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr align 1 %0, i64 %3, i1 false)
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %4, %1 ], [ %11, %9 ]
  %7 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(10) @.str.5, i64 noundef 9)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5, %12
  %10 = phi i64 [ 6, %12 ], [ 9, %5 ]
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  br label %5, !llvm.loop !65

12:                                               ; preds = %5
  %13 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(7) @.str.6, i64 noundef 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %9, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %6, %4
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load ptr, ptr @data_type, align 8, !tbaa !35
  %19 = call ptr (ptr, ...) @concat(ptr noundef %18, ptr noundef nonnull @.str.34, ptr noundef nonnull %4, ptr noundef null) #14
  br label %25

20:                                               ; preds = %15
  %21 = load i8, ptr %6, align 1, !tbaa !46
  store i8 0, ptr %6, align 1, !tbaa !46
  %22 = load ptr, ptr @data_type, align 8, !tbaa !35
  %23 = call ptr (ptr, ...) @concat(ptr noundef nonnull %4, ptr noundef %22, ptr noundef null) #14
  store i8 %21, ptr %6, align 1, !tbaa !46
  %24 = call ptr (ptr, ptr, ...) @reconcat(ptr noundef %23, ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef nonnull %6, ptr noundef null) #14
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi ptr [ %19, %17 ], [ %24, %20 ]
  ret ptr %26
}

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

declare ptr @reconcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
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
!54 = !{!"function_entry_count", i64 5383}
!55 = !{!"branch_weights", i32 5383, i32 0}
!56 = !{!57, !36, i64 0}
!57 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!58 = !{!57, !41, i64 8}
!59 = distinct !{!59, !52, !53}
!60 = distinct !{!60, !52, !53}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = !{!42, !42, i64 0}
!65 = distinct !{!65, !53}
