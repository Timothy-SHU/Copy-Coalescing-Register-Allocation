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
define dso_local noundef ptr @lzma_index_hash_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !49 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7, !prof !50

4:                                                ; preds = %2
  %5 = tail call ptr @lzma_alloc(i64 noundef 320, ptr noundef %1) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !51

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %5, %4 ], [ %0, %2 ]
  store i32 0, ptr %8, align 8, !tbaa !52
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
define dso_local void @lzma_index_hash_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !49 {
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @lzma_index_hash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !49 {
  %2 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !61
  %6 = tail call fastcc i64 @index_size(i64 noundef %3, i64 noundef %5) #7, !range !62
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @index_size(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !prof !63 !PGOFuncName !64 {
  %3 = tail call fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) #7
  %4 = tail call fastcc i64 @vli_ceil4(i64 noundef %3) #7, !range !62
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_index_hash_append(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !49 {
  %4 = load i32, ptr %0, align 8, !tbaa !52
  %5 = icmp ne i32 %4, 0
  %6 = add i64 %1, -9223372036854775805
  %7 = icmp ult i64 %6, -9223372036854775800
  %8 = or i1 %7, %5
  %9 = icmp slt i64 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %33, label %11, !prof !65

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1
  tail call fastcc void @hash_append(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2) #7
  %13 = load i64, ptr %12, align 8, !tbaa !66
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %33, label %15, !prof !51

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !67
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %33, label %19, !prof !51

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !61
  %24 = tail call fastcc i64 @index_size(i64 noundef %21, i64 noundef %23) #7, !range !62
  %25 = icmp ugt i64 %24, 17179869184
  br i1 %25, label %33, label %26, !prof !51

26:                                               ; preds = %19
  %27 = load i64, ptr %12, align 8, !tbaa !66
  %28 = load i64, ptr %20, align 8, !tbaa !60
  %29 = load i64, ptr %22, align 8, !tbaa !61
  %30 = tail call fastcc i64 @index_stream_size(i64 noundef %27, i64 noundef %28, i64 noundef %29) #7
  %31 = icmp slt i64 %30, 0
  %32 = select i1 %31, i32 9, i32 0, !prof !51
  br label %33

33:                                               ; preds = %26, %11, %15, %19, %3
  %34 = phi i32 [ 11, %3 ], [ 9, %19 ], [ 9, %15 ], [ 9, %11 ], [ %32, %26 ]
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_append(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !prof !68 !PGOFuncName !69 {
  %4 = alloca [2 x i64], align 16
  %5 = tail call fastcc i64 @vli_ceil4(i64 noundef %1) #7, !range !62
  %6 = load i64, ptr %0, align 8, !tbaa !70
  %7 = add i64 %6, %5
  store i64 %7, ptr %0, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !71
  %10 = add i64 %9, %2
  store i64 %10, ptr %8, align 8, !tbaa !71
  %11 = tail call i32 @lzma_vli_size(i64 noundef %1) #6
  %12 = tail call i32 @lzma_vli_size(i64 noundef %2) #6
  %13 = add i32 %12, %11
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 2
  %16 = load <2 x i64>, ptr %15, align 8, !tbaa !72
  %17 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %14, i64 1
  %18 = add <2 x i64> %16, %17
  store <2 x i64> %18, ptr %15, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  store i64 %1, ptr %4, align 16, !tbaa !72
  %19 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 %2, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 4
  call void @lzma_check_update(ptr noundef nonnull %20, i32 noundef 10, ptr noundef nonnull %4, i64 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @index_stream_size(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !prof !49 !PGOFuncName !73 {
  %4 = tail call fastcc i64 @index_size(i64 noundef %1, i64 noundef %2) #7, !range !62
  %5 = add i64 %0, 24
  %6 = add i64 %5, %4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_hash_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !49 {
  %5 = load i64, ptr %2, align 8, !tbaa !72
  %6 = icmp ult i64 %5, %3
  br i1 %6, label %7, label %148, !prof !50

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 3
  %9 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %15 = load i32, ptr %0, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %7, %136
  %17 = phi i32 [ %15, %7 ], [ %137, %136 ]
  %18 = phi i64 [ %5, %7 ], [ %138, %136 ]
  switch i32 %17, label %148 [
    i32 0, label %21
    i32 1, label %26
    i32 2, label %38
    i32 3, label %38
    i32 4, label %71
    i32 5, label %19
    i32 6, label %114
  ], !prof !74

19:                                               ; preds = %16
  %20 = load i64, ptr %9, align 8, !tbaa !75
  br label %78

21:                                               ; preds = %16
  %22 = add nuw i64 %18, 1
  store i64 %22, ptr %2, align 8, !tbaa !72
  %23 = getelementptr inbounds i8, ptr %1, i64 %18
  %24 = load i8, ptr %23, align 1, !tbaa !76
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %134, label %148, !prof !50

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 3
  %28 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %27, ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #6
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %140, !prof !50

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %32 = load i64, ptr %27, align 8, !tbaa !77
  %33 = load i64, ptr %31, align 8, !tbaa !60
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %148, !prof !50

35:                                               ; preds = %30
  store i64 0, ptr %9, align 8, !tbaa !75
  %36 = icmp eq i64 %32, 0
  %37 = select i1 %36, i32 4, i32 2
  br label %134

38:                                               ; preds = %16, %16
  %39 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 4
  %40 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 5
  %41 = icmp eq i32 %17, 2
  %42 = select i1 %41, ptr %39, ptr %40, !prof !78
  %43 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %42, ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #6
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %140, !prof !79

45:                                               ; preds = %38
  store i64 0, ptr %9, align 8, !tbaa !75
  %46 = load i32, ptr %0, align 8, !tbaa !52
  %47 = icmp eq i32 %46, 2
  %48 = load i64, ptr %39, align 8, !tbaa !80
  br i1 %47, label %49, label %52, !prof !78

49:                                               ; preds = %45
  %50 = add i64 %48, -9223372036854775805
  %51 = icmp ult i64 %50, -9223372036854775800
  br i1 %51, label %148, label %134, !prof !81

52:                                               ; preds = %45
  %53 = load i64, ptr %40, align 8, !tbaa !82
  tail call fastcc void @hash_append(ptr noundef nonnull %10, i64 noundef %48, i64 noundef %53) #7
  %54 = load i64, ptr %11, align 8, !tbaa !66
  %55 = load i64, ptr %10, align 8, !tbaa !83
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %148, label %57, !prof !51

57:                                               ; preds = %52
  %58 = load i64, ptr %12, align 8, !tbaa !67
  %59 = load i64, ptr %13, align 8, !tbaa !84
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %148, label %61, !prof !51

61:                                               ; preds = %57
  %62 = load i64, ptr %14, align 8, !tbaa !61
  %63 = load i64, ptr %8, align 8, !tbaa !85
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %148, label %65, !prof !51

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !77
  %68 = add i64 %67, -1
  store i64 %68, ptr %66, align 8, !tbaa !77
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %69, i32 4, i32 2
  br label %134

71:                                               ; preds = %16
  %72 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !86
  %74 = load i64, ptr %8, align 8, !tbaa !85
  %75 = tail call fastcc i64 @index_size_unpadded(i64 noundef %73, i64 noundef %74) #7
  %76 = sub i64 0, %75
  %77 = and i64 %76, 3
  store i64 %77, ptr %9, align 8, !tbaa !75
  store i32 5, ptr %0, align 8, !tbaa !52
  br label %78

78:                                               ; preds = %19, %71
  %79 = phi i64 [ %20, %19 ], [ %77, %71 ]
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %88, label %81, !prof !87

81:                                               ; preds = %78
  %82 = add i64 %79, -1
  store i64 %82, ptr %9, align 8, !tbaa !75
  %83 = load i64, ptr %2, align 8, !tbaa !72
  %84 = add i64 %83, 1
  store i64 %84, ptr %2, align 8, !tbaa !72
  %85 = getelementptr inbounds i8, ptr %1, i64 %83
  %86 = load i8, ptr %85, align 1, !tbaa !76
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %136, label %148, !prof !79

88:                                               ; preds = %78
  %89 = load i64, ptr %11, align 8, !tbaa !66
  %90 = load i64, ptr %10, align 8, !tbaa !83
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %148, !prof !50

92:                                               ; preds = %88
  %93 = load i64, ptr %12, align 8, !tbaa !67
  %94 = load i64, ptr %13, align 8, !tbaa !84
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %148, !prof !50

96:                                               ; preds = %92
  %97 = load i64, ptr %14, align 8, !tbaa !61
  %98 = load i64, ptr %8, align 8, !tbaa !85
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %148, !prof !50

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 4
  tail call void @lzma_check_finish(ptr noundef nonnull %101, i32 noundef 10) #6
  %102 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 4
  tail call void @lzma_check_finish(ptr noundef nonnull %102, i32 noundef 10) #6
  %103 = tail call i32 @lzma_check_size(i32 noundef 10) #6
  %104 = zext i32 %103 to i64
  %105 = tail call i32 @bcmp(ptr nonnull %101, ptr nonnull %102, i64 %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %148, !prof !50

107:                                              ; preds = %100
  %108 = getelementptr inbounds i8, ptr %1, i64 %5
  %109 = load i64, ptr %2, align 8, !tbaa !72
  %110 = sub i64 %109, %5
  %111 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  %112 = load i32, ptr %111, align 8, !tbaa !88
  %113 = tail call i32 @lzma_crc32(ptr noundef %108, i64 noundef %110, i32 noundef %112) #6
  store i32 %113, ptr %111, align 8, !tbaa !88
  store i32 6, ptr %0, align 8, !tbaa !52
  br label %114

114:                                              ; preds = %16, %107
  %115 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  br label %116

116:                                              ; preds = %130, %114
  %117 = load i64, ptr %2, align 8, !tbaa !72
  %118 = icmp eq i64 %117, %3
  br i1 %118, label %148, label %119, !prof !89

119:                                              ; preds = %116
  %120 = load i32, ptr %115, align 8, !tbaa !88
  %121 = load i64, ptr %9, align 8, !tbaa !75
  %122 = trunc i64 %121 to i32
  %123 = shl i32 %122, 3
  %124 = lshr i32 %120, %123
  %125 = add i64 %117, 1
  store i64 %125, ptr %2, align 8, !tbaa !72
  %126 = getelementptr inbounds i8, ptr %1, i64 %117
  %127 = load i8, ptr %126, align 1, !tbaa !76
  %128 = trunc i32 %124 to i8
  %129 = icmp eq i8 %127, %128
  br i1 %129, label %130, label %148, !prof !90

130:                                              ; preds = %119
  %131 = load i64, ptr %9, align 8, !tbaa !75
  %132 = add i64 %131, 1
  store i64 %132, ptr %9, align 8, !tbaa !75
  %133 = icmp ult i64 %132, 4
  br i1 %133, label %116, label %148, !prof !91, !llvm.loop !92

134:                                              ; preds = %49, %65, %21, %35
  %135 = phi i32 [ %37, %35 ], [ 1, %21 ], [ %70, %65 ], [ 3, %49 ]
  store i32 %135, ptr %0, align 8, !tbaa !52
  br label %136

136:                                              ; preds = %134, %81
  %137 = phi i32 [ 5, %81 ], [ %135, %134 ]
  %138 = load i64, ptr %2, align 8, !tbaa !72
  %139 = icmp ult i64 %138, %3
  br i1 %139, label %16, label %140, !prof !94, !llvm.loop !95

140:                                              ; preds = %26, %136, %38
  %141 = phi i32 [ %28, %26 ], [ 0, %136 ], [ %43, %38 ]
  %142 = load i64, ptr %2, align 8, !tbaa !72
  %143 = getelementptr inbounds i8, ptr %1, i64 %5
  %144 = sub i64 %142, %5
  %145 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  %146 = load i32, ptr %145, align 8, !tbaa !88
  %147 = tail call i32 @lzma_crc32(ptr noundef %143, i64 noundef %144, i32 noundef %146) #6
  store i32 %147, ptr %145, align 8, !tbaa !88
  br label %148

148:                                              ; preds = %52, %57, %61, %49, %21, %30, %81, %16, %116, %119, %130, %140, %96, %92, %88, %100, %4
  %149 = phi i32 [ 10, %4 ], [ %141, %140 ], [ 9, %96 ], [ 9, %92 ], [ 9, %88 ], [ 9, %100 ], [ 1, %130 ], [ 9, %119 ], [ 0, %116 ], [ 9, %52 ], [ 9, %57 ], [ 9, %61 ], [ 9, %49 ], [ 11, %16 ], [ 9, %81 ], [ 9, %30 ], [ 9, %21 ]
  ret i32 %149
}

; Function Attrs: optsize
declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @index_size_unpadded(i64 noundef %0, i64 noundef %1) unnamed_addr #0 !prof !96 !PGOFuncName !97 {
  %3 = tail call i32 @lzma_vli_size(i64 noundef %0) #6
  %4 = add i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = add i64 %1, 4
  %7 = add i64 %6, %5
  ret i64 %7
}

; Function Attrs: optsize
declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @vli_ceil4(i64 noundef %0) unnamed_addr #3 !prof !98 !PGOFuncName !99 {
  %2 = add i64 %0, 3
  %3 = and i64 %2, -4
  ret i64 %3
}

; Function Attrs: optsize
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!48}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @lzma_index_hash_init, ptr @lzma_alloc, i64 2}
!36 = !{ptr @lzma_index_hash_init, ptr @lzma_check_init, i64 4}
!37 = !{ptr @lzma_index_hash_end, ptr @lzma_free, i64 2}
!38 = !{ptr @lzma_index_hash_size, ptr @index_size, i64 2}
!39 = !{ptr @index_size, ptr @index_size_unpadded, i64 6}
!40 = !{ptr @index_size, ptr @vli_ceil4, i64 6}
!41 = !{ptr @lzma_index_hash_append, ptr @hash_append, i64 1}
!42 = !{ptr @hash_append, ptr @vli_ceil4, i64 4}
!43 = !{ptr @hash_append, ptr @lzma_vli_size, i64 8}
!44 = !{ptr @hash_append, ptr @lzma_check_update, i64 4}
!45 = !{ptr @index_stream_size, ptr @index_size, i64 2}
!46 = !{ptr @lzma_index_hash_decode, ptr @lzma_vli_decode, i64 1}
!47 = !{ptr @index_size_unpadded, ptr @lzma_vli_size, i64 8}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 2}
!50 = !{!"branch_weights", i32 3, i32 1}
!51 = !{!"branch_weights", i32 1, i32 3}
!52 = !{!53, !54, i64 0}
!53 = !{!"lzma_index_hash_s", !54, i64 0, !57, i64 8, !57, i64 144, !58, i64 280, !58, i64 288, !58, i64 296, !58, i64 304, !54, i64 312}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !59, i64 32}
!58 = !{!"long", !55, i64 0}
!59 = !{!"", !55, i64 0, !55, i64 64}
!60 = !{!53, !58, i64 24}
!61 = !{!53, !58, i64 32}
!62 = !{i64 0, i64 -3}
!63 = !{!"function_entry_count", i64 6}
!64 = !{!"index_hash.c:index_size"}
!65 = !{!"branch_weights", i32 175, i32 81}
!66 = !{!53, !58, i64 8}
!67 = !{!53, !58, i64 16}
!68 = !{!"function_entry_count", i64 4}
!69 = !{!"index_hash.c:hash_append"}
!70 = !{!57, !58, i64 0}
!71 = !{!57, !58, i64 8}
!72 = !{!58, !58, i64 0}
!73 = !{!"index_hash.c:index_stream_size"}
!74 = !{!"branch_weights", i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 5, i32 1}
!75 = !{!53, !58, i64 304}
!76 = !{!55, !55, i64 0}
!77 = !{!53, !58, i64 280}
!78 = !{!"branch_weights", i32 3, i32 3}
!79 = !{!"branch_weights", i32 5, i32 1}
!80 = !{!53, !58, i64 288}
!81 = !{!"branch_weights", i32 7, i32 9}
!82 = !{!53, !58, i64 296}
!83 = !{!53, !58, i64 144}
!84 = !{!53, !58, i64 152}
!85 = !{!53, !58, i64 168}
!86 = !{!53, !58, i64 160}
!87 = !{!"branch_weights", i32 3, i32 5}
!88 = !{!53, !54, i64 312}
!89 = !{!"branch_weights", i32 1, i32 9}
!90 = !{!"branch_weights", i32 9, i32 1}
!91 = !{!"branch_weights", i32 7, i32 3}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"branch_weights", i32 1793, i32 127}
!95 = distinct !{!95, !93}
!96 = !{!"function_entry_count", i64 8}
!97 = !{!"index_hash.c:index_size_unpadded"}
!98 = !{!"function_entry_count", i64 10}
!99 = !{!"index_hash.c:vli_ceil4"}
