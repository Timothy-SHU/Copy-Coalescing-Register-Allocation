; ModuleID = 'liblzma/common/common.c'
source_filename = "liblzma/common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_allocator = type { ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

@.str = private unnamed_addr constant [22 x i8] c"5.0.5benchmarkcpu2017\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lzma_version_number() local_unnamed_addr #0 !prof !42 {
  ret i32 50000056
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @lzma_version_string() local_unnamed_addr #0 !prof !42 {
  ret ptr @.str
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lzma_alloc(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !43 {
  %3 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5, !prof !44

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call ptr %6(ptr noundef %10, i64 noundef 1, i64 noundef %3) #10
  br label %14

12:                                               ; preds = %5, %2
  %13 = tail call noalias ptr @malloc(i64 noundef %3) #11
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %11, %8 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 !prof !51 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !52

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  tail call void %6(ptr noundef %10, ptr noundef %0) #10
  br label %12

11:                                               ; preds = %4, %2
  tail call void @free(ptr noundef %0) #10
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @lzma_bufcpy(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef %1, i64 noundef %2, ptr noalias nocapture noundef writeonly %3, ptr noalias nocapture noundef %4, i64 noundef %5) local_unnamed_addr #5 !prof !54 {
  %7 = load i64, ptr %1, align 8, !tbaa !55
  %8 = sub i64 %2, %7
  %9 = load i64, ptr %4, align 8, !tbaa !55
  %10 = sub i64 %5, %9
  %11 = tail call i64 @llvm.umin.i64(i64 %8, i64 %10)
  %12 = getelementptr inbounds i8, ptr %3, i64 %9
  %13 = getelementptr inbounds i8, ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %11, i1 false), !prof !57
  %14 = add i64 %11, %7
  store i64 %14, ptr %1, align 8, !tbaa !55
  %15 = add i64 %11, %9
  store i64 %15, ptr %4, align 8, !tbaa !55
  ret i64 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_next_filter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !58 {
  %4 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = ptrtoint ptr %5 to i64
  %7 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !61
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %11, label %10, !prof !63

10:                                               ; preds = %3
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1)
  br label %11

11:                                               ; preds = %10, %3
  %12 = load ptr, ptr %4, align 8, !tbaa !59
  %13 = ptrtoint ptr %12 to i64
  store i64 %13, ptr %7, align 8, !tbaa !61
  %14 = load i64, ptr %2, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !65
  %16 = icmp eq ptr %12, null
  br i1 %16, label %19, label %17, !prof !63

17:                                               ; preds = %11
  %18 = tail call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #10, !prof !66
  br label %19

19:                                               ; preds = %11, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %11 ]
  ret i32 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_next_end(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !67 {
  %3 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %24, label %6, !prof !68

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr %0, align 8, !tbaa !70
  br i1 %9, label %12, label %11, !prof !71

11:                                               ; preds = %6
  tail call void %8(ptr noundef %10, ptr noundef %1) #10, !prof !72
  br label %22

12:                                               ; preds = %6
  %13 = icmp eq ptr %1, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  tail call void %16(ptr noundef %20, ptr noundef %10) #10
  br label %22

21:                                               ; preds = %14, %12
  tail call void @free(ptr noundef %10) #10
  br label %22

22:                                               ; preds = %21, %18, %11
  store ptr null, ptr %0, align 8, !tbaa.struct !73
  %23 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 -1, ptr %23, align 8, !tbaa.struct !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  br label %24

24:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_next_filter_update(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !42 {
  %4 = load i64, ptr %2, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !65
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = icmp eq i64 %4, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = tail call i32 %12(ptr noundef %13, ptr noundef %1, ptr noundef null, ptr noundef nonnull %2) #10
  br label %15

15:                                               ; preds = %8, %3, %10
  %16 = phi i32 [ %14, %10 ], [ 11, %3 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_strm_init(ptr noundef %0) local_unnamed_addr #1 !prof !79 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3, !prof !80

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %26, !prof !84

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !84

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.lzma_allocator, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = tail call ptr %12(ptr noundef %16, i64 noundef 1, i64 noundef 88) #10
  br label %20

18:                                               ; preds = %11, %7
  %19 = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #11
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %17, %14 ], [ %19, %18 ]
  store ptr %21, ptr %4, align 8, !tbaa !81
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23, !prof !80

23:                                               ; preds = %20
  store ptr null, ptr %21, align 8, !tbaa.struct !73
  %24 = getelementptr inbounds i8, ptr %21, i64 8
  store i64 -1, ptr %24, align 8, !tbaa.struct !75
  %25 = getelementptr inbounds i8, ptr %21, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %25, i8 0, i64 48, i1 false)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load ptr, ptr %4, align 8, !tbaa !81
  %28 = getelementptr inbounds %struct.lzma_internal_s, ptr %27, i64 0, i32 3
  %29 = getelementptr inbounds %struct.lzma_internal_s, ptr %27, i64 0, i32 1
  store i32 0, ptr %29, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %28, i8 0, i64 5, i1 false)
  store i64 0, ptr %30, align 8, !tbaa !89
  %31 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 5
  store i64 0, ptr %31, align 8, !tbaa !90
  br label %32

32:                                               ; preds = %20, %1, %26
  %33 = phi i32 [ 0, %26 ], [ 11, %1 ], [ 5, %20 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lzma_code(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !91 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !92
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !93

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !94
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %155

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !93

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !96
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %155

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = icmp eq ptr %21, null
  br i1 %22, label %155, label %23, !prof !93

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = icmp eq ptr %25, null
  %27 = icmp ugt i32 %1, 3
  %28 = or i1 %27, %26
  br i1 %28, label %155, label %29, !prof !93

29:                                               ; preds = %23
  %30 = zext nneg i32 %1 to i64
  %31 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 3, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !98, !range !99, !noundef !100
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %155, label %34, !prof !93

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %155, !prof !102

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %155, !prof !102

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !104
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %155, !prof !102

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !105
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %155, !prof !102

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 12
  %52 = load i64, ptr %51, align 8, !tbaa !106
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %155, !prof !102

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 13
  %56 = load i64, ptr %55, align 8, !tbaa !107
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %155, !prof !102

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 14
  %60 = load i64, ptr %59, align 8, !tbaa !108
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %155, !prof !102

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 15
  %64 = load i64, ptr %63, align 8, !tbaa !109
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %155, !prof !102

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 16
  %68 = load i32, ptr %67, align 8, !tbaa !110
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %155, !prof !102

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 17
  %72 = load i32, ptr %71, align 4, !tbaa !111
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %155, !prof !102

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !86
  switch i32 %76, label %104 [
    i32 0, label %77
    i32 1, label %80
    i32 2, label %88
    i32 3, label %96
    i32 4, label %155
  ], !prof !112

77:                                               ; preds = %74
  %78 = add i32 %1, -1
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %105, label %106

80:                                               ; preds = %74
  %81 = icmp eq i32 %1, 1
  br i1 %81, label %82, label %155

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !113
  %85 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !94
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %106, label %155

88:                                               ; preds = %74
  %89 = icmp eq i32 %1, 2
  br i1 %89, label %90, label %155

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !113
  %93 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !94
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %106, label %155

96:                                               ; preds = %74
  %97 = icmp eq i32 %1, 3
  br i1 %97, label %98, label %155, !prof !114

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 2
  %100 = load i64, ptr %99, align 8, !tbaa !113
  %101 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !94
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %106, label %155, !prof !114

104:                                              ; preds = %74
  br label %155

105:                                              ; preds = %77
  store i32 %1, ptr %75, align 8, !tbaa !86
  br label %106

106:                                              ; preds = %77, %105, %98, %90, %82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !tbaa !55
  %107 = load ptr, ptr %21, align 8, !tbaa !115
  %108 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !85
  %110 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !94
  %112 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 4
  %113 = load i64, ptr %112, align 8, !tbaa !96
  %114 = call i32 %25(ptr noundef %107, ptr noundef %109, ptr noundef %5, ptr noundef nonnull %3, i64 noundef %111, ptr noundef %13, ptr noundef nonnull %4, i64 noundef %113, i32 noundef %1) #10, !prof !116
  %115 = load i64, ptr %3, align 8
  %116 = load ptr, ptr %0, align 8, !tbaa !92
  %117 = getelementptr inbounds i8, ptr %116, i64 %115
  store ptr %117, ptr %0, align 8, !tbaa !92
  %118 = load i64, ptr %110, align 8, !tbaa !94
  %119 = sub i64 %118, %115
  store i64 %119, ptr %110, align 8, !tbaa !94
  %120 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !89
  %122 = add i64 %121, %115
  store i64 %122, ptr %120, align 8, !tbaa !89
  %123 = load i64, ptr %4, align 8, !tbaa !55
  %124 = load ptr, ptr %12, align 8, !tbaa !95
  %125 = getelementptr inbounds i8, ptr %124, i64 %123
  store ptr %125, ptr %12, align 8, !tbaa !95
  %126 = load i64, ptr %112, align 8, !tbaa !96
  %127 = sub i64 %126, %123
  store i64 %127, ptr %112, align 8, !tbaa !96
  %128 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 5
  %129 = load i64, ptr %128, align 8, !tbaa !90
  %130 = add i64 %129, %123
  store i64 %130, ptr %128, align 8, !tbaa !90
  %131 = load ptr, ptr %20, align 8, !tbaa !81
  %132 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 2
  store i64 %119, ptr %132, align 8, !tbaa !113
  switch i32 %114, label %151 [
    i32 0, label %133
    i32 1, label %143
    i32 2, label %149
    i32 3, label %149
    i32 4, label %149
    i32 6, label %149
  ], !prof !117

133:                                              ; preds = %106
  %134 = icmp eq i64 %123, 0
  %135 = icmp eq i64 %115, 0
  %136 = select i1 %134, i1 %135, i1 false, !prof !118
  %137 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 4
  br i1 %136, label %138, label %142, !prof !119

138:                                              ; preds = %133
  %139 = load i8, ptr %137, align 4, !tbaa !120, !range !99, !noundef !100
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  store i8 1, ptr %137, align 4, !tbaa !120
  br label %153

142:                                              ; preds = %133
  store i8 0, ptr %137, align 4, !tbaa !120
  br label %153

143:                                              ; preds = %106
  %144 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !86
  %146 = add i32 %145, -1
  %147 = icmp ult i32 %146, 2
  %148 = select i1 %147, i32 0, i32 4, !prof !80
  store i32 %148, ptr %144, align 8, !tbaa !86
  br label %149

149:                                              ; preds = %143, %106, %106, %106, %106
  %150 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 4
  store i8 0, ptr %150, align 4, !tbaa !120
  br label %153

151:                                              ; preds = %106
  %152 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 1
  store i32 5, ptr %152, align 8, !tbaa !86
  br label %153

153:                                              ; preds = %138, %142, %141, %151, %149
  %154 = phi i32 [ %114, %151 ], [ %114, %149 ], [ 0, %141 ], [ 0, %142 ], [ 10, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %155

155:                                              ; preds = %98, %82, %74, %96, %88, %90, %80, %34, %38, %42, %46, %50, %54, %58, %62, %66, %70, %7, %15, %19, %23, %29, %153, %104
  %156 = phi i32 [ 11, %104 ], [ %154, %153 ], [ 11, %29 ], [ 11, %23 ], [ 11, %19 ], [ 11, %15 ], [ 11, %7 ], [ 8, %70 ], [ 8, %66 ], [ 8, %62 ], [ 8, %58 ], [ 8, %54 ], [ 8, %50 ], [ 8, %46 ], [ 8, %42 ], [ 8, %38 ], [ 8, %34 ], [ 11, %80 ], [ 11, %90 ], [ 11, %88 ], [ 11, %96 ], [ 1, %74 ], [ 11, %82 ], [ 11, %98 ]
  ret i32 %156
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_end(ptr noundef %0) local_unnamed_addr #1 !prof !79 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3, !prof !80

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7, !prof !80

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  tail call void @lzma_next_end(ptr noundef nonnull %5, ptr noundef %9)
  %10 = load ptr, ptr %4, align 8, !tbaa !81
  %11 = load ptr, ptr %8, align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !84

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.lzma_allocator, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.lzma_allocator, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  tail call void %15(ptr noundef %19, ptr noundef %10) #10
  br label %21

20:                                               ; preds = %13, %7
  tail call void @free(ptr noundef %10) #10
  br label %21

21:                                               ; preds = %17, %20
  store ptr null, ptr %4, align 8, !tbaa !81
  br label %22

22:                                               ; preds = %21, %3, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_get_check(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !42 {
  %2 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !115
  %9 = tail call i32 %5(ptr noundef %8) #10
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_memusage(ptr noundef readonly %0) local_unnamed_addr #1 !prof !42 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !115
  %15 = call i32 %11(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 0) #10
  %16 = icmp eq i32 %15, 0
  %17 = load i64, ptr %2, align 8
  %18 = select i1 %16, i64 %17, i64 0
  br label %19

19:                                               ; preds = %13, %1, %5, %9
  %20 = phi i64 [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i64 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_memlimit_get(ptr noundef readonly %0) local_unnamed_addr #1 !prof !42 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !115
  %15 = call i32 %11(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef 0) #10
  %16 = icmp eq i32 %15, 0
  %17 = load i64, ptr %2, align 8
  %18 = select i1 %16, i64 %17, i64 0
  br label %19

19:                                               ; preds = %13, %1, %5, %9
  %20 = phi i64 [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i64 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_memlimit_set(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 !prof !42 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = add i64 %1, -1
  %16 = icmp ult i64 %15, 32767
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8, !tbaa !115
  %19 = call i32 %12(ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef %1) #10
  br label %20

20:                                               ; preds = %14, %2, %6, %10, %17
  %21 = phi i32 [ %19, %17 ], [ 11, %10 ], [ 11, %6 ], [ 11, %2 ], [ 6, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @lzma_alloc, ptr @malloc, i64 28}
!36 = !{ptr @lzma_free, ptr @free, i64 37}
!37 = !{ptr @lzma_next_filter_init, ptr @lzma_next_end, i64 3}
!38 = !{ptr @lzma_strm_init, ptr @malloc, i64 3}
!39 = !{ptr @lzma_end, ptr @lzma_next_end, i64 3}
!40 = !{ptr @lzma_end, ptr @free, i64 3}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!"function_entry_count", i64 28}
!44 = !{!"branch_weights", i32 28, i32 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!46, !47, i64 16}
!51 = !{!"function_entry_count", i64 37}
!52 = !{!"branch_weights", i32 37, i32 0}
!53 = !{!46, !47, i64 8}
!54 = !{!"function_entry_count", i64 38440}
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !48, i64 0}
!57 = !{!"VP", i32 1, i64 38440, i64 513, i64 38183, i64 3, i64 65, i64 65, i64 65, i64 257, i64 50}
!58 = !{!"function_entry_count", i64 6}
!59 = !{!60, !47, i64 8}
!60 = !{!"lzma_filter_info_s", !56, i64 0, !47, i64 8, !47, i64 16}
!61 = !{!62, !56, i64 16}
!62 = !{!"lzma_next_coder_s", !47, i64 0, !56, i64 8, !56, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56}
!63 = !{!"branch_weights", i32 3, i32 3}
!64 = !{!60, !56, i64 0}
!65 = !{!62, !56, i64 8}
!66 = !{!"VP", i32 0, i64 3, i64 -6216661779918424364, i64 2, i64 -1262889635332482677, i64 1}
!67 = !{!"function_entry_count", i64 23}
!68 = !{!"branch_weights", i32 13, i32 10}
!69 = !{!62, !47, i64 32}
!70 = !{!62, !47, i64 0}
!71 = !{!"branch_weights", i32 0, i32 10}
!72 = !{!"VP", i32 0, i64 10, i64 3855724874893612379, i64 2, i64 -3652994785915054022, i64 2, i64 464099741749892751, i64 2}
!73 = !{i64 0, i64 8, !74, i64 8, i64 8, !55, i64 16, i64 8, !55, i64 24, i64 8, !74, i64 32, i64 8, !74, i64 40, i64 8, !74, i64 48, i64 8, !74, i64 56, i64 8, !74}
!74 = !{!47, !47, i64 0}
!75 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 8, !74, i64 24, i64 8, !74, i64 32, i64 8, !74, i64 40, i64 8, !74, i64 48, i64 8, !74}
!76 = !{!77, !56, i64 0}
!77 = !{!"", !56, i64 0, !47, i64 8}
!78 = !{!62, !47, i64 56}
!79 = !{!"function_entry_count", i64 3}
!80 = !{!"branch_weights", i32 0, i32 3}
!81 = !{!82, !47, i64 56}
!82 = !{!"", !47, i64 0, !56, i64 8, !56, i64 16, !47, i64 24, !56, i64 32, !56, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !56, i64 120, !83, i64 128, !83, i64 132}
!83 = !{!"int", !48, i64 0}
!84 = !{!"branch_weights", i32 3, i32 0}
!85 = !{!82, !47, i64 48}
!86 = !{!87, !83, i64 64}
!87 = !{!"lzma_internal_s", !62, i64 0, !83, i64 64, !56, i64 72, !48, i64 80, !88, i64 84}
!88 = !{!"_Bool", !48, i64 0}
!89 = !{!82, !56, i64 16}
!90 = !{!82, !56, i64 40}
!91 = !{!"function_entry_count", i64 80863}
!92 = !{!82, !47, i64 0}
!93 = !{!"branch_weights", i32 0, i32 80863}
!94 = !{!82, !56, i64 8}
!95 = !{!82, !47, i64 24}
!96 = !{!82, !56, i64 32}
!97 = !{!87, !47, i64 24}
!98 = !{!88, !88, i64 0}
!99 = !{i8 0, i8 2}
!100 = !{}
!101 = !{!82, !47, i64 64}
!102 = !{!"branch_weights", i32 80863, i32 0}
!103 = !{!82, !47, i64 72}
!104 = !{!82, !47, i64 80}
!105 = !{!82, !47, i64 88}
!106 = !{!82, !56, i64 96}
!107 = !{!82, !56, i64 104}
!108 = !{!82, !56, i64 112}
!109 = !{!82, !56, i64 120}
!110 = !{!82, !83, i64 128}
!111 = !{!82, !83, i64 132}
!112 = !{!"branch_weights", i32 0, i32 80852, i32 0, i32 0, i32 11, i32 0}
!113 = !{!87, !56, i64 72}
!114 = !{!"branch_weights", i32 11, i32 0}
!115 = !{!87, !47, i64 0}
!116 = !{!"VP", i32 0, i64 80863, i64 7759069691147513293, i64 44547, i64 1757912077160535734, i64 36316}
!117 = !{!"branch_weights", i32 0, i32 80860, i32 3, i32 0, i32 0, i32 0, i32 0}
!118 = !{!"branch_weights", i32 30669, i32 50191}
!119 = !{!"branch_weights", i32 0, i32 80860}
!120 = !{!87, !88, i64 84}
!121 = !{!87, !47, i64 40}
!122 = !{!87, !47, i64 48}
