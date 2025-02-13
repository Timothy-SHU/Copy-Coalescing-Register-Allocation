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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cpp_save_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call ptr @xmalloc(i64 noundef 40) #16
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 60
  store ptr %3, ptr %4, align 8, !tbaa !36
  %5 = tail call ptr @htab_create(i64 noundef 100, ptr noundef nonnull @cpp_string_hash, ptr noundef nonnull @cpp_string_eq, ptr noundef null) #16
  %6 = load ptr, ptr %4, align 8, !tbaa !36
  store ptr %5, ptr %6, align 8, !tbaa !57
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @save_idents, ptr noundef nonnull %6) #16
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @write_macdef, ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @cpp_string_hash(ptr nocapture noundef readonly %0) #2 !prof !35 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.cpp_string, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = load i32, ptr %0, align 8, !tbaa !62
  %5 = zext i32 %4 to i64
  %6 = tail call fastcc i32 @hashmem(ptr noundef %3, i64 noundef %5) #17
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @cpp_string_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !35 !PGOFuncName !63 {
  %3 = load i32, ptr %0, align 8, !tbaa !62
  %4 = load i32, ptr %1, align 8, !tbaa !62
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpp_string, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.cpp_string, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = zext i32 %3 to i64
  %12 = tail call i32 @bcmp(ptr %8, ptr %10, i64 %11)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @cpp_forall_identifiers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @save_idents(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !prof !35 !PGOFuncName !64 {
  %4 = alloca %struct.cpp_string, align 8
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 63
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %10 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !65
  store i32 %11, ptr %4, align 8, !tbaa !62
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !60
  %14 = load ptr, ptr %2, align 8, !tbaa !57
  %15 = call ptr @htab_find_slot(ptr noundef %14, ptr noundef nonnull %4, i32 noundef 1) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = call ptr @xmalloc(i64 noundef 16) #16
  store ptr %19, ptr %15, align 8, !tbaa !69
  %20 = load i32, ptr %10, align 8, !tbaa !65
  store i32 %20, ptr %19, align 8, !tbaa !62
  %21 = zext i32 %20 to i64
  %22 = call ptr @xmalloc(i64 noundef %21) #16
  %23 = getelementptr inbounds %struct.cpp_string, ptr %19, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !60
  %24 = load ptr, ptr %1, align 8, !tbaa !68
  %25 = load i32, ptr %10, align 8, !tbaa !65
  %26 = zext i32 %25 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %24, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %18, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %28

28:                                               ; preds = %27, %3
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @write_macdef(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 !prof !35 !PGOFuncName !70 {
  %4 = alloca %struct.macrodef_struct, align 4
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 63
  switch i16 %7, label %46 [
    i16 0, label %8
    i16 1, label %11
    i16 2, label %47
  ]

8:                                                ; preds = %3
  %9 = and i16 %6, 384
  %10 = icmp eq i16 %9, 128
  br i1 %10, label %25, label %47

11:                                               ; preds = %3
  %12 = and i16 %6, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %15 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !65
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 1
  store i16 %17, ptr %18, align 4, !tbaa !71
  %19 = lshr i16 %6, 6
  %20 = and i16 %19, 2
  %21 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 2
  store i16 %20, ptr %21, align 2, !tbaa !73
  %22 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef nonnull %1) #16
  %23 = tail call fastcc i64 @ustrlen(ptr noundef %22) #17
  %24 = trunc i64 %23 to i32
  br label %33

25:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %26 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !65
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 1
  store i16 %28, ptr %29, align 4, !tbaa !71
  %30 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 2
  store i16 2, ptr %30, align 2, !tbaa !73
  %31 = load ptr, ptr %1, align 8, !tbaa !68
  %32 = and i32 %27, 65535
  br label %33

33:                                               ; preds = %25, %14
  %34 = phi i32 [ %32, %25 ], [ %24, %14 ]
  %35 = phi ptr [ %31, %25 ], [ %22, %14 ]
  store i32 %34, ptr %4, align 4, !tbaa !74
  %36 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %2) #17
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, ptr %4, align 4, !tbaa !74
  %40 = zext i32 %39 to i64
  %41 = tail call i64 @fwrite(ptr noundef %35, i64 noundef 1, i64 noundef %40, ptr noundef %2) #17
  %42 = icmp eq i64 %41, %40
  br i1 %42, label %45, label %43

43:                                               ; preds = %33, %38
  %44 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %47

45:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %47

46:                                               ; preds = %3
  tail call void @abort() #19
  unreachable

47:                                               ; preds = %45, %43, %3, %11, %8
  %48 = phi i32 [ 1, %8 ], [ 1, %11 ], [ 1, %3 ], [ 1, %45 ], [ 0, %43 ]
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @hashmem(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #2 !prof !35 !PGOFuncName !75 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %13, %4 ], [ 0, %2 ]
  %6 = phi i64 [ %14, %4 ], [ 0, %2 ]
  %7 = phi ptr [ %9, %4 ], [ %0, %2 ]
  %8 = mul i32 %5, 67
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = load i8, ptr %7, align 1, !tbaa !76
  %11 = zext i8 %10 to i32
  %12 = add i32 %8, 113
  %13 = sub i32 %12, %11
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %16, label %4, !llvm.loop !77

16:                                               ; preds = %4, %2
  %17 = phi i32 [ 0, %2 ], [ %13, %4 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @cpp_macro_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ustrlen(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !35 !PGOFuncName !79 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cpp_write_pch_deps(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca %struct.macrodef_struct, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 60
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @count_defs, ptr noundef %5) #16
  %8 = load i64, ptr %7, align 8, !tbaa !80
  %9 = shl i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #16
  %11 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !81
  store i64 0, ptr %7, align 8, !tbaa !80
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @write_defs, ptr noundef %5) #16
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = load i64, ptr %7, align 8, !tbaa !80
  tail call void @spec_qsort(ptr noundef %12, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @comp_hashnodes) #16
  %14 = load i64, ptr %6, align 8, !tbaa !82
  %15 = tail call ptr @xmalloc(i64 noundef %14) #16
  %16 = getelementptr inbounds %struct.cpp_savedstate, ptr %5, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !83
  %17 = load i64, ptr %7, align 8, !tbaa !80
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2, %19
  %20 = phi i64 [ %31, %19 ], [ 0, %2 ]
  %21 = phi ptr [ %30, %19 ], [ %15, %2 ]
  %22 = load ptr, ptr %11, align 8, !tbaa !81
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.ht_identifier, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !65
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %24, align 8, !tbaa !68
  %29 = add nuw nsw i64 %27, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 1 dereferenceable(1) %28, i64 %29, i1 false)
  %30 = getelementptr inbounds i8, ptr %21, i64 %29
  %31 = add nuw i64 %20, 1
  %32 = load i64, ptr %7, align 8, !tbaa !80
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %19, label %34, !llvm.loop !84

34:                                               ; preds = %19, %2
  store i64 0, ptr %3, align 8
  %35 = load i64, ptr %6, align 8, !tbaa !82
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr %3, align 8, !tbaa !74
  %37 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %1) #17
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load ptr, ptr %16, align 8, !tbaa !83
  %41 = load i64, ptr %6, align 8, !tbaa !82
  %42 = tail call i64 @fwrite(ptr noundef %40, i64 noundef %41, i64 noundef 1, ptr noundef %1) #17
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %34
  %45 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str) #16
  br label %53

46:                                               ; preds = %39
  %47 = load ptr, ptr %16, align 8, !tbaa !83
  tail call void @free(ptr noundef %47) #16
  tail call void @free(ptr noundef nonnull %5) #16
  store ptr null, ptr %4, align 8, !tbaa !36
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %49 = tail call i64 @fwrite(ptr noundef nonnull %48, i64 noundef 4, i64 noundef 1, ptr noundef %1) #17
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = tail call zeroext i8 @cpp_errno(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str) #16
  br label %53

53:                                               ; preds = %46, %51, %44
  %54 = phi i32 [ -1, %44 ], [ -1, %51 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @count_defs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 !prof !35 !PGOFuncName !85 {
  %4 = alloca %struct.cpp_string, align 8
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 63
  switch i16 %7, label %28 [
    i16 1, label %8
    i16 0, label %11
    i16 2, label %29
  ]

8:                                                ; preds = %3
  %9 = and i16 %6, 256
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %12 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !65
  store i32 %13, ptr %4, align 8, !tbaa !62
  %14 = load ptr, ptr %1, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !60
  %16 = load ptr, ptr %2, align 8, !tbaa !57
  %17 = call ptr @htab_find(ptr noundef %16, ptr noundef nonnull %4) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i32, ptr %12, align 8, !tbaa !65
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpp_savedstate, ptr %2, i64 0, i32 1
  %24 = load <2 x i64>, ptr %23, align 8, !tbaa !86
  %25 = insertelement <2 x i64> <i64 poison, i64 1>, i64 %22, i64 0
  %26 = add <2 x i64> %24, %25
  store <2 x i64> %26, ptr %23, align 8, !tbaa !86
  br label %27

27:                                               ; preds = %19, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %29

28:                                               ; preds = %3
  tail call void @abort() #19
  unreachable

29:                                               ; preds = %3, %8, %27
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @write_defs(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 !prof !35 !PGOFuncName !87 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %12 = getelementptr inbounds %struct.ht_identifier, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !65
  store i32 %13, ptr %4, align 8, !tbaa !62
  %14 = load ptr, ptr %1, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.cpp_string, ptr %4, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !60
  %16 = load ptr, ptr %2, align 8, !tbaa !57
  %17 = call ptr @htab_find(ptr noundef %16, ptr noundef nonnull %4) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.cpp_savedstate, ptr %2, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.cpp_savedstate, ptr %2, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !80
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %1, ptr %24, align 8, !tbaa !69
  %25 = add i64 %23, 1
  store i64 %25, ptr %22, align 8, !tbaa !80
  br label %26

26:                                               ; preds = %19, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %28

27:                                               ; preds = %3
  tail call void @abort() #19
  unreachable

28:                                               ; preds = %3, %8, %26
  ret i32 1
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @comp_hashnodes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !35 !PGOFuncName !88 {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
  %4 = load ptr, ptr %1, align 8, !tbaa !69
  %5 = load ptr, ptr %3, align 8, !tbaa !68
  %6 = load ptr, ptr %4, align 8, !tbaa !68
  %7 = tail call fastcc i32 @ustrcmp(ptr noundef %5, ptr noundef %6) #17
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !35 !PGOFuncName !89 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cpp_write_pch_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @deps_init() #16
  store ptr %7, ptr %3, align 8, !tbaa !90
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call i32 @deps_save(ptr noundef %9, ptr noundef %1) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @_cpp_save_file_entries(ptr noundef nonnull %0, ptr noundef %1) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %17 = tail call i64 @fwrite(ptr noundef nonnull %16, i64 noundef 4, i64 noundef 1, ptr noundef %1) #17
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @_cpp_save_pushed_macros(ptr noundef nonnull %0, ptr noundef %1) #17, !range !91
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %15, %12, %8
  %23 = tail call zeroext i8 @cpp_errno(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str) #16
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ 0, %19 ], [ -1, %22 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @deps_init() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @deps_save(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @_cpp_save_file_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_cpp_save_pushed_macros(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !92 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = phi ptr [ %5, %2 ], [ %9, %6 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6, !llvm.loop !93

12:                                               ; preds = %6
  store i64 %7, ptr %3, align 8, !tbaa !86
  %13 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %1) #17
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = load i64, ptr %3, align 8, !tbaa !86
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %15
  %19 = shl i64 %16, 3
  %20 = alloca i8, i64 %19, align 16
  %21 = load ptr, ptr %5, align 8, !tbaa !69
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
  store ptr %26, ptr %29, align 8, !tbaa !69
  %30 = load ptr, ptr %26, align 8, !tbaa !69
  %31 = icmp eq ptr %30, null
  br i1 %31, label %23, label %25, !llvm.loop !94

32:                                               ; preds = %23, %62
  %33 = phi i64 [ 0, %23 ], [ %64, %62 ]
  %34 = getelementptr inbounds ptr, ptr %20, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = getelementptr inbounds %struct.def_pragma_macro, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !95
  %38 = tail call ptr @cpp_push_definition(ptr noundef %0, ptr noundef %37) #16
  %39 = load ptr, ptr %36, align 8, !tbaa !95
  %40 = getelementptr inbounds %struct.def_pragma_macro, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %39, ptr noundef %41) #16
  %42 = load ptr, ptr %36, align 8, !tbaa !95
  %43 = tail call ptr @_cpp_lex_identifier(ptr noundef %0, ptr noundef %42) #16
  %44 = load ptr, ptr %36, align 8, !tbaa !95
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #20
  store i64 %45, ptr %4, align 8, !tbaa !86
  %46 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %1) #17
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %66

48:                                               ; preds = %32
  %49 = load ptr, ptr %36, align 8, !tbaa !95
  %50 = load i64, ptr %4, align 8, !tbaa !86
  %51 = tail call i64 @fwrite(ptr noundef %49, i64 noundef %50, i64 noundef 1, ptr noundef %1) #17
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef %43) #16
  %55 = tail call fastcc i64 @ustrlen(ptr noundef %54) #17
  store i64 %55, ptr %4, align 8, !tbaa !86
  %56 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %1) #17
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i64, ptr %4, align 8, !tbaa !86
  %60 = tail call i64 @fwrite(ptr noundef %54, i64 noundef %59, i64 noundef 1, ptr noundef %1) #17
  %61 = icmp eq i64 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load ptr, ptr %36, align 8, !tbaa !95
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %63, ptr noundef %38) #16
  %64 = add nuw i64 %33, 1
  %65 = icmp eq i64 %64, %24
  br i1 %65, label %66, label %32, !llvm.loop !98

66:                                               ; preds = %62, %53, %58, %32, %48, %15, %12
  %67 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 1, %62 ], [ 0, %53 ], [ 0, %58 ], [ 0, %32 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %67
}

; Function Attrs: optsize
declare ptr @cpp_push_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_pop_definition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @_cpp_lex_identifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cpp_valid_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca %struct.macrodef_struct, align 4
  %5 = alloca %struct.ht_node_list, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %7 = tail call ptr @xmalloc(i64 noundef 256) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %8 = call i64 @read(i32 noundef %2, ptr noundef nonnull %4, i64 noundef 8) #16
  %9 = icmp eq i64 %8, 8
  br i1 %9, label %10, label %161

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %13 = getelementptr inbounds %struct.macrodef_struct, ptr %4, i64 0, i32 2
  br label %14

14:                                               ; preds = %10, %92
  %15 = phi i64 [ 256, %10 ], [ %94, %92 ]
  %16 = phi ptr [ %7, %10 ], [ %93, %92 ]
  %17 = load i16, ptr %11, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %97, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %12, align 2, !tbaa !99
  %21 = icmp eq i8 %20, 0
  %22 = load i32, ptr %4, align 4, !tbaa !74
  %23 = zext i32 %22 to i64
  br i1 %21, label %27, label %24

24:                                               ; preds = %19
  %25 = tail call i64 @lseek(i32 noundef %2, i64 noundef %23, i32 noundef 1) #16
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %161, label %92

27:                                               ; preds = %19
  %28 = icmp ult i64 %15, %23
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  tail call void @free(ptr noundef %16) #16
  %30 = add i32 %22, 256
  %31 = zext i32 %30 to i64
  %32 = tail call ptr @xmalloc(i64 noundef %31) #16
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi ptr [ %32, %29 ], [ %16, %27 ]
  %35 = phi i64 [ %31, %29 ], [ %15, %27 ]
  %36 = tail call i64 @read(i32 noundef %2, ptr noundef %34, i64 noundef %23) #16
  %37 = icmp eq i64 %36, %23
  br i1 %37, label %38, label %161

38:                                               ; preds = %33
  %39 = zext i16 %17 to i32
  %40 = tail call ptr @cpp_lookup(ptr noundef nonnull %0, ptr noundef %34, i32 noundef %39) #16
  %41 = load i16, ptr %13, align 2, !tbaa !73
  %42 = and i16 %41, 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.cpp_hashnode, ptr %40, i64 0, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = lshr i16 %46, 6
  %48 = zext nneg i16 %47 to i32
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44, %38
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %53 = load i8, ptr %52, align 4, !tbaa !100
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %163, label %55

55:                                               ; preds = %51
  %56 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %39, ptr noundef %34) #16
  br label %163

57:                                               ; preds = %44
  %58 = and i16 %46, 63
  %59 = icmp eq i16 %58, 1
  br i1 %59, label %75, label %60

60:                                               ; preds = %57
  %61 = and i32 %48, 128
  %62 = icmp eq i32 %61, 0
  %63 = icmp eq i16 %17, 25
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %34, ptr noundef nonnull dereferenceable(25) @.str.2, i64 25)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %65, %60
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %70 = load i8, ptr %69, align 4, !tbaa !100
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %163, label %72

72:                                               ; preds = %68
  %73 = zext i16 %17 to i32
  %74 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %73, ptr noundef %34) #16
  br label %163

75:                                               ; preds = %57
  %76 = tail call ptr @cpp_macro_definition(ptr noundef nonnull %0, ptr noundef nonnull %40) #16
  %77 = tail call fastcc i64 @ustrlen(ptr noundef %76) #17
  %78 = icmp eq i64 %77, %23
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = tail call i32 @bcmp(ptr %34, ptr %76, i64 %23)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79, %75
  %83 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %84 = load i8, ptr %83, align 4, !tbaa !100
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %163, label %86

86:                                               ; preds = %82
  %87 = zext i16 %17 to i64
  %88 = getelementptr inbounds i8, ptr %76, i64 %87
  %89 = sub i32 %22, %39
  %90 = getelementptr inbounds i8, ptr %34, i64 %87
  %91 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %39, ptr noundef %34, ptr noundef nonnull %88, i32 noundef %89, ptr noundef nonnull %90) #16
  br label %163

92:                                               ; preds = %24, %79, %65
  %93 = phi ptr [ %16, %24 ], [ %34, %65 ], [ %34, %79 ]
  %94 = phi i64 [ %15, %24 ], [ %35, %65 ], [ %35, %79 ]
  %95 = call i64 @read(i32 noundef %2, ptr noundef nonnull %4, i64 noundef 8) #16
  %96 = icmp eq i64 %95, 8
  br i1 %96, label %14, label %161

97:                                               ; preds = %14
  tail call void @free(ptr noundef %16) #16
  %98 = load i32, ptr %4, align 4, !tbaa !74
  %99 = zext i32 %98 to i64
  %100 = tail call ptr @xmalloc(i64 noundef %99) #16
  %101 = tail call i64 @read(i32 noundef %2, ptr noundef %100, i64 noundef %99) #16
  %102 = icmp eq i64 %101, %99
  br i1 %102, label %103, label %161

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ht_node_list, ptr %5, i64 0, i32 1
  store i64 0, ptr %104, align 8, !tbaa !101
  %105 = getelementptr inbounds %struct.ht_node_list, ptr %5, i64 0, i32 2
  store i64 10, ptr %105, align 8, !tbaa !103
  %106 = tail call ptr @xmalloc(i64 noundef 80) #16
  store ptr %106, ptr %5, align 8, !tbaa !104
  call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @collect_ht_nodes, ptr noundef nonnull %5) #16
  %107 = load ptr, ptr %5, align 8, !tbaa !104
  %108 = load i64, ptr %104, align 8, !tbaa !101
  call void @spec_qsort(ptr noundef %107, i64 noundef %108, i64 noundef 8, ptr noundef nonnull @comp_hashnodes) #16
  %109 = getelementptr inbounds i8, ptr %100, i64 %99
  %110 = load i64, ptr %104, align 8
  %111 = icmp ne i32 %98, 0
  %112 = icmp ne i64 %110, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = load ptr, ptr %5, align 8, !tbaa !104
  br i1 %113, label %115, label %145

115:                                              ; preds = %103, %138
  %116 = phi i64 [ %142, %138 ], [ 0, %103 ]
  %117 = phi i32 [ %140, %138 ], [ 0, %103 ]
  %118 = phi ptr [ %139, %138 ], [ %100, %103 ]
  %119 = getelementptr inbounds ptr, ptr %114, i64 %116
  %120 = load ptr, ptr %119, align 8, !tbaa !69
  %121 = load ptr, ptr %120, align 8, !tbaa !68
  %122 = call fastcc i32 @ustrcmp(ptr noundef %118, ptr noundef %121) #17
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %115
  %125 = call fastcc i64 @ustrlen(ptr noundef %118) #17
  %126 = add i64 %125, 1
  %127 = getelementptr inbounds i8, ptr %118, i64 %126
  br label %138

128:                                              ; preds = %115
  %129 = icmp eq i32 %122, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = add i32 %117, 1
  br label %138

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %134 = load i8, ptr %133, align 4, !tbaa !100
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %166, label %136

136:                                              ; preds = %132
  %137 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %118) #16
  br label %166

138:                                              ; preds = %124, %130
  %139 = phi ptr [ %127, %124 ], [ %118, %130 ]
  %140 = phi i32 [ %117, %124 ], [ %131, %130 ]
  %141 = icmp ult ptr %139, %109
  %142 = zext i32 %140 to i64
  %143 = icmp ugt i64 %110, %142
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %115, label %145

145:                                              ; preds = %138, %103
  call void @free(ptr noundef %114) #16
  store ptr null, ptr %5, align 8, !tbaa !104
  call void @free(ptr noundef %100) #16
  %146 = call i64 @read(i32 noundef %2, ptr noundef nonnull %6, i64 noundef 4) #16
  %147 = icmp eq i64 %146, 4
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load i32, ptr %6, align 4, !tbaa !105
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %173, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %153 = load i32, ptr %152, align 8, !tbaa !106
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %173, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 41
  %157 = load i8, ptr %156, align 4, !tbaa !100
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %155
  %160 = call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %1) #16
  br label %169

161:                                              ; preds = %92, %33, %24, %3, %145, %97
  %162 = call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.7) #16
  br label %173

163:                                              ; preds = %55, %51, %72, %68, %86, %82
  %164 = icmp eq ptr %34, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %163
  tail call void @free(ptr noundef nonnull %34) #16
  br label %169

166:                                              ; preds = %136, %132
  %167 = icmp eq ptr %100, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %166
  call void @free(ptr noundef nonnull %100) #16
  br label %169

169:                                              ; preds = %159, %155, %163, %165, %168, %166
  %170 = load ptr, ptr %5, align 8, !tbaa !104
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  call void @free(ptr noundef nonnull %170) #16
  br label %173

173:                                              ; preds = %169, %172, %148, %151, %161
  %174 = phi i32 [ -1, %161 ], [ 0, %151 ], [ 0, %148 ], [ 1, %172 ], [ 1, %169 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %174
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @cpp_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @collect_ht_nodes(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 !prof !35 !PGOFuncName !107 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 191
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ht_node_list, ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.ht_node_list, ptr %2, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !103
  %13 = icmp eq i64 %10, %12
  %14 = load ptr, ptr %2, align 8, !tbaa !104
  br i1 %13, label %15, label %20

15:                                               ; preds = %8
  %16 = shl i64 %10, 1
  store i64 %16, ptr %11, align 8, !tbaa !103
  %17 = shl i64 %10, 4
  %18 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %17) #16
  store ptr %18, ptr %2, align 8, !tbaa !104
  %19 = load i64, ptr %9, align 8, !tbaa !101
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i64 [ %19, %15 ], [ %10, %8 ]
  %22 = phi ptr [ %18, %15 ], [ %14, %8 ]
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  store ptr %1, ptr %23, align 8, !tbaa !69
  %24 = add i64 %21, 1
  store i64 %24, ptr %9, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %3, %20
  ret i32 1
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_prepare_state(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !35 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #16
  %4 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 2
  store i64 512, ptr %4, align 8, !tbaa !108
  %5 = tail call ptr @xmalloc(i64 noundef 4096) #16
  store ptr %5, ptr %3, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !111
  tail call void @cpp_forall_identifiers(ptr noundef %0, ptr noundef nonnull @save_macros, ptr noundef nonnull %3) #16
  %7 = tail call ptr @_cpp_save_pragma_names(ptr noundef %0) #16
  %8 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !112
  store ptr %3, ptr %1, align 8, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @save_macros(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 !prof !35 !PGOFuncName !113 {
  %4 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 63
  %7 = icmp ne i16 %6, 0
  %8 = and i16 %5, 256
  %9 = icmp eq i16 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.save_macro_data, ptr %2, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.save_macro_data, ptr %2, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !108
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = shl i64 %13, 1
  store i64 %18, ptr %14, align 8, !tbaa !108
  %19 = load ptr, ptr %2, align 8, !tbaa !110
  %20 = shl i64 %13, 4
  %21 = tail call ptr @xrealloc(ptr noundef %19, i64 noundef %20) #16
  store ptr %21, ptr %2, align 8, !tbaa !110
  %22 = load i16, ptr %4, align 2
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i16 [ %22, %17 ], [ %5, %11 ]
  %25 = and i16 %24, 63
  switch i16 %25, label %40 [
    i16 2, label %41
    i16 1, label %26
  ]

26:                                               ; preds = %23
  %27 = tail call ptr @cpp_macro_definition(ptr noundef %0, ptr noundef nonnull %1) #16
  %28 = tail call fastcc i64 @ustrlen(ptr noundef %27) #17
  %29 = add i64 %28, 2
  %30 = tail call ptr @xmemdup(ptr noundef %27, i64 noundef %28, i64 noundef %29) #16
  %31 = load ptr, ptr %2, align 8, !tbaa !110
  %32 = load i64, ptr %12, align 8, !tbaa !111
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %30, ptr %33, align 8, !tbaa !69
  %34 = load ptr, ptr %2, align 8, !tbaa !110
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = getelementptr inbounds i8, ptr %36, i64 %28
  store i8 10, ptr %37, align 1, !tbaa !76
  %38 = load i64, ptr %12, align 8, !tbaa !111
  %39 = add i64 %38, 1
  store i64 %39, ptr %12, align 8, !tbaa !111
  br label %41

40:                                               ; preds = %23
  tail call void @abort() #19
  unreachable

41:                                               ; preds = %3, %26, %23
  ret i32 1
}

; Function Attrs: optsize
declare ptr @_cpp_save_pragma_names(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmemdup(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cpp_read_state(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !prof !35 {
  %5 = alloca %struct.lexer_state, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %8 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 7) #16
  store ptr %8, ptr %7, align 8, !tbaa !114
  %9 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 4) #16
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !115
  %11 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 5) #16
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !116
  %13 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 11) #16
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !117
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(20) %15, i64 20, i1 false), !tbaa.struct !118
  store i8 1, ptr %15, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  store i8 1, ptr %16, align 8, !tbaa !120
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  store i8 0, ptr %17, align 1, !tbaa !121
  %18 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !111
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %4, %50
  %22 = phi i64 [ %54, %50 ], [ 0, %4 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !110
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = tail call fastcc i32 @ustrcspn(ptr noundef %25) #17
  %27 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef %25, i32 noundef %26) #16
  %28 = getelementptr inbounds %struct.cpp_hashnode, ptr %27, i64 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 63
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %21
  %33 = load ptr, ptr %3, align 8, !tbaa !110
  %34 = getelementptr inbounds ptr, ptr %33, i64 %22
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = sext i32 %26 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = tail call fastcc ptr @ustrchr(ptr noundef %37) #17
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %37 to i64
  %41 = sub i64 %39, %40
  %42 = tail call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef %37, i64 noundef %41, i32 noundef 1) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %32
  tail call void @_cpp_clean_line(ptr noundef %0) #16
  %45 = tail call zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr noundef nonnull %27) #16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void @abort() #19
  unreachable

48:                                               ; preds = %44
  tail call void @_cpp_pop_buffer(ptr noundef %0) #16
  br label %50

49:                                               ; preds = %32
  tail call void @abort() #19
  unreachable

50:                                               ; preds = %48, %21
  %51 = load ptr, ptr %3, align 8, !tbaa !110
  %52 = getelementptr inbounds ptr, ptr %51, i64 %22
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  tail call void @free(ptr noundef %53) #16
  %54 = add nuw i64 %22, 1
  %55 = load i64, ptr %18, align 8, !tbaa !111
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %21, label %57, !llvm.loop !122

57:                                               ; preds = %50, %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %15, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !118
  %58 = getelementptr inbounds %struct.save_macro_data, ptr %3, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !112
  tail call void @_cpp_restore_pragma_names(ptr noundef %0, ptr noundef %59) #16
  tail call void @free(ptr noundef nonnull %3) #16
  %60 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %61 = load ptr, ptr %60, align 8, !tbaa !90
  %62 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 42
  %63 = load i8, ptr %62, align 1, !tbaa !123
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, ptr null, ptr %1
  %66 = tail call i32 @deps_restore(ptr noundef %61, ptr noundef %2, ptr noundef %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %57
  %69 = tail call zeroext i8 @_cpp_read_file_entries(ptr noundef nonnull %0, ptr noundef %2) #16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef %2) #17
  %73 = icmp eq i64 %72, 1
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 61
  %76 = load i32, ptr %75, align 8, !tbaa !106
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, ptr %6, align 4, !tbaa !105
  store i32 %79, ptr %75, align 8, !tbaa !106
  br label %80

80:                                               ; preds = %78, %74
  %81 = tail call fastcc i32 @_cpp_restore_pushed_macros(ptr noundef nonnull %0, ptr noundef %2) #17, !range !91
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %71, %68, %57
  %84 = tail call zeroext i8 @cpp_errno(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.7) #16
  br label %85

85:                                               ; preds = %80, %83
  %86 = phi i32 [ -1, %83 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5)
  ret i32 %86
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ustrcspn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !35 !PGOFuncName !124 {
  %2 = tail call i64 @strcspn(ptr noundef %0, ptr noundef nonnull @.str.12) #20
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @cpp_push_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @ustrchr(ptr noundef readonly %0) unnamed_addr #6 !prof !35 !PGOFuncName !125 {
  %2 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 10) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @_cpp_clean_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @_cpp_create_definition(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_cpp_restore_pragma_names(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @deps_restore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @_cpp_read_file_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_cpp_restore_pushed_macros(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !126 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %1) #17
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %68

8:                                                ; preds = %2
  %9 = load i64, ptr %3, align 8, !tbaa !86
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 63
  br label %13

13:                                               ; preds = %11, %59
  %14 = phi i64 [ 0, %11 ], [ %65, %59 ]
  %15 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %1) #17
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  %18 = tail call ptr @xmalloc(i64 noundef 24) #16
  %19 = load i64, ptr %4, align 8, !tbaa !86
  %20 = add i64 %19, 1
  %21 = tail call ptr @xmalloc(i64 noundef %20) #16
  %22 = getelementptr inbounds %struct.def_pragma_macro, ptr %18, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !95
  %23 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %23, align 1, !tbaa !76
  %24 = load ptr, ptr %22, align 8, !tbaa !95
  %25 = tail call i64 @fread(ptr noundef %24, i64 noundef %19, i64 noundef 1, ptr noundef %1) #17
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %68

27:                                               ; preds = %17
  %28 = load ptr, ptr %22, align 8, !tbaa !95
  %29 = tail call ptr @cpp_push_definition(ptr noundef %0, ptr noundef %28) #16
  %30 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %1) #17
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  %33 = load i64, ptr %5, align 8, !tbaa !86
  %34 = add i64 %33, 2
  %35 = tail call ptr @xmalloc(i64 noundef %34) #16
  %36 = getelementptr inbounds i8, ptr %35, i64 %33
  store i8 10, ptr %36, align 1, !tbaa !76
  %37 = getelementptr i8, ptr %36, i64 1
  store i8 0, ptr %37, align 1, !tbaa !76
  %38 = tail call i64 @fread(ptr noundef %35, i64 noundef %33, i64 noundef 1, ptr noundef %1) #17
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  %41 = load ptr, ptr %22, align 8, !tbaa !95
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %41, ptr noundef null) #16
  %42 = tail call fastcc i32 @ustrcspn(ptr noundef nonnull %35) #17
  %43 = sext i32 %42 to i64
  %44 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull %35, i32 noundef %42) #16
  %45 = getelementptr inbounds i8, ptr %35, i64 %43
  %46 = getelementptr inbounds %struct.cpp_hashnode, ptr %44, i64 0, i32 3
  %47 = load i16, ptr %46, align 2
  %48 = and i16 %47, -10688
  store i16 %48, ptr %46, align 2
  %49 = tail call fastcc ptr @ustrchr(ptr noundef %45) #17
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %45 to i64
  %52 = sub i64 %50, %51
  %53 = tail call ptr @cpp_push_buffer(ptr noundef %0, ptr noundef %45, i64 noundef %52, i32 noundef 1) #16
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %40
  tail call void @_cpp_clean_line(ptr noundef %0) #16
  %56 = tail call zeroext i8 @_cpp_create_definition(ptr noundef %0, ptr noundef nonnull %44) #16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @abort() #19
  unreachable

59:                                               ; preds = %55
  tail call void @_cpp_pop_buffer(ptr noundef %0) #16
  %60 = load ptr, ptr %22, align 8, !tbaa !95
  %61 = tail call ptr @cpp_push_definition(ptr noundef %0, ptr noundef %60) #16
  %62 = getelementptr inbounds %struct.def_pragma_macro, ptr %18, i64 0, i32 2
  store ptr %61, ptr %62, align 8, !tbaa !97
  tail call void @free(ptr noundef nonnull %35) #16
  %63 = load ptr, ptr %12, align 8, !tbaa !127
  store ptr %63, ptr %18, align 8, !tbaa !128
  store ptr %18, ptr %12, align 8, !tbaa !127
  %64 = load ptr, ptr %22, align 8, !tbaa !95
  tail call void @cpp_pop_definition(ptr noundef %0, ptr noundef %64, ptr noundef %29) #16
  %65 = add nuw i64 %14, 1
  %66 = icmp eq i64 %65, %9
  br i1 %66, label %68, label %13, !llvm.loop !129

67:                                               ; preds = %40
  tail call void @abort() #19
  unreachable

68:                                               ; preds = %59, %32, %27, %17, %13, %8, %2
  %69 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 1, %59 ], [ 0, %32 ], [ 0, %27 ], [ 0, %17 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %69
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !38, i64 1264}
!37 = !{!"cpp_reader", !38, i64 0, !38, i64 8, !41, i64 16, !38, i64 40, !42, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !43, i64 80, !38, i64 136, !38, i64 144, !44, i64 152, !42, i64 176, !39, i64 180, !38, i64 184, !38, i64 192, !46, i64 200, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !48, i64 312, !39, i64 400, !39, i64 401, !38, i64 408, !38, i64 416, !39, i64 424, !38, i64 432, !49, i64 440, !38, i64 472, !42, i64 480, !42, i64 484, !38, i64 488, !42, i64 496, !50, i64 504, !50, i64 528, !50, i64 552, !50, i64 576, !50, i64 600, !38, i64 624, !38, i64 632, !44, i64 640, !44, i64 664, !38, i64 688, !48, i64 696, !48, i64 784, !38, i64 872, !51, i64 880, !38, i64 1016, !38, i64 1024, !38, i64 1032, !52, i64 1040, !54, i64 1168, !39, i64 1200, !55, i64 1208, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !42, i64 1272, !56, i64 1280, !38, i64 1296}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"lexer_state", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !39, i64 4, !39, i64 5, !39, i64 6, !39, i64 7, !39, i64 8, !39, i64 9, !39, i64 10, !42, i64 12, !39, i64 16, !39, i64 17}
!42 = !{!"int", !39, i64 0}
!43 = !{!"cpp_context", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 32, !38, i64 40, !39, i64 48}
!44 = !{!"cpp_token", !42, i64 0, !42, i64 4, !45, i64 6, !39, i64 8}
!45 = !{!"short", !39, i64 0}
!46 = !{!"cpp_dir", !38, i64 0, !38, i64 8, !42, i64 16, !39, i64 20, !39, i64 21, !38, i64 24, !38, i64 32, !38, i64 40, !47, i64 48, !47, i64 56}
!47 = !{!"long", !39, i64 0}
!48 = !{!"obstack", !47, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !47, i64 40, !42, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !42, i64 80, !42, i64 80, !42, i64 80}
!49 = !{!"tokenrun", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!50 = !{!"cset_converter", !38, i64 0, !38, i64 8, !42, i64 16}
!51 = !{!"cpp_callbacks", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128}
!52 = !{!"cpp_options", !42, i64 0, !42, i64 4, !39, i64 8, !39, i64 9, !39, i64 10, !39, i64 11, !39, i64 12, !39, i64 13, !39, i64 14, !39, i64 15, !39, i64 16, !39, i64 17, !39, i64 18, !39, i64 19, !39, i64 20, !39, i64 21, !39, i64 22, !39, i64 23, !39, i64 24, !39, i64 25, !39, i64 26, !39, i64 27, !39, i64 28, !39, i64 29, !39, i64 30, !39, i64 31, !39, i64 32, !39, i64 33, !39, i64 34, !39, i64 35, !39, i64 36, !39, i64 37, !39, i64 38, !39, i64 39, !39, i64 40, !39, i64 41, !39, i64 42, !38, i64 48, !38, i64 56, !38, i64 64, !42, i64 72, !39, i64 76, !39, i64 77, !53, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !39, i64 120, !39, i64 121, !39, i64 122, !39, i64 123, !39, i64 124}
!53 = !{!"", !42, i64 0, !39, i64 4, !39, i64 5, !39, i64 6, !39, i64 7}
!54 = !{!"spec_nodes", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!55 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !42, i64 24}
!56 = !{!"", !38, i64 0, !42, i64 8, !42, i64 12}
!57 = !{!58, !38, i64 0}
!58 = !{!"cpp_savedstate", !38, i64 0, !47, i64 8, !47, i64 16, !38, i64 24, !38, i64 32}
!59 = !{!"cpp_pch.c:cpp_string_hash"}
!60 = !{!61, !38, i64 8}
!61 = !{!"cpp_string", !42, i64 0, !38, i64 8}
!62 = !{!61, !42, i64 0}
!63 = !{!"cpp_pch.c:cpp_string_eq"}
!64 = !{!"cpp_pch.c:save_idents"}
!65 = !{!66, !42, i64 8}
!66 = !{!"cpp_hashnode", !67, i64 0, !42, i64 16, !42, i64 16, !39, i64 17, !42, i64 18, !42, i64 18, !39, i64 24}
!67 = !{!"ht_identifier", !38, i64 0, !42, i64 8, !42, i64 12}
!68 = !{!66, !38, i64 0}
!69 = !{!38, !38, i64 0}
!70 = !{!"cpp_pch.c:write_macdef"}
!71 = !{!72, !45, i64 4}
!72 = !{!"macrodef_struct", !42, i64 0, !45, i64 4, !45, i64 6}
!73 = !{!72, !45, i64 6}
!74 = !{!72, !42, i64 0}
!75 = !{!"cpp_pch.c:hashmem"}
!76 = !{!39, !39, i64 0}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"cpp_pch.c:ustrlen"}
!80 = !{!58, !47, i64 16}
!81 = !{!58, !38, i64 24}
!82 = !{!58, !47, i64 8}
!83 = !{!58, !38, i64 32}
!84 = distinct !{!84, !78}
!85 = !{!"cpp_pch.c:count_defs"}
!86 = !{!47, !47, i64 0}
!87 = !{!"cpp_pch.c:write_defs"}
!88 = !{!"cpp_pch.c:comp_hashnodes"}
!89 = !{!"cpp_pch.c:ustrcmp"}
!90 = !{!37, !38, i64 688}
!91 = !{i32 0, i32 2}
!92 = !{!"cpp_pch.c:_cpp_save_pushed_macros"}
!93 = distinct !{!93, !78}
!94 = distinct !{!94, !78}
!95 = !{!96, !38, i64 8}
!96 = !{!"def_pragma_macro", !38, i64 0, !38, i64 8, !38, i64 16}
!97 = !{!96, !38, i64 16}
!98 = distinct !{!98, !78}
!99 = !{!37, !39, i64 1078}
!100 = !{!37, !39, i64 1116}
!101 = !{!102, !47, i64 8}
!102 = !{!"ht_node_list", !38, i64 0, !47, i64 8, !47, i64 16}
!103 = !{!102, !47, i64 16}
!104 = !{!102, !38, i64 0}
!105 = !{!42, !42, i64 0}
!106 = !{!37, !42, i64 1272}
!107 = !{!"cpp_pch.c:collect_ht_nodes"}
!108 = !{!109, !47, i64 16}
!109 = !{!"save_macro_data", !38, i64 0, !47, i64 8, !47, i64 16, !38, i64 24}
!110 = !{!109, !38, i64 0}
!111 = !{!109, !47, i64 8}
!112 = !{!109, !38, i64 24}
!113 = !{!"cpp_pch.c:save_macros"}
!114 = !{!54, !38, i64 0}
!115 = !{!54, !38, i64 8}
!116 = !{!54, !38, i64 16}
!117 = !{!54, !38, i64 24}
!118 = !{i64 0, i64 1, !76, i64 1, i64 1, !76, i64 2, i64 1, !76, i64 3, i64 1, !76, i64 4, i64 1, !76, i64 5, i64 1, !76, i64 6, i64 1, !76, i64 7, i64 1, !76, i64 8, i64 1, !76, i64 9, i64 1, !76, i64 10, i64 1, !76, i64 12, i64 4, !105, i64 16, i64 1, !76, i64 17, i64 1, !76}
!119 = !{!37, !39, i64 16}
!120 = !{!37, !39, i64 24}
!121 = !{!37, !39, i64 19}
!122 = distinct !{!122, !78}
!123 = !{!37, !39, i64 1117}
!124 = !{!"cpp_pch.c:ustrcspn"}
!125 = !{!"cpp_pch.c:ustrchr"}
!126 = !{!"cpp_pch.c:_cpp_restore_pushed_macros"}
!127 = !{!37, !38, i64 1296}
!128 = !{!96, !38, i64 0}
!129 = distinct !{!129, !78}
