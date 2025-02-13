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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @lzma_version_number() local_unnamed_addr #0 {
  ret i32 50000056
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @lzma_version_string() local_unnamed_addr #0 {
  ret ptr @.str
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lzma_alloc(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = tail call ptr %6(ptr noundef %10, i64 noundef 1, i64 noundef %3) #9
  br label %14

12:                                               ; preds = %5, %2
  %13 = tail call noalias ptr @malloc(i64 noundef %3) #10
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %11, %8 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_free(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lzma_allocator, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  tail call void %6(ptr noundef %10, ptr noundef %0) #9
  br label %12

11:                                               ; preds = %4, %2
  tail call void @free(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @lzma_bufcpy(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef %1, i64 noundef %2, ptr noalias nocapture noundef writeonly %3, ptr noalias nocapture noundef %4, i64 noundef %5) local_unnamed_addr #5 {
  %7 = load i64, ptr %1, align 8, !tbaa !42
  %8 = sub i64 %2, %7
  %9 = load i64, ptr %4, align 8, !tbaa !42
  %10 = sub i64 %5, %9
  %11 = tail call i64 @llvm.umin.i64(i64 %8, i64 %10)
  %12 = getelementptr inbounds i8, ptr %3, i64 %9
  %13 = getelementptr inbounds i8, ptr %0, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %11, i1 false)
  %14 = add i64 %11, %7
  store i64 %14, ptr %1, align 8, !tbaa !42
  %15 = add i64 %11, %9
  store i64 %15, ptr %4, align 8, !tbaa !42
  ret i64 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_next_filter_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = ptrtoint ptr %5 to i64
  %7 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #11
  %11 = load ptr, ptr %4, align 8, !tbaa !44
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i64 [ %12, %10 ], [ %6, %3 ]
  %15 = phi ptr [ %11, %10 ], [ %5, %3 ]
  store i64 %14, ptr %7, align 8, !tbaa !46
  %16 = load i64, ptr %2, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !49
  %18 = icmp eq ptr %15, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %15(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %21

21:                                               ; preds = %13, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_next_end(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr %0, align 8, !tbaa !51
  br i1 %9, label %12, label %11

11:                                               ; preds = %6
  tail call void %8(ptr noundef %10, ptr noundef %1) #9
  br label %13

12:                                               ; preds = %6
  tail call void @lzma_free(ptr noundef %10, ptr noundef %1) #11
  br label %13

13:                                               ; preds = %12, %11
  store ptr null, ptr %0, align 8, !tbaa.struct !52
  %14 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 -1, ptr %14, align 8, !tbaa.struct !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_next_filter_update(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load i64, ptr %2, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = icmp eq i64 %4, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = load ptr, ptr %0, align 8, !tbaa !51
  %14 = tail call i32 %12(ptr noundef %13, ptr noundef %1, ptr noundef null, ptr noundef nonnull %2) #9
  br label %15

15:                                               ; preds = %8, %3, %10
  %16 = phi i32 [ %14, %10 ], [ 11, %3 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_strm_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = tail call ptr @lzma_alloc(i64 noundef 88, ptr noundef %9) #11
  store ptr %10, ptr %4, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  store ptr null, ptr %10, align 8, !tbaa.struct !52
  %13 = getelementptr inbounds i8, ptr %10, i64 8
  store i64 -1, ptr %13, align 8, !tbaa.struct !54
  %14 = getelementptr inbounds i8, ptr %10, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %14, i8 0, i64 48, i1 false)
  %15 = load ptr, ptr %4, align 8, !tbaa !58
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi ptr [ %15, %12 ], [ %5, %3 ]
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3
  %19 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 1
  store i32 0, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %18, i8 0, i64 5, i1 false)
  store i64 0, ptr %20, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 5
  store i64 0, ptr %21, align 8, !tbaa !66
  br label %22

22:                                               ; preds = %7, %1, %16
  %23 = phi i32 [ 0, %16 ], [ 11, %1 ], [ 5, %7 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_code(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !68
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %155

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !70
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %155

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %155, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = icmp eq ptr %25, null
  %27 = icmp ugt i32 %1, 3
  %28 = or i1 %27, %26
  br i1 %28, label %155, label %29

29:                                               ; preds = %23
  %30 = zext nneg i32 %1 to i64
  %31 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 3, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !72, !range !73, !noundef !74
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %155, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %155

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %155

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %155

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %155

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 12
  %52 = load i64, ptr %51, align 8, !tbaa !79
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %155

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 13
  %56 = load i64, ptr %55, align 8, !tbaa !80
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %155

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 14
  %60 = load i64, ptr %59, align 8, !tbaa !81
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %155

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 15
  %64 = load i64, ptr %63, align 8, !tbaa !82
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %155

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 16
  %68 = load i32, ptr %67, align 8, !tbaa !83
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %155

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 17
  %72 = load i32, ptr %71, align 4, !tbaa !84
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %155

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !62
  switch i32 %76, label %104 [
    i32 0, label %77
    i32 1, label %80
    i32 2, label %88
    i32 3, label %96
    i32 4, label %155
  ]

77:                                               ; preds = %74
  %78 = add i32 %1, -1
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %105, label %106

80:                                               ; preds = %74
  %81 = icmp eq i32 %1, 1
  br i1 %81, label %82, label %155

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !85
  %85 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !68
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %106, label %155

88:                                               ; preds = %74
  %89 = icmp eq i32 %1, 2
  br i1 %89, label %90, label %155

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !85
  %93 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !68
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %106, label %155

96:                                               ; preds = %74
  %97 = icmp eq i32 %1, 3
  br i1 %97, label %98, label %155

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.lzma_internal_s, ptr %21, i64 0, i32 2
  %100 = load i64, ptr %99, align 8, !tbaa !85
  %101 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !68
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %106, label %155

104:                                              ; preds = %74
  br label %155

105:                                              ; preds = %77
  store i32 %1, ptr %75, align 8, !tbaa !62
  br label %106

106:                                              ; preds = %77, %105, %98, %90, %82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !tbaa !42
  %107 = load ptr, ptr %21, align 8, !tbaa !86
  %108 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !61
  %110 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !68
  %112 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 4
  %113 = load i64, ptr %112, align 8, !tbaa !70
  %114 = call i32 %25(ptr noundef %107, ptr noundef %109, ptr noundef %5, ptr noundef nonnull %3, i64 noundef %111, ptr noundef %13, ptr noundef nonnull %4, i64 noundef %113, i32 noundef %1) #9
  %115 = load i64, ptr %3, align 8
  %116 = load ptr, ptr %0, align 8, !tbaa !67
  %117 = getelementptr inbounds i8, ptr %116, i64 %115
  store ptr %117, ptr %0, align 8, !tbaa !67
  %118 = load i64, ptr %110, align 8, !tbaa !68
  %119 = sub i64 %118, %115
  store i64 %119, ptr %110, align 8, !tbaa !68
  %120 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !65
  %122 = add i64 %121, %115
  store i64 %122, ptr %120, align 8, !tbaa !65
  %123 = load i64, ptr %4, align 8, !tbaa !42
  %124 = load ptr, ptr %12, align 8, !tbaa !69
  %125 = getelementptr inbounds i8, ptr %124, i64 %123
  store ptr %125, ptr %12, align 8, !tbaa !69
  %126 = load i64, ptr %112, align 8, !tbaa !70
  %127 = sub i64 %126, %123
  store i64 %127, ptr %112, align 8, !tbaa !70
  %128 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 5
  %129 = load i64, ptr %128, align 8, !tbaa !66
  %130 = add i64 %129, %123
  store i64 %130, ptr %128, align 8, !tbaa !66
  %131 = load ptr, ptr %20, align 8, !tbaa !58
  %132 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 2
  store i64 %119, ptr %132, align 8, !tbaa !85
  switch i32 %114, label %151 [
    i32 0, label %133
    i32 1, label %143
    i32 2, label %149
    i32 3, label %149
    i32 4, label %149
    i32 6, label %149
  ]

133:                                              ; preds = %106
  %134 = icmp eq i64 %123, 0
  %135 = icmp eq i64 %115, 0
  %136 = select i1 %134, i1 %135, i1 false
  %137 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 4
  br i1 %136, label %138, label %142

138:                                              ; preds = %133
  %139 = load i8, ptr %137, align 4, !tbaa !87, !range !73, !noundef !74
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  store i8 1, ptr %137, align 4, !tbaa !87
  br label %153

142:                                              ; preds = %133
  store i8 0, ptr %137, align 4, !tbaa !87
  br label %153

143:                                              ; preds = %106
  %144 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !62
  %146 = add i32 %145, -1
  %147 = icmp ult i32 %146, 2
  %148 = select i1 %147, i32 0, i32 4
  store i32 %148, ptr %144, align 8, !tbaa !62
  br label %149

149:                                              ; preds = %143, %106, %106, %106, %106
  %150 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 4
  store i8 0, ptr %150, align 4, !tbaa !87
  br label %153

151:                                              ; preds = %106
  %152 = getelementptr inbounds %struct.lzma_internal_s, ptr %131, i64 0, i32 1
  store i32 5, ptr %152, align 8, !tbaa !62
  br label %153

153:                                              ; preds = %138, %142, %141, %151, %149
  %154 = phi i32 [ %114, %151 ], [ %114, %149 ], [ 0, %141 ], [ 0, %142 ], [ 10, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %155

155:                                              ; preds = %74, %96, %98, %88, %90, %80, %82, %34, %38, %42, %46, %50, %54, %58, %62, %66, %70, %7, %15, %19, %23, %29, %153, %104
  %156 = phi i32 [ 11, %104 ], [ %154, %153 ], [ 11, %29 ], [ 11, %23 ], [ 11, %19 ], [ 11, %15 ], [ 11, %7 ], [ 8, %70 ], [ 8, %66 ], [ 8, %62 ], [ 8, %58 ], [ 8, %54 ], [ 8, %50 ], [ 8, %46 ], [ 8, %42 ], [ 8, %38 ], [ 8, %34 ], [ 11, %82 ], [ 11, %80 ], [ 11, %90 ], [ 11, %88 ], [ 11, %98 ], [ 11, %96 ], [ 1, %74 ]
  ret i32 %156
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_end(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void @lzma_next_end(ptr noundef nonnull %5, ptr noundef %9) #11
  %10 = load ptr, ptr %4, align 8, !tbaa !58
  %11 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void @lzma_free(ptr noundef %10, ptr noundef %11) #11
  store ptr null, ptr %4, align 8, !tbaa !58
  br label %12

12:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_get_check(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !86
  %9 = tail call i32 %5(ptr noundef %8) #9
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_memusage(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !86
  %15 = call i32 %11(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef 0) #9
  %16 = icmp eq i32 %15, 0
  %17 = load i64, ptr %2, align 8
  %18 = select i1 %16, i64 %17, i64 0
  br label %19

19:                                               ; preds = %13, %1, %5, %9
  %20 = phi i64 [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_memlimit_get(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !86
  %15 = call i32 %11(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef 0) #9
  %16 = icmp eq i32 %15, 0
  %17 = load i64, ptr %2, align 8
  %18 = select i1 %16, i64 %17, i64 0
  br label %19

19:                                               ; preds = %13, %1, %5, %9
  %20 = phi i64 [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_memlimit_set(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = add i64 %1, -1
  %16 = icmp ult i64 %15, 32767
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8, !tbaa !86
  %19 = call i32 %12(ptr noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef %1) #9
  br label %20

20:                                               ; preds = %14, %2, %6, %10, %17
  %21 = phi i32 [ %19, %17 ], [ 11, %10 ], [ 11, %6 ], [ 11, %2 ], [ 6, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize allocsize(0) }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 0}
!4 = !{!"MaxCount", i64 0}
!5 = !{!"MaxInternalCount", i64 0}
!6 = !{!"MaxFunctionCount", i64 0}
!7 = !{!"NumCounts", i64 0}
!8 = !{!"NumFunctions", i64 0}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 0, i32 0}
!14 = !{i32 100000, i64 0, i32 0}
!15 = !{i32 200000, i64 0, i32 0}
!16 = !{i32 300000, i64 0, i32 0}
!17 = !{i32 400000, i64 0, i32 0}
!18 = !{i32 500000, i64 0, i32 0}
!19 = !{i32 600000, i64 0, i32 0}
!20 = !{i32 700000, i64 0, i32 0}
!21 = !{i32 800000, i64 0, i32 0}
!22 = !{i32 900000, i64 0, i32 0}
!23 = !{i32 950000, i64 0, i32 0}
!24 = !{i32 990000, i64 0, i32 0}
!25 = !{i32 999000, i64 0, i32 0}
!26 = !{i32 999900, i64 0, i32 0}
!27 = !{i32 999990, i64 0, i32 0}
!28 = !{i32 999999, i64 0, i32 0}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!36, !37, i64 16}
!41 = !{!36, !37, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !38, i64 0}
!44 = !{!45, !37, i64 8}
!45 = !{!"lzma_filter_info_s", !43, i64 0, !37, i64 8, !37, i64 16}
!46 = !{!47, !43, i64 16}
!47 = !{!"lzma_next_coder_s", !37, i64 0, !43, i64 8, !43, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!48 = !{!45, !43, i64 0}
!49 = !{!47, !43, i64 8}
!50 = !{!47, !37, i64 32}
!51 = !{!47, !37, i64 0}
!52 = !{i64 0, i64 8, !53, i64 8, i64 8, !42, i64 16, i64 8, !42, i64 24, i64 8, !53, i64 32, i64 8, !53, i64 40, i64 8, !53, i64 48, i64 8, !53, i64 56, i64 8, !53}
!53 = !{!37, !37, i64 0}
!54 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !53, i64 24, i64 8, !53, i64 32, i64 8, !53, i64 40, i64 8, !53, i64 48, i64 8, !53}
!55 = !{!56, !43, i64 0}
!56 = !{!"", !43, i64 0, !37, i64 8}
!57 = !{!47, !37, i64 56}
!58 = !{!59, !37, i64 56}
!59 = !{!"", !37, i64 0, !43, i64 8, !43, i64 16, !37, i64 24, !43, i64 32, !43, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !60, i64 128, !60, i64 132}
!60 = !{!"int", !38, i64 0}
!61 = !{!59, !37, i64 48}
!62 = !{!63, !60, i64 64}
!63 = !{!"lzma_internal_s", !47, i64 0, !60, i64 64, !43, i64 72, !38, i64 80, !64, i64 84}
!64 = !{!"_Bool", !38, i64 0}
!65 = !{!59, !43, i64 16}
!66 = !{!59, !43, i64 40}
!67 = !{!59, !37, i64 0}
!68 = !{!59, !43, i64 8}
!69 = !{!59, !37, i64 24}
!70 = !{!59, !43, i64 32}
!71 = !{!63, !37, i64 24}
!72 = !{!64, !64, i64 0}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!59, !37, i64 64}
!76 = !{!59, !37, i64 72}
!77 = !{!59, !37, i64 80}
!78 = !{!59, !37, i64 88}
!79 = !{!59, !43, i64 96}
!80 = !{!59, !43, i64 104}
!81 = !{!59, !43, i64 112}
!82 = !{!59, !43, i64 120}
!83 = !{!59, !60, i64 128}
!84 = !{!59, !60, i64 132}
!85 = !{!63, !43, i64 72}
!86 = !{!63, !37, i64 0}
!87 = !{!63, !64, i64 84}
!88 = !{!63, !37, i64 40}
!89 = !{!63, !37, i64 48}
