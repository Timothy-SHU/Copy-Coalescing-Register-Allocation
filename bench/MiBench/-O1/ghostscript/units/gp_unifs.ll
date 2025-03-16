; ModuleID = 'gp_unifs.c'
source_filename = "gp_unifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_enum_s = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dirstack_s = type { ptr, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@gp_scratch_file_name_prefix = dso_local local_unnamed_addr constant [4 x i8] c"gs_\00", align 1
@gp_null_file_name = dso_local local_unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@gp_current_directory_name = dso_local local_unnamed_addr constant [2 x i8] c".\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@st_file_enum = internal constant %struct.gs_memory_struct_type_s { i32 64, ptr @.str.14, ptr null, ptr null, ptr @file_enum_enum_ptrs, ptr @file_enum_reloc_ptrs, ptr null }, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"gp_enumerate_files\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"gp_enumerate_files(pattern)\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gp_enumerate_files(work)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@st_dirstack = internal constant %struct.gs_memory_struct_type_s { i32 16, ptr @.str.16, ptr null, ptr null, ptr @dirstack_enum_ptrs, ptr @dirstack_reloc_ptrs, ptr null }, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"gp_enumerate_files(pushdir)\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"gp_enumerate_close(work)\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"gp_enumerate_files_close(pattern)\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"gp_enumerate_files_close\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"file_enum\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"gp_enumerate_files(popdir)\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"dirstack\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @gp_open_scratch_file(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @getenv(ptr noundef nonnull @.str)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false) #10
  br label %19

7:                                                ; preds = %3
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %4) #10
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i64 %9
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 47
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %18 = getelementptr inbounds i8, ptr %1, i64 %17
  store i16 47, ptr %18, align 1
  br label %19

19:                                               ; preds = %7, %11, %16, %6
  %20 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #10
  %21 = load i8, ptr %1, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %25 = getelementptr i8, ptr %1, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 88
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %31 = getelementptr inbounds i8, ptr %1, i64 %30
  store i16 45, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %23, %19
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %34, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %35 = tail call ptr @mktemp(ptr noundef nonnull %1) #10
  %36 = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef %2)
  ret ptr %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

declare ptr @mktemp(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @gp_fopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gp_enumerate_files_init(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %1, 4096
  br i1 %4, label %83, label %5

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %16, label %12

9:                                                ; preds = %12
  %10 = getelementptr inbounds i8, ptr %13, i64 1
  %11 = icmp ult ptr %10, %7
  br i1 %11, label %12, label %16, !llvm.loop !8

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %10, %9 ], [ %0, %5 ]
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %83, label %9

16:                                               ; preds = %9, %5
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = tail call ptr %18(ptr noundef %2, ptr noundef nonnull @st_file_enum, ptr noundef nonnull @.str.5) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %83, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !tbaa !14
  %23 = add nuw nsw i32 %1, 1
  %24 = tail call ptr %22(ptr noundef nonnull %2, i32 noundef %23, ptr noundef nonnull @.str.6) #10
  %25 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !15
  %26 = icmp eq ptr %24, null
  br i1 %26, label %83, label %27

27:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr align 1 %0, i64 %6, i1 false)
  %28 = load ptr, ptr %25, align 8, !tbaa !15
  %29 = getelementptr inbounds i8, ptr %28, i64 %6
  store i8 0, ptr %29, align 1, !tbaa !5
  %30 = load ptr, ptr %2, align 8, !tbaa !14
  %31 = tail call ptr %30(ptr noundef nonnull %2, i32 noundef 4097, ptr noundef nonnull @.str.7) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %83, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 2
  store ptr %31, ptr %34, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %0, i64 %6, i1 false)
  %35 = getelementptr inbounds i8, ptr %31, i64 %6
  store i8 0, ptr %35, align 1, !tbaa !5
  %36 = load ptr, ptr %34, align 8, !tbaa !18
  br label %37

37:                                               ; preds = %41, %33
  %38 = phi ptr [ %36, %33 ], [ %42, %41 ]
  %39 = load i8, ptr %38, align 1, !tbaa !5
  switch i8 %39, label %41 [
    i8 42, label %40
    i8 63, label %40
    i8 0, label %40
  ]

40:                                               ; preds = %37, %37, %37
  br label %43

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %38, i64 1
  br label %37, !llvm.loop !19

43:                                               ; preds = %40, %46
  %44 = phi ptr [ %47, %46 ], [ %38, %40 ]
  %45 = load i8, ptr %44, align 1, !tbaa !5
  switch i8 %45, label %46 [
    i8 47, label %48
    i8 0, label %49
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  br label %43, !llvm.loop !20

48:                                               ; preds = %43
  store i8 0, ptr %44, align 1, !tbaa !5
  br label %49

49:                                               ; preds = %43, %48
  %50 = ptrtoint ptr %44 to i64
  %51 = ptrtoint ptr %31 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 6
  store i32 %53, ptr %54, align 4, !tbaa !21
  %55 = shl i64 %52, 32
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds i8, ptr %31, i64 %56
  br label %58

58:                                               ; preds = %61, %49
  %59 = phi ptr [ %57, %49 ], [ %62, %61 ]
  %60 = icmp ugt ptr %59, %31
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %59, i64 -1
  %63 = load i8, ptr %62, align 1, !tbaa !5
  %64 = icmp eq i8 %63, 47
  br i1 %64, label %65, label %58, !llvm.loop !22

65:                                               ; preds = %58, %61
  %66 = phi ptr [ %62, %61 ], [ null, %58 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i8 0, ptr %31, align 1, !tbaa !5
  br label %76

69:                                               ; preds = %65
  %70 = icmp eq ptr %66, %31
  %71 = zext i1 %70 to i64
  %72 = getelementptr inbounds i8, ptr %66, i64 %71
  store i8 0, ptr %72, align 1, !tbaa !5
  %73 = ptrtoint ptr %72 to i64
  %74 = sub i64 %73, %51
  %75 = trunc i64 %74 to i32
  br label %76

76:                                               ; preds = %69, %68
  %77 = phi i32 [ %75, %69 ], [ 0, %68 ]
  %78 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 3
  store i32 %77, ptr %78, align 8, !tbaa !23
  %79 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 8
  store ptr %2, ptr %79, align 8, !tbaa !24
  %80 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 4
  store ptr null, ptr %80, align 8, !tbaa !25
  %81 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 7
  store i32 1, ptr %81, align 8, !tbaa !26
  %82 = getelementptr inbounds %struct.file_enum_s, ptr %19, i64 0, i32 5
  store i32 %1, ptr %82, align 8, !tbaa !27
  br label %83

83:                                               ; preds = %12, %27, %21, %16, %3, %76
  %84 = phi ptr [ %19, %76 ], [ null, %3 ], [ null, %16 ], [ null, %21 ], [ null, %27 ], [ null, %12 ]
  ret ptr %84
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local i32 @gp_enumerate_files_next(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.stat, align 8
  %5 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #10
  %13 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %3
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call ptr @opendir(ptr noundef nonnull @gp_current_directory_name)
  br label %22

20:                                               ; preds = %16
  %21 = tail call ptr @opendir(ptr noundef %6)
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  store ptr %23, ptr %0, align 8, !tbaa !28
  store i32 0, ptr %13, align 8, !tbaa !26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %25, %31
  %32 = phi ptr [ %39, %31 ], [ %29, %25 ]
  %33 = getelementptr inbounds %struct.dirstack_s, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !29
  store ptr %34, ptr %0, align 8, !tbaa !28
  %35 = load ptr, ptr %32, align 8, !tbaa !31
  store ptr %35, ptr %28, align 8, !tbaa !25
  %36 = load ptr, ptr %26, align 8, !tbaa !24
  %37 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %36, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !32
  tail call void %38(ptr noundef %36, ptr noundef nonnull %32, ptr noundef nonnull @.str.15) #10
  %39 = load ptr, ptr %28, align 8, !tbaa !25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %31, !llvm.loop !33

41:                                               ; preds = %31, %25
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %27, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = load ptr, ptr %5, align 8, !tbaa !18
  tail call void %43(ptr noundef %27, ptr noundef %44, ptr noundef nonnull @.str.11) #10
  %45 = load ptr, ptr %42, align 8, !tbaa !32
  %46 = load ptr, ptr %9, align 8, !tbaa !15
  tail call void %45(ptr noundef %27, ptr noundef %46, ptr noundef nonnull @.str.12) #10
  %47 = load ptr, ptr %42, align 8, !tbaa !32
  tail call void %47(ptr noundef %27, ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #10
  br label %252

48:                                               ; preds = %22, %3
  %49 = getelementptr inbounds i8, ptr %6, i64 1
  %50 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 5
  %51 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %52 = ptrtoint ptr %10 to i64
  %53 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 8
  %54 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 4
  %55 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %56 = ptrtoint ptr %6 to i64
  %57 = ptrtoint ptr %10 to i64
  %58 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 4
  %59 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 8
  br label %60

60:                                               ; preds = %244, %48
  %61 = phi i32 [ %8, %48 ], [ %245, %244 ]
  %62 = phi i32 [ %12, %48 ], [ %246, %244 ]
  %63 = load ptr, ptr %0, align 8, !tbaa !28
  %64 = tail call ptr @readdir(ptr noundef %63) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = sext i32 %61 to i64
  %68 = getelementptr inbounds i8, ptr %6, i64 %67
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  %70 = add nsw i32 %61, 1
  br label %142

71:                                               ; preds = %157, %60
  %72 = load ptr, ptr %0, align 8, !tbaa !28
  %73 = tail call i32 @closedir(ptr noundef %72)
  %74 = sext i32 %61 to i64
  %75 = getelementptr inbounds i8, ptr %6, i64 %74
  br label %76

76:                                               ; preds = %79, %71
  %77 = phi ptr [ %75, %71 ], [ %80, %79 ]
  %78 = icmp ugt ptr %77, %6
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %77, i64 -1
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = icmp eq i8 %81, 47
  br i1 %82, label %83, label %76, !llvm.loop !22

83:                                               ; preds = %76, %79
  %84 = phi ptr [ %80, %79 ], [ null, %76 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = icmp eq ptr %84, %6
  %88 = zext i1 %87 to i64
  %89 = getelementptr inbounds i8, ptr %84, i64 %88
  store i8 0, ptr %89, align 1, !tbaa !5
  %90 = ptrtoint ptr %89 to i64
  %91 = sub i64 %90, %56
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %83, %86
  %94 = phi i32 [ %92, %86 ], [ 0, %83 ]
  %95 = sext i32 %62 to i64
  %96 = getelementptr inbounds i8, ptr %10, i64 %95
  br label %97

97:                                               ; preds = %100, %93
  %98 = phi ptr [ %96, %93 ], [ %101, %100 ]
  %99 = icmp ugt ptr %98, %10
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds i8, ptr %98, i64 -1
  %102 = load i8, ptr %101, align 1, !tbaa !5
  %103 = icmp eq i8 %102, 47
  br i1 %103, label %104, label %97, !llvm.loop !22

104:                                              ; preds = %97, %100
  %105 = phi ptr [ %101, %100 ], [ null, %97 ]
  %106 = load ptr, ptr %58, align 8, !tbaa !25
  %107 = icmp eq ptr %106, null
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = icmp eq ptr %105, null
  %110 = ptrtoint ptr %105 to i64
  %111 = sub i64 %110, %57
  %112 = trunc i64 %111 to i32
  %113 = select i1 %109, i32 0, i32 %112
  %114 = getelementptr inbounds %struct.dirstack_s, ptr %106, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !29
  store ptr %115, ptr %0, align 8, !tbaa !28
  %116 = load ptr, ptr %106, align 8, !tbaa !31
  store ptr %116, ptr %58, align 8, !tbaa !25
  %117 = load ptr, ptr %59, align 8, !tbaa !24
  %118 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %117, i64 0, i32 11
  %119 = load ptr, ptr %118, align 8, !tbaa !32
  tail call void %119(ptr noundef %117, ptr noundef nonnull %106, ptr noundef nonnull @.str.15) #10
  br label %244

120:                                              ; preds = %104
  %121 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !24
  %123 = load ptr, ptr %58, align 8, !tbaa !25
  %124 = icmp eq ptr %123, null
  br i1 %124, label %135, label %125

125:                                              ; preds = %120, %125
  %126 = phi ptr [ %133, %125 ], [ %123, %120 ]
  %127 = getelementptr inbounds %struct.dirstack_s, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !29
  store ptr %128, ptr %0, align 8, !tbaa !28
  %129 = load ptr, ptr %126, align 8, !tbaa !31
  store ptr %129, ptr %58, align 8, !tbaa !25
  %130 = load ptr, ptr %121, align 8, !tbaa !24
  %131 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %130, i64 0, i32 11
  %132 = load ptr, ptr %131, align 8, !tbaa !32
  tail call void %132(ptr noundef %130, ptr noundef nonnull %126, ptr noundef nonnull @.str.15) #10
  %133 = load ptr, ptr %58, align 8, !tbaa !25
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %125, !llvm.loop !33

135:                                              ; preds = %125, %120
  %136 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %122, i64 0, i32 11
  %137 = load ptr, ptr %136, align 8, !tbaa !32
  %138 = load ptr, ptr %5, align 8, !tbaa !18
  tail call void %137(ptr noundef %122, ptr noundef %138, ptr noundef nonnull @.str.11) #10
  %139 = load ptr, ptr %136, align 8, !tbaa !32
  %140 = load ptr, ptr %9, align 8, !tbaa !15
  tail call void %139(ptr noundef %122, ptr noundef %140, ptr noundef nonnull @.str.12) #10
  %141 = load ptr, ptr %136, align 8, !tbaa !32
  tail call void %141(ptr noundef %122, ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #10
  br label %252

142:                                              ; preds = %66, %157
  %143 = phi ptr [ %64, %66 ], [ %159, %157 ]
  %144 = getelementptr inbounds %struct.dirent, ptr %143, i64 0, i32 4
  %145 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %144) #11
  %146 = trunc i64 %145 to i32
  %147 = icmp slt i32 %146, 3
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %144, ptr noundef nonnull dereferenceable(2) @gp_current_directory_name) #11
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %144, ptr noundef nonnull dereferenceable(3) @.str.9) #11
  %153 = icmp eq i32 %152, 0
  %154 = add nsw i32 %61, %146
  %155 = icmp sgt i32 %154, 4095
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %148, %151, %161, %180
  %158 = load ptr, ptr %0, align 8, !tbaa !28
  %159 = tail call ptr @readdir(ptr noundef %158) #10
  %160 = icmp eq ptr %159, null
  br i1 %160, label %71, label %142

161:                                              ; preds = %142
  %162 = add nsw i32 %61, %146
  %163 = icmp sgt i32 %162, 4095
  br i1 %163, label %157, label %164

164:                                              ; preds = %151, %161
  switch i32 %61, label %175 [
    i32 0, label %165
    i32 1, label %169
  ]

165:                                              ; preds = %164
  %166 = shl i64 %145, 32
  %167 = add i64 %166, 4294967296
  %168 = ashr exact i64 %167, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %144, i64 %168, i1 false)
  br label %180

169:                                              ; preds = %164
  %170 = load i8, ptr %6, align 1, !tbaa !5
  %171 = icmp eq i8 %170, 47
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = add nsw i32 %146, 1
  %174 = sext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr nonnull align 1 %144, i64 %174, i1 false)
  br label %180

175:                                              ; preds = %164, %169
  store i8 47, ptr %68, align 1, !tbaa !5
  %176 = shl i64 %145, 32
  %177 = add i64 %176, 4294967296
  %178 = ashr exact i64 %177, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %69, ptr nonnull align 1 %144, i64 %178, i1 false)
  %179 = add nsw i32 %70, %146
  br label %180

180:                                              ; preds = %172, %175, %165
  %181 = phi i32 [ %146, %165 ], [ %173, %172 ], [ %179, %175 ]
  %182 = tail call i32 @string_match(ptr noundef %6, i32 noundef %181, ptr noundef %10, i32 noundef %62, ptr noundef null) #10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %157, label %184

184:                                              ; preds = %180
  %185 = load i32, ptr %50, align 8, !tbaa !27
  %186 = icmp slt i32 %62, %185
  br i1 %186, label %187, label %247

187:                                              ; preds = %184
  %188 = call i32 @stat(ptr noundef %6, ptr noundef nonnull %4) #10
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, ptr %51, align 8, !tbaa !34
  %192 = and i32 %191, 61440
  %193 = icmp eq i32 %192, 16384
  br i1 %193, label %194, label %239

194:                                              ; preds = %187, %190
  %195 = load i32, ptr %50, align 8, !tbaa !27
  %196 = add nsw i32 %62, 1
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load i32, ptr %55, align 8, !tbaa !34
  %200 = and i32 %199, 61440
  %201 = icmp eq i32 %200, 16384
  br i1 %201, label %207, label %202

202:                                              ; preds = %198
  %203 = tail call ptr @opendir(ptr noundef %6)
  %204 = icmp eq ptr %203, null
  br i1 %204, label %239, label %205

205:                                              ; preds = %202
  %206 = tail call i32 @closedir(ptr noundef nonnull %203)
  br label %207

207:                                              ; preds = %205, %198
  %208 = add nsw i32 %181, 1
  %209 = sext i32 %181 to i64
  %210 = getelementptr inbounds i8, ptr %6, i64 %209
  store i8 47, ptr %210, align 1, !tbaa !5
  br label %239

211:                                              ; preds = %194
  %212 = tail call ptr @opendir(ptr noundef %6)
  %213 = icmp eq ptr %212, null
  br i1 %213, label %239, label %214

214:                                              ; preds = %211
  %215 = sext i32 %62 to i64
  %216 = getelementptr inbounds i8, ptr %10, i64 %215
  br label %217

217:                                              ; preds = %217, %214
  %218 = phi ptr [ %216, %214 ], [ %219, %217 ]
  %219 = getelementptr inbounds i8, ptr %218, i64 1
  %220 = load i8, ptr %219, align 1, !tbaa !5
  switch i8 %220, label %217 [
    i8 0, label %221
    i8 47, label %223
  ], !llvm.loop !38

221:                                              ; preds = %217
  %222 = load i32, ptr %50, align 8, !tbaa !27
  br label %227

223:                                              ; preds = %217
  %224 = ptrtoint ptr %219 to i64
  %225 = sub i64 %224, %52
  %226 = trunc i64 %225 to i32
  br label %227

227:                                              ; preds = %223, %221
  %228 = phi i32 [ %222, %221 ], [ %226, %223 ]
  %229 = load ptr, ptr %53, align 8, !tbaa !24
  %230 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %229, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !10
  %232 = tail call ptr %231(ptr noundef %229, ptr noundef nonnull @st_dirstack, ptr noundef nonnull @.str.10) #10
  %233 = icmp eq ptr %232, null
  br i1 %233, label %238, label %234

234:                                              ; preds = %227
  %235 = load ptr, ptr %54, align 8, !tbaa !25
  store ptr %235, ptr %232, align 8, !tbaa !31
  %236 = load ptr, ptr %0, align 8, !tbaa !28
  %237 = getelementptr inbounds %struct.dirstack_s, ptr %232, i64 0, i32 1
  store ptr %236, ptr %237, align 8, !tbaa !29
  store ptr %232, ptr %54, align 8, !tbaa !25
  br label %238

238:                                              ; preds = %234, %227
  store ptr %212, ptr %0, align 8, !tbaa !28
  br label %239

239:                                              ; preds = %211, %202, %190, %207, %238
  %240 = phi i32 [ %61, %207 ], [ %181, %238 ], [ %61, %190 ], [ %61, %202 ], [ %61, %211 ]
  %241 = phi i32 [ %62, %207 ], [ %228, %238 ], [ %62, %190 ], [ %62, %202 ], [ %62, %211 ]
  %242 = phi i32 [ %208, %207 ], [ %181, %238 ], [ %181, %190 ], [ %181, %202 ], [ %181, %211 ]
  %243 = phi i32 [ 11, %207 ], [ 4, %238 ], [ 4, %190 ], [ 4, %202 ], [ 4, %211 ]
  switch i32 %243, label %252 [
    i32 4, label %244
    i32 11, label %247
  ]

244:                                              ; preds = %239, %108
  %245 = phi i32 [ %94, %108 ], [ %240, %239 ]
  %246 = phi i32 [ %113, %108 ], [ %241, %239 ]
  br label %60

247:                                              ; preds = %184, %239
  %248 = phi i32 [ %240, %239 ], [ %61, %184 ]
  %249 = phi i32 [ %241, %239 ], [ %62, %184 ]
  %250 = phi i32 [ %242, %239 ], [ %181, %184 ]
  store i32 %248, ptr %7, align 8, !tbaa !23
  store i32 %249, ptr %11, align 4, !tbaa !21
  %251 = sext i32 %250 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %6, i64 %251, i1 false)
  br label %252

252:                                              ; preds = %239, %135, %247, %41
  %253 = phi i32 [ -1, %41 ], [ -1, %135 ], [ %250, %247 ], [ -1, %239 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #10
  ret i32 %253
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @gp_enumerate_files_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.dirstack_s, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  store ptr %10, ptr %0, align 8, !tbaa !28
  %11 = load ptr, ptr %8, align 8, !tbaa !31
  store ptr %11, ptr %4, align 8, !tbaa !25
  %12 = load ptr, ptr %2, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  tail call void %14(ptr noundef %12, ptr noundef nonnull %8, ptr noundef nonnull @.str.15) #10
  %15 = load ptr, ptr %4, align 8, !tbaa !25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !33

17:                                               ; preds = %7, %1
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  tail call void %19(ptr noundef %3, ptr noundef %21, ptr noundef nonnull @.str.11) #10
  %22 = load ptr, ptr %18, align 8, !tbaa !32
  %23 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  tail call void %22(ptr noundef %3, ptr noundef %24, ptr noundef nonnull @.str.12) #10
  %25 = load ptr, ptr %18, align 8, !tbaa !32
  tail call void %25(ptr noundef %3, ptr noundef %0, ptr noundef nonnull @.str.13) #10
  ret void
}

declare ptr @readdir(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @string_match(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @file_enum_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #9 {
  switch i32 %2, label %14 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 1
  br label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 2
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  store ptr %13, ptr %3, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal void @file_enum_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #10
  store ptr %6, ptr %4, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #10
  store ptr %9, ptr %7, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.file_enum_s, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #10
  store ptr %12, ptr %10, align 8, !tbaa !25
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @dirstack_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #9 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %7, ptr %3, align 8, !tbaa !39
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @dirstack_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !31
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #10
  store ptr %5, ptr %0, align 8, !tbaa !31
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !13, i64 16}
!11 = !{!"gs_memory_s", !12, i64 0}
!12 = !{!"gs_memory_procs_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !13, i64 0}
!15 = !{!16, !13, i64 8}
!16 = !{!"file_enum_s", !13, i64 0, !13, i64 8, !13, i64 16, !17, i64 24, !13, i64 32, !17, i64 40, !17, i64 44, !17, i64 48, !13, i64 56}
!17 = !{!"int", !6, i64 0}
!18 = !{!16, !13, i64 16}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{!16, !17, i64 44}
!22 = distinct !{!22, !9}
!23 = !{!16, !17, i64 24}
!24 = !{!16, !13, i64 56}
!25 = !{!16, !13, i64 32}
!26 = !{!16, !17, i64 48}
!27 = !{!16, !17, i64 40}
!28 = !{!16, !13, i64 0}
!29 = !{!30, !13, i64 8}
!30 = !{!"dirstack_s", !13, i64 0, !13, i64 8}
!31 = !{!30, !13, i64 0}
!32 = !{!11, !13, i64 88}
!33 = distinct !{!33, !9}
!34 = !{!35, !17, i64 24}
!35 = !{!"stat", !36, i64 0, !36, i64 8, !36, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !37, i64 72, !37, i64 88, !37, i64 104, !6, i64 120}
!36 = !{!"long", !6, i64 0}
!37 = !{!"timespec", !36, i64 0, !36, i64 8}
!38 = distinct !{!38, !9}
!39 = !{!13, !13, i64 0}
