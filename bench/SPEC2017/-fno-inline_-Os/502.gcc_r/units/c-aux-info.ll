; ModuleID = 'c-aux-info.c'
source_filename = "c-aux-info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gen_aux_info_record(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !41 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = load i32, ptr @flag_gen_aux_info, align 4, !tbaa !42
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %38, label %8, !prof !46

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !47
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %10) #9
  %11 = load i32, ptr @gen_aux_info_record.compiled_from_record, align 4, !tbaa !42
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @gen_aux_info_record.compiled_from_record, align 4, !tbaa !42
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load ptr, ptr @aux_info_file, align 8, !tbaa !48
  %16 = call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr @aux_info_file, align 8, !tbaa !48
  %19 = load ptr, ptr %5, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %2, 0
  %23 = icmp eq i32 %3, 0
  %24 = select i1 %23, i32 79, i32 78
  %25 = select i1 %22, i32 %24, i32 73
  %26 = icmp eq i32 %1, 0
  %27 = select i1 %26, i32 67, i32 70
  %28 = call fastcc ptr @gen_decl(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #10
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %21, i32 noundef %25, i32 noundef %27, ptr noundef %28) #10
  br i1 %26, label %35, label %30

30:                                               ; preds = %17
  %31 = load ptr, ptr @aux_info_file, align 8, !tbaa !48
  %32 = call fastcc ptr @gen_formal_list_for_func_def(ptr noundef nonnull %0, i32 noundef 1) #10
  %33 = call fastcc ptr @gen_formal_list_for_func_def(ptr noundef nonnull %0, i32 noundef 2) #10
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef %32, ptr noundef %33) #10
  br label %35

35:                                               ; preds = %30, %17
  %36 = load ptr, ptr @aux_info_file, align 8, !tbaa !48
  %37 = call i32 @fputc(i32 10, ptr %36)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  br label %38

38:                                               ; preds = %35, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_decl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !53 !PGOFuncName !54 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ @.str.4, %3 ]
  %12 = icmp eq i32 %2, 1
  br i1 %12, label %73, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 524288
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.5, ptr noundef %11, ptr noundef null) #9
  %19 = load i64, ptr %0, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i64 [ %19, %17 ], [ %14, %13 ]
  %22 = phi ptr [ %18, %17 ], [ %11, %13 ]
  %23 = and i64 %21, 1048576
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.6, ptr noundef %22, ptr noundef null) #9
  %27 = load i64, ptr %0, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i64 [ %27, %25 ], [ %21, %20 ]
  %30 = phi ptr [ %26, %25 ], [ %22, %20 ]
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !48
  %31 = and i64 %29, 65535
  %32 = icmp eq i64 %31, 29
  %33 = icmp ne i32 %1, 0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = tail call fastcc ptr @gen_formal_list_for_func_def(ptr noundef nonnull %0, i32 noundef 0) #10
  %37 = tail call ptr (ptr, ...) @concat(ptr noundef %30, ptr noundef %36, ptr noundef null) #9
  %38 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %28, %35
  %41 = phi ptr [ %39, %35 ], [ %0, %28 ]
  %42 = phi ptr [ %37, %35 ], [ %30, %28 ]
  %43 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = tail call fastcc ptr @gen_type(ptr noundef %42, ptr noundef %44, i32 noundef %2) #10
  %46 = tail call fastcc ptr @affix_data_type(ptr noundef %45) #10
  %47 = load i64, ptr %0, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 29
  br i1 %49, label %58, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 524288
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.7, ptr noundef %46, ptr noundef null) #9
  %57 = load i64, ptr %0, align 8
  br label %58

58:                                               ; preds = %55, %50, %40
  %59 = phi i64 [ %57, %55 ], [ %47, %50 ], [ %47, %40 ]
  %60 = phi ptr [ %56, %55 ], [ %46, %50 ], [ %46, %40 ]
  %61 = and i64 %59, 134217728
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.8, ptr noundef %60, ptr noundef null) #9
  %65 = load i64, ptr %0, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i64 [ %65, %63 ], [ %59, %58 ]
  %68 = phi ptr [ %64, %63 ], [ %60, %58 ]
  %69 = and i64 %67, 134283263
  %70 = icmp eq i64 %69, 29
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.9, ptr noundef %68, ptr noundef null) #9
  br label %73

73:                                               ; preds = %66, %71, %10
  %74 = phi ptr [ %11, %10 ], [ %72, %71 ], [ %68, %66 ]
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_formal_list_for_func_def(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !53 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = icmp ult i32 %1, 2
  %8 = icmp eq i32 %1, 2
  br label %9

9:                                                ; preds = %6, %26
  %10 = phi ptr [ %4, %6 ], [ %29, %26 ]
  %11 = phi ptr [ @.str.4, %6 ], [ %27, %26 ]
  %12 = load i8, ptr %11, align 1, !tbaa !47
  %13 = icmp ne i8 %12, 0
  %14 = and i1 %7, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %11, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %17 = tail call fastcc ptr @gen_decl(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %1) #10
  br label %22

18:                                               ; preds = %9
  %19 = tail call fastcc ptr @gen_decl(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %1) #10
  br i1 %8, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %11, ptr noundef %19, ptr noundef nonnull @.str.16, ptr noundef null) #9
  br label %26

22:                                               ; preds = %15, %18
  %23 = phi ptr [ %17, %15 ], [ %19, %18 ]
  %24 = phi ptr [ %16, %15 ], [ %11, %18 ]
  %25 = tail call ptr (ptr, ...) @concat(ptr noundef %24, ptr noundef %23, ptr noundef null) #9
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %21, %20 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9, !llvm.loop !56

31:                                               ; preds = %26, %2
  %32 = phi ptr [ @.str.4, %2 ], [ %27, %26 ]
  switch i32 %1, label %49 [
    i32 0, label %33
    i32 1, label %46
  ]

33:                                               ; preds = %31
  %34 = load ptr, ptr %3, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call ptr (ptr, ...) @concat(ptr noundef %32, ptr noundef nonnull @.str.25, ptr noundef null) #9
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %32, %33 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = tail call fastcc i32 @deserves_ellipsis(ptr noundef %41) #10, !range !58
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call ptr (ptr, ...) @concat(ptr noundef %39, ptr noundef nonnull @.str.32, ptr noundef null) #9
  br label %46

46:                                               ; preds = %31, %44, %38
  %47 = phi ptr [ %39, %38 ], [ %45, %44 ], [ %32, %31 ]
  %48 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.33, ptr noundef %47, ptr noundef nonnull @.str.12, ptr noundef null) #9
  br label %49

49:                                               ; preds = %31, %46
  %50 = phi ptr [ %48, %46 ], [ %32, %31 ]
  ret ptr %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_type(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !53 !PGOFuncName !59 {
  %4 = alloca [10 x i8], align 1
  br label %5

5:                                                ; preds = %43, %3
  %6 = phi ptr [ %0, %3 ], [ %44, %43 ]
  %7 = phi ptr [ %1, %3 ], [ %45, %43 ]
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 35
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.tree_identifier, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  store ptr %19, ptr @data_type, align 8, !tbaa !48
  br label %209

20:                                               ; preds = %11, %5
  %21 = load i64, ptr %7, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %208 [
    i16 10, label %23
    i16 15, label %49
    i16 20, label %80
    i16 1, label %86
    i16 16, label %89
    i16 17, label %112
    i16 6, label %135
    i16 35, label %170
    i16 8, label %175
    i16 11, label %175
    i16 9, label %201
    i16 19, label %206
    i16 0, label %207
  ]

23:                                               ; preds = %20
  %24 = and i64 %21, 1048576
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.6, ptr noundef %6, ptr noundef null) #9
  %28 = load i64, ptr %7, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i64 [ %28, %26 ], [ %21, %23 ]
  %31 = phi ptr [ %27, %26 ], [ %6, %23 ]
  %32 = and i64 %30, 524288
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.5, ptr noundef %31, ptr noundef null) #9
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %35, %34 ], [ %31, %29 ]
  %38 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.10, ptr noundef %37, ptr noundef null) #9
  %39 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i16
  switch i16 %42, label %43 [
    i16 15, label %46
    i16 20, label %46
  ]

43:                                               ; preds = %36, %46
  %44 = phi ptr [ %47, %46 ], [ %38, %36 ]
  %45 = phi ptr [ %48, %46 ], [ %40, %36 ]
  br label %5

46:                                               ; preds = %36, %36
  %47 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.11, ptr noundef %38, ptr noundef nonnull @.str.12, ptr noundef null) #9
  %48 = load ptr, ptr %39, align 8, !tbaa !47
  br label %43

49:                                               ; preds = %20
  %50 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, ptr %51, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %62, label %57

57:                                               ; preds = %53, %49
  %58 = tail call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef null) #9
  %59 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = tail call fastcc ptr @gen_type(ptr noundef %58, ptr noundef %60, i32 noundef %2) #10
  br label %209

62:                                               ; preds = %53
  %63 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %7) #9
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  br i1 %64, label %66, label %70

66:                                               ; preds = %62
  %67 = tail call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %68 = load ptr, ptr %65, align 8, !tbaa !47
  %69 = tail call fastcc ptr @gen_type(ptr noundef %67, ptr noundef %68, i32 noundef %2) #10
  br label %209

70:                                               ; preds = %62
  %71 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %7) #9
  %72 = load ptr, ptr %65, align 8, !tbaa !47
  %73 = tail call i64 @int_size_in_bytes(ptr noundef %72) #9
  %74 = sdiv i64 %71, %73
  %75 = trunc i64 %74 to i32
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #8
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %75) #10
  %77 = call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef nonnull %4, ptr noundef null) #9
  %78 = load ptr, ptr %65, align 8, !tbaa !47
  %79 = call fastcc ptr @gen_type(ptr noundef %77, ptr noundef %78, i32 noundef %2) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #8
  br label %209

80:                                               ; preds = %20
  %81 = tail call fastcc ptr @gen_formal_list_for_type(ptr noundef nonnull %7, i32 noundef %2) #10
  %82 = tail call ptr (ptr, ...) @concat(ptr noundef %6, ptr noundef %81, ptr noundef null) #9
  %83 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  %85 = tail call fastcc ptr @gen_type(ptr noundef %82, ptr noundef %84, i32 noundef %2) #10
  br label %209

86:                                               ; preds = %20
  %87 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  store ptr %88, ptr @data_type, align 8, !tbaa !48
  br label %209

89:                                               ; preds = %20
  br i1 %10, label %93, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !47
  br label %109

93:                                               ; preds = %89
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !48
  %94 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !47
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %93, %97
  %98 = phi ptr [ %104, %97 ], [ @.str.4, %93 ]
  %99 = phi ptr [ %103, %97 ], [ %95, %93 ]
  %100 = tail call fastcc ptr @gen_decl(ptr noundef nonnull %99, i32 noundef 0, i32 noundef 0) #10
  %101 = tail call ptr (ptr, ...) @concat(ptr noundef %98, ptr noundef %100, ptr noundef null) #9
  store ptr %101, ptr @data_type, align 8, !tbaa !48
  %102 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !47
  %104 = tail call ptr (ptr, ...) @concat(ptr noundef %101, ptr noundef nonnull @.str.16, ptr noundef null) #9
  store ptr %104, ptr @data_type, align 8, !tbaa !48
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %97, !llvm.loop !60

106:                                              ; preds = %97, %93
  %107 = phi ptr [ @.str.4, %93 ], [ %104, %97 ]
  %108 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.17, ptr noundef %107, ptr noundef nonnull @.str.18, ptr noundef null) #9
  br label %109

109:                                              ; preds = %106, %90
  %110 = phi ptr [ %108, %106 ], [ %92, %90 ]
  store ptr %110, ptr @data_type, align 8, !tbaa !48
  %111 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.19, ptr noundef %110, ptr noundef null) #9
  store ptr %111, ptr @data_type, align 8, !tbaa !48
  br label %209

112:                                              ; preds = %20
  br i1 %10, label %116, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !47
  br label %132

116:                                              ; preds = %112
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !48
  %117 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = icmp eq ptr %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %127, %120 ], [ @.str.4, %116 ]
  %122 = phi ptr [ %126, %120 ], [ %118, %116 ]
  %123 = tail call fastcc ptr @gen_decl(ptr noundef nonnull %122, i32 noundef 0, i32 noundef 0) #10
  %124 = tail call ptr (ptr, ...) @concat(ptr noundef %121, ptr noundef %123, ptr noundef null) #9
  store ptr %124, ptr @data_type, align 8, !tbaa !48
  %125 = getelementptr inbounds %struct.tree_common, ptr %122, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !47
  %127 = tail call ptr (ptr, ...) @concat(ptr noundef %124, ptr noundef nonnull @.str.16, ptr noundef null) #9
  store ptr %127, ptr @data_type, align 8, !tbaa !48
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %120, !llvm.loop !61

129:                                              ; preds = %120, %116
  %130 = phi ptr [ @.str.4, %116 ], [ %127, %120 ]
  %131 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.17, ptr noundef %130, ptr noundef nonnull @.str.18, ptr noundef null) #9
  br label %132

132:                                              ; preds = %129, %113
  %133 = phi ptr [ %131, %129 ], [ %115, %113 ]
  store ptr %133, ptr @data_type, align 8, !tbaa !48
  %134 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.20, ptr noundef %133, ptr noundef null) #9
  store ptr %134, ptr @data_type, align 8, !tbaa !48
  br label %209

135:                                              ; preds = %20
  br i1 %10, label %139, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.tree_identifier, ptr %9, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !47
  br label %167

139:                                              ; preds = %135
  store ptr @.str.4, ptr @data_type, align 8, !tbaa !48
  %140 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !47
  %142 = icmp eq ptr %141, null
  br i1 %142, label %164, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.tree_list, ptr %141, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !47
  %146 = getelementptr inbounds %struct.tree_identifier, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !47
  %148 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.4, ptr noundef %147, ptr noundef null) #9
  store ptr %148, ptr @data_type, align 8, !tbaa !48
  %149 = getelementptr inbounds %struct.tree_common, ptr %141, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !47
  %151 = icmp eq ptr %150, null
  br i1 %151, label %164, label %152

152:                                              ; preds = %143, %152
  %153 = phi ptr [ %162, %152 ], [ %150, %143 ]
  %154 = phi ptr [ %160, %152 ], [ %148, %143 ]
  %155 = tail call ptr (ptr, ...) @concat(ptr noundef %154, ptr noundef nonnull @.str.21, ptr noundef null) #9
  store ptr %155, ptr @data_type, align 8, !tbaa !48
  %156 = getelementptr inbounds %struct.tree_list, ptr %153, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !47
  %158 = getelementptr inbounds %struct.tree_identifier, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !47
  %160 = tail call ptr (ptr, ...) @concat(ptr noundef %155, ptr noundef %159, ptr noundef null) #9
  store ptr %160, ptr @data_type, align 8, !tbaa !48
  %161 = getelementptr inbounds %struct.tree_common, ptr %153, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !47
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %152

164:                                              ; preds = %152, %143, %139
  %165 = phi ptr [ @.str.4, %139 ], [ %148, %143 ], [ %160, %152 ]
  %166 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.17, ptr noundef %165, ptr noundef nonnull @.str.22, ptr noundef null) #9
  br label %167

167:                                              ; preds = %164, %136
  %168 = phi ptr [ %166, %164 ], [ %138, %136 ]
  store ptr %168, ptr @data_type, align 8, !tbaa !48
  %169 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.23, ptr noundef %168, ptr noundef null) #9
  store ptr %169, ptr @data_type, align 8, !tbaa !48
  br label %209

170:                                              ; preds = %20
  %171 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !47
  %173 = getelementptr inbounds %struct.tree_identifier, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !47
  store ptr %174, ptr @data_type, align 8, !tbaa !48
  br label %209

175:                                              ; preds = %20, %20
  %176 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !47
  %178 = getelementptr inbounds %struct.tree_identifier, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !47
  store ptr %179, ptr @data_type, align 8, !tbaa !48
  %180 = and i64 %21, 2097152
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %209, label %182

182:                                              ; preds = %175
  %183 = trunc i64 %21 to i32
  %184 = lshr i32 %183, 20
  %185 = and i32 %184, 1
  %186 = lshr i32 %183, 18
  %187 = and i32 %186, 2
  %188 = or disjoint i32 %185, %187
  %189 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = lshr i32 %190, 11
  %192 = and i32 %191, 4
  %193 = lshr i64 %21, 48
  %194 = trunc i64 %193 to i32
  %195 = and i32 %194, 65280
  %196 = or disjoint i32 %188, %195
  %197 = or disjoint i32 %196, %192
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %182
  %200 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.24, ptr noundef %179, ptr noundef null) #9
  store ptr %200, ptr @data_type, align 8, !tbaa !48
  br label %209

201:                                              ; preds = %20
  %202 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !47
  %204 = getelementptr inbounds %struct.tree_identifier, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !47
  store ptr %205, ptr @data_type, align 8, !tbaa !48
  br label %209

206:                                              ; preds = %20
  store ptr @.str.25, ptr @data_type, align 8, !tbaa !48
  br label %209

207:                                              ; preds = %20
  store ptr @.str.26, ptr @data_type, align 8, !tbaa !48
  br label %209

208:                                              ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 450, ptr noundef nonnull @.str.28) #9
  br label %209

209:                                              ; preds = %80, %86, %109, %132, %167, %170, %201, %206, %207, %208, %66, %70, %57, %199, %182, %175, %15
  %210 = phi ptr [ %6, %15 ], [ %6, %208 ], [ %6, %207 ], [ %6, %206 ], [ %6, %201 ], [ %6, %199 ], [ %6, %182 ], [ %6, %175 ], [ %6, %170 ], [ %6, %167 ], [ %6, %132 ], [ %6, %109 ], [ %6, %86 ], [ %85, %80 ], [ %61, %57 ], [ %69, %66 ], [ %79, %70 ]
  %211 = load i64, ptr %7, align 8
  %212 = and i64 %211, 1048576
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.6, ptr noundef %210, ptr noundef null) #9
  %216 = load i64, ptr %7, align 8
  br label %217

217:                                              ; preds = %214, %209
  %218 = phi i64 [ %216, %214 ], [ %211, %209 ]
  %219 = phi ptr [ %215, %214 ], [ %210, %209 ]
  %220 = and i64 %218, 524288
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  %223 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.5, ptr noundef %219, ptr noundef null) #9
  br label %224

224:                                              ; preds = %222, %217
  %225 = phi ptr [ %223, %222 ], [ %219, %217 ]
  %226 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %227 = load i32, ptr %226, align 4
  %228 = and i32 %227, 8192
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %224
  %231 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.29, ptr noundef %225, ptr noundef null) #9
  br label %232

232:                                              ; preds = %224, %230
  %233 = phi ptr [ %231, %230 ], [ %225, %224 ]
  ret ptr %233
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @affix_data_type(ptr noundef %0) unnamed_addr #0 !prof !53 !PGOFuncName !62 {
  store ptr %0, ptr @libiberty_optr, align 8, !tbaa !48
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %3 = add i64 %2, 1
  store i64 %3, ptr @libiberty_len, align 8, !tbaa !63
  %4 = alloca i8, i64 %3, align 16
  store ptr %4, ptr @libiberty_nptr, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr align 1 %0, i64 %3, i1 false)
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %4, %1 ], [ %11, %9 ]
  %7 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(10) @.str.5, i64 noundef 9) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5, %12
  %10 = phi i64 [ 6, %12 ], [ 9, %5 ]
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  br label %5

12:                                               ; preds = %5
  %13 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(7) @.str.6, i64 noundef 6) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %9, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %6, %4
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load ptr, ptr @data_type, align 8, !tbaa !48
  %19 = call ptr (ptr, ...) @concat(ptr noundef %18, ptr noundef nonnull @.str.34, ptr noundef nonnull %4, ptr noundef null) #9
  br label %25

20:                                               ; preds = %15
  %21 = load i8, ptr %6, align 1, !tbaa !47
  store i8 0, ptr %6, align 1, !tbaa !47
  %22 = load ptr, ptr @data_type, align 8, !tbaa !48
  %23 = call ptr (ptr, ...) @concat(ptr noundef nonnull %4, ptr noundef %22, ptr noundef null) #9
  store i8 %21, ptr %6, align 1, !tbaa !47
  %24 = call ptr (ptr, ptr, ...) @reconcat(ptr noundef %23, ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef nonnull %6, ptr noundef null) #9
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi ptr [ %19, %17 ], [ %24, %20 ]
  ret ptr %26
}

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_formal_list_for_type(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !53 !PGOFuncName !65 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %51

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %4, %31
  %9 = phi ptr [ %35, %31 ], [ %6, %4 ]
  %10 = phi ptr [ %33, %31 ], [ @.str.4, %4 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !48
  %14 = icmp eq ptr %12, %13
  %15 = load i8, ptr %10, align 1, !tbaa !47
  %16 = icmp eq i8 %15, 0
  br i1 %14, label %41, label %17

17:                                               ; preds = %8
  br i1 %16, label %21, label %18

18:                                               ; preds = %17
  %19 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %10, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %20 = load ptr, ptr %11, align 8, !tbaa !47
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi ptr [ %20, %18 ], [ %12, %17 ]
  %23 = phi ptr [ %19, %18 ], [ %10, %17 ]
  %24 = tail call fastcc ptr @gen_type(ptr noundef nonnull @.str.4, ptr noundef %22, i32 noundef 0) #10
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @affix_data_type(ptr noundef nonnull %24) #10
  br label %31

29:                                               ; preds = %21
  %30 = load ptr, ptr @data_type, align 8, !tbaa !48
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ]
  %33 = tail call ptr (ptr, ...) @concat(ptr noundef %23, ptr noundef %32, ptr noundef null) #9
  %34 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %8, !llvm.loop !66

37:                                               ; preds = %31, %4
  %38 = phi ptr [ @.str.4, %4 ], [ %33, %31 ]
  %39 = load i8, ptr %38, align 1, !tbaa !47
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %46

41:                                               ; preds = %8
  br i1 %16, label %42, label %48

42:                                               ; preds = %41, %37
  %43 = load ptr, ptr %5, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str.31, ptr @.str.25
  br label %48

46:                                               ; preds = %37
  %47 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %38, ptr noundef nonnull @.str.32, ptr noundef null) #9
  br label %48

48:                                               ; preds = %41, %42, %46
  %49 = phi ptr [ %47, %46 ], [ %45, %42 ], [ %10, %41 ]
  %50 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.33, ptr noundef %49, ptr noundef nonnull @.str.12, ptr noundef null) #9
  br label %51

51:                                               ; preds = %2, %48
  %52 = phi ptr [ %50, %48 ], [ @.str.30, %2 ]
  ret ptr %52
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @reconcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @deserves_ellipsis(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !53 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !48
  br label %11

7:                                                ; preds = %11
  %8 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !llvm.loop !68

11:                                               ; preds = %5, %7
  %12 = phi ptr [ %3, %5 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.tree_list, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %19, label %7

16:                                               ; preds = %7, %1
  %17 = icmp ne ptr %3, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %11, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %11 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @gen_aux_info_record, ptr @expand_location, i64 1}
!36 = !{ptr @gen_aux_info_record, ptr @gen_decl, i64 1}
!37 = !{ptr @gen_aux_info_record, ptr @fprintf, i64 2}
!38 = !{ptr @gen_aux_info_record, ptr @gen_formal_list_for_func_def, i64 2}
!39 = !{ptr @gen_aux_info_record, ptr @fputc, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 5383}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"branch_weights", i32 5384, i32 1}
!47 = !{!44, !44, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !44, i64 0}
!50 = !{!51, !49, i64 0}
!51 = !{!"", !49, i64 0, !43, i64 8, !43, i64 12, !44, i64 16}
!52 = !{!51, !43, i64 8}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!"c-aux-info.c:gen_decl"}
!55 = !{!"c-aux-info.c:gen_formal_list_for_func_def"}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{i32 0, i32 2}
!59 = !{!"c-aux-info.c:gen_type"}
!60 = distinct !{!60, !57}
!61 = distinct !{!61, !57}
!62 = !{!"c-aux-info.c:affix_data_type"}
!63 = !{!64, !64, i64 0}
!64 = !{!"long", !44, i64 0}
!65 = !{!"c-aux-info.c:gen_formal_list_for_type"}
!66 = distinct !{!66, !57}
!67 = !{!"c-aux-info.c:deserves_ellipsis"}
!68 = distinct !{!68, !57}
