; ModuleID = 'cpp_files.c'
source_filename = "cpp_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._cpp_file = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.stat, i32, i32, i16, i8, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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
%struct.file_hash_entry = type { ptr, ptr, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.file_hash_entry_pool = type { i32, ptr, [127 x %struct.file_hash_entry] }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.report_missing_guard_data = type { ptr, i64 }
%struct.pchf_data = type { i64, i8, [1 x %struct.pchf_entry] }
%struct.pchf_entry = type { i64, [16 x i8], i8 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.pchf_compare_data = type { i64, [16 x i8], i8, i8, ptr }

@.str = private unnamed_addr constant [28 x i8] c"NULL directory in find_file\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"one or more PCH files were found, but they were invalid\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"use -Winvalid-pch for more information\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Multiple include guards may be useful for:\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@pchf = internal unnamed_addr global ptr null, align 8
@read_name_map.FILE_NAME_MAP_FILE = internal unnamed_addr constant [11 x i8] c"header.gcc\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@pch_open_file.extension = internal unnamed_addr constant [5 x i8] c".gch\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%c %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s is a block device\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%s is shorter than expected\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"no include path in which to search for %s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @_cpp_find_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @_cpp_find_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  store i8 0, ptr %6, align 1, !tbaa !15
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str) #21
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = tail call i32 @htab_hash_string(ptr noundef %1) #21
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef %1, i32 noundef %13, i32 noundef 1) #21
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = tail call fastcc ptr @search_cache(ptr noundef %15, ptr noundef %2) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.file_hash_entry, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  br label %125

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @make_cpp_file(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1) #22
  %23 = icmp eq i8 %3, 0
  %24 = getelementptr inbounds %struct._cpp_file, ptr %22, i64 0, i32 8
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 15
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  br label %27

27:                                               ; preds = %62, %21
  %28 = phi i8 [ %63, %62 ], [ 0, %21 ]
  %29 = phi i8 [ %64, %62 ], [ 0, %21 ]
  br i1 %23, label %30, label %72

30:                                               ; preds = %27, %59
  %31 = call fastcc zeroext i8 @find_file_in_dir(ptr noundef nonnull %0, ptr noundef %22, ptr noundef nonnull %6) #22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load ptr, ptr %24, align 8, !tbaa !32
  %35 = load ptr, ptr %34, align 8, !tbaa !33
  store ptr %35, ptr %24, align 8, !tbaa !32
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = tail call fastcc zeroext i8 @search_path_exhausted(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %22) #22, !range !34
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct._cpp_file, ptr %22, i64 0, i32 4
  store ptr %42, ptr %43, align 8, !tbaa !36
  store ptr %22, ptr %41, align 8, !tbaa !35
  br label %125

44:                                               ; preds = %37
  %45 = load i8, ptr %6, align 1, !tbaa !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1) #21
  %49 = tail call ptr @cpp_get_options(ptr noundef nonnull %0) #21
  %50 = getelementptr inbounds %struct.cpp_options, ptr %49, i64 0, i32 41
  %51 = load i8, ptr %50, align 4, !tbaa !37
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2) #21
  br label %55

55:                                               ; preds = %47, %53, %44
  tail call fastcc void @open_file_failed(ptr noundef nonnull %0, ptr noundef nonnull %22, i32 noundef %4) #22
  br label %72

56:                                               ; preds = %33
  %57 = load ptr, ptr %25, align 8, !tbaa !38
  %58 = icmp eq ptr %35, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %26, align 8, !tbaa !39
  %61 = icmp eq ptr %35, %60
  br i1 %61, label %62, label %30, !llvm.loop !40

62:                                               ; preds = %59, %56
  %63 = phi i8 [ 1, %56 ], [ %28, %59 ]
  %64 = phi i8 [ %29, %56 ], [ 1, %59 ]
  %65 = load ptr, ptr %14, align 8, !tbaa !31
  %66 = tail call fastcc ptr @search_cache(ptr noundef %65, ptr noundef nonnull %35) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %27, label %68, !llvm.loop !40

68:                                               ; preds = %62
  %69 = load ptr, ptr %22, align 8, !tbaa !42
  tail call void @free(ptr noundef %69) #21
  tail call void @free(ptr noundef nonnull %22) #21
  %70 = getelementptr inbounds %struct.file_hash_entry, ptr %66, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  br label %78

72:                                               ; preds = %27, %30, %55
  %73 = phi i8 [ %28, %55 ], [ %28, %30 ], [ 0, %27 ]
  %74 = phi i8 [ %29, %55 ], [ %29, %30 ], [ 0, %27 ]
  %75 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = getelementptr inbounds %struct._cpp_file, ptr %22, i64 0, i32 4
  store ptr %76, ptr %77, align 8, !tbaa !36
  store ptr %22, ptr %75, align 8, !tbaa !35
  br label %78

78:                                               ; preds = %72, %68
  %79 = phi ptr [ %35, %68 ], [ null, %72 ]
  %80 = phi i8 [ %64, %68 ], [ %74, %72 ]
  %81 = phi i8 [ %63, %68 ], [ %73, %72 ]
  %82 = phi ptr [ %71, %68 ], [ %22, %72 ]
  %83 = tail call fastcc ptr @new_file_hash_entry(ptr noundef nonnull %0) #22
  %84 = load ptr, ptr %14, align 8, !tbaa !31
  store ptr %84, ptr %83, align 8, !tbaa !43
  %85 = getelementptr inbounds %struct.file_hash_entry, ptr %83, i64 0, i32 1
  store ptr %2, ptr %85, align 8, !tbaa !45
  %86 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = getelementptr inbounds %struct.line_maps, ptr %87, i64 0, i32 7
  %89 = load i32, ptr %88, align 8, !tbaa !47
  %90 = getelementptr inbounds %struct.file_hash_entry, ptr %83, i64 0, i32 2
  store i32 %89, ptr %90, align 8, !tbaa !49
  %91 = getelementptr inbounds %struct.file_hash_entry, ptr %83, i64 0, i32 3
  store ptr %82, ptr %91, align 8, !tbaa !15
  store ptr %83, ptr %14, align 8, !tbaa !31
  %92 = icmp eq i8 %81, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %78
  %94 = load ptr, ptr %25, align 8, !tbaa !38
  %95 = icmp eq ptr %94, %2
  %96 = icmp eq ptr %79, %94
  %97 = or i1 %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = tail call fastcc ptr @new_file_hash_entry(ptr noundef nonnull %0) #22
  %100 = load ptr, ptr %14, align 8, !tbaa !31
  store ptr %100, ptr %99, align 8, !tbaa !43
  %101 = load ptr, ptr %25, align 8, !tbaa !38
  %102 = getelementptr inbounds %struct.file_hash_entry, ptr %99, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !45
  %103 = load ptr, ptr %86, align 8, !tbaa !46
  %104 = getelementptr inbounds %struct.line_maps, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !47
  %106 = getelementptr inbounds %struct.file_hash_entry, ptr %99, i64 0, i32 2
  store i32 %105, ptr %106, align 8, !tbaa !49
  %107 = getelementptr inbounds %struct.file_hash_entry, ptr %99, i64 0, i32 3
  store ptr %82, ptr %107, align 8, !tbaa !15
  store ptr %99, ptr %14, align 8, !tbaa !31
  br label %108

108:                                              ; preds = %98, %93, %78
  %109 = icmp eq i8 %80, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr %26, align 8, !tbaa !39
  %112 = icmp eq ptr %111, %2
  %113 = icmp eq ptr %79, %111
  %114 = or i1 %112, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = tail call fastcc ptr @new_file_hash_entry(ptr noundef nonnull %0) #22
  %117 = load ptr, ptr %14, align 8, !tbaa !31
  store ptr %117, ptr %116, align 8, !tbaa !43
  %118 = load ptr, ptr %26, align 8, !tbaa !39
  %119 = getelementptr inbounds %struct.file_hash_entry, ptr %116, i64 0, i32 1
  store ptr %118, ptr %119, align 8, !tbaa !45
  %120 = load ptr, ptr %86, align 8, !tbaa !46
  %121 = getelementptr inbounds %struct.line_maps, ptr %120, i64 0, i32 7
  %122 = load i32, ptr %121, align 8, !tbaa !47
  %123 = getelementptr inbounds %struct.file_hash_entry, ptr %116, i64 0, i32 2
  store i32 %122, ptr %123, align 8, !tbaa !49
  %124 = getelementptr inbounds %struct.file_hash_entry, ptr %116, i64 0, i32 3
  store ptr %82, ptr %124, align 8, !tbaa !15
  store ptr %116, ptr %14, align 8, !tbaa !31
  br label %125

125:                                              ; preds = %108, %110, %115, %40, %18
  %126 = phi ptr [ %20, %18 ], [ %22, %40 ], [ %82, %115 ], [ %82, %110 ], [ %82, %108 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  ret ptr %126
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @search_cache(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.file_hash_entry, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !50

12:                                               ; preds = %4, %9, %2
  %13 = phi ptr [ null, %2 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_cpp_file(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 232) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct._cpp_file, ptr %4, i64 0, i32 15
  store i8 %7, ptr %8, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct._cpp_file, ptr %4, i64 0, i32 10
  store i32 -1, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct._cpp_file, ptr %4, i64 0, i32 8
  store ptr %1, ptr %10, align 8, !tbaa !32
  %11 = tail call ptr @xstrdup(ptr noundef %2) #21
  store ptr %11, ptr %4, align 8, !tbaa !42
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_file_in_dir(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 23
  %5 = load i8, ptr %4, align 1, !tbaa !54
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @remap_filename(ptr noundef nonnull %0, ptr noundef %1) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  %13 = getelementptr inbounds %struct.cpp_dir, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  %16 = load ptr, ptr %1, align 8, !tbaa !42
  br i1 %15, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call ptr %14(ptr noundef %16, ptr noundef nonnull %12) #21
  br label %21

19:                                               ; preds = %10
  %20 = tail call fastcc ptr @append_file_to_dir(ptr noundef %16, ptr noundef nonnull %12) #22
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %101, label %24

24:                                               ; preds = %7, %21
  %25 = phi ptr [ %22, %21 ], [ %8, %7 ]
  %26 = tail call i32 @htab_hash_string(ptr noundef nonnull %25) #21
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 22
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = tail call ptr @htab_find_with_hash(ptr noundef %28, ptr noundef nonnull %25, i32 noundef %26) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 11
  store i32 2, ptr %32, align 4, !tbaa !5
  br label %104

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  store ptr %25, ptr %34, align 8, !tbaa !57
  %35 = tail call fastcc zeroext i8 @pch_open_file(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #22, !range !34
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %104

37:                                               ; preds = %33
  %38 = tail call fastcc zeroext i8 @open_file(ptr noundef nonnull %1) #22, !range !34
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %104

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @open_file_failed(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #22
  br label %104

45:                                               ; preds = %40
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #23
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 5
  store i64 %46, ptr %47, align 8, !tbaa !58
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = getelementptr inbounds i8, ptr %49, i64 %46
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = icmp ugt ptr %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23
  %57 = trunc i64 %46 to i32
  %58 = add i32 %57, 1
  tail call void @_obstack_newchunk(ptr noundef nonnull %56, i32 noundef %58) #21
  %59 = load ptr, ptr %48, align 8, !tbaa !59
  %60 = load i64, ptr %47, align 8, !tbaa !58
  br label %61

61:                                               ; preds = %45, %55
  %62 = phi i64 [ %46, %45 ], [ %60, %55 ]
  %63 = phi ptr [ %49, %45 ], [ %59, %55 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr nonnull align 1 %25, i64 %62, i1 false)
  %64 = load i64, ptr %47, align 8, !tbaa !58
  %65 = load ptr, ptr %48, align 8, !tbaa !59
  %66 = getelementptr inbounds i8, ptr %65, i64 %64
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %67, ptr %48, align 8, !tbaa !59
  store i8 0, ptr %66, align 1, !tbaa !15
  %68 = load ptr, ptr %48, align 8, !tbaa !59
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 10
  %74 = load i8, ptr %73, align 8
  %75 = or i8 %74, 2
  store i8 %75, ptr %73, align 8
  br label %76

76:                                               ; preds = %61, %72
  %77 = ptrtoint ptr %70 to i64
  store i64 %77, ptr %47, align 8, !tbaa !58
  %78 = ptrtoint ptr %68 to i64
  %79 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !62
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %78
  %83 = xor i32 %80, -1
  %84 = sext i32 %83 to i64
  %85 = and i64 %82, %84
  %86 = inttoptr i64 %85 to ptr
  store ptr %86, ptr %48, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !63
  %89 = ptrtoint ptr %88 to i64
  %90 = sub i64 %85, %89
  %91 = load ptr, ptr %52, align 8, !tbaa !60
  %92 = ptrtoint ptr %91 to i64
  %93 = sub i64 %92, %89
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  store ptr %91, ptr %48, align 8, !tbaa !59
  br label %96

96:                                               ; preds = %95, %76
  %97 = phi ptr [ %91, %95 ], [ %86, %76 ]
  store ptr %97, ptr %69, align 8, !tbaa !61
  tail call void @free(ptr noundef nonnull %25) #21
  %98 = load ptr, ptr %27, align 8, !tbaa !56
  %99 = tail call ptr @htab_find_slot_with_hash(ptr noundef %98, ptr noundef %70, i32 noundef %26, i32 noundef 1) #21
  store ptr %70, ptr %99, align 8, !tbaa !31
  %100 = load ptr, ptr %1, align 8, !tbaa !42
  store ptr %100, ptr %34, align 8, !tbaa !57
  br label %104

101:                                              ; preds = %21
  %102 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 11
  store i32 2, ptr %102, align 4, !tbaa !5
  %103 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  store ptr null, ptr %103, align 8, !tbaa !57
  br label %104

104:                                              ; preds = %37, %33, %44, %31, %101, %96
  %105 = phi i8 [ 0, %96 ], [ 0, %101 ], [ 1, %37 ], [ 1, %33 ], [ 1, %44 ], [ 0, %31 ]
  ret i8 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @search_path_exhausted(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._cpp_file, ptr %2, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = tail call ptr %5(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %8) #21
  %13 = getelementptr inbounds %struct._cpp_file, ptr %2, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !57
  %14 = icmp eq ptr %12, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @open_file(ptr noundef nonnull %2) #22, !range !34
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void @free(ptr noundef %19) #21
  br label %20

20:                                               ; preds = %18, %11
  %21 = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %21, ptr %13, align 8, !tbaa !57
  br label %22

22:                                               ; preds = %3, %7, %20, %15
  %23 = phi i8 [ 1, %15 ], [ 0, %20 ], [ 0, %7 ], [ 0, %3 ]
  ret i8 %23
}

; Function Attrs: optsize
declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @open_file_failed(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 15
  %14 = load i8, ptr %13, align 2, !tbaa !66
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %3, %9, %12
  %17 = phi i1 [ %15, %12 ], [ false, %9 ], [ false, %3 ]
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %19 = load i32, ptr %18, align 8, !tbaa !68
  %20 = icmp ne i32 %2, 0
  %21 = select i1 %20, i1 true, i1 %17
  %22 = zext i1 %21 to i32
  %23 = icmp ugt i32 %19, %22
  %24 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 11
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = tail call ptr @__errno_location() #24
  store i32 %25, ptr %26, align 4, !tbaa !69
  br i1 %23, label %27, label %40

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 1
  %29 = load i8, ptr %28, align 4, !tbaa !70
  %30 = icmp ne i8 %29, 0
  %31 = icmp eq i32 %25, 2
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void @deps_add_dep(ptr noundef %35, ptr noundef %36) #21
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 4
  %38 = load i8, ptr %37, align 1, !tbaa !72
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %53, label %48

40:                                               ; preds = %16
  %41 = load i32, ptr %18, align 8, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 4
  %45 = load i8, ptr %44, align 1, !tbaa !72
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 0, i32 6
  br label %48

48:                                               ; preds = %43, %40, %27, %33
  %49 = phi i32 [ 6, %33 ], [ 6, %27 ], [ 6, %40 ], [ %47, %43 ]
  %50 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = tail call zeroext i8 @cpp_errno(ptr noundef nonnull %0, i32 noundef %49, ptr noundef %51) #21
  br label %53

53:                                               ; preds = %48, %33
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @new_file_hash_entry(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = load i32, ptr %3, align 8, !tbaa !74
  %5 = icmp eq i32 %4, 127
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  tail call fastcc void @allocate_file_hash_entries(ptr noundef nonnull %0) #22
  %7 = load ptr, ptr %2, align 8, !tbaa !73
  %8 = load i32, ptr %7, align 8, !tbaa !74
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ %4, %1 ]
  %11 = phi ptr [ %7, %6 ], [ %3, %1 ]
  %12 = add i32 %10, 1
  store i32 %12, ptr %11, align 8, !tbaa !74
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %11, i64 0, i32 2, i64 %13
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_stack_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @should_stack_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #22, !range !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %7, i64 0, i32 15
  %15 = load i8, ptr %14, align 2, !tbaa !66
  %16 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 3
  %17 = load i8, ptr %16, align 4, !tbaa !76
  %18 = tail call i8 @llvm.umax.i8(i8 %15, i8 %17)
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %6, %9, %13
  %21 = phi i32 [ %19, %13 ], [ 0, %9 ], [ 0, %6 ]
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %23 = load i32, ptr %22, align 8, !tbaa !68
  %24 = icmp ne i32 %21, 0
  %25 = zext i1 %24 to i32
  %26 = icmp ugt i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 12
  %29 = load i16, ptr %28, align 8, !tbaa !77
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 15
  %33 = load i8, ptr %32, align 4, !tbaa !52
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 3
  %37 = load i8, ptr %36, align 2, !tbaa !78
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  tail call void @deps_add_dep(ptr noundef %41, ptr noundef %43) #21
  br label %44

44:                                               ; preds = %35, %39, %27, %20
  %45 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 16
  store i8 0, ptr %45, align 1, !tbaa !79
  %46 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 12
  %47 = load i16, ptr %46, align 8, !tbaa !77
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !80
  %51 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %52 = load i64, ptr %51, align 8, !tbaa !81
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %54 = load i8, ptr %53, align 2, !tbaa !82
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %58 = load i8, ptr %57, align 4, !tbaa !83
  %59 = icmp eq i8 %58, 0
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %56, %44
  %62 = phi i32 [ 0, %44 ], [ %60, %56 ]
  %63 = tail call ptr @cpp_push_buffer(ptr noundef nonnull %0, ptr noundef %50, i64 noundef %52, i32 noundef %62) #21
  %64 = getelementptr inbounds %struct.cpp_buffer, ptr %63, i64 0, i32 10
  store ptr %1, ptr %64, align 8, !tbaa !84
  %65 = trunc i32 %21 to i8
  %66 = getelementptr inbounds %struct.cpp_buffer, ptr %63, i64 0, i32 15
  store i8 %65, ptr %66, align 2, !tbaa !66
  %67 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 1, ptr %67, align 8, !tbaa !85
  %68 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  store ptr null, ptr %68, align 8, !tbaa !86
  %69 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !57
  tail call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %70, i32 noundef 1, i32 noundef %21) #21
  br label %71

71:                                               ; preds = %3, %61
  %72 = phi i8 [ 1, %61 ], [ 0, %3 ]
  ret i8 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @should_stack_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 13
  %5 = load i8, ptr %4, align 2, !tbaa !87
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %122

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  tail call void @_cpp_mark_file_once_only(ptr noundef %0, ptr noundef nonnull %1) #22
  %10 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 12
  %11 = load i16, ptr %10, align 8, !tbaa !77
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %122

13:                                               ; preds = %9, %7
  %14 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cpp_hashnode, ptr %15, i64 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, 63
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %122, label %22

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  tail call void %28(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %30, ptr noundef %32) #21
  store i32 -1, ptr %29, align 8, !tbaa !53
  %33 = load ptr, ptr %23, align 8, !tbaa !89
  tail call void @free(ptr noundef %33) #21
  store ptr null, ptr %23, align 8, !tbaa !89
  br label %122

34:                                               ; preds = %22
  %35 = tail call fastcc zeroext i8 @read_file(ptr noundef %0, ptr noundef nonnull %1) #22, !range !34
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %122, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @check_file_against_entries(ptr noundef nonnull %1, i8 noundef zeroext %2) #22
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  br i1 %8, label %41, label %122

41:                                               ; preds = %40
  tail call void @_cpp_mark_file_once_only(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %122

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 25
  %44 = load i8, ptr %43, align 1, !tbaa !91
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %122, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !31
  %49 = icmp eq ptr %48, null
  br i1 %49, label %122, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 12
  %52 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %53 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  br label %54

54:                                               ; preds = %50, %118
  %55 = phi ptr [ %48, %50 ], [ %120, %118 ]
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %118, label %57

57:                                               ; preds = %54
  br i1 %8, label %58, label %62

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 13
  %60 = load i8, ptr %59, align 2, !tbaa !87
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %118, label %62

62:                                               ; preds = %58, %57
  %63 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 11
  %64 = load i32, ptr %63, align 4, !tbaa !5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %118

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 9, i32 12
  %68 = load i64, ptr %67, align 8, !tbaa !92
  %69 = load i64, ptr %51, align 8, !tbaa !92
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %118

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 9, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !81
  %74 = load i64, ptr %52, align 8, !tbaa !81
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !80
  %79 = icmp eq ptr %78, null
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 16
  %82 = load i8, ptr %81, align 1, !tbaa !79
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !32
  %87 = load ptr, ptr %55, align 8, !tbaa !42
  %88 = tail call fastcc ptr @make_cpp_file(ptr noundef %0, ptr noundef %86, ptr noundef %87) #22
  %89 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !57
  %91 = getelementptr inbounds %struct._cpp_file, ptr %88, i64 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !57
  br label %92

92:                                               ; preds = %76, %80, %84
  %93 = phi ptr [ %88, %84 ], [ %55, %80 ], [ %55, %76 ]
  %94 = tail call fastcc zeroext i8 @read_file(ptr noundef %0, ptr noundef nonnull %93) #22, !range !34
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct._cpp_file, ptr %93, i64 0, i32 9, i32 8
  %98 = load i64, ptr %97, align 8, !tbaa !81
  %99 = load i64, ptr %52, align 8, !tbaa !81
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct._cpp_file, ptr %93, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !80
  %104 = load ptr, ptr %53, align 8, !tbaa !80
  %105 = tail call i32 @bcmp(ptr %103, ptr %104, i64 %98)
  %106 = icmp eq i32 %105, 0
  br label %107

107:                                              ; preds = %101, %96, %92
  %108 = phi i1 [ false, %96 ], [ false, %92 ], [ %106, %101 ]
  %109 = load ptr, ptr %77, align 8, !tbaa !80
  %110 = icmp eq ptr %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 16
  %113 = load i8, ptr %112, align 1, !tbaa !79
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct._cpp_file, ptr %93, i64 0, i32 1
  store ptr null, ptr %116, align 8, !tbaa !57
  tail call fastcc void @destroy_cpp_file(ptr noundef nonnull %93) #22
  br label %117

117:                                              ; preds = %115, %111, %107
  br i1 %108, label %122, label %118

118:                                              ; preds = %117, %58, %62, %66, %71, %54
  %119 = getelementptr inbounds %struct._cpp_file, ptr %55, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !31
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %54, !llvm.loop !93

122:                                              ; preds = %117, %118, %46, %42, %40, %41, %34, %17, %9, %3, %26
  %123 = phi i8 [ 0, %26 ], [ 0, %3 ], [ 0, %9 ], [ 0, %17 ], [ 0, %34 ], [ 0, %41 ], [ 0, %40 ], [ 1, %42 ], [ 1, %46 ], [ 0, %117 ], [ 1, %118 ]
  ret i8 %123
}

; Function Attrs: optsize
declare void @deps_add_dep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cpp_push_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_cpp_do_file_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_cpp_mark_file_once_only(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 25
  store i8 1, ptr %3, align 1, !tbaa !91
  %4 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 13
  store i8 1, ptr %4, align 2, !tbaa !87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_stack_include(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call fastcc ptr @search_path_head(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @_cpp_find_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %2) #22
  %9 = getelementptr inbounds %struct._cpp_file, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._cpp_file, ptr %8, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne i32 %3, 3
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.line_maps, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !47
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %18, %12, %7
  %25 = icmp eq i32 %3, 2
  %26 = zext i1 %25 to i8
  %27 = tail call zeroext i8 @_cpp_stack_file(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext %26) #22, !range !34
  br label %28

28:                                               ; preds = %4, %24
  %29 = phi i8 [ %27, %24 ], [ 0, %4 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @search_path_head(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = load i8, ptr %1, align 1, !tbaa !15
  %6 = icmp eq i8 %5, 47
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 16
  br label %57

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 18
  %13 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 10
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._cpp_file, ptr %15, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 16
  %22 = icmp eq ptr %19, %21
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %26, label %51

24:                                               ; preds = %9
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %30, label %28

26:                                               ; preds = %17
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %26, %24
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 15
  br label %51

30:                                               ; preds = %24
  %31 = icmp eq i32 %3, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @make_cpp_dir(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef 0) #22
  br label %57

34:                                               ; preds = %26, %30
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 24
  %36 = load i8, ptr %35, align 8, !tbaa !94
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  br label %51

40:                                               ; preds = %34
  %41 = tail call fastcc ptr @dir_name_of_file(ptr noundef %15) #22
  %42 = load ptr, ptr %0, align 8, !tbaa !51
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cpp_buffer, ptr %42, i64 0, i32 15
  %46 = load i8, ptr %45, align 2, !tbaa !66
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %40, %44
  %49 = phi i32 [ %47, %44 ], [ 0, %40 ]
  %50 = tail call fastcc ptr @make_cpp_dir(ptr noundef nonnull %0, ptr noundef %41, i32 noundef %49) #22
  br label %57

51:                                               ; preds = %17, %28, %38
  %52 = phi ptr [ %29, %28 ], [ %39, %38 ], [ %19, %17 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !31
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #21
  br label %57

57:                                               ; preds = %51, %55, %48, %32, %7
  %58 = phi ptr [ %8, %7 ], [ %33, %32 ], [ %50, %48 ], [ null, %55 ], [ %53, %51 ]
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cpp_included(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = tail call i32 @htab_hash_string(ptr noundef %1) #21
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %4, ptr noundef %1, i32 noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %19
  %9 = phi ptr [ %20, %19 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.file_hash_entry, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file_hash_entry, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct._cpp_file, ptr %15, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %8, %13
  %20 = load ptr, ptr %9, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !95

22:                                               ; preds = %13, %19, %2
  %23 = phi i8 [ 0, %2 ], [ 0, %19 ], [ 1, %13 ]
  ret i8 %23
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cpp_included_before(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = tail call i32 @htab_hash_string(ptr noundef %1) #21
  %7 = tail call ptr @htab_find_with_hash(ptr noundef %5, ptr noundef %1, i32 noundef %6) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3, %24
  %10 = phi ptr [ %25, %24 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct._cpp_file, ptr %16, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !49
  %23 = icmp ugt i32 %22, %2
  br i1 %23, label %24, label %27

24:                                               ; preds = %14, %9, %20
  %25 = load ptr, ptr %10, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !96

27:                                               ; preds = %20, %24, %3
  %28 = phi i8 [ 0, %3 ], [ 0, %24 ], [ 1, %20 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_init_files(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @htab_create_alloc(i64 noundef 127, ptr noundef nonnull @file_hash_hash, ptr noundef nonnull @file_hash_eq, ptr noundef null, ptr noundef nonnull @xcalloc, ptr noundef nonnull @free) #21
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  store ptr %2, ptr %3, align 8, !tbaa !16
  %4 = tail call ptr @htab_create_alloc(i64 noundef 127, ptr noundef nonnull @file_hash_hash, ptr noundef nonnull @file_hash_eq, ptr noundef null, ptr noundef nonnull @xcalloc, ptr noundef nonnull @free) #21
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 20
  store ptr %4, ptr %5, align 8, !tbaa !97
  tail call fastcc void @allocate_file_hash_entries(ptr noundef %0) #22
  %6 = tail call ptr @htab_create_alloc(i64 noundef 127, ptr noundef nonnull @htab_hash_string, ptr noundef nonnull @nonexistent_file_hash_eq, ptr noundef null, ptr noundef nonnull @xcalloc, ptr noundef nonnull @free) #21
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 22
  store ptr %6, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23
  %9 = tail call i32 @_obstack_begin(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #21
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @file_hash_hash(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.cpp_dir, ptr %6, i64 0, i32 1
  %8 = select i1 %4, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = tail call i32 @htab_hash_string(ptr noundef %9) #21
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @file_hash_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.cpp_dir, ptr %7, i64 0, i32 1
  %9 = select i1 %5, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #23
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @allocate_file_hash_entries(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @xmalloc(i64 noundef 4080) #21
  store i32 0, ptr %2, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !98
  store ptr %2, ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @nonexistent_file_hash_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #23
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_cleanup_files(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  tail call void @htab_delete(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  tail call void @htab_delete(ptr noundef %5) #21
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  tail call void @htab_delete(ptr noundef %7) #21
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 5
  store i64 %12, ptr %13, align 8, !tbaa !58
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %11
  %20 = icmp sgt i64 %19, %12
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %10, i64 %12
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 3
  store ptr %22, ptr %24, align 8, !tbaa !59
  br label %27

25:                                               ; preds = %15, %1
  %26 = getelementptr inbounds i8, ptr %10, i64 %12
  tail call void @obstack_free(ptr noundef nonnull %8, ptr noundef %26) #21
  br label %27

27:                                               ; preds = %25, %21
  tail call fastcc void @free_file_hash_entries(ptr noundef nonnull %0) #22
  tail call fastcc void @destroy_all_cpp_files(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_file_hash_entries(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  tail call void @free(ptr noundef nonnull %6) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !99

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @destroy_all_cpp_files(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._cpp_file, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  tail call fastcc void @destroy_cpp_file(ptr noundef nonnull %6) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !100

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_clear_file_cache(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @_cpp_cleanup_files(ptr noundef %0) #22
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  store ptr null, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  store ptr null, ptr %3, align 8, !tbaa !35
  tail call void @_cpp_init_files(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_fake_include(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct._cpp_file, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = tail call ptr @_cpp_find_file(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %7, i8 noundef zeroext 1, i32 noundef 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_make_system_header(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = icmp eq i32 %1, 0
  %10 = icmp eq i32 %2, 0
  %11 = select i1 %10, i32 1, i32 2
  %12 = select i1 %9, i32 0, i32 %11
  %13 = add i32 %8, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14
  %16 = trunc i32 %12 to i8
  %17 = load ptr, ptr %0, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %17, i64 0, i32 15
  store i8 %16, ptr %18, align 2, !tbaa !66
  %19 = load ptr, ptr %15, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !65
  %22 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !105
  %24 = sub i32 %21, %23
  %25 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14, i32 6
  %26 = load i8, ptr %25, align 2
  %27 = zext nneg i8 %26 to i32
  %28 = lshr i32 %24, %27
  %29 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !106
  %31 = add i32 %28, %30
  tail call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %19, i32 noundef %31, i32 noundef %12) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_change_file(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  tail call void @_cpp_do_file_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_report_missing_guards(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca %struct.report_missing_guard_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  store ptr null, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = tail call i64 @htab_elements(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.report_missing_guard_data, ptr %2, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !109
  %7 = load ptr, ptr %3, align 8, !tbaa !16
  call void @htab_traverse(ptr noundef %7, ptr noundef nonnull @report_missing_guard, ptr noundef nonnull %2) #21
  %8 = load ptr, ptr %2, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = load i64, ptr %6, align 8, !tbaa !109
  call void @spec_qsort(ptr noundef nonnull %8, i64 noundef %11, i64 noundef 8, ptr noundef nonnull @report_missing_guard_cmp) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !31
  %13 = call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %12) #25
  %14 = load i64, ptr %6, align 8, !tbaa !109
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10, %16
  %17 = phi i64 [ %25, %16 ], [ 0, %10 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !107
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = load ptr, ptr @stderr, align 8, !tbaa !31
  %22 = call i32 @fputs(ptr noundef %20, ptr noundef %21) #25
  %23 = load ptr, ptr @stderr, align 8, !tbaa !31
  %24 = call i32 @putc(i32 noundef 10, ptr noundef %23) #22
  %25 = add nuw i64 %17, 1
  %26 = load i64, ptr %6, align 8, !tbaa !109
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %16, label %28, !llvm.loop !110

28:                                               ; preds = %16, %10
  %29 = load ptr, ptr %2, align 8, !tbaa !107
  call void @free(ptr noundef %29) #21
  br label %30

30:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_missing_guard(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.file_hash_entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file_hash_entry, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 12
  %15 = load i16, ptr %14, align 8, !tbaa !77
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 15
  %19 = load i8, ptr %18, align 4, !tbaa !52
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !107
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.report_missing_guard_data, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !109
  br i1 %23, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 8) #21
  store ptr %27, ptr %1, align 8, !tbaa !107
  br label %28

28:                                               ; preds = %21, %26
  %29 = phi i64 [ 0, %26 ], [ %25, %21 ]
  %30 = phi ptr [ %27, %26 ], [ %22, %21 ]
  %31 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.report_missing_guard_data, ptr %1, i64 0, i32 1
  %34 = add i64 %29, 1
  store i64 %34, ptr %33, align 8, !tbaa !109
  %35 = getelementptr inbounds ptr, ptr %30, i64 %29
  store ptr %32, ptr %35, align 8, !tbaa !31
  br label %36

36:                                               ; preds = %7, %13, %17, %28, %2
  ret i32 1
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @report_missing_guard_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !31
  %4 = load ptr, ptr %1, align 8, !tbaa !31
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #23
  ret i32 %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @_cpp_compare_file_date(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc ptr @search_path_head(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @_cpp_find_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef %2) #22
  %8 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @close(i32 noundef %13) #21
  store i32 -1, ptr %12, align 8, !tbaa !53
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 9, i32 12
  %19 = load i64, ptr %18, align 8, !tbaa !92
  %20 = load ptr, ptr %0, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.cpp_buffer, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct._cpp_file, ptr %22, i64 0, i32 9, i32 12
  %24 = load i64, ptr %23, align 8, !tbaa !92
  %25 = icmp sgt i64 %19, %24
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %6, %3, %17
  %28 = phi i32 [ %26, %17 ], [ -1, %3 ], [ -1, %6 ]
  ret i32 %28
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @cpp_push_include(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call zeroext i8 @_cpp_stack_include(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 3) #22, !range !34
  ret i8 %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @_cpp_pop_file_buffer(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %4 = load i8, ptr %3, align 8, !tbaa !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  store ptr %12, ptr %7, align 8, !tbaa !88
  br label %13

13:                                               ; preds = %10, %6, %2
  store i8 0, ptr %3, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %15) #21
  %18 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  %19 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 16
  store i8 0, ptr %19, align 1, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  br label %20

20:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @_cpp_get_file_stat(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 9
  ret ptr %2
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cpp_set_include_chains(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  store ptr %1, ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 15
  store ptr %1, ptr %6, align 8, !tbaa !38
  %7 = trunc i32 %3 to i8
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 24
  store i8 %7, ptr %8, align 8, !tbaa !94
  %9 = icmp eq ptr %1, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %4, %20
  %11 = phi ptr [ %21, %20 ], [ %1, %4 ]
  %12 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !112
  %13 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #23
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !114
  %18 = icmp eq ptr %11, %2
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store ptr %2, ptr %6, align 8, !tbaa !38
  br label %20

20:                                               ; preds = %10, %19
  %21 = load ptr, ptr %11, align 8, !tbaa !33
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !115

23:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_path(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_dir(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_buffer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_prev(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_save_file_entries(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i64 [ %9, %6 ], [ 0, %2 ]
  %9 = add i64 %8, 1
  %10 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !117

13:                                               ; preds = %6
  %14 = shl i64 %9, 5
  %15 = or disjoint i64 %14, 16
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i64 [ 16, %2 ], [ %15, %13 ]
  %18 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %17) #21
  store i64 0, ptr %18, align 8, !tbaa !118
  %19 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 1
  store i8 0, ptr %19, align 8, !tbaa !120
  %20 = load ptr, ptr %3, align 8, !tbaa !31
  %21 = icmp eq ptr %20, null
  br i1 %21, label %75, label %22

22:                                               ; preds = %16, %69
  %23 = phi ptr [ %71, %69 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !121
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 11
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 12
  %33 = load i16, ptr %32, align 8, !tbaa !77
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %18, align 8, !tbaa !118
  %37 = add i64 %36, 1
  store i64 %37, ptr %18, align 8, !tbaa !118
  %38 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 13
  %39 = load i8, ptr %38, align 2, !tbaa !87
  %40 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36
  %41 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36, i32 2
  store i8 %39, ptr %41, align 8, !tbaa !122
  %42 = load i8, ptr %19, align 8, !tbaa !120
  %43 = or i8 %42, %39
  store i8 %43, ptr %19, align 8, !tbaa !120
  %44 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 16
  %45 = load i8, ptr %44, align 1, !tbaa !79
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !80
  %50 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 9, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !81
  %52 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36, i32 1
  %53 = tail call ptr @md5_buffer(ptr noundef %49, i64 noundef %51, ptr noundef nonnull %52) #21
  br label %65

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 10
  %56 = load i32, ptr %55, align 8, !tbaa !53
  %57 = tail call fastcc zeroext i8 @open_file(ptr noundef nonnull %23) #22, !range !34
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %55, align 8, !tbaa !53
  %61 = tail call ptr @fdopen_unlocked(i32 noundef %60, ptr noundef nonnull @.str.4) #21
  %62 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36, i32 1
  %63 = tail call i32 @md5_stream(ptr noundef %61, ptr noundef nonnull %62) #21
  %64 = tail call i32 @fclose(ptr noundef %61) #22
  store i32 %56, ptr %55, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %59, %47
  %66 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 9, i32 8
  %67 = load i64, ptr %66, align 8, !tbaa !81
  store i64 %67, ptr %40, align 8, !tbaa !124
  br label %69

68:                                               ; preds = %54
  tail call fastcc void @open_file_failed(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 0) #22
  br label %83

69:                                               ; preds = %65, %27, %22, %31
  %70 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !31
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %22, !llvm.loop !125

73:                                               ; preds = %69
  %74 = load i64, ptr %18, align 8, !tbaa !118
  br label %75

75:                                               ; preds = %73, %16
  %76 = phi i64 [ %74, %73 ], [ 0, %16 ]
  %77 = shl i64 %76, 5
  %78 = or disjoint i64 %77, 16
  %79 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2
  tail call void @spec_qsort(ptr noundef nonnull %79, i64 noundef %76, i64 noundef 32, ptr noundef nonnull @pchf_save_compare) #21
  %80 = tail call i64 @fwrite(ptr noundef nonnull %18, i64 noundef %78, i64 noundef 1, ptr noundef %1) #22
  %81 = icmp eq i64 %80, 1
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %68, %75
  %84 = phi i8 [ 0, %68 ], [ %82, %75 ]
  ret i8 %84
}

; Function Attrs: optsize
declare ptr @md5_buffer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @open_file(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 10
  store i32 0, ptr %7, align 8
  br label %12

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 256, i32 noundef 438) #21
  %10 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 10
  store i32 %9, ptr %10, align 8
  %11 = icmp eq i32 %9, -1
  br i1 %11, label %29, label %12

12:                                               ; preds = %6, %8
  %13 = phi ptr [ %7, %6 ], [ %10, %8 ]
  %14 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %15 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 9
  %16 = tail call i32 @fstat(i32 noundef %14, ptr noundef nonnull %15) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 9, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !126
  %21 = and i32 %20, 61440
  %22 = icmp eq i32 %21, 16384
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = tail call ptr @__errno_location() #24
  store i32 2, ptr %24, align 4, !tbaa !69
  br label %25

25:                                               ; preds = %23, %12
  %26 = load i32, ptr %13, align 8, !tbaa !53
  %27 = tail call i32 @close(i32 noundef %26) #21
  store i32 -1, ptr %13, align 8, !tbaa !53
  %28 = tail call ptr @__errno_location() #24
  br label %34

29:                                               ; preds = %8
  %30 = tail call ptr @__errno_location() #24
  %31 = load i32, ptr %30, align 4, !tbaa !69
  %32 = icmp eq i32 %31, 20
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 2, ptr %30, align 4, !tbaa !69
  br label %34

34:                                               ; preds = %29, %33, %25
  %35 = phi ptr [ %30, %29 ], [ %30, %33 ], [ %28, %25 ]
  %36 = load i32, ptr %35, align 4, !tbaa !69
  br label %37

37:                                               ; preds = %18, %34
  %38 = phi i32 [ %36, %34 ], [ 0, %18 ]
  %39 = phi i8 [ 0, %34 ], [ 1, %18 ]
  %40 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 11
  store i32 %38, ptr %40, align 4, !tbaa !5
  ret i8 %39
}

; Function Attrs: optsize
declare ptr @fdopen_unlocked(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @md5_stream(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @pchf_save_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(32) %0, ptr noundef nonnull dereferenceable(32) %1, i64 noundef 32) #23
  ret i32 %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_read_file_entries(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.pchf_data, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #20
  %4 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 16, i64 noundef 1, ptr noundef %1) #22
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !118
  %8 = shl i64 %7, 5
  %9 = or disjoint i64 %8, 16
  %10 = tail call ptr @xmalloc(i64 noundef %9) #21
  store ptr %10, ptr @pchf, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.pchf_data, ptr %10, i64 0, i32 2
  %12 = tail call i64 @fread(ptr noundef nonnull %11, i64 noundef 32, i64 noundef %7, ptr noundef %1) #22
  %13 = icmp eq i64 %12, %7
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i8 [ 0, %2 ], [ %14, %6 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  ret i8 %16
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @remap_filename(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  br label %6

6:                                                ; preds = %38, %2
  %7 = phi ptr [ %5, %2 ], [ %61, %38 ]
  %8 = phi ptr [ %4, %2 ], [ %60, %38 ]
  %9 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  tail call fastcc void @read_name_map(ptr noundef nonnull %8) #22
  %13 = load ptr, ptr %9, align 8, !tbaa !112
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %10, %6 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14, %28
  %19 = phi ptr [ %31, %28 ], [ %16, %14 ]
  %20 = phi i64 [ %29, %28 ], [ 0, %14 ]
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %7) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = or disjoint i64 %20, 1
  %25 = getelementptr inbounds ptr, ptr %15, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = tail call ptr @xstrdup(ptr noundef %26) #21
  br label %62

28:                                               ; preds = %18
  %29 = add i64 %20, 2
  %30 = getelementptr inbounds ptr, ptr %15, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %18, !llvm.loop !127

33:                                               ; preds = %28, %14
  %34 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 47) #23
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %34, %7
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %62, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !114
  %41 = zext i32 %40 to i64
  %42 = ptrtoint ptr %34 to i64
  %43 = ptrtoint ptr %7 to i64
  %44 = sub i64 %42, %43
  %45 = add nsw i64 %44, 1
  %46 = add nsw i64 %45, %41
  %47 = add i64 %46, 1
  %48 = tail call ptr @xmalloc(i64 noundef %47) #21
  %49 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !113
  %51 = load i32, ptr %39, align 8, !tbaa !114
  %52 = zext i32 %51 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %50, i64 %52, i1 false)
  %53 = load i32, ptr %39, align 8, !tbaa !114
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %48, i64 %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %7, i64 %45, i1 false)
  %56 = getelementptr inbounds i8, ptr %48, i64 %46
  store i8 0, ptr %56, align 1, !tbaa !15
  %57 = getelementptr inbounds %struct.cpp_dir, ptr %8, i64 0, i32 3
  %58 = load i8, ptr %57, align 4, !tbaa !76
  %59 = zext i8 %58 to i32
  %60 = tail call fastcc ptr @make_cpp_dir(ptr noundef %0, ptr noundef %48, i32 noundef %59) #22
  %61 = getelementptr inbounds i8, ptr %34, i64 1
  br label %6

62:                                               ; preds = %33, %23
  %63 = phi ptr [ %27, %23 ], [ null, %33 ]
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @append_file_to_dir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.cpp_dir, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !114
  %5 = zext i32 %4 to i64
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %7 = add nuw nsw i64 %5, 1
  %8 = add i64 %6, 1
  %9 = add i64 %8, %7
  %10 = tail call ptr @xmalloc(i64 noundef %9) #21
  %11 = getelementptr inbounds %struct.cpp_dir, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %12, i64 %5, i1 false)
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %10, i64 %5
  %16 = getelementptr i8, ptr %15, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i8 47, ptr %15, align 1, !tbaa !15
  br label %20

20:                                               ; preds = %19, %14, %2
  %21 = phi i64 [ %7, %19 ], [ %5, %14 ], [ 0, %2 ]
  %22 = getelementptr inbounds i8, ptr %10, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %0, i64 %8, i1 false)
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pch_open_file(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = alloca %struct.stat, align 8
  %5 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #20
  %7 = load ptr, ptr %1, align 8, !tbaa !42
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %86, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = icmp eq ptr %12, null
  br i1 %13, label %86, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._cpp_file, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %86

22:                                               ; preds = %18, %14
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #23
  %24 = add i64 %23, 5
  %25 = tail call ptr @xmalloc(i64 noundef %24) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %6, i64 %23, i1 false)
  %26 = getelementptr inbounds i8, ptr %25, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %26, ptr noundef nonnull align 1 dereferenceable(5) @pch_open_file.extension, i64 5, i1 false)
  %27 = call i32 @stat(ptr noundef %25, ptr noundef nonnull %4) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !129
  %32 = and i32 %31, 61440
  %33 = icmp eq i32 %32, 16384
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call fastcc zeroext i8 @validate_pch(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %25) #22, !range !34
  br label %76

36:                                               ; preds = %29
  %37 = tail call ptr @opendir(ptr noundef nonnull %25) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %80, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %26, i64 4
  store i8 47, ptr %40, align 1, !tbaa !15
  br label %41

41:                                               ; preds = %66, %39
  %42 = phi ptr [ %67, %66 ], [ %25, %39 ]
  %43 = phi i64 [ %68, %66 ], [ %24, %39 ]
  %44 = tail call ptr @readdir(ptr noundef nonnull %37) #21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %72, label %46

46:                                               ; preds = %41, %55
  %47 = phi ptr [ %56, %55 ], [ %44, %41 ]
  %48 = getelementptr inbounds %struct.dirent, ptr %47, i64 0, i32 4
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.6) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #23
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(3) @.str.7) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %46
  %56 = tail call ptr @readdir(ptr noundef nonnull %37) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %46, !llvm.loop !130

58:                                               ; preds = %51
  %59 = add i64 %52, 1
  %60 = add i64 %59, %24
  %61 = icmp ugt i64 %60, %43
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = add i64 %43, 65
  %64 = add i64 %63, %52
  %65 = tail call ptr @xrealloc(ptr noundef %42, i64 noundef %64) #21
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi ptr [ %65, %62 ], [ %42, %58 ]
  %68 = phi i64 [ %64, %62 ], [ %43, %58 ]
  %69 = getelementptr inbounds i8, ptr %67, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr nonnull align 1 %48, i64 %59, i1 false)
  %70 = tail call fastcc zeroext i8 @validate_pch(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %67) #22, !range !34
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %41, label %72, !llvm.loop !130

72:                                               ; preds = %66, %41, %55
  %73 = phi i8 [ 0, %55 ], [ 0, %41 ], [ 1, %66 ]
  %74 = phi ptr [ %42, %55 ], [ %42, %41 ], [ %67, %66 ]
  %75 = tail call i32 @closedir(ptr noundef nonnull %37) #22
  br label %76

76:                                               ; preds = %72, %34
  %77 = phi i8 [ %73, %72 ], [ %35, %34 ]
  %78 = phi ptr [ %74, %72 ], [ %25, %34 ]
  %79 = icmp eq i8 %77, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %36, %76
  %81 = phi ptr [ %78, %76 ], [ %25, %36 ]
  store i8 1, ptr %2, align 1, !tbaa !15
  br label %84

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 2
  store ptr %78, ptr %83, align 8, !tbaa !89
  br label %86

84:                                               ; preds = %22, %80
  %85 = phi ptr [ %81, %80 ], [ %25, %22 ]
  tail call void @free(ptr noundef %85) #21
  br label %86

86:                                               ; preds = %82, %84, %18, %3, %10
  %87 = phi i8 [ 0, %10 ], [ 0, %3 ], [ 0, %18 ], [ 0, %84 ], [ 1, %82 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #20
  ret i8 %87
}

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_name_map(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !114
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 12
  %6 = alloca i8, i64 %5, align 16
  %7 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr align 1 %8, i64 %4, i1 false)
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %6, i64 %4
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %4, 1
  store i8 47, ptr %11, align 1, !tbaa !15
  br label %17

17:                                               ; preds = %15, %10, %1
  %18 = phi i64 [ %16, %15 ], [ %4, %10 ], [ 0, %1 ]
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %19, ptr noundef nonnull align 1 dereferenceable(11) @read_name_map.FILE_NAME_MAP_FILE, i64 11, i1 false) #21
  %20 = call ptr @fopen_unlocked(ptr noundef nonnull %6, ptr noundef nonnull @.str.5) #21
  %21 = call ptr @xmalloc(i64 noundef 72) #21
  %22 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !112
  %23 = icmp eq ptr %20, null
  br i1 %23, label %85, label %24

24:                                               ; preds = %17
  %25 = call i32 @getc(ptr noundef nonnull %20) #22
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %81, label %27

27:                                               ; preds = %24, %76
  %28 = phi i32 [ %79, %76 ], [ %25, %24 ]
  %29 = phi i64 [ %78, %76 ], [ 9, %24 ]
  %30 = phi i64 [ %77, %76 ], [ 0, %24 ]
  %31 = and i32 %28, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !131
  %35 = and i16 %34, 3072
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %76, !llvm.loop !132

37:                                               ; preds = %27
  %38 = add i64 %30, 2
  %39 = icmp ugt i64 %38, %29
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = add i64 %29, 8
  %42 = load ptr, ptr %22, align 8, !tbaa !112
  %43 = shl i64 %41, 3
  %44 = call ptr @xrealloc(ptr noundef %42, i64 noundef %43) #21
  store ptr %44, ptr %22, align 8, !tbaa !112
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i64 [ %41, %40 ], [ %29, %37 ]
  %47 = call fastcc ptr @read_filename_string(i32 noundef %28, ptr noundef nonnull %20) #22
  %48 = load ptr, ptr %22, align 8, !tbaa !112
  %49 = getelementptr inbounds ptr, ptr %48, i64 %30
  store ptr %47, ptr %49, align 8, !tbaa !31
  br label %50

50:                                               ; preds = %53, %45
  %51 = call i32 @getc(ptr noundef nonnull %20) #22
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = and i32 %51, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !131
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %50, !llvm.loop !133

60:                                               ; preds = %50, %53
  %61 = call fastcc ptr @read_filename_string(i32 noundef %51, ptr noundef nonnull %20) #22
  %62 = load i8, ptr %61, align 1, !tbaa !15
  %63 = icmp eq i8 %62, 47
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load ptr, ptr %22, align 8, !tbaa !112
  %66 = getelementptr ptr, ptr %65, i64 %30
  %67 = getelementptr ptr, ptr %66, i64 1
  store ptr %61, ptr %67, align 8, !tbaa !31
  br label %73

68:                                               ; preds = %60
  %69 = call fastcc ptr @append_file_to_dir(ptr noundef nonnull %61, ptr noundef %0) #22
  %70 = load ptr, ptr %22, align 8, !tbaa !112
  %71 = getelementptr ptr, ptr %70, i64 %30
  %72 = getelementptr ptr, ptr %71, i64 1
  store ptr %69, ptr %72, align 8, !tbaa !31
  call void @free(ptr noundef nonnull %61) #21
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %74
  %75 = call i32 @getc(ptr noundef nonnull %20) #22
  switch i32 %75, label %74 [
    i32 -1, label %76
    i32 10, label %76
  ]

76:                                               ; preds = %74, %74, %27
  %77 = phi i64 [ %30, %27 ], [ %38, %74 ], [ %38, %74 ]
  %78 = phi i64 [ %29, %27 ], [ %46, %74 ], [ %46, %74 ]
  %79 = call i32 @getc(ptr noundef nonnull %20) #22
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %27

81:                                               ; preds = %76, %24
  %82 = phi i64 [ 0, %24 ], [ %77, %76 ]
  %83 = call i32 @fclose(ptr noundef nonnull %20) #22
  %84 = load ptr, ptr %22, align 8, !tbaa !112
  br label %85

85:                                               ; preds = %81, %17
  %86 = phi ptr [ %84, %81 ], [ %21, %17 ]
  %87 = phi i64 [ %82, %81 ], [ 0, %17 ]
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87
  store ptr null, ptr %88, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_cpp_dir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = tail call i32 @htab_hash_string(ptr noundef %1) #21
  %7 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef %1, i32 noundef %6, i32 noundef 1) #21
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !134

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  br label %39

19:                                               ; preds = %8
  %20 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #21
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  store ptr %22, ptr %20, align 8, !tbaa !33
  %23 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !113
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !114
  %27 = trunc i32 %2 to i8
  %28 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 3
  store i8 %27, ptr %28, align 4, !tbaa !76
  %29 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 7
  store ptr null, ptr %29, align 8, !tbaa !55
  %30 = tail call fastcc ptr @new_file_hash_entry(ptr noundef %0) #22
  %31 = load ptr, ptr %7, align 8, !tbaa !31
  store ptr %31, ptr %30, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.file_hash_entry, ptr %30, i64 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.line_maps, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.file_hash_entry, ptr %30, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.file_hash_entry, ptr %30, i64 0, i32 3
  store ptr %20, ptr %38, align 8, !tbaa !15
  store ptr %30, ptr %7, align 8, !tbaa !31
  br label %39

39:                                               ; preds = %19, %16
  %40 = phi ptr [ %18, %16 ], [ %20, %19 ]
  ret ptr %40
}

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @read_filename_string(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @xmalloc(i64 noundef 21) #21
  %4 = and i32 %0, 255
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !131
  %8 = and i16 %7, 3072
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = trunc i32 %0 to i8
  store i8 %11, ptr %3, align 1, !tbaa !15
  %12 = getelementptr inbounds i8, ptr %3, i64 1
  %13 = tail call i32 @getc(ptr noundef %1) #22
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %46, label %15

15:                                               ; preds = %10, %38
  %16 = phi i32 [ %44, %38 ], [ %13, %10 ]
  %17 = phi ptr [ %43, %38 ], [ %12, %10 ]
  %18 = phi i32 [ %41, %38 ], [ 20, %10 ]
  %19 = phi ptr [ %39, %38 ], [ %3, %10 ]
  %20 = and i32 %16, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !131
  %24 = and i16 %23, 3072
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %15
  %27 = ptrtoint ptr %17 to i64
  %28 = ptrtoint ptr %19 to i64
  %29 = sub i64 %27, %28
  %30 = sext i32 %18 to i64
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = shl nsw i32 %18, 1
  %34 = or disjoint i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = tail call ptr @xrealloc(ptr noundef %19, i64 noundef %35) #21
  %37 = getelementptr inbounds i8, ptr %36, i64 %29
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi ptr [ %36, %32 ], [ %19, %26 ]
  %40 = phi ptr [ %37, %32 ], [ %17, %26 ]
  %41 = phi i32 [ %33, %32 ], [ %18, %26 ]
  %42 = trunc i32 %16 to i8
  store i8 %42, ptr %40, align 1, !tbaa !15
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = tail call i32 @getc(ptr noundef %1) #22
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %15, !llvm.loop !135

46:                                               ; preds = %38, %15, %10, %2
  %47 = phi i32 [ %0, %2 ], [ -1, %10 ], [ -1, %38 ], [ %16, %15 ]
  %48 = phi ptr [ %3, %2 ], [ %3, %10 ], [ %39, %38 ], [ %19, %15 ]
  %49 = phi ptr [ %3, %2 ], [ %12, %10 ], [ %43, %38 ], [ %17, %15 ]
  store i8 0, ptr %49, align 1, !tbaa !15
  %50 = tail call i32 @ungetc(i32 noundef %47, ptr noundef %1) #22
  ret ptr %48
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @validate_pch(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  store ptr %2, ptr %4, align 8, !tbaa !57
  %6 = tail call fastcc zeroext i8 @open_file(ptr noundef %1) #22, !range !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %2, i32 noundef %12) #21
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, ptr %11, align 8, !tbaa !53
  %19 = tail call i32 @close(i32 noundef %18) #21
  store i32 -1, ptr %11, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %17, %8
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 11
  %22 = load i8, ptr %21, align 1, !tbaa !136
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.line_maps, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !137
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %24, %30
  %31 = phi i32 [ %34, %30 ], [ 1, %24 ]
  %32 = load ptr, ptr @stderr, align 8, !tbaa !31
  %33 = tail call i32 @putc(i32 noundef 46, ptr noundef %32) #22
  %34 = add nuw i32 %31, 1
  %35 = load ptr, ptr %25, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.line_maps, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !137
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %30, label %39, !llvm.loop !138

39:                                               ; preds = %30, %24
  %40 = load ptr, ptr @stderr, align 8, !tbaa !31
  %41 = and i32 %13, 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 120, i32 33
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.8, i32 noundef %43, ptr noundef %2) #25
  br label %45

45:                                               ; preds = %20, %39, %3
  %46 = phi i8 [ %15, %39 ], [ %15, %20 ], [ 0, %3 ]
  store ptr %5, ptr %4, align 8, !tbaa !57
  ret i8 %46
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @read_file(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 16
  %4 = load i8, ptr %3, align 1, !tbaa !79
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 14
  %8 = load i8, ptr %7, align 1, !tbaa !121
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 11
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @open_file(ptr noundef nonnull %1) #22, !range !34
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call fastcc void @open_file_failed(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #22
  br label %30

22:                                               ; preds = %18, %14
  %23 = tail call fastcc zeroext i8 @read_file_guts(ptr noundef %0, ptr noundef nonnull %1) #22, !range !34
  %24 = xor i8 %23, 1
  store i8 %24, ptr %7, align 1, !tbaa !121
  %25 = load i32, ptr %15, align 8, !tbaa !53
  %26 = tail call i32 @close(i32 noundef %25) #21
  store i32 -1, ptr %15, align 8, !tbaa !53
  %27 = load i8, ptr %7, align 1, !tbaa !121
  %28 = icmp eq i8 %27, 0
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %6, %10, %2, %22, %21
  %31 = phi i8 [ %29, %22 ], [ 0, %21 ], [ 1, %2 ], [ 0, %10 ], [ 0, %6 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @check_file_against_entries(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca %struct.pchf_compare_data, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  %4 = load ptr, ptr @pchf, align 8, !tbaa !31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.pchf_data, ptr %4, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !120
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %6
  %13 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 9, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !81
  store i64 %14, ptr %3, align 8, !tbaa !139
  %15 = getelementptr inbounds %struct.pchf_compare_data, ptr %3, i64 0, i32 2
  store i8 0, ptr %15, align 8, !tbaa !141
  %16 = getelementptr inbounds %struct.pchf_compare_data, ptr %3, i64 0, i32 4
  store ptr %0, ptr %16, align 8, !tbaa !142
  %17 = getelementptr inbounds %struct.pchf_compare_data, ptr %3, i64 0, i32 3
  store i8 %1, ptr %17, align 1, !tbaa !143
  %18 = getelementptr inbounds %struct.pchf_data, ptr %4, i64 0, i32 2
  %19 = load i64, ptr %4, align 8, !tbaa !118
  %20 = call ptr @bsearch(ptr noundef nonnull %3, ptr noundef nonnull %18, i64 noundef %19, i64 noundef 32, ptr noundef nonnull @pchf_compare) #21
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %2, %8, %12
  %24 = phi i8 [ %22, %12 ], [ 0, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret i8 %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @destroy_cpp_file(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #21
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @free(ptr noundef %7) #21
  tail call void @free(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @read_file_guts(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !126
  %5 = and i32 %4, 61440
  %6 = icmp eq i32 %5, 24576
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9, ptr noundef %9) #21
  br label %72

11:                                               ; preds = %2
  %12 = icmp ne i32 %5, 32768
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !81
  br label %16

16:                                               ; preds = %11, %13
  %17 = phi i64 [ %15, %13 ], [ 8192, %11 ]
  %18 = add nsw i64 %17, 1
  %19 = tail call ptr @xmalloc(i64 noundef %18) #21
  %20 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = tail call i64 @read(i32 noundef %21, ptr noundef %19, i64 noundef %17) #21
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %16, %36
  %25 = phi i64 [ %42, %36 ], [ %22, %16 ]
  %26 = phi ptr [ %38, %36 ], [ %19, %16 ]
  %27 = phi i64 [ %37, %36 ], [ %17, %16 ]
  %28 = phi i64 [ %29, %36 ], [ 0, %16 ]
  %29 = add nuw nsw i64 %25, %28
  %30 = icmp eq i64 %29, %27
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  br i1 %12, label %32, label %61

32:                                               ; preds = %31
  %33 = shl nsw i64 %27, 1
  %34 = or disjoint i64 %33, 1
  %35 = tail call ptr @xrealloc(ptr noundef %26, i64 noundef %34) #21
  br label %36

36:                                               ; preds = %32, %24
  %37 = phi i64 [ %33, %32 ], [ %27, %24 ]
  %38 = phi ptr [ %35, %32 ], [ %26, %24 ]
  %39 = load i32, ptr %20, align 8, !tbaa !53
  %40 = getelementptr inbounds i8, ptr %38, i64 %29
  %41 = sub nsw i64 %37, %29
  %42 = tail call i64 @read(i32 noundef %39, ptr noundef nonnull %40, i64 noundef %41) #21
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %24, label %44, !llvm.loop !144

44:                                               ; preds = %36, %16
  %45 = phi i64 [ 0, %16 ], [ %29, %36 ]
  %46 = phi i64 [ %17, %16 ], [ %37, %36 ]
  %47 = phi ptr [ %19, %16 ], [ %38, %36 ]
  %48 = phi i64 [ %22, %16 ], [ %42, %36 ]
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  %53 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef %52) #21
  br label %72

54:                                               ; preds = %44
  %55 = icmp eq i64 %45, %46
  %56 = or i1 %12, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef %59) #21
  br label %61

61:                                               ; preds = %31, %57, %54
  %62 = phi i64 [ %45, %57 ], [ %45, %54 ], [ %27, %31 ]
  %63 = phi ptr [ %47, %57 ], [ %47, %54 ], [ %26, %31 ]
  %64 = phi i64 [ %46, %57 ], [ %46, %54 ], [ %27, %31 ]
  %65 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 39
  %66 = load ptr, ptr %65, align 8, !tbaa !145
  %67 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 6
  %68 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %69 = tail call ptr @_cpp_convert_input(ptr noundef %0, ptr noundef %66, ptr noundef %63, i64 noundef %64, i64 noundef %62, ptr noundef nonnull %67, ptr noundef nonnull %68) #21
  %70 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  store ptr %69, ptr %70, align 8, !tbaa !80
  %71 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 16
  store i8 1, ptr %71, align 1, !tbaa !79
  br label %72

72:                                               ; preds = %61, %50, %7
  %73 = phi i8 [ 0, %7 ], [ 0, %50 ], [ 1, %61 ]
  ret i8 %73
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @_cpp_convert_input(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bsearch(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pchf_compare(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(8) %0, ptr noundef nonnull dereferenceable(8) %1, i64 noundef 8) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pchf_compare_data, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 8, !tbaa !141
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pchf_compare_data, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct._cpp_file, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct._cpp_file, ptr %11, i64 0, i32 9, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.pchf_compare_data, ptr %0, i64 0, i32 1
  %17 = tail call ptr @md5_buffer(ptr noundef %13, i64 noundef %15, ptr noundef nonnull %16) #21
  store i8 1, ptr %6, align 8, !tbaa !141
  br label %18

18:                                               ; preds = %9, %5
  %19 = getelementptr inbounds %struct.pchf_compare_data, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %struct.pchf_entry, ptr %1, i64 0, i32 1
  %21 = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %19, ptr noundef nonnull dereferenceable(16) %20, i64 noundef 16) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.pchf_compare_data, ptr %0, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !143
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pchf_entry, ptr %1, i64 0, i32 2
  %29 = load i8, ptr %28, align 8, !tbaa !122
  %30 = icmp eq i8 %29, 0
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %27, %23, %18, %2
  %33 = phi i32 [ %3, %2 ], [ %21, %18 ], [ 0, %23 ], [ %31, %27 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dir_name_of_file(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @lbasename(ptr noundef %7) #21
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = add i64 %12, 1
  %14 = tail call ptr @xmalloc(i64 noundef %13) #21
  %15 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %15, i64 %12, i1 false)
  %16 = getelementptr inbounds i8, ptr %14, i64 %12
  store i8 0, ptr %16, align 1, !tbaa !15
  store ptr %14, ptr %2, align 8, !tbaa !146
  br label %17

17:                                               ; preds = %5, %1
  %18 = phi ptr [ %14, %5 ], [ %3, %1 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @lbasename(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { nounwind optsize willreturn memory(none) }
attributes #25 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 220}
!6 = !{!"_cpp_file", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !12, i64 216, !12, i64 220, !14, i64 224, !8, i64 226, !8, i64 227, !8, i64 228, !8, i64 229}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !13, i64 88, !13, i64 104, !8, i64 120}
!11 = !{!"long", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"timespec", !11, i64 0, !11, i64 8}
!14 = !{!"short", !8, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !7, i64 280}
!17 = !{!"cpp_reader", !7, i64 0, !7, i64 8, !18, i64 16, !7, i64 40, !12, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !19, i64 80, !7, i64 136, !7, i64 144, !20, i64 152, !12, i64 176, !8, i64 180, !7, i64 184, !7, i64 192, !21, i64 200, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !22, i64 312, !8, i64 400, !8, i64 401, !7, i64 408, !7, i64 416, !8, i64 424, !7, i64 432, !23, i64 440, !7, i64 472, !12, i64 480, !12, i64 484, !7, i64 488, !12, i64 496, !24, i64 504, !24, i64 528, !24, i64 552, !24, i64 576, !24, i64 600, !7, i64 624, !7, i64 632, !20, i64 640, !20, i64 664, !7, i64 688, !22, i64 696, !22, i64 784, !7, i64 872, !25, i64 880, !7, i64 1016, !7, i64 1024, !7, i64 1032, !26, i64 1040, !28, i64 1168, !8, i64 1200, !29, i64 1208, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !12, i64 1272, !30, i64 1280, !7, i64 1296}
!18 = !{!"lexer_state", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10, !12, i64 12, !8, i64 16, !8, i64 17}
!19 = !{!"cpp_context", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 32, !7, i64 40, !8, i64 48}
!20 = !{!"cpp_token", !12, i64 0, !12, i64 4, !14, i64 6, !8, i64 8}
!21 = !{!"cpp_dir", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 20, !8, i64 21, !7, i64 24, !7, i64 32, !7, i64 40, !11, i64 48, !11, i64 56}
!22 = !{!"obstack", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !12, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!23 = !{!"tokenrun", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!24 = !{!"cset_converter", !7, i64 0, !7, i64 8, !12, i64 16}
!25 = !{!"cpp_callbacks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!26 = !{!"cpp_options", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 22, !8, i64 23, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !7, i64 48, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 77, !27, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123, !8, i64 124}
!27 = !{!"", !12, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!28 = !{!"spec_nodes", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!29 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24}
!30 = !{!"", !7, i64 0, !12, i64 8, !12, i64 12}
!31 = !{!7, !7, i64 0}
!32 = !{!6, !7, i64 64}
!33 = !{!21, !7, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{!17, !7, i64 264}
!36 = !{!6, !7, i64 32}
!37 = !{!26, !8, i64 76}
!38 = !{!17, !7, i64 192}
!39 = !{!17, !7, i64 184}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!6, !7, i64 0}
!43 = !{!44, !7, i64 0}
!44 = !{!"file_hash_entry", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 24}
!45 = !{!44, !7, i64 8}
!46 = !{!17, !7, i64 40}
!47 = !{!48, !12, i64 32}
!48 = !{!"line_maps", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !8, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !7, i64 48}
!49 = !{!44, !12, i64 16}
!50 = distinct !{!50, !41}
!51 = !{!17, !7, i64 0}
!52 = !{!6, !8, i64 228}
!53 = !{!6, !12, i64 216}
!54 = !{!17, !8, i64 1069}
!55 = !{!21, !7, i64 40}
!56 = !{!17, !7, i64 304}
!57 = !{!6, !7, i64 8}
!58 = !{!17, !11, i64 352}
!59 = !{!17, !7, i64 336}
!60 = !{!17, !7, i64 344}
!61 = !{!17, !7, i64 328}
!62 = !{!17, !12, i64 360}
!63 = !{!17, !7, i64 320}
!64 = !{!17, !7, i64 960}
!65 = !{!48, !12, i64 36}
!66 = !{!67, !8, i64 98}
!67 = !{!"cpp_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !8, i64 96, !12, i64 97, !12, i64 97, !12, i64 97, !8, i64 98, !21, i64 104, !24, i64 168}
!68 = !{!17, !12, i64 1120}
!69 = !{!12, !12, i64 0}
!70 = !{!17, !8, i64 1124}
!71 = !{!17, !7, i64 688}
!72 = !{!17, !8, i64 1127}
!73 = !{!17, !7, i64 296}
!74 = !{!75, !12, i64 0}
!75 = !{!"file_hash_entry_pool", !12, i64 0, !7, i64 8, !8, i64 16}
!76 = !{!21, !8, i64 20}
!77 = !{!6, !14, i64 224}
!78 = !{!17, !8, i64 1126}
!79 = !{!6, !8, i64 229}
!80 = !{!6, !7, i64 40}
!81 = !{!6, !11, i64 120}
!82 = !{!17, !8, i64 1078}
!83 = !{!17, !8, i64 1164}
!84 = !{!67, !7, i64 72}
!85 = !{!17, !8, i64 424}
!86 = !{!17, !7, i64 408}
!87 = !{!6, !8, i64 226}
!88 = !{!6, !7, i64 56}
!89 = !{!6, !7, i64 16}
!90 = !{!17, !7, i64 952}
!91 = !{!17, !8, i64 401}
!92 = !{!6, !11, i64 160}
!93 = distinct !{!93, !41}
!94 = !{!17, !8, i64 400}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = !{!17, !7, i64 288}
!98 = !{!75, !7, i64 8}
!99 = distinct !{!99, !41}
!100 = distinct !{!100, !41}
!101 = !{!48, !7, i64 0}
!102 = !{!48, !12, i64 12}
!103 = !{!104, !7, i64 0}
!104 = !{!"line_map", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !8, i64 21, !12, i64 22}
!105 = !{!104, !12, i64 12}
!106 = !{!104, !12, i64 8}
!107 = !{!108, !7, i64 0}
!108 = !{!"report_missing_guard_data", !7, i64 0, !11, i64 8}
!109 = !{!108, !11, i64 8}
!110 = distinct !{!110, !41}
!111 = !{!6, !7, i64 48}
!112 = !{!21, !7, i64 32}
!113 = !{!21, !7, i64 8}
!114 = !{!21, !12, i64 16}
!115 = distinct !{!115, !41}
!116 = !{!67, !7, i64 64}
!117 = distinct !{!117, !41}
!118 = !{!119, !11, i64 0}
!119 = !{!"pchf_data", !11, i64 0, !8, i64 8, !8, i64 16}
!120 = !{!119, !8, i64 8}
!121 = !{!6, !8, i64 227}
!122 = !{!123, !8, i64 24}
!123 = !{!"pchf_entry", !11, i64 0, !8, i64 8, !8, i64 24}
!124 = !{!123, !11, i64 0}
!125 = distinct !{!125, !41}
!126 = !{!6, !12, i64 96}
!127 = distinct !{!127, !41}
!128 = !{!17, !7, i64 944}
!129 = !{!10, !12, i64 24}
!130 = distinct !{!130, !41}
!131 = !{!14, !14, i64 0}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !41}
!136 = !{!17, !8, i64 1057}
!137 = !{!48, !12, i64 24}
!138 = distinct !{!138, !41}
!139 = !{!140, !11, i64 0}
!140 = !{!"pchf_compare_data", !11, i64 0, !8, i64 8, !8, i64 24, !8, i64 25, !7, i64 32}
!141 = !{!140, !8, i64 24}
!142 = !{!140, !7, i64 32}
!143 = !{!140, !8, i64 25}
!144 = distinct !{!144, !41}
!145 = !{!17, !7, i64 1104}
!146 = !{!6, !7, i64 24}
