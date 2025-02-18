; ModuleID = 'cpp_pch.c'
source_filename = "cpp_pch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cset_converter = type { ptr, ptr, i32 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.macrodef_struct = type { i32, i16, i16 }
%struct.cpp_savedstate = type { ptr, i64, i64, ptr, ptr }
%struct.def_pragma_macro = type { ptr, ptr, ptr }
%struct.ht_node_list = type { ptr, i64, i64 }
%struct.save_macro_data = type { ptr, i64, i64, ptr }

@.str = private unnamed_addr constant [33 x i8] c"while writing precompiled header\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: not used because `%.*s' is poisoned\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"__GCC_HAVE_DWARF2_CFI_ASM\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: not used because `%.*s' not defined\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"%s: not used because `%.*s' defined as `%s' not `%.*s'\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: not used because `%s' is defined\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: not used because `__COUNTER__' is invalid\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"while reading precompiled header\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"( \0A\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @cpp_save_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = tail call ptr @xmalloc(i64 noundef 40) #16
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 60
  store ptr %3, ptr %4, align 8, !tbaa !41
  %5 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @cpp_string_hash, ptr noundef nonnull @cpp_string_eq, ptr noundef null) #16
  %6 = load ptr, ptr %4, align 8, !tbaa !41
  store ptr %5, ptr %6, align 8, !tbaa !58
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @save_idents, ptr noundef nonnull %6) #16
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @write_macdef, ptr noundef %1) #16
  ret i32 0
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @cpp_string_hash(ptr nocapture noundef readonly %0) #3 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = zext i32 %2 to i64
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_string, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %17, %8 ], [ 0, %5 ]
  %10 = phi i64 [ %18, %8 ], [ 0, %5 ]
  %11 = phi ptr [ %13, %8 ], [ %7, %5 ]
  %12 = mul i32 %9, 67
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = load i8, ptr %11, align 1, !tbaa !63
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, 113
  %17 = sub i32 %16, %15
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, %3
  br i1 %19, label %20, label %8, !llvm.loop !64

20:                                               ; preds = %8, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %8 ]
  ret i32 %21
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @cpp_string_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !60
  %4 = load i32, ptr %1, align 8, !tbaa !60
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_string, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = zext i32 %3 to i64
  %12 = tail call i32 @bcmp(ptr %8, ptr %10, i64 %11)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %6 ]
  ret i32 %16
}

declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @save_idents(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 !prof !34 {
  %4 = alloca %struct.cpp_string, align 8
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 63
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %10 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !67
  store i32 %11, ptr %4, align 8, !tbaa !60
  %12 = load ptr, ptr %1, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !62
  %14 = load ptr, ptr %2, align 8, !tbaa !58
  %15 = call ptr @htab_find_slot(ptr noundef %14, ptr noundef nonnull %4, i32 noundef 1) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = call ptr @xmalloc(i64 noundef 16) #16
  store ptr %19, ptr %15, align 8, !tbaa !35
  %20 = load i32, ptr %10, align 8, !tbaa !67
  store i32 %20, ptr %19, align 8, !tbaa !60
  %21 = zext i32 %20 to i64
  %22 = call ptr @xmalloc(i64 noundef %21) #16
  %23 = getelementptr inbounds %struct.cpp_string, ptr %19, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !62
  %24 = load ptr, ptr %1, align 8, !tbaa !70
  %25 = load i32, ptr %10, align 8, !tbaa !67
  %26 = zext i32 %25 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %24, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %18, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %28

28:                                               ; preds = %27, %3
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @write_macdef(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #2 !prof !34 {
  %4 = alloca %struct.macrodef_struct, align 4
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 63
  switch i16 %7, label %44 [
    i16 0, label %8
    i16 1, label %11
    i16 2, label %45
  ]

8:                                                ; preds = %3
  %9 = and i16 %6, 384
  %10 = icmp eq i16 %9, 128
  br i1 %10, label %14, label %45

11:                                               ; preds = %3
  %12 = and i16 %6, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %8, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %15 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !67
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 1
  store i16 %17, ptr %18, align 4, !tbaa !71
  %19 = lshr i16 %6, 6
  %20 = and i16 %19, 2
  %21 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 2
  store i16 %20, ptr %21, align 2, !tbaa !73
  %22 = icmp eq i16 %7, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %1) #16
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #17
  %26 = trunc i64 %25 to i32
  br label %30

27:                                               ; preds = %14
  %28 = load ptr, ptr %1, align 8, !tbaa !70
  %29 = and i32 %16, 65535
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ %29, %27 ], [ %26, %23 ]
  %32 = phi ptr [ %28, %27 ], [ %24, %23 ]
  store i32 %31, ptr %4, align 4, !tbaa !74
  %33 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %2)
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, ptr %4, align 4, !tbaa !74
  %37 = zext i32 %36 to i64
  %38 = tail call i64 @fwrite(ptr noundef %32, i64 noundef 1, i64 noundef %37, ptr noundef %2)
  %39 = icmp eq i64 %38, %37
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %30
  %41 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #16
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi i32 [ 0, %40 ], [ 1, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %45

44:                                               ; preds = %3
  tail call void @abort() #18
  unreachable

45:                                               ; preds = %11, %42, %3, %8
  %46 = phi i32 [ 1, %8 ], [ %43, %42 ], [ 1, %3 ], [ 1, %11 ]
  ret i32 %46
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @cpp_write_pch_deps(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = alloca %struct.macrodef_struct, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 60
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @count_defs, ptr noundef %5) #16
  %8 = load i64, ptr %7, align 8, !tbaa !75
  %9 = shl i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #16
  %11 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !76
  store i64 0, ptr %7, align 8, !tbaa !75
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @write_defs, ptr noundef %5) #16
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = load i64, ptr %7, align 8, !tbaa !75
  tail call void @spec_qsort(ptr noundef %12, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @comp_hashnodes) #16
  %14 = load i64, ptr %6, align 8, !tbaa !77
  %15 = tail call ptr @xmalloc(i64 noundef %14) #16
  %16 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !78
  %17 = load i64, ptr %7, align 8, !tbaa !75
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2, %19
  %20 = phi i64 [ %31, %19 ], [ 0, %2 ]
  %21 = phi ptr [ %30, %19 ], [ %15, %2 ]
  %22 = load ptr, ptr %11, align 8, !tbaa !76
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.ht_identifier, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %24, align 8, !tbaa !70
  %29 = add nuw nsw i64 %27, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 1 dereferenceable(1) %28, i64 %29, i1 false)
  %30 = getelementptr inbounds i8, ptr %21, i64 %29
  %31 = add nuw i64 %20, 1
  %32 = load i64, ptr %7, align 8, !tbaa !75
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %19, label %34, !llvm.loop !79

34:                                               ; preds = %19, %2
  store i64 0, ptr %3, align 8
  %35 = load i64, ptr %6, align 8, !tbaa !77
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr %3, align 8, !tbaa !74
  %37 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %1)
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load ptr, ptr %16, align 8, !tbaa !78
  %41 = load i64, ptr %6, align 8, !tbaa !77
  %42 = tail call i64 @fwrite(ptr noundef %40, i64 noundef %41, i64 noundef 1, ptr noundef %1)
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load ptr, ptr %16, align 8, !tbaa !78
  tail call void @free(ptr noundef %45) #16
  tail call void @free(ptr noundef %5) #16
  store ptr null, ptr %4, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %47 = tail call i64 @fwrite(ptr noundef nonnull %46, i64 noundef 4, i64 noundef 1, ptr noundef %1)
  %48 = icmp eq i64 %47, 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %44, %34, %39
  %50 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #16
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ 0, %44 ], [ -1, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @count_defs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 !prof !34 {
  %4 = alloca %struct.cpp_string, align 8
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 63
  switch i16 %7, label %30 [
    i16 1, label %8
    i16 0, label %11
    i16 2, label %31
  ]

8:                                                ; preds = %3
  %9 = and i16 %6, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %12 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !67
  store i32 %13, ptr %4, align 8, !tbaa !60
  %14 = load ptr, ptr %1, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !62
  %16 = load ptr, ptr %2, align 8, !tbaa !58
  %17 = call ptr @htab_find(ptr noundef %16, ptr noundef nonnull %4) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load i32, ptr %12, align 8, !tbaa !67
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpp_savedstate, ptr %2, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !77
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.cpp_savedstate, ptr %2, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !75
  %28 = add i64 %27, 1
  store i64 %28, ptr %26, align 8, !tbaa !75
  br label %29

29:                                               ; preds = %19, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %31

30:                                               ; preds = %3
  tail call void @abort() #18
  unreachable

31:                                               ; preds = %8, %3, %29
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @write_defs(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #2 !prof !34 {
  %4 = alloca %struct.cpp_string, align 8
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 63
  switch i16 %7, label %27 [
    i16 1, label %8
    i16 0, label %11
    i16 2, label %28
  ]

8:                                                ; preds = %3
  %9 = and i16 %6, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %8, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %12 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !67
  store i32 %13, ptr %4, align 8, !tbaa !60
  %14 = load ptr, ptr %1, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !62
  %16 = load ptr, ptr %2, align 8, !tbaa !58
  %17 = call ptr @htab_find(ptr noundef %16, ptr noundef nonnull %4) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.cpp_savedstate, ptr %2, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.cpp_savedstate, ptr %2, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %1, ptr %24, align 8, !tbaa !35
  %25 = add i64 %23, 1
  store i64 %25, ptr %22, align 8, !tbaa !75
  br label %26

26:                                               ; preds = %19, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %28

27:                                               ; preds = %3
  tail call void @abort() #18
  unreachable

28:                                               ; preds = %8, %3, %26
  ret i32 1
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @comp_hashnodes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load ptr, ptr %3, align 8, !tbaa !70
  %6 = load ptr, ptr %4, align 8, !tbaa !70
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %6) #17
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @cpp_write_pch_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @deps_init() #16
  store ptr %7, ptr %3, align 8, !tbaa !80
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !80
  %10 = tail call i32 @deps_save(ptr noundef %9, ptr noundef %1) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @_cpp_save_file_entries(ptr noundef %0, ptr noundef %1) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %17 = tail call i64 @fwrite(ptr noundef nonnull %16, i64 noundef 4, i64 noundef 1, ptr noundef %1)
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @_cpp_save_pushed_macros(ptr noundef %0, ptr noundef %1), !range !81
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %15, %12, %8
  %23 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #16
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ 0, %19 ], [ -1, %22 ]
  ret i32 %25
}

declare ptr @deps_init() local_unnamed_addr #1

declare i32 @deps_save(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_save_file_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @_cpp_save_pushed_macros(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 !prof !34 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = phi ptr [ %5, %2 ], [ %9, %6 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6, !llvm.loop !83

12:                                               ; preds = %6
  store i64 %7, ptr %3, align 8, !tbaa !82
  %13 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %1)
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = load i64, ptr %3, align 8, !tbaa !82
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %15
  %19 = shl i64 %16, 3
  %20 = alloca i8, i64 %19, align 16
  %21 = load ptr, ptr %5, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %25, %18
  %24 = tail call i64 @llvm.umax.i64(i64 %16, i64 1)
  br label %32

25:                                               ; preds = %18, %25
  %26 = phi ptr [ %30, %25 ], [ %21, %18 ]
  %27 = phi i64 [ %28, %25 ], [ %16, %18 ]
  %28 = add i64 %27, -1
  %29 = getelementptr inbounds ptr, ptr %20, i64 %28
  store ptr %26, ptr %29, align 8, !tbaa !35
  %30 = load ptr, ptr %26, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %23, label %25, !llvm.loop !84

32:                                               ; preds = %23, %62
  %33 = phi i64 [ 0, %23 ], [ %64, %62 ]
  %34 = getelementptr inbounds ptr, ptr %20, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.def_pragma_macro, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = tail call ptr @cpp_push_definition(ptr noundef %0, ptr noundef %37) #16
  %39 = load ptr, ptr %36, align 8, !tbaa !85
  %40 = getelementptr inbounds %struct.def_pragma_macro, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !87
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %39, ptr noundef %41) #16
  %42 = load ptr, ptr %36, align 8, !tbaa !85
  %43 = tail call ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %42) #16
  %44 = load ptr, ptr %36, align 8, !tbaa !85
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #17
  store i64 %45, ptr %4, align 8, !tbaa !82
  %46 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %1)
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %66

48:                                               ; preds = %32
  %49 = load ptr, ptr %36, align 8, !tbaa !85
  %50 = load i64, ptr %4, align 8, !tbaa !82
  %51 = tail call i64 @fwrite(ptr noundef %49, i64 noundef %50, i64 noundef 1, ptr noundef %1)
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %43) #16
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #17
  store i64 %55, ptr %4, align 8, !tbaa !82
  %56 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %1)
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i64, ptr %4, align 8, !tbaa !82
  %60 = tail call i64 @fwrite(ptr noundef %54, i64 noundef %59, i64 noundef 1, ptr noundef %1)
  %61 = icmp eq i64 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load ptr, ptr %36, align 8, !tbaa !85
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %63, ptr noundef %38) #16
  %64 = add nuw i64 %33, 1
  %65 = icmp eq i64 %64, %24
  br i1 %65, label %66, label %32, !llvm.loop !88

66:                                               ; preds = %62, %53, %58, %32, %48, %15, %12
  %67 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 0, %48 ], [ 0, %32 ], [ 0, %58 ], [ 0, %53 ], [ 1, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %67
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cpp_valid_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = alloca %struct.macrodef_struct, align 4
  %5 = alloca %struct.ht_node_list, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %7 = tail call ptr @xmalloc(i64 noundef 256) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  br label %10

10:                                               ; preds = %110, %3
  %11 = phi ptr [ %7, %3 ], [ %107, %110 ]
  %12 = phi i64 [ 256, %3 ], [ %108, %110 ]
  %13 = call i64 @read(i32 noundef %2, ptr noundef nonnull %4, i64 noundef 8) #16
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %106

15:                                               ; preds = %10
  %16 = load i16, ptr %8, align 4, !tbaa !71
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %106, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %9, align 2, !tbaa !89
  %20 = icmp eq i8 %19, 0
  %21 = load i32, ptr %4, align 4, !tbaa !74
  %22 = zext i32 %21 to i64
  br i1 %20, label %27, label %23

23:                                               ; preds = %18
  %24 = tail call i64 @lseek(i32 noundef %2, i64 noundef %22, i32 noundef 1) #16
  %25 = icmp eq i64 %24, -1
  %26 = select i1 %25, i32 4, i32 3
  br label %106

27:                                               ; preds = %18
  %28 = icmp ult i64 %12, %22
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  tail call void @free(ptr noundef %11) #16
  %30 = load i32, ptr %4, align 4, !tbaa !74
  %31 = add i32 %30, 256
  %32 = zext i32 %31 to i64
  %33 = tail call ptr @xmalloc(i64 noundef %32) #16
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi ptr [ %33, %29 ], [ %11, %27 ]
  %36 = phi i64 [ %32, %29 ], [ %12, %27 ]
  %37 = load i32, ptr %4, align 4, !tbaa !74
  %38 = zext i32 %37 to i64
  %39 = tail call i64 @read(i32 noundef %2, ptr noundef %35, i64 noundef %38) #16
  %40 = load i32, ptr %4, align 4, !tbaa !74
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %106

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 2
  %45 = load i16, ptr %8, align 4, !tbaa !71
  %46 = zext i16 %45 to i32
  %47 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %35, i32 noundef %46) #16
  %48 = load i16, ptr %44, align 2, !tbaa !73
  %49 = and i16 %48, 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.cpp_hashnode, ptr %47, i64 0, i32 3
  %53 = load i16, ptr %52, align 2
  %54 = lshr i16 %53, 6
  %55 = zext nneg i16 %54 to i32
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51, %43
  %59 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %60 = load i8, ptr %59, align 4, !tbaa !90
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %106, label %62

62:                                               ; preds = %58
  %63 = load i16, ptr %8, align 4, !tbaa !71
  %64 = zext i16 %63 to i32
  %65 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %64, ptr noundef %35) #16
  br label %106

66:                                               ; preds = %51
  %67 = and i16 %53, 63
  %68 = icmp eq i16 %67, 1
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = and i32 %55, 128
  %71 = icmp eq i32 %70, 0
  %72 = load i16, ptr %8, align 4
  %73 = icmp eq i16 %72, 25
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %35, ptr noundef nonnull dereferenceable(25) @.str.2, i64 25)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %106, label %78, !llvm.loop !91

78:                                               ; preds = %75, %69
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %80 = load i8, ptr %79, align 4, !tbaa !90
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %78
  %83 = zext i16 %72 to i32
  %84 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %83, ptr noundef %35) #16
  br label %106

85:                                               ; preds = %66
  %86 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %47) #16
  %87 = load i32, ptr %4, align 4, !tbaa !74
  %88 = zext i32 %87 to i64
  %89 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %86) #17
  %90 = icmp eq i64 %89, %88
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = tail call i32 @bcmp(ptr %35, ptr %86, i64 %88)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %91, %85
  %95 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %96 = load i8, ptr %95, align 4, !tbaa !90
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i16, ptr %8, align 4, !tbaa !71
  %100 = zext i16 %99 to i32
  %101 = zext i16 %99 to i64
  %102 = getelementptr inbounds i8, ptr %86, i64 %101
  %103 = sub i32 %87, %100
  %104 = getelementptr inbounds i8, ptr %35, i64 %101
  %105 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %100, ptr noundef %35, ptr noundef %102, i32 noundef %103, ptr noundef %104) #16
  br label %106

106:                                              ; preds = %91, %75, %10, %94, %98, %78, %82, %58, %62, %34, %23, %15
  %107 = phi ptr [ %11, %15 ], [ %11, %23 ], [ %35, %34 ], [ %35, %62 ], [ %35, %58 ], [ %35, %82 ], [ %35, %78 ], [ %35, %98 ], [ %35, %94 ], [ %11, %10 ], [ %35, %75 ], [ %35, %91 ]
  %108 = phi i64 [ %12, %15 ], [ %12, %23 ], [ %36, %34 ], [ %36, %62 ], [ %36, %58 ], [ %36, %82 ], [ %36, %78 ], [ %36, %98 ], [ %36, %94 ], [ %12, %10 ], [ %36, %75 ], [ %36, %91 ]
  %109 = phi i32 [ 2, %15 ], [ %26, %23 ], [ 4, %34 ], [ 5, %62 ], [ 5, %58 ], [ 5, %82 ], [ 5, %78 ], [ 5, %98 ], [ 5, %94 ], [ 4, %10 ], [ 3, %75 ], [ 0, %91 ]
  switch i32 %109, label %187 [
    i32 0, label %110
    i32 2, label %111
    i32 3, label %110
    i32 4, label %173
    i32 5, label %175
  ]

110:                                              ; preds = %106, %106
  br label %10, !llvm.loop !91

111:                                              ; preds = %106
  tail call void @free(ptr noundef %107) #16
  %112 = load i32, ptr %4, align 4, !tbaa !74
  %113 = zext i32 %112 to i64
  %114 = tail call ptr @xmalloc(i64 noundef %113) #16
  %115 = tail call i64 @read(i32 noundef %2, ptr noundef %114, i64 noundef %113) #16
  %116 = icmp eq i64 %115, %113
  br i1 %116, label %117, label %173

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ht_node_list, ptr %5, i64 0, i32 1
  store i64 0, ptr %118, align 8, !tbaa !92
  %119 = getelementptr inbounds %struct.ht_node_list, ptr %5, i64 0, i32 2
  store i64 10, ptr %119, align 8, !tbaa !94
  %120 = tail call ptr @xmalloc(i64 noundef 80) #16
  store ptr %120, ptr %5, align 8, !tbaa !95
  call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @collect_ht_nodes, ptr noundef nonnull %5) #16
  %121 = load ptr, ptr %5, align 8, !tbaa !95
  %122 = load i64, ptr %118, align 8, !tbaa !92
  call void @spec_qsort(ptr noundef %121, i64 noundef %122, i64 noundef 8, ptr noundef nonnull @comp_hashnodes) #16
  %123 = getelementptr inbounds i8, ptr %114, i64 %113
  %124 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  br label %125

125:                                              ; preds = %153, %117
  %126 = phi ptr [ %114, %117 ], [ %154, %153 ]
  %127 = phi i32 [ 0, %117 ], [ %155, %153 ]
  %128 = icmp ult ptr %126, %123
  %129 = zext i32 %127 to i64
  %130 = load i64, ptr %118, align 8
  %131 = icmp ugt i64 %130, %129
  %132 = select i1 %128, i1 %131, i1 false
  %133 = load ptr, ptr %5, align 8, !tbaa !95
  br i1 %132, label %134, label %157

134:                                              ; preds = %125
  %135 = getelementptr inbounds ptr, ptr %133, i64 %129
  %136 = load ptr, ptr %135, align 8, !tbaa !35
  %137 = load ptr, ptr %136, align 8, !tbaa !70
  %138 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(1) %137) #17
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126) #17
  %142 = add i64 %141, 1
  %143 = getelementptr inbounds i8, ptr %126, i64 %142
  br label %153

144:                                              ; preds = %134
  %145 = icmp eq i32 %138, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %144
  %147 = add i32 %127, 1
  br label %153

148:                                              ; preds = %144
  %149 = load i8, ptr %124, align 4, !tbaa !90
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %126) #16
  br label %153

153:                                              ; preds = %140, %146, %148, %151
  %154 = phi ptr [ %126, %151 ], [ %126, %148 ], [ %143, %140 ], [ %126, %146 ]
  %155 = phi i32 [ %127, %151 ], [ %127, %148 ], [ %127, %140 ], [ %147, %146 ]
  %156 = phi i32 [ 5, %151 ], [ 5, %148 ], [ 0, %140 ], [ 0, %146 ]
  switch i32 %156, label %187 [
    i32 0, label %125
    i32 5, label %175
  ], !llvm.loop !96

157:                                              ; preds = %125
  call void @free(ptr noundef %133) #16
  store ptr null, ptr %5, align 8, !tbaa !95
  call void @free(ptr noundef %114) #16
  %158 = call i64 @read(i32 noundef %2, ptr noundef nonnull %6, i64 noundef 4) #16
  %159 = icmp eq i64 %158, 4
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i32, ptr %6, align 4, !tbaa !39
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %187, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %165 = load i32, ptr %164, align 8, !tbaa !97
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %187, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %169 = load i8, ptr %168, align 4, !tbaa !90
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %1) #16
  br label %175

173:                                              ; preds = %106, %157, %111
  %174 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.7) #16
  br label %187

175:                                              ; preds = %106, %153, %167, %171
  %176 = phi ptr [ null, %171 ], [ null, %167 ], [ %114, %153 ], [ null, %106 ]
  %177 = phi ptr [ null, %171 ], [ null, %167 ], [ null, %153 ], [ %107, %106 ]
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  call void @free(ptr noundef %177) #16
  br label %180

180:                                              ; preds = %179, %175
  %181 = icmp eq ptr %176, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  call void @free(ptr noundef %176) #16
  br label %183

183:                                              ; preds = %182, %180
  %184 = load ptr, ptr %5, align 8, !tbaa !95
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  call void @free(ptr noundef %184) #16
  br label %187

187:                                              ; preds = %106, %153, %183, %186, %160, %163, %173
  %188 = phi i32 [ -1, %173 ], [ 0, %163 ], [ 0, %160 ], [ 1, %186 ], [ 1, %183 ], [ undef, %153 ], [ undef, %106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %188
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

declare ptr @cpp_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @cpp_macro_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @collect_ht_nodes(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #2 !prof !34 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 191
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ht_node_list, ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.ht_node_list, ptr %2, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !94
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = shl i64 %12, 1
  store i64 %15, ptr %11, align 8, !tbaa !94
  %16 = load ptr, ptr %2, align 8, !tbaa !95
  %17 = shl i64 %12, 4
  %18 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %17) #16
  store ptr %18, ptr %2, align 8, !tbaa !95
  br label %19

19:                                               ; preds = %14, %8
  %20 = load ptr, ptr %2, align 8, !tbaa !95
  %21 = load i64, ptr %9, align 8, !tbaa !92
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  store ptr %1, ptr %22, align 8, !tbaa !35
  %23 = add i64 %21, 1
  store i64 %23, ptr %9, align 8, !tbaa !92
  br label %24

24:                                               ; preds = %3, %19
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_prepare_state(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 !prof !34 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #16
  %4 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 2
  store i64 512, ptr %4, align 8, !tbaa !98
  %5 = tail call ptr @xmalloc(i64 noundef 4096) #16
  store ptr %5, ptr %3, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !101
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @save_macros, ptr noundef nonnull %3) #16
  %7 = tail call ptr @_cpp_save_pragma_names(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !102
  store ptr %3, ptr %1, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @save_macros(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #2 !prof !34 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 63
  %7 = icmp ne i16 %6, 0
  %8 = and i16 %5, 256
  %9 = icmp eq i16 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.save_macro_data, ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.save_macro_data, ptr %2, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !98
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = shl i64 %15, 1
  store i64 %18, ptr %14, align 8, !tbaa !98
  %19 = load ptr, ptr %2, align 8, !tbaa !100
  %20 = shl i64 %15, 4
  %21 = tail call ptr @xrealloc(ptr noundef %19, i64 noundef %20) #16
  store ptr %21, ptr %2, align 8, !tbaa !100
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i16, ptr %4, align 2
  %24 = and i16 %23, 63
  switch i16 %24, label %39 [
    i16 2, label %40
    i16 1, label %25
  ]

25:                                               ; preds = %22
  %26 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %1) #16
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #17
  %28 = add i64 %27, 2
  %29 = tail call ptr @xmemdup(ptr noundef %26, i64 noundef %27, i64 noundef %28) #16
  %30 = load ptr, ptr %2, align 8, !tbaa !100
  %31 = load i64, ptr %12, align 8, !tbaa !101
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %29, ptr %32, align 8, !tbaa !35
  %33 = load ptr, ptr %2, align 8, !tbaa !100
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds i8, ptr %35, i64 %27
  store i8 10, ptr %36, align 1, !tbaa !63
  %37 = load i64, ptr %12, align 8, !tbaa !101
  %38 = add i64 %37, 1
  store i64 %38, ptr %12, align 8, !tbaa !101
  br label %40

39:                                               ; preds = %22
  tail call void @abort() #18
  unreachable

40:                                               ; preds = %3, %25, %22
  ret i32 1
}

declare ptr @_cpp_save_pragma_names(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @cpp_read_state(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #2 !prof !34 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lexer_state, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %11 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 7) #16
  store ptr %11, ptr %10, align 8, !tbaa !103
  %12 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 4) #16
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !104
  %14 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 5) #16
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !105
  %16 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 11) #16
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !106
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %18, i64 20, i1 false), !tbaa.struct !107
  store i8 1, ptr %18, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %19, align 8, !tbaa !109
  %20 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 0, ptr %20, align 1, !tbaa !110
  %21 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !101
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %4, %55
  %25 = phi i64 [ %59, %55 ], [ 0, %4 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !100
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = tail call i64 @strcspn(ptr noundef %28, ptr noundef nonnull @.str.12) #17
  %30 = trunc i64 %29 to i32
  %31 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %28, i32 noundef %30) #16
  %32 = getelementptr inbounds %struct.cpp_hashnode, ptr %31, i64 0, i32 3
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %33, 63
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %24
  %37 = load ptr, ptr %3, align 8, !tbaa !100
  %38 = getelementptr inbounds ptr, ptr %37, i64 %25
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = shl i64 %29, 32
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %42, i32 noundef 10) #17
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %42 to i64
  %46 = sub i64 %44, %45
  %47 = tail call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef %42, i64 noundef %46, i32 noundef 1) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %36
  tail call void @_cpp_clean_line(ptr noundef %0) #16
  %50 = tail call zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr noundef %31) #16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @abort() #18
  unreachable

53:                                               ; preds = %49
  tail call void @_cpp_pop_buffer(ptr noundef %0) #16
  br label %55

54:                                               ; preds = %36
  tail call void @abort() #18
  unreachable

55:                                               ; preds = %53, %24
  %56 = load ptr, ptr %3, align 8, !tbaa !100
  %57 = getelementptr inbounds ptr, ptr %56, i64 %25
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  tail call void @free(ptr noundef %58) #16
  %59 = add nuw i64 %25, 1
  %60 = load i64, ptr %21, align 8, !tbaa !101
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %24, label %62, !llvm.loop !111

62:                                               ; preds = %55, %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %18, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !107
  %63 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  tail call void @_cpp_restore_pragma_names(ptr noundef %0, ptr noundef %64) #16
  tail call void @free(ptr noundef %3) #16
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %66 = load ptr, ptr %65, align 8, !tbaa !80
  %67 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 42
  %68 = load i8, ptr %67, align 1, !tbaa !112
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, ptr null, ptr %1
  %71 = tail call i32 @deps_restore(ptr noundef %66, ptr noundef %2, ptr noundef %70) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %152

73:                                               ; preds = %62
  %74 = tail call zeroext i8 @_cpp_read_file_entries(ptr noundef %0, ptr noundef %2) #16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %152, label %76

76:                                               ; preds = %73
  %77 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 4, i64 noundef 1, ptr noundef %2)
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %79, label %152

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %81 = load i32, ptr %80, align 8, !tbaa !97
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, ptr %9, align 4, !tbaa !39
  store i32 %84, ptr %80, align 8, !tbaa !97
  br label %85

85:                                               ; preds = %83, %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %86 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %2)
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %88, label %151

88:                                               ; preds = %85
  %89 = load i64, ptr %5, align 8, !tbaa !82
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %150, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  br label %93

93:                                               ; preds = %91, %141
  %94 = phi i64 [ 0, %91 ], [ %147, %141 ]
  %95 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 8, i64 noundef 1, ptr noundef %2)
  %96 = icmp eq i64 %95, 1
  br i1 %96, label %97, label %151

97:                                               ; preds = %93
  %98 = tail call ptr @xmalloc(i64 noundef 24) #16
  %99 = load i64, ptr %6, align 8, !tbaa !82
  %100 = add i64 %99, 1
  %101 = tail call ptr @xmalloc(i64 noundef %100) #16
  %102 = getelementptr inbounds %struct.def_pragma_macro, ptr %98, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !85
  %103 = getelementptr inbounds i8, ptr %101, i64 %99
  store i8 0, ptr %103, align 1, !tbaa !63
  %104 = load ptr, ptr %102, align 8, !tbaa !85
  %105 = tail call i64 @fread(ptr noundef %104, i64 noundef %99, i64 noundef 1, ptr noundef %2)
  %106 = icmp eq i64 %105, 1
  br i1 %106, label %107, label %151

107:                                              ; preds = %97
  %108 = load ptr, ptr %102, align 8, !tbaa !85
  %109 = tail call ptr @cpp_push_definition(ptr noundef %0, ptr noundef %108) #16
  %110 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 8, i64 noundef 1, ptr noundef %2)
  %111 = icmp eq i64 %110, 1
  br i1 %111, label %112, label %151

112:                                              ; preds = %107
  %113 = load i64, ptr %7, align 8, !tbaa !82
  %114 = add i64 %113, 2
  %115 = tail call ptr @xmalloc(i64 noundef %114) #16
  %116 = getelementptr inbounds i8, ptr %115, i64 %113
  store i8 10, ptr %116, align 1, !tbaa !63
  %117 = getelementptr i8, ptr %116, i64 1
  store i8 0, ptr %117, align 1, !tbaa !63
  %118 = tail call i64 @fread(ptr noundef %115, i64 noundef %113, i64 noundef 1, ptr noundef %2)
  %119 = icmp eq i64 %118, 1
  br i1 %119, label %120, label %151

120:                                              ; preds = %112
  %121 = load ptr, ptr %102, align 8, !tbaa !85
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %121, ptr noundef null) #16
  %122 = tail call i64 @strcspn(ptr noundef %115, ptr noundef nonnull @.str.12) #17
  %123 = trunc i64 %122 to i32
  %124 = shl i64 %122, 32
  %125 = ashr exact i64 %124, 32
  %126 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %115, i32 noundef %123) #16
  %127 = getelementptr inbounds i8, ptr %115, i64 %125
  %128 = getelementptr inbounds %struct.cpp_hashnode, ptr %126, i64 0, i32 3
  %129 = load i16, ptr %128, align 2
  %130 = and i16 %129, -10688
  store i16 %130, ptr %128, align 2
  %131 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %127, i32 noundef 10) #17
  %132 = ptrtoint ptr %131 to i64
  %133 = ptrtoint ptr %127 to i64
  %134 = sub i64 %132, %133
  %135 = tail call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef %127, i64 noundef %134, i32 noundef 1) #16
  %136 = icmp eq ptr %135, null
  br i1 %136, label %149, label %137

137:                                              ; preds = %120
  tail call void @_cpp_clean_line(ptr noundef %0) #16
  %138 = tail call zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr noundef %126) #16
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  tail call void @abort() #18
  unreachable

141:                                              ; preds = %137
  tail call void @_cpp_pop_buffer(ptr noundef %0) #16
  %142 = load ptr, ptr %102, align 8, !tbaa !85
  %143 = tail call ptr @cpp_push_definition(ptr noundef %0, ptr noundef %142) #16
  %144 = getelementptr inbounds %struct.def_pragma_macro, ptr %98, i64 0, i32 2
  store ptr %143, ptr %144, align 8, !tbaa !87
  tail call void @free(ptr noundef %115) #16
  %145 = load ptr, ptr %92, align 8, !tbaa !113
  store ptr %145, ptr %98, align 8, !tbaa !114
  store ptr %98, ptr %92, align 8, !tbaa !113
  %146 = load ptr, ptr %102, align 8, !tbaa !85
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %146, ptr noundef %109) #16
  %147 = add nuw i64 %94, 1
  %148 = icmp eq i64 %147, %89
  br i1 %148, label %150, label %93, !llvm.loop !115

149:                                              ; preds = %120
  tail call void @abort() #18
  unreachable

150:                                              ; preds = %141, %88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %154

151:                                              ; preds = %112, %107, %97, %93, %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %152

152:                                              ; preds = %151, %76, %73, %62
  %153 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.7) #16
  br label %154

154:                                              ; preds = %150, %152
  %155 = phi i32 [ -1, %152 ], [ 0, %150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8)
  ret i32 %155
}

declare ptr @cpp_push_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_cpp_clean_line(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_create_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #1

declare void @_cpp_restore_pragma_names(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @deps_restore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_read_file_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cpp_push_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cpp_pop_definition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_lex_identifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

declare ptr @xmemdup(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

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
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !36, i64 1264}
!42 = !{!"cpp_reader", !36, i64 0, !36, i64 8, !43, i64 16, !36, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !44, i64 80, !36, i64 136, !36, i64 144, !45, i64 152, !40, i64 176, !37, i64 180, !36, i64 184, !36, i64 192, !47, i64 200, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !49, i64 312, !37, i64 400, !37, i64 401, !36, i64 408, !36, i64 416, !37, i64 424, !36, i64 432, !50, i64 440, !36, i64 472, !40, i64 480, !40, i64 484, !36, i64 488, !40, i64 496, !51, i64 504, !51, i64 528, !51, i64 552, !51, i64 576, !51, i64 600, !36, i64 624, !36, i64 632, !45, i64 640, !45, i64 664, !36, i64 688, !49, i64 696, !49, i64 784, !36, i64 872, !52, i64 880, !36, i64 1016, !36, i64 1024, !36, i64 1032, !53, i64 1040, !55, i64 1168, !37, i64 1200, !56, i64 1208, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !40, i64 1272, !57, i64 1280, !36, i64 1296}
!43 = !{!"lexer_state", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8, !37, i64 9, !37, i64 10, !40, i64 12, !37, i64 16, !37, i64 17}
!44 = !{!"cpp_context", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !36, i64 40, !37, i64 48}
!45 = !{!"cpp_token", !40, i64 0, !40, i64 4, !46, i64 6, !37, i64 8}
!46 = !{!"short", !37, i64 0}
!47 = !{!"cpp_dir", !36, i64 0, !36, i64 8, !40, i64 16, !37, i64 20, !37, i64 21, !36, i64 24, !36, i64 32, !36, i64 40, !48, i64 48, !48, i64 56}
!48 = !{!"long", !37, i64 0}
!49 = !{!"obstack", !48, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !48, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !40, i64 80, !40, i64 80}
!50 = !{!"tokenrun", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!51 = !{!"cset_converter", !36, i64 0, !36, i64 8, !40, i64 16}
!52 = !{!"cpp_callbacks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!53 = !{!"cpp_options", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15, !37, i64 16, !37, i64 17, !37, i64 18, !37, i64 19, !37, i64 20, !37, i64 21, !37, i64 22, !37, i64 23, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !37, i64 28, !37, i64 29, !37, i64 30, !37, i64 31, !37, i64 32, !37, i64 33, !37, i64 34, !37, i64 35, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !37, i64 40, !37, i64 41, !37, i64 42, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !37, i64 76, !37, i64 77, !54, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !37, i64 120, !37, i64 121, !37, i64 122, !37, i64 123, !37, i64 124}
!54 = !{!"", !40, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7}
!55 = !{!"spec_nodes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!56 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24}
!57 = !{!"", !36, i64 0, !40, i64 8, !40, i64 12}
!58 = !{!59, !36, i64 0}
!59 = !{!"cpp_savedstate", !36, i64 0, !48, i64 8, !48, i64 16, !36, i64 24, !36, i64 32}
!60 = !{!61, !40, i64 0}
!61 = !{!"cpp_string", !40, i64 0, !36, i64 8}
!62 = !{!61, !36, i64 8}
!63 = !{!37, !37, i64 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!68, !40, i64 8}
!68 = !{!"cpp_hashnode", !69, i64 0, !40, i64 16, !40, i64 16, !37, i64 17, !40, i64 18, !40, i64 18, !37, i64 24}
!69 = !{!"ht_identifier", !36, i64 0, !40, i64 8, !40, i64 12}
!70 = !{!68, !36, i64 0}
!71 = !{!72, !46, i64 4}
!72 = !{!"macrodef_struct", !40, i64 0, !46, i64 4, !46, i64 6}
!73 = !{!72, !46, i64 6}
!74 = !{!72, !40, i64 0}
!75 = !{!59, !48, i64 16}
!76 = !{!59, !36, i64 24}
!77 = !{!59, !48, i64 8}
!78 = !{!59, !36, i64 32}
!79 = distinct !{!79, !65, !66}
!80 = !{!42, !36, i64 688}
!81 = !{i32 0, i32 2}
!82 = !{!48, !48, i64 0}
!83 = distinct !{!83, !65, !66}
!84 = distinct !{!84, !65, !66}
!85 = !{!86, !36, i64 8}
!86 = !{!"def_pragma_macro", !36, i64 0, !36, i64 8, !36, i64 16}
!87 = !{!86, !36, i64 16}
!88 = distinct !{!88, !65, !66}
!89 = !{!42, !37, i64 1078}
!90 = !{!42, !37, i64 1116}
!91 = distinct !{!91, !66}
!92 = !{!93, !48, i64 8}
!93 = !{!"ht_node_list", !36, i64 0, !48, i64 8, !48, i64 16}
!94 = !{!93, !48, i64 16}
!95 = !{!93, !36, i64 0}
!96 = distinct !{!96, !65, !66}
!97 = !{!42, !40, i64 1272}
!98 = !{!99, !48, i64 16}
!99 = !{!"save_macro_data", !36, i64 0, !48, i64 8, !48, i64 16, !36, i64 24}
!100 = !{!99, !36, i64 0}
!101 = !{!99, !48, i64 8}
!102 = !{!99, !36, i64 24}
!103 = !{!55, !36, i64 0}
!104 = !{!55, !36, i64 8}
!105 = !{!55, !36, i64 16}
!106 = !{!55, !36, i64 24}
!107 = !{i64 0, i64 1, !63, i64 1, i64 1, !63, i64 2, i64 1, !63, i64 3, i64 1, !63, i64 4, i64 1, !63, i64 5, i64 1, !63, i64 6, i64 1, !63, i64 7, i64 1, !63, i64 8, i64 1, !63, i64 9, i64 1, !63, i64 10, i64 1, !63, i64 12, i64 4, !39, i64 16, i64 1, !63, i64 17, i64 1, !63}
!108 = !{!42, !37, i64 16}
!109 = !{!42, !37, i64 24}
!110 = !{!42, !37, i64 19}
!111 = distinct !{!111, !65, !66}
!112 = !{!42, !37, i64 1117}
!113 = !{!42, !36, i64 1296}
!114 = !{!86, !36, i64 0}
!115 = distinct !{!115, !65, !66}
