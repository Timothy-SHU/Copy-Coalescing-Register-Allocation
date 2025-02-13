; ModuleID = 'liblzma/common/index_hash.c'
source_filename = "liblzma/common/index_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_index_hash_s = type { i32, %struct.lzma_index_hash_info, %struct.lzma_index_hash_info, i64, i64, i64, i64, i32 }
%struct.lzma_index_hash_info = type { i64, i64, i64, i64, %struct.lzma_check_state }
%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @lzma_index_hash_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = tail call ptr @lzma_alloc(i64 noundef 320, ptr noundef %1) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %5, %4 ], [ %0, %2 ]
  store i32 0, ptr %8, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 2
  %11 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 4
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 1, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  tail call void @lzma_check_init(ptr noundef nonnull %12, i32 noundef 10) #6
  %13 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 2, i32 4
  tail call void @lzma_check_init(ptr noundef nonnull %13, i32 noundef 10) #6
  br label %14

14:                                               ; preds = %4, %7
  %15 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_index_hash_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @lzma_index_hash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !15
  %6 = tail call fastcc i64 @index_size(i64 noundef %3, i64 noundef %5) #7, !range !16
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @index_size(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) #7
  %4 = tail call fastcc i64 @vli_ceil4(i64 noundef %3) #7, !range !16
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @vli_ceil4(i64 noundef %0) unnamed_addr #2 {
  %2 = add i64 %0, 3
  %3 = and i64 %2, -4
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @lzma_vli_size(i64 noundef %0) #6
  %4 = add i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = add i64 %1, 4
  %7 = add i64 %6, %5
  ret i64 %7
}

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_hash_append(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !6
  %5 = icmp ne i32 %4, 0
  %6 = add i64 %1, -9223372036854775805
  %7 = icmp ult i64 %6, -9223372036854775800
  %8 = or i1 %7, %5
  %9 = icmp slt i64 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %33, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1
  tail call fastcc void @hash_append(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2) #7
  %13 = load i64, ptr %12, align 8, !tbaa !17
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !18
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !15
  %24 = tail call fastcc i64 @index_size(i64 noundef %21, i64 noundef %23) #7, !range !16
  %25 = icmp ugt i64 %24, 17179869184
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i64, ptr %12, align 8, !tbaa !17
  %28 = load i64, ptr %20, align 8, !tbaa !14
  %29 = load i64, ptr %22, align 8, !tbaa !15
  %30 = tail call fastcc i64 @index_stream_size(i64 noundef %27, i64 noundef %28, i64 noundef %29) #7
  %31 = icmp slt i64 %30, 0
  %32 = select i1 %31, i32 9, i32 0
  br label %33

33:                                               ; preds = %26, %11, %15, %19, %3
  %34 = phi i32 [ 11, %3 ], [ 9, %19 ], [ 9, %15 ], [ 9, %11 ], [ %32, %26 ]
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_append(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i64], align 16
  %5 = tail call fastcc i64 @vli_ceil4(i64 noundef %1) #7, !range !16
  %6 = load i64, ptr %0, align 8, !tbaa !19
  %7 = add i64 %6, %5
  store i64 %7, ptr %0, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !20
  %10 = add i64 %9, %2
  store i64 %10, ptr %8, align 8, !tbaa !20
  %11 = tail call i32 @lzma_vli_size(i64 noundef %1) #6
  %12 = tail call i32 @lzma_vli_size(i64 noundef %2) #6
  %13 = add i32 %12, %11
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 2
  %16 = load <2 x i64>, ptr %15, align 8, !tbaa !21
  %17 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %14, i64 1
  %18 = add <2 x i64> %16, %17
  store <2 x i64> %18, ptr %15, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  store i64 %1, ptr %4, align 16, !tbaa !21
  %19 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 %2, ptr %19, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 4
  call void @lzma_check_update(ptr noundef nonnull %20, i32 noundef 10, ptr noundef nonnull %4, i64 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @index_stream_size(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i64 @index_size(i64 noundef %1, i64 noundef %2) #7, !range !16
  %5 = add i64 %0, 24
  %6 = add i64 %5, %4
  ret i64 %6
}

; Function Attrs: optsize
declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_hash_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load i64, ptr %2, align 8, !tbaa !21
  %6 = icmp ult i64 %5, %3
  br i1 %6, label %7, label %147

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 2
  %9 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 3
  %10 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %18 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %20 = load i32, ptr %0, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %7, %135
  %22 = phi i32 [ %20, %7 ], [ %136, %135 ]
  %23 = phi i64 [ %5, %7 ], [ %137, %135 ]
  switch i32 %22, label %147 [
    i32 0, label %26
    i32 1, label %31
    i32 2, label %41
    i32 3, label %41
    i32 4, label %71
    i32 5, label %24
    i32 6, label %113
  ]

24:                                               ; preds = %21
  %25 = load i64, ptr %10, align 8, !tbaa !22
  br label %77

26:                                               ; preds = %21
  %27 = add nuw i64 %23, 1
  store i64 %27, ptr %2, align 8, !tbaa !21
  %28 = getelementptr inbounds i8, ptr %1, i64 %23
  %29 = load i8, ptr %28, align 1, !tbaa !23
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %133, label %147

31:                                               ; preds = %21
  %32 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %18, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #6
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %139

34:                                               ; preds = %31
  %35 = load i64, ptr %18, align 8, !tbaa !24
  %36 = load i64, ptr %19, align 8, !tbaa !14
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %147

38:                                               ; preds = %34
  store i64 0, ptr %10, align 8, !tbaa !22
  %39 = icmp eq i64 %35, 0
  %40 = select i1 %39, i32 4, i32 2
  br label %133

41:                                               ; preds = %21, %21
  %42 = icmp eq i32 %22, 2
  %43 = select i1 %42, ptr %11, ptr %12
  %44 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %43, ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #6
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %139

46:                                               ; preds = %41
  store i64 0, ptr %10, align 8, !tbaa !22
  %47 = load i32, ptr %0, align 8, !tbaa !6
  %48 = icmp eq i32 %47, 2
  %49 = load i64, ptr %11, align 8, !tbaa !25
  br i1 %48, label %50, label %53

50:                                               ; preds = %46
  %51 = add i64 %49, -9223372036854775805
  %52 = icmp ult i64 %51, -9223372036854775800
  br i1 %52, label %147, label %133

53:                                               ; preds = %46
  %54 = load i64, ptr %12, align 8, !tbaa !26
  tail call fastcc void @hash_append(ptr noundef nonnull %13, i64 noundef %49, i64 noundef %54) #7
  %55 = load i64, ptr %14, align 8, !tbaa !17
  %56 = load i64, ptr %13, align 8, !tbaa !27
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %147, label %58

58:                                               ; preds = %53
  %59 = load i64, ptr %15, align 8, !tbaa !18
  %60 = load i64, ptr %16, align 8, !tbaa !28
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %147, label %62

62:                                               ; preds = %58
  %63 = load i64, ptr %17, align 8, !tbaa !15
  %64 = load i64, ptr %9, align 8, !tbaa !29
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %147, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %18, align 8, !tbaa !24
  %68 = add i64 %67, -1
  store i64 %68, ptr %18, align 8, !tbaa !24
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %69, i32 4, i32 2
  br label %133

71:                                               ; preds = %21
  %72 = load i64, ptr %8, align 8, !tbaa !30
  %73 = load i64, ptr %9, align 8, !tbaa !29
  %74 = tail call fastcc i64 @index_size_unpadded(i64 noundef %72, i64 noundef %73) #7
  %75 = sub i64 0, %74
  %76 = and i64 %75, 3
  store i64 %76, ptr %10, align 8, !tbaa !22
  store i32 5, ptr %0, align 8, !tbaa !6
  br label %77

77:                                               ; preds = %24, %71
  %78 = phi i64 [ %25, %24 ], [ %76, %71 ]
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = add i64 %78, -1
  store i64 %81, ptr %10, align 8, !tbaa !22
  %82 = load i64, ptr %2, align 8, !tbaa !21
  %83 = add i64 %82, 1
  store i64 %83, ptr %2, align 8, !tbaa !21
  %84 = getelementptr inbounds i8, ptr %1, i64 %82
  %85 = load i8, ptr %84, align 1, !tbaa !23
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %135, label %147

87:                                               ; preds = %77
  %88 = load i64, ptr %14, align 8, !tbaa !17
  %89 = load i64, ptr %13, align 8, !tbaa !27
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %147

91:                                               ; preds = %87
  %92 = load i64, ptr %15, align 8, !tbaa !18
  %93 = load i64, ptr %16, align 8, !tbaa !28
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %147

95:                                               ; preds = %91
  %96 = load i64, ptr %17, align 8, !tbaa !15
  %97 = load i64, ptr %9, align 8, !tbaa !29
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %147

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 4
  tail call void @lzma_check_finish(ptr noundef nonnull %100, i32 noundef 10) #6
  %101 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 4
  tail call void @lzma_check_finish(ptr noundef nonnull %101, i32 noundef 10) #6
  %102 = tail call i32 @lzma_check_size(i32 noundef 10) #6
  %103 = zext i32 %102 to i64
  %104 = tail call i32 @bcmp(ptr nonnull %100, ptr nonnull %101, i64 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %99
  %107 = getelementptr inbounds i8, ptr %1, i64 %5
  %108 = load i64, ptr %2, align 8, !tbaa !21
  %109 = sub i64 %108, %5
  %110 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !31
  %112 = tail call i32 @lzma_crc32(ptr noundef %107, i64 noundef %109, i32 noundef %111) #6
  store i32 %112, ptr %110, align 8, !tbaa !31
  store i32 6, ptr %0, align 8, !tbaa !6
  br label %113

113:                                              ; preds = %21, %106
  %114 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  br label %115

115:                                              ; preds = %129, %113
  %116 = load i64, ptr %2, align 8, !tbaa !21
  %117 = icmp eq i64 %116, %3
  br i1 %117, label %147, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %114, align 8, !tbaa !31
  %120 = load i64, ptr %10, align 8, !tbaa !22
  %121 = trunc i64 %120 to i32
  %122 = shl i32 %121, 3
  %123 = lshr i32 %119, %122
  %124 = add i64 %116, 1
  store i64 %124, ptr %2, align 8, !tbaa !21
  %125 = getelementptr inbounds i8, ptr %1, i64 %116
  %126 = load i8, ptr %125, align 1, !tbaa !23
  %127 = trunc i32 %123 to i8
  %128 = icmp eq i8 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %118
  %130 = load i64, ptr %10, align 8, !tbaa !22
  %131 = add i64 %130, 1
  store i64 %131, ptr %10, align 8, !tbaa !22
  %132 = icmp ult i64 %131, 4
  br i1 %132, label %115, label %147, !llvm.loop !32

133:                                              ; preds = %50, %66, %26, %38
  %134 = phi i32 [ %40, %38 ], [ 1, %26 ], [ %70, %66 ], [ 3, %50 ]
  store i32 %134, ptr %0, align 8, !tbaa !6
  br label %135

135:                                              ; preds = %133, %80
  %136 = phi i32 [ 5, %80 ], [ %134, %133 ]
  %137 = load i64, ptr %2, align 8, !tbaa !21
  %138 = icmp ult i64 %137, %3
  br i1 %138, label %21, label %139, !llvm.loop !34

139:                                              ; preds = %31, %135, %41
  %140 = phi i32 [ %32, %31 ], [ 0, %135 ], [ %44, %41 ]
  %141 = load i64, ptr %2, align 8, !tbaa !21
  %142 = getelementptr inbounds i8, ptr %1, i64 %5
  %143 = sub i64 %141, %5
  %144 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  %145 = load i32, ptr %144, align 8, !tbaa !31
  %146 = tail call i32 @lzma_crc32(ptr noundef %142, i64 noundef %143, i32 noundef %145) #6
  store i32 %146, ptr %144, align 8, !tbaa !31
  br label %147

147:                                              ; preds = %53, %58, %62, %50, %26, %34, %80, %21, %115, %118, %129, %139, %95, %91, %87, %99, %4
  %148 = phi i32 [ 10, %4 ], [ %140, %139 ], [ 9, %95 ], [ 9, %91 ], [ 9, %87 ], [ 9, %99 ], [ 1, %129 ], [ 9, %118 ], [ 0, %115 ], [ 9, %53 ], [ 9, %58 ], [ 9, %62 ], [ 9, %50 ], [ 11, %21 ], [ 9, %80 ], [ 9, %34 ], [ 9, %26 ]
  ret i32 %148
}

; Function Attrs: optsize
declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"lzma_index_hash_s", !8, i64 0, !11, i64 8, !11, i64 144, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !8, i64 312}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32}
!12 = !{!"long", !9, i64 0}
!13 = !{!"", !9, i64 0, !9, i64 64}
!14 = !{!7, !12, i64 24}
!15 = !{!7, !12, i64 32}
!16 = !{i64 0, i64 -3}
!17 = !{!7, !12, i64 8}
!18 = !{!7, !12, i64 16}
!19 = !{!11, !12, i64 0}
!20 = !{!11, !12, i64 8}
!21 = !{!12, !12, i64 0}
!22 = !{!7, !12, i64 304}
!23 = !{!9, !9, i64 0}
!24 = !{!7, !12, i64 280}
!25 = !{!7, !12, i64 288}
!26 = !{!7, !12, i64 296}
!27 = !{!7, !12, i64 144}
!28 = !{!7, !12, i64 152}
!29 = !{!7, !12, i64 168}
!30 = !{!7, !12, i64 160}
!31 = !{!7, !8, i64 312}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
