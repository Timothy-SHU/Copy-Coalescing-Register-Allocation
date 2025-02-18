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

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lzma_index_hash_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !51 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7, !prof !52

4:                                                ; preds = %2
  %5 = tail call ptr @lzma_alloc(i64 noundef 320, ptr noundef %1) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !53

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %5, %4 ], [ %0, %2 ]
  store i32 0, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 2
  %11 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 4
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 1, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  tail call void @lzma_check_init(ptr noundef nonnull %12, i32 noundef 10) #5
  %13 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %8, i64 0, i32 2, i32 4
  tail call void @lzma_check_init(ptr noundef nonnull %13, i32 noundef 10) #5
  br label %14

14:                                               ; preds = %4, %7
  %15 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %15
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_index_hash_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !51 {
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_index_hash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !51 {
  %2 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !63
  %6 = tail call i32 @lzma_vli_size(i64 noundef %3) #5
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = add i64 %5, 7
  %10 = add i64 %9, %8
  %11 = and i64 %10, -4
  ret i64 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_hash_append(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !51 {
  %4 = load i32, ptr %0, align 8, !tbaa !54
  %5 = icmp ne i32 %4, 0
  %6 = add i64 %1, -9223372036854775805
  %7 = icmp ult i64 %6, -9223372036854775800
  %8 = or i1 %7, %5
  %9 = icmp slt i64 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %45, label %11, !prof !53

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1
  tail call fastcc void @hash_append(ptr noundef nonnull %12, i64 noundef %1, i64 noundef %2)
  %13 = load i64, ptr %12, align 8, !tbaa !64
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %45, label %15, !prof !53

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !65
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %45, label %19, !prof !53

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !63
  %24 = tail call i32 @lzma_vli_size(i64 noundef %21) #5
  %25 = add i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = add i64 %23, 7
  %28 = add i64 %27, %26
  %29 = and i64 %28, -4
  %30 = icmp ugt i64 %29, 17179869184
  br i1 %30, label %45, label %31, !prof !53

31:                                               ; preds = %19
  %32 = load i64, ptr %12, align 8, !tbaa !64
  %33 = load i64, ptr %20, align 8, !tbaa !62
  %34 = load i64, ptr %22, align 8, !tbaa !63
  %35 = tail call i32 @lzma_vli_size(i64 noundef %33) #5
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = add i64 %34, 7
  %39 = add i64 %38, %37
  %40 = and i64 %39, -4
  %41 = add i64 %32, 24
  %42 = add i64 %41, %40
  %43 = icmp slt i64 %42, 0
  %44 = select i1 %43, i32 9, i32 0, !prof !53
  br label %45

45:                                               ; preds = %31, %11, %15, %19, %3
  %46 = phi i32 [ 11, %3 ], [ 9, %19 ], [ 9, %15 ], [ 9, %11 ], [ %44, %31 ]
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @hash_append(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !67 {
  %4 = alloca [2 x i64], align 16
  %5 = add i64 %1, 3
  %6 = and i64 %5, -4
  %7 = load i64, ptr %0, align 8, !tbaa !68
  %8 = add i64 %7, %6
  store i64 %8, ptr %0, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !69
  %11 = add i64 %10, %2
  store i64 %11, ptr %9, align 8, !tbaa !69
  %12 = tail call i32 @lzma_vli_size(i64 noundef %1) #5
  %13 = tail call i32 @lzma_vli_size(i64 noundef %2) #5
  %14 = add i32 %13, %12
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !70
  %18 = add i64 %17, %15
  store i64 %18, ptr %16, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !71
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  store i64 %1, ptr %4, align 16, !tbaa !72
  %22 = getelementptr inbounds i64, ptr %4, i64 1
  store i64 %2, ptr %22, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.lzma_index_hash_info, ptr %0, i64 0, i32 4
  call void @lzma_check_update(ptr noundef nonnull %23, i32 noundef 10, ptr noundef nonnull %4, i64 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_hash_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !51 {
  %5 = load i64, ptr %2, align 8, !tbaa !72
  %6 = icmp ult i64 %5, %3
  br i1 %6, label %7, label %169, !prof !52

7:                                                ; preds = %4
  %8 = load i64, ptr %2, align 8, !tbaa !72
  %9 = icmp ult i64 %8, %3
  br i1 %9, label %10, label %161, !prof !73

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %10, %157
  %16 = phi i64 [ %8, %10 ], [ %159, %157 ]
  %17 = phi i32 [ 0, %10 ], [ %158, %157 ]
  %18 = load i32, ptr %0, align 8, !tbaa !54
  switch i32 %18, label %169 [
    i32 0, label %19
    i32 1, label %24
    i32 2, label %37
    i32 3, label %37
    i32 4, label %79
    i32 5, label %91
    i32 6, label %133
  ], !prof !74

19:                                               ; preds = %15
  %20 = add i64 %16, 1
  store i64 %20, ptr %2, align 8, !tbaa !72
  %21 = getelementptr inbounds i8, ptr %1, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !75
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %154, label %169, !prof !52

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 6
  %27 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #5
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %161, !prof !52

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 2
  %31 = load i64, ptr %25, align 8, !tbaa !76
  %32 = load i64, ptr %30, align 8, !tbaa !62
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %169, !prof !52

34:                                               ; preds = %29
  store i64 0, ptr %26, align 8, !tbaa !77
  %35 = icmp eq i64 %31, 0
  %36 = select i1 %35, i32 4, i32 2, !prof !53
  br label %154

37:                                               ; preds = %15, %15
  %38 = icmp eq i32 %18, 2
  %39 = select i1 %38, ptr %12, ptr %13, !prof !78
  %40 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %39, ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #5
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %76, !prof !79

42:                                               ; preds = %37
  store i64 0, ptr %14, align 8, !tbaa !77
  %43 = load i32, ptr %0, align 8, !tbaa !54
  %44 = icmp eq i32 %43, 2
  %45 = load i64, ptr %12, align 8, !tbaa !80
  br i1 %44, label %46, label %49, !prof !78

46:                                               ; preds = %42
  %47 = add i64 %45, -9223372036854775805
  %48 = icmp ult i64 %47, -9223372036854775800
  br i1 %48, label %76, label %74, !prof !53

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2
  %51 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1
  %52 = load i64, ptr %13, align 8, !tbaa !81
  tail call fastcc void @hash_append(ptr noundef nonnull %50, i64 noundef %45, i64 noundef %52)
  %53 = load i64, ptr %51, align 8, !tbaa !64
  %54 = load i64, ptr %50, align 8, !tbaa !82
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %76, label %56, !prof !53

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 1
  %58 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 1
  %59 = load i64, ptr %57, align 8, !tbaa !65
  %60 = load i64, ptr %58, align 8, !tbaa !83
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %76, label %62, !prof !53

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %64 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 3
  %65 = load i64, ptr %63, align 8, !tbaa !63
  %66 = load i64, ptr %64, align 8, !tbaa !84
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %76, label %68, !prof !53

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 3
  %70 = load i64, ptr %69, align 8, !tbaa !76
  %71 = add i64 %70, -1
  store i64 %71, ptr %69, align 8, !tbaa !76
  %72 = icmp eq i64 %71, 0
  %73 = select i1 %72, i32 4, i32 2, !prof !52
  br label %74

74:                                               ; preds = %46, %68
  %75 = phi i32 [ %73, %68 ], [ 3, %46 ]
  store i32 %75, ptr %0, align 8, !tbaa !54
  br label %76

76:                                               ; preds = %49, %56, %62, %46, %37, %74
  %77 = phi i32 [ 4, %74 ], [ 5, %37 ], [ 1, %46 ], [ 1, %62 ], [ 1, %56 ], [ 1, %49 ]
  %78 = phi i32 [ 0, %74 ], [ %40, %37 ], [ 0, %46 ], [ 0, %62 ], [ 0, %56 ], [ 0, %49 ]
  switch i32 %77, label %169 [
    i32 4, label %157
    i32 5, label %161
  ], !prof !85

79:                                               ; preds = %15
  %80 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 2
  %81 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 3
  %82 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 6
  %83 = load i64, ptr %80, align 8, !tbaa !86
  %84 = load i64, ptr %81, align 8, !tbaa !84
  %85 = tail call i32 @lzma_vli_size(i64 noundef %83) #5
  %86 = add i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = add i64 %84, %87
  %89 = sub i64 0, %88
  %90 = and i64 %89, 3
  store i64 %90, ptr %82, align 8, !tbaa !77
  store i32 5, ptr %0, align 8, !tbaa !54
  br label %91

91:                                               ; preds = %15, %79
  %92 = load i64, ptr %11, align 8, !tbaa !77
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %101, label %94, !prof !87

94:                                               ; preds = %91
  %95 = add i64 %92, -1
  store i64 %95, ptr %11, align 8, !tbaa !77
  %96 = load i64, ptr %2, align 8, !tbaa !72
  %97 = add i64 %96, 1
  store i64 %97, ptr %2, align 8, !tbaa !72
  %98 = getelementptr inbounds i8, ptr %1, i64 %96
  %99 = load i8, ptr %98, align 1, !tbaa !75
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %157, label %169, !prof !79

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !64
  %104 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !82
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %107, label %169, !prof !52

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !65
  %110 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !83
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %169, !prof !52

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa !63
  %116 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 3
  %117 = load i64, ptr %116, align 8, !tbaa !84
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %169, !prof !52

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 1, i32 4
  tail call void @lzma_check_finish(ptr noundef nonnull %120, i32 noundef 10) #5
  %121 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 2, i32 4
  tail call void @lzma_check_finish(ptr noundef nonnull %121, i32 noundef 10) #5
  %122 = tail call i32 @lzma_check_size(i32 noundef 10) #5
  %123 = zext i32 %122 to i64
  %124 = tail call i32 @bcmp(ptr nonnull %120, ptr nonnull %121, i64 %123), !prof !88
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %169, !prof !52

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, ptr %1, i64 %5
  %128 = load i64, ptr %2, align 8, !tbaa !72
  %129 = sub i64 %128, %5
  %130 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  %131 = load i32, ptr %130, align 8, !tbaa !89
  %132 = tail call i32 @lzma_crc32(ptr noundef %127, i64 noundef %129, i32 noundef %131) #5
  store i32 %132, ptr %130, align 8, !tbaa !89
  store i32 6, ptr %0, align 8, !tbaa !54
  br label %133

133:                                              ; preds = %15, %126
  %134 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  %135 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 6
  br label %136

136:                                              ; preds = %150, %133
  %137 = load i64, ptr %2, align 8, !tbaa !72
  %138 = icmp eq i64 %137, %3
  br i1 %138, label %169, label %139, !prof !90

139:                                              ; preds = %136
  %140 = load i32, ptr %134, align 8, !tbaa !89
  %141 = load i64, ptr %135, align 8, !tbaa !77
  %142 = trunc i64 %141 to i32
  %143 = shl i32 %142, 3
  %144 = lshr i32 %140, %143
  %145 = add i64 %137, 1
  store i64 %145, ptr %2, align 8, !tbaa !72
  %146 = getelementptr inbounds i8, ptr %1, i64 %137
  %147 = load i8, ptr %146, align 1, !tbaa !75
  %148 = trunc i32 %144 to i8
  %149 = icmp eq i8 %147, %148
  br i1 %149, label %150, label %169, !prof !91

150:                                              ; preds = %139
  %151 = load i64, ptr %135, align 8, !tbaa !77
  %152 = add i64 %151, 1
  store i64 %152, ptr %135, align 8, !tbaa !77
  %153 = icmp ult i64 %152, 4
  br i1 %153, label %136, label %169, !prof !92, !llvm.loop !93

154:                                              ; preds = %19, %34
  %155 = phi i32 [ %36, %34 ], [ 1, %19 ]
  %156 = phi i32 [ 0, %34 ], [ %17, %19 ]
  store i32 %155, ptr %0, align 8, !tbaa !54
  br label %157

157:                                              ; preds = %154, %94, %76
  %158 = phi i32 [ %17, %94 ], [ %78, %76 ], [ %156, %154 ]
  %159 = load i64, ptr %2, align 8, !tbaa !72
  %160 = icmp ult i64 %159, %3
  br i1 %160, label %15, label %161, !prof !96, !llvm.loop !97

161:                                              ; preds = %24, %157, %76, %7
  %162 = phi i32 [ 0, %7 ], [ %27, %24 ], [ %158, %157 ], [ %78, %76 ]
  %163 = getelementptr inbounds i8, ptr %1, i64 %5
  %164 = load i64, ptr %2, align 8, !tbaa !72
  %165 = sub i64 %164, %5
  %166 = getelementptr inbounds %struct.lzma_index_hash_s, ptr %0, i64 0, i32 7
  %167 = load i32, ptr %166, align 8, !tbaa !89
  %168 = tail call i32 @lzma_crc32(ptr noundef %163, i64 noundef %165, i32 noundef %167) #5
  store i32 %168, ptr %166, align 8, !tbaa !89
  br label %169

169:                                              ; preds = %94, %15, %76, %19, %29, %150, %136, %139, %161, %113, %107, %101, %119, %4
  %170 = phi i32 [ 10, %4 ], [ %162, %161 ], [ 9, %113 ], [ 9, %107 ], [ 9, %101 ], [ 9, %119 ], [ 0, %136 ], [ 9, %139 ], [ 1, %150 ], [ 9, %76 ], [ 9, %19 ], [ 9, %29 ], [ 11, %15 ], [ 9, %94 ]
  ret i32 %170
}

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #1

declare void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @lzma_index_hash_init, ptr @lzma_alloc, i64 2}
!36 = !{ptr @lzma_index_hash_init, ptr @lzma_check_init, i64 4}
!37 = !{ptr @lzma_index_hash_end, ptr @lzma_free, i64 2}
!38 = !{ptr @lzma_index_hash_size, ptr @lzma_vli_size, i64 2}
!39 = !{ptr @lzma_index_hash_append, ptr @hash_append, i64 2}
!40 = !{ptr @lzma_index_hash_append, ptr @lzma_vli_size, i64 4}
!41 = !{ptr @hash_append, ptr @lzma_vli_size, i64 8}
!42 = !{ptr @hash_append, ptr @lzma_check_update, i64 4}
!43 = !{ptr @lzma_index_hash_decode, ptr @lzma_vli_decode, i64 6}
!44 = !{ptr @lzma_index_hash_decode, ptr @hash_append, i64 2}
!45 = !{ptr @lzma_index_hash_decode, ptr @lzma_vli_size, i64 2}
!46 = !{ptr @lzma_index_hash_decode, ptr @lzma_check_finish, i64 4}
!47 = !{ptr @lzma_index_hash_decode, ptr @lzma_check_size, i64 2}
!48 = !{ptr @lzma_index_hash_decode, ptr @bcmp, i64 2}
!49 = !{ptr @lzma_index_hash_decode, ptr @lzma_crc32, i64 2}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 2}
!52 = !{!"branch_weights", i32 2, i32 0}
!53 = !{!"branch_weights", i32 0, i32 2}
!54 = !{!55, !56, i64 0}
!55 = !{!"lzma_index_hash_s", !56, i64 0, !59, i64 8, !59, i64 144, !60, i64 280, !60, i64 288, !60, i64 296, !60, i64 304, !56, i64 312}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!"", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !61, i64 32}
!60 = !{!"long", !57, i64 0}
!61 = !{!"", !57, i64 0, !57, i64 64}
!62 = !{!55, !60, i64 24}
!63 = !{!55, !60, i64 32}
!64 = !{!55, !60, i64 8}
!65 = !{!55, !60, i64 16}
!66 = !{!"function_entry_count", i64 4}
!67 = !{!"liblzma/common/index_hash.c;hash_append"}
!68 = !{!59, !60, i64 0}
!69 = !{!59, !60, i64 8}
!70 = !{!59, !60, i64 24}
!71 = !{!59, !60, i64 16}
!72 = !{!60, !60, i64 0}
!73 = !{!"branch_weights", i32 1, i32 0}
!74 = !{!"branch_weights", i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 4, i32 0}
!75 = !{!57, !57, i64 0}
!76 = !{!55, !60, i64 280}
!77 = !{!55, !60, i64 304}
!78 = !{!"branch_weights", i32 2, i32 2}
!79 = !{!"branch_weights", i32 4, i32 0}
!80 = !{!55, !60, i64 288}
!81 = !{!55, !60, i64 296}
!82 = !{!55, !60, i64 144}
!83 = !{!55, !60, i64 152}
!84 = !{!55, !60, i64 168}
!85 = !{!"branch_weights", i32 0, i32 4, i32 0}
!86 = !{!55, !60, i64 160}
!87 = !{!"branch_weights", i32 2, i32 4}
!88 = !{!"VP", i32 1, i64 2, i64 32, i64 2}
!89 = !{!55, !56, i64 312}
!90 = !{!"branch_weights", i32 0, i32 8}
!91 = !{!"branch_weights", i32 8, i32 0}
!92 = !{!"branch_weights", i32 6, i32 2}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!"branch_weights", i32 14, i32 0}
!97 = distinct !{!97, !94, !95}
