; ModuleID = 'liblzma/lz/lz_decoder.c'
source_filename = "liblzma/lz/lz_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_options = type { i64, ptr, i64 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }
%struct.lzma_coder_s = type { %struct.lzma_dict, %struct.lzma_lz_decoder, %struct.lzma_next_coder_s, i8, i8, %struct.anon }
%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i64, i64, [4096 x i8] }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_lz_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !41 {
  %5 = alloca %struct.lzma_lz_options, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20, !prof !48

8:                                                ; preds = %4
  %9 = tail call ptr @lzma_alloc(i64 noundef 4272, ptr noundef %1) #9
  store ptr %9, ptr %0, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %86, label %11, !prof !49

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @lz_decode, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @lz_decoder_end, ptr %13, align 8, !tbaa !51
  store ptr null, ptr %9, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.lzma_dict, ptr %9, i64 0, i32 4
  store i64 0, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 40, i1 false)
  %16 = load ptr, ptr %0, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa.struct !59
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2, i32 1
  store i64 -1, ptr %18, align 8, !tbaa.struct !62
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i64 48, i1 false)
  br label %20

20:                                               ; preds = %11, %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %21 = load ptr, ptr %0, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %21, i64 0, i32 1
  %23 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = call i32 %3(ptr noundef nonnull %22, ptr noundef %1, ptr noundef %24, ptr noundef nonnull %5) #9, !prof !65
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %84, !prof !48

27:                                               ; preds = %20
  %28 = load i64, ptr %5, align 8, !tbaa !66
  %29 = icmp ult i64 %28, 4096
  br i1 %29, label %30, label %31, !prof !49

30:                                               ; preds = %27
  store i64 4096, ptr %5, align 8, !tbaa !66
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i64, ptr %5, align 8, !tbaa !66
  %33 = icmp ugt i64 %32, -16
  br i1 %33, label %84, label %34, !prof !49

34:                                               ; preds = %31
  %35 = add nuw i64 %32, 15
  %36 = and i64 %35, -16
  store i64 %36, ptr %5, align 8, !tbaa !66
  %37 = load ptr, ptr %0, align 8, !tbaa !42
  %38 = getelementptr inbounds %struct.lzma_dict, ptr %37, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !58
  %40 = icmp eq i64 %39, %36
  br i1 %40, label %50, label %41, !prof !49

41:                                               ; preds = %34
  %42 = load ptr, ptr %37, align 8, !tbaa !52
  call void @lzma_free(ptr noundef %42, ptr noundef %1) #9
  %43 = load i64, ptr %5, align 8, !tbaa !66
  %44 = call ptr @lzma_alloc(i64 noundef %43, ptr noundef %1) #9
  %45 = load ptr, ptr %0, align 8, !tbaa !42
  store ptr %44, ptr %45, align 8, !tbaa !52
  %46 = icmp eq ptr %44, null
  br i1 %46, label %84, label %47, !prof !49

47:                                               ; preds = %41
  %48 = load i64, ptr %5, align 8, !tbaa !66
  %49 = getelementptr inbounds %struct.lzma_dict, ptr %45, i64 0, i32 4
  store i64 %48, ptr %49, align 8, !tbaa !58
  br label %50

50:                                               ; preds = %47, %34
  %51 = load ptr, ptr %0, align 8, !tbaa !42
  %52 = getelementptr inbounds %struct.lzma_dict, ptr %51, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  %53 = load ptr, ptr %51, align 8, !tbaa !52
  %54 = getelementptr inbounds %struct.lzma_dict, ptr %51, i64 0, i32 4
  %55 = load i64, ptr %54, align 8, !tbaa !58
  %56 = getelementptr i8, ptr %53, i64 %55
  %57 = getelementptr i8, ptr %56, i64 -1
  store i8 0, ptr %57, align 1, !tbaa !68
  %58 = getelementptr inbounds %struct.lzma_dict, ptr %51, i64 0, i32 5
  store i8 0, ptr %58, align 8, !tbaa !69
  %59 = getelementptr inbounds %struct.lzma_lz_options, ptr %5, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !70
  %61 = icmp ne ptr %60, null
  %62 = getelementptr inbounds %struct.lzma_lz_options, ptr %5, i64 0, i32 2
  %63 = load i64, ptr %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = select i1 %61, i1 %64, i1 false, !prof !49
  br i1 %65, label %66, label %76, !prof !49

66:                                               ; preds = %50
  %67 = load i64, ptr %5, align 8
  %68 = call i64 @llvm.umin.i64(i64 %63, i64 %67)
  %69 = sub i64 %63, %68
  %70 = load ptr, ptr %0, align 8, !tbaa !42
  %71 = load ptr, ptr %70, align 8, !tbaa !52
  %72 = getelementptr inbounds i8, ptr %60, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr nonnull align 1 %72, i64 %68, i1 false)
  %73 = load ptr, ptr %0, align 8, !tbaa !42
  %74 = getelementptr inbounds %struct.lzma_dict, ptr %73, i64 0, i32 1
  store i64 %68, ptr %74, align 8, !tbaa !71
  %75 = getelementptr inbounds %struct.lzma_dict, ptr %73, i64 0, i32 2
  store i64 %68, ptr %75, align 8, !tbaa !72
  br label %76

76:                                               ; preds = %66, %50
  %77 = load ptr, ptr %0, align 8, !tbaa !42
  %78 = getelementptr inbounds %struct.lzma_coder_s, ptr %77, i64 0, i32 3
  store i8 0, ptr %78, align 8, !tbaa !73
  %79 = getelementptr inbounds %struct.lzma_coder_s, ptr %77, i64 0, i32 4
  store i8 0, ptr %79, align 1, !tbaa !74
  %80 = getelementptr inbounds %struct.lzma_coder_s, ptr %77, i64 0, i32 5
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %77, i64 0, i32 2
  %82 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %80, i8 0, i64 16, i1 false)
  %83 = call i32 @lzma_next_filter_init(ptr noundef nonnull %81, ptr noundef %1, ptr noundef nonnull %82) #9
  br label %84

84:                                               ; preds = %41, %31, %20, %76
  %85 = phi i32 [ %83, %76 ], [ %25, %20 ], [ 5, %31 ], [ 5, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %86

86:                                               ; preds = %8, %84
  %87 = phi i32 [ %85, %84 ], [ 5, %8 ]
  ret i32 %87
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lz_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias nocapture noundef writeonly %5, ptr noalias nocapture noundef %6, i64 noundef %7, i32 noundef %8) #2 !prof !75 !PGOFuncName !76 {
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !78

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 1
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 2
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 2
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 1
  br label %73

23:                                               ; preds = %9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %24 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 4
  %26 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 1
  %29 = load i64, ptr %6, align 8, !tbaa !61, !alias.scope !79, !noalias !82
  %30 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 5
  br label %31

31:                                               ; preds = %70, %23
  %32 = phi i64 [ %29, %23 ], [ %52, %70 ]
  %33 = phi i32 [ undef, %23 ], [ %71, %70 ]
  %34 = load i64, ptr %24, align 8, !tbaa !71, !noalias !86
  %35 = load i64, ptr %25, align 8, !tbaa !58, !noalias !86
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38, !prof !87

37:                                               ; preds = %31
  store i64 0, ptr %24, align 8, !tbaa !71, !noalias !86
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i64, ptr %24, align 8, !tbaa !71, !noalias !86
  %40 = sub i64 %7, %32
  %41 = sub i64 %35, %39
  %42 = tail call i64 @llvm.umin.i64(i64 %40, i64 %41)
  %43 = add i64 %42, %39
  store i64 %43, ptr %26, align 8, !tbaa !88, !noalias !86
  %44 = load ptr, ptr %28, align 8, !tbaa !89, !noalias !86
  %45 = load ptr, ptr %27, align 8, !tbaa !90, !noalias !86
  %46 = tail call i32 %44(ptr noundef %45, ptr noundef %0, ptr noundef %2, ptr noundef %3, i64 noundef %4) #9, !prof !91, !noalias !92
  %47 = load i64, ptr %24, align 8, !tbaa !71, !noalias !86
  %48 = sub i64 %47, %39
  %49 = getelementptr inbounds i8, ptr %5, i64 %32
  %50 = load ptr, ptr %0, align 8, !tbaa !52, !noalias !86
  %51 = getelementptr inbounds i8, ptr %50, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %51, i64 %48, i1 false), !prof !93, !noalias !79
  %52 = add i64 %48, %32
  store i64 %52, ptr %6, align 8, !tbaa !61, !alias.scope !79, !noalias !82
  %53 = load i8, ptr %30, align 8, !tbaa !69, !range !94, !noalias !86, !noundef !95
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55, !prof !96

55:                                               ; preds = %38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false), !noalias !86
  %56 = load i64, ptr %25, align 8, !tbaa !58, !noalias !86
  %57 = getelementptr i8, ptr %50, i64 %56
  %58 = getelementptr i8, ptr %57, i64 -1
  store i8 0, ptr %58, align 1, !tbaa !68, !noalias !92
  store i8 0, ptr %30, align 8, !tbaa !69, !noalias !86
  %59 = icmp ne i32 %46, 0
  %60 = icmp eq i64 %52, %7
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %70, label %69, !prof !97

62:                                               ; preds = %38
  %63 = icmp ne i32 %46, 0
  %64 = icmp eq i64 %52, %7
  %65 = select i1 %63, i1 true, i1 %64, !prof !98
  br i1 %65, label %70, label %66, !prof !99

66:                                               ; preds = %62
  %67 = load i64, ptr %25, align 8, !tbaa !58, !noalias !86
  %68 = icmp ult i64 %47, %67
  br i1 %68, label %70, label %69, !prof !100

69:                                               ; preds = %66, %55
  br label %70

70:                                               ; preds = %69, %66, %62, %55
  %71 = phi i32 [ %33, %69 ], [ %46, %55 ], [ %46, %66 ], [ %46, %62 ]
  %72 = phi i1 [ true, %69 ], [ false, %55 ], [ false, %66 ], [ false, %62 ]
  br i1 %72, label %31, label %121, !prof !101, !llvm.loop !102

73:                                               ; preds = %14, %118
  %74 = phi i32 [ %120, %118 ], [ undef, %14 ]
  %75 = load i64, ptr %6, align 8, !tbaa !61
  %76 = icmp ult i64 %75, %7
  br i1 %76, label %77, label %121

77:                                               ; preds = %73
  %78 = load i8, ptr %15, align 8, !tbaa !73, !range !94, !noundef !95
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load i64, ptr %16, align 8, !tbaa !104
  %82 = load i64, ptr %17, align 8, !tbaa !105
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %85 = load ptr, ptr %11, align 8, !tbaa !77
  %86 = load ptr, ptr %10, align 8, !tbaa !106
  %87 = tail call i32 %85(ptr noundef %86, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %18, ptr noundef nonnull %17, i64 noundef 4096, i32 noundef %8) #9
  switch i32 %87, label %93 [
    i32 1, label %88
    i32 0, label %89
  ]

88:                                               ; preds = %84
  store i8 1, ptr %15, align 8, !tbaa !73
  br label %92

89:                                               ; preds = %84
  %90 = load i64, ptr %17, align 8, !tbaa !105
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89, %88
  br label %93

93:                                               ; preds = %89, %84, %92
  %94 = phi i1 [ true, %92 ], [ false, %84 ], [ false, %89 ]
  %95 = phi i32 [ %74, %92 ], [ %87, %84 ], [ %87, %89 ]
  br i1 %94, label %96, label %121

96:                                               ; preds = %93, %80, %77
  %97 = phi i32 [ %74, %77 ], [ %95, %93 ], [ %74, %80 ]
  %98 = load i8, ptr %19, align 1, !tbaa !74, !range !94, !noundef !95
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !105
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i8, ptr %15, align 8, !tbaa !73, !range !94, !noundef !95
  %106 = zext nneg i8 %105 to i32
  br label %121

107:                                              ; preds = %96
  %108 = load i64, ptr %22, align 8, !tbaa !105
  %109 = tail call fastcc i32 @decode_buffer(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %20, i64 noundef %108, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7)
  switch i32 %109, label %118 [
    i32 1, label %110
    i32 0, label %111
  ]

110:                                              ; preds = %107
  store i8 1, ptr %19, align 1, !tbaa !74
  br label %117

111:                                              ; preds = %107
  %112 = load i8, ptr %15, align 8, !tbaa !73, !range !94, !noundef !95
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i64, ptr %6, align 8, !tbaa !61
  %116 = icmp ult i64 %115, %7
  br i1 %116, label %118, label %117

117:                                              ; preds = %114, %111, %110
  br label %118

118:                                              ; preds = %114, %107, %117
  %119 = phi i1 [ true, %117 ], [ false, %107 ], [ false, %114 ]
  %120 = phi i32 [ %97, %117 ], [ %109, %107 ], [ 9, %114 ]
  br i1 %119, label %73, label %121, !llvm.loop !107

121:                                              ; preds = %118, %73, %93, %70, %104, %100
  %122 = phi i32 [ 9, %100 ], [ %106, %104 ], [ %71, %70 ], [ %95, %93 ], [ 0, %73 ], [ %120, %118 ]
  ret i32 %122
}

; Function Attrs: cold nounwind uwtable
define internal void @lz_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !41 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #9
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr %5, align 8, !tbaa !90
  br i1 %8, label %11, label %10, !prof !49

10:                                               ; preds = %2
  tail call void %7(ptr noundef %9, ptr noundef %1) #9, !prof !111
  br label %12

11:                                               ; preds = %2
  tail call void @lzma_free(ptr noundef %9, ptr noundef %1) #9
  br label %12

12:                                               ; preds = %11, %10
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @lzma_lz_decoder_memusage(i64 noundef %0) local_unnamed_addr #6 !prof !41 {
  %2 = add i64 %0, 4272
  ret i64 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lzma_lz_decoder_uncompressed(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !112 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = load ptr, ptr %3, align 8, !tbaa !90
  tail call void %5(ptr noundef %6, i64 noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_buffer(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noalias nocapture noundef writeonly %4, ptr noalias nocapture noundef %5, i64 noundef %6) unnamed_addr #2 !prof !112 !PGOFuncName !114 {
  %8 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 1
  %13 = load i64, ptr %5, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 5
  br label %15

15:                                               ; preds = %54, %7
  %16 = phi i64 [ %13, %7 ], [ %36, %54 ]
  %17 = phi i32 [ undef, %7 ], [ %55, %54 ]
  %18 = load i64, ptr %8, align 8, !tbaa !71
  %19 = load i64, ptr %9, align 8, !tbaa !58
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22, !prof !87

21:                                               ; preds = %15
  store i64 0, ptr %8, align 8, !tbaa !71
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i64, ptr %8, align 8, !tbaa !71
  %24 = sub i64 %6, %16
  %25 = sub i64 %19, %23
  %26 = tail call i64 @llvm.umin.i64(i64 %24, i64 %25)
  %27 = add i64 %26, %23
  store i64 %27, ptr %10, align 8, !tbaa !88
  %28 = load ptr, ptr %12, align 8, !tbaa !89
  %29 = load ptr, ptr %11, align 8, !tbaa !90
  %30 = tail call i32 %28(ptr noundef %29, ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #9, !prof !115
  %31 = load i64, ptr %8, align 8, !tbaa !71
  %32 = sub i64 %31, %23
  %33 = getelementptr inbounds i8, ptr %4, i64 %16
  %34 = load ptr, ptr %0, align 8, !tbaa !52
  %35 = getelementptr inbounds i8, ptr %34, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %35, i64 %32, i1 false), !prof !116
  %36 = add i64 %32, %16
  store i64 %36, ptr %5, align 8, !tbaa !61
  %37 = load i8, ptr %14, align 8, !tbaa !69, !range !94, !noundef !95
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39, !prof !96

39:                                               ; preds = %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %40 = load i64, ptr %9, align 8, !tbaa !58
  %41 = getelementptr i8, ptr %34, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -1
  store i8 0, ptr %42, align 1, !tbaa !68
  store i8 0, ptr %14, align 8, !tbaa !69
  %43 = icmp ne i32 %30, 0
  %44 = icmp eq i64 %36, %6
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %54, label %53, !prof !97

46:                                               ; preds = %22
  %47 = icmp ne i32 %30, 0
  %48 = icmp eq i64 %36, %6
  %49 = select i1 %47, i1 true, i1 %48, !prof !98
  br i1 %49, label %54, label %50, !prof !99

50:                                               ; preds = %46
  %51 = load i64, ptr %9, align 8, !tbaa !58
  %52 = icmp ult i64 %31, %51
  br i1 %52, label %54, label %53, !prof !100

53:                                               ; preds = %50, %39
  br label %54

54:                                               ; preds = %46, %50, %39, %53
  %55 = phi i32 [ %17, %53 ], [ %30, %39 ], [ %30, %50 ], [ %30, %46 ]
  %56 = phi i1 [ true, %53 ], [ false, %39 ], [ false, %50 ], [ false, %46 ]
  br i1 %56, label %15, label %57, !prof !101, !llvm.loop !102

57:                                               ; preds = %54
  ret i32 %55
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @lzma_lz_decoder_init, ptr @lzma_alloc, i64 4}
!36 = !{ptr @lzma_lz_decoder_init, ptr @lzma_free, i64 2}
!37 = !{ptr @lzma_lz_decoder_init, ptr @lzma_next_filter_init, i64 2}
!38 = !{ptr @lz_decoder_end, ptr @lzma_next_end, i64 2}
!39 = !{ptr @lz_decoder_end, ptr @lzma_free, i64 4}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 2}
!42 = !{!43, !44, i64 0}
!43 = !{!"lzma_next_coder_s", !44, i64 0, !47, i64 8, !47, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"long", !45, i64 0}
!48 = !{!"branch_weights", i32 2, i32 0}
!49 = !{!"branch_weights", i32 0, i32 2}
!50 = !{!43, !44, i64 24}
!51 = !{!43, !44, i64 32}
!52 = !{!53, !44, i64 0}
!53 = !{!"lzma_coder_s", !54, i64 0, !56, i64 48, !43, i64 88, !55, i64 152, !55, i64 153, !57, i64 160}
!54 = !{!"", !44, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !55, i64 40}
!55 = !{!"_Bool", !45, i64 0}
!56 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!57 = !{!"", !47, i64 0, !47, i64 8, !45, i64 16}
!58 = !{!53, !47, i64 32}
!59 = !{i64 0, i64 8, !60, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !60, i64 32, i64 8, !60, i64 40, i64 8, !60, i64 48, i64 8, !60, i64 56, i64 8, !60}
!60 = !{!44, !44, i64 0}
!61 = !{!47, !47, i64 0}
!62 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !60, i64 24, i64 8, !60, i64 32, i64 8, !60, i64 40, i64 8, !60, i64 48, i64 8, !60}
!63 = !{!64, !44, i64 16}
!64 = !{!"lzma_filter_info_s", !47, i64 0, !44, i64 8, !44, i64 16}
!65 = !{!"VP", i32 0, i64 2, i64 4006884583416668475, i64 2}
!66 = !{!67, !47, i64 0}
!67 = !{!"", !47, i64 0, !44, i64 8, !47, i64 16}
!68 = !{!45, !45, i64 0}
!69 = !{!53, !55, i64 40}
!70 = !{!67, !44, i64 8}
!71 = !{!53, !47, i64 8}
!72 = !{!53, !47, i64 16}
!73 = !{!53, !55, i64 152}
!74 = !{!53, !55, i64 153}
!75 = !{!"function_entry_count", i64 44547}
!76 = !{!"liblzma/lz/lz_decoder.c;lz_decode"}
!77 = !{!53, !44, i64 112}
!78 = !{!"branch_weights", i32 44547, i32 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"decode_buffer: argument 3"}
!81 = distinct !{!81, !"decode_buffer"}
!82 = !{!83, !84, !85}
!83 = distinct !{!83, !81, !"decode_buffer: argument 0"}
!84 = distinct !{!84, !81, !"decode_buffer: argument 1"}
!85 = distinct !{!85, !81, !"decode_buffer: argument 2"}
!86 = !{!83, !84, !85, !80}
!87 = !{!"branch_weights", i32 15, i32 44534}
!88 = !{!53, !47, i64 24}
!89 = !{!53, !44, i64 56}
!90 = !{!53, !44, i64 48}
!91 = !{!"VP", i32 0, i64 44549, i64 5132989399191081786, i64 44549}
!92 = !{!85, !80}
!93 = !{!"VP", i32 1, i64 44549, i64 513, i64 43711, i64 257, i64 378, i64 129, i64 183, i64 65, i64 138}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!"branch_weights", i32 44547, i32 2}
!97 = !{!"branch_weights", i32 0, i32 4}
!98 = !{!"branch_weights", i32 2, i32 44545}
!99 = !{!"branch_weights", i32 38565, i32 5982}
!100 = !{!"branch_weights", i32 5982, i32 0}
!101 = !{!"branch_weights", i32 2, i32 44547}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!53, !47, i64 160}
!105 = !{!53, !47, i64 168}
!106 = !{!53, !44, i64 88}
!107 = distinct !{!107, !108, !103}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"liblzma/lz/lz_decoder.c;lz_decoder_end"}
!110 = !{!53, !44, i64 80}
!111 = !{!"VP", i32 0, i64 2, i64 -5112349562169202086, i64 2}
!112 = !{!"function_entry_count", i64 0}
!113 = !{!53, !44, i64 72}
!114 = !{!"liblzma/lz/lz_decoder.c;decode_buffer"}
!115 = !{!"VP", i32 0, i64 0, i64 5132989399191081786, i64 0}
!116 = !{!"VP", i32 1, i64 0, i64 513, i64 0, i64 257, i64 0, i64 129, i64 0, i64 65, i64 0}
