; ModuleID = 'liblzma/lz/lz_encoder.c'
source_filename = "liblzma/lz/lz_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_lz_encoder, %struct.lzma_mf_s, %struct.lzma_next_coder_s }
%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_lz_encoder_memusage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !43 {
  %2 = alloca %struct.lzma_mf_s, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, i8 0, i64 120, i1 false)
  %3 = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %2, ptr noundef null, ptr noundef %0)
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %2, i64 0, i32 21
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %2, i64 0, i32 22
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = zext i32 %13 to i64
  %15 = add nuw nsw i64 %14, 216
  %16 = add nuw nsw i64 %15, %11
  br label %17

17:                                               ; preds = %1, %4
  %18 = phi i64 [ %16, %4 ], [ -1, %1 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #8
  ret i64 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @lz_encoder_prepare(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !52 !PGOFuncName !53 {
  %4 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !54
  %6 = add i64 %5, -1610612737
  %7 = icmp ult i64 %6, -1610608641
  br i1 %7, label %121, label %8, !prof !57

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !59
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %121, label %14, !prof !57

14:                                               ; preds = %8
  %15 = load i64, ptr %2, align 8, !tbaa !60
  %16 = add i64 %15, %5
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !61
  %19 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !62
  %21 = add i64 %20, %12
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !63
  %24 = lshr i64 %5, 1
  %25 = trunc i64 %24 to i32
  %26 = icmp ugt i32 %25, 1073741824
  %27 = zext i1 %26 to i32
  %28 = lshr i32 %25, %27
  %29 = add i64 %20, %12
  %30 = add i64 %29, %15
  %31 = lshr i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = add nuw nsw i32 %28, 524288
  %36 = add i32 %35, %17
  %37 = add i32 %36, %32
  %38 = add i32 %37, %22
  store i32 %38, ptr %33, align 8, !tbaa !51
  %39 = load ptr, ptr %0, align 8, !tbaa !64
  %40 = icmp eq ptr %39, null
  %41 = icmp eq i32 %34, %38
  %42 = select i1 %40, i1 true, i1 %41, !prof !65
  br i1 %42, label %44, label %43, !prof !65

43:                                               ; preds = %14
  tail call void @lzma_free(ptr noundef nonnull %39, ptr noundef %1) #8
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %44

44:                                               ; preds = %43, %14
  %45 = load i64, ptr %11, align 8, !tbaa !59
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 19
  store i32 %46, ptr %47, align 4, !tbaa !66
  %48 = load i64, ptr %9, align 8, !tbaa !58
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  store i32 %49, ptr %50, align 8, !tbaa !67
  %51 = load i64, ptr %4, align 8, !tbaa !54
  %52 = trunc i64 %51 to i32
  %53 = add i32 %52, 1
  %54 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  store i32 %53, ptr %54, align 4, !tbaa !68
  %55 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !69
  switch i32 %56, label %121 [
    i32 3, label %61
    i32 4, label %57
    i32 18, label %58
    i32 19, label %59
    i32 20, label %60
  ], !prof !70

57:                                               ; preds = %44
  br label %61

58:                                               ; preds = %44
  br label %61

59:                                               ; preds = %44
  br label %61

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %44, %60, %59, %58, %57
  %62 = phi ptr [ @lzma_mf_bt4_find, %60 ], [ @lzma_mf_bt3_find, %59 ], [ @lzma_mf_bt2_find, %58 ], [ @lzma_mf_hc4_find, %57 ], [ @lzma_mf_hc3_find, %44 ]
  %63 = phi ptr [ @lzma_mf_bt4_skip, %60 ], [ @lzma_mf_bt3_skip, %59 ], [ @lzma_mf_bt2_skip, %58 ], [ @lzma_mf_hc4_skip, %57 ], [ @lzma_mf_hc3_skip, %44 ]
  %64 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 10
  store ptr %62, ptr %64, align 8, !tbaa !71
  %65 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 11
  store ptr %63, ptr %65, align 8, !tbaa !72
  %66 = and i32 %56, 15
  %67 = icmp ugt i32 %66, %49
  br i1 %67, label %121, label %68, !prof !57

68:                                               ; preds = %61
  %69 = and i32 %56, 16
  %70 = icmp eq i32 %69, 0
  %71 = icmp eq i32 %66, 2
  br i1 %71, label %89, label %72, !prof !57

72:                                               ; preds = %68
  %73 = add i32 %52, -1
  %74 = lshr i32 %73, 1
  %75 = or i32 %74, %73
  %76 = lshr i32 %75, 2
  %77 = or i32 %76, %75
  %78 = lshr i32 %77, 4
  %79 = or i32 %78, %77
  %80 = lshr i32 %79, 9
  %81 = lshr i32 %79, 1
  %82 = or i32 %81, %80
  %83 = or i32 %82, 65535
  %84 = icmp ugt i32 %83, 16777216
  br i1 %84, label %85, label %89, !prof !57

85:                                               ; preds = %72
  %86 = icmp eq i32 %66, 3
  %87 = lshr i32 %83, 1
  %88 = select i1 %86, i32 16777215, i32 %87
  br label %89

89:                                               ; preds = %85, %68, %72
  %90 = phi i32 [ %83, %72 ], [ 65535, %68 ], [ %88, %85 ]
  %91 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  store i32 %90, ptr %91, align 8, !tbaa !73
  %92 = icmp ugt i32 %66, 2
  %93 = select i1 %92, i32 1025, i32 1, !prof !65
  %94 = add nuw nsw i32 %90, %93
  %95 = icmp ugt i32 %66, 3
  %96 = add nuw i32 %94, 65536
  %97 = select i1 %95, i32 %96, i32 %94, !prof !65
  %98 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %99 = load i32, ptr %98, align 4, !tbaa !44
  %100 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %101 = load i32, ptr %100, align 8, !tbaa !50
  %102 = add i32 %101, %99
  store i32 %97, ptr %98, align 4, !tbaa !44
  %103 = lshr exact i32 %69, 4
  %104 = shl i32 %53, %103
  store i32 %104, ptr %100, align 8, !tbaa !50
  %105 = add i32 %97, %104
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %110, label %107, !prof !57

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %109 = load ptr, ptr %108, align 8, !tbaa !74
  tail call void @lzma_free(ptr noundef %109, ptr noundef %1) #8
  store ptr null, ptr %108, align 8, !tbaa !74
  br label %110

110:                                              ; preds = %107, %89
  %111 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 6
  %112 = load i32, ptr %111, align 4, !tbaa !75
  %113 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  store i32 %112, ptr %113, align 4, !tbaa !76
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %115, label %121, !prof !65

115:                                              ; preds = %110
  %116 = load i32, ptr %50, align 8, !tbaa !67
  %117 = select i1 %70, i32 2, i32 1, !prof !57
  %118 = select i1 %70, i32 4, i32 16, !prof !57
  %119 = lshr i32 %116, %117
  %120 = add nuw i32 %119, %118
  store i32 %120, ptr %113, align 4, !tbaa !76
  br label %121

121:                                              ; preds = %115, %44, %110, %61, %3, %8
  %122 = phi i1 [ true, %8 ], [ true, %3 ], [ true, %44 ], [ false, %110 ], [ %67, %61 ], [ false, %115 ]
  ret i1 %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_lz_encoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !prof !52 {
  %5 = alloca %struct.lzma_lz_options, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22, !prof !65

8:                                                ; preds = %4
  %9 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #8
  store ptr %9, ptr %0, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %99, label %11, !prof !57

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @lz_encode, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @lz_encoder_end, ptr %13, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @lz_encoder_update, ptr %14, align 8, !tbaa !81
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1, i32 12
  store ptr null, ptr %16, align 8, !tbaa !85
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1, i32 21
  store i32 0, ptr %17, align 4, !tbaa !86
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1, i32 22
  store i32 0, ptr %18, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr null, ptr %19, align 8, !tbaa.struct !88
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 2, i32 1
  store i64 -1, ptr %20, align 8, !tbaa.struct !91
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %21, i8 0, i64 48, i1 false)
  br label %22

22:                                               ; preds = %11, %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %23 = load ptr, ptr %0, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = call i32 %3(ptr noundef %23, ptr noundef %1, ptr noundef %25, ptr noundef nonnull %5) #8, !prof !94
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %97, !prof !65

28:                                               ; preds = %22
  %29 = load ptr, ptr %0, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 1
  %31 = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %30, ptr noundef %1, ptr noundef nonnull %5)
  br i1 %31, label %97, label %32, !prof !57

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !77
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %43, !prof !65

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !51
  %40 = zext i32 %39 to i64
  %41 = call ptr @lzma_alloc(i64 noundef %40, ptr noundef %1) #8
  store ptr %41, ptr %34, align 8, !tbaa !64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %97, label %43, !prof !57

43:                                               ; preds = %37, %32
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 15
  %45 = load i32, ptr %44, align 4, !tbaa !68
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 4
  store i32 %45, ptr %46, align 4, !tbaa !95
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 5
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 8
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 21
  %50 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %47, i8 0, i64 20, i1 false)
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %62, !prof !65

53:                                               ; preds = %43
  %54 = load i32, ptr %49, align 4, !tbaa !44
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 22
  %56 = load i32, ptr %55, align 8, !tbaa !50
  %57 = add i32 %56, %54
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 2
  %60 = call ptr @lzma_alloc(i64 noundef %59, ptr noundef %1) #8
  store ptr %60, ptr %50, align 8, !tbaa !74
  %61 = icmp eq ptr %60, null
  br i1 %61, label %97, label %62, !prof !57

62:                                               ; preds = %53, %43
  %63 = load ptr, ptr %50, align 8, !tbaa !74
  %64 = load i32, ptr %49, align 4, !tbaa !44
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %63, i64 %65
  %67 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 13
  store ptr %66, ptr %67, align 8, !tbaa !96
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 14
  store i32 0, ptr %68, align 8, !tbaa !97
  %69 = shl nuw nsw i64 %65, 2
  call void @llvm.memset.p0.i64(ptr align 4 %63, i8 0, i64 %69, i1 false), !prof !98
  %70 = getelementptr inbounds %struct.lzma_lz_options, ptr %5, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !99
  %72 = icmp eq ptr %71, null
  br i1 %72, label %91, label %73, !prof !65

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.lzma_lz_options, ptr %5, i64 0, i32 8
  %75 = load i32, ptr %74, align 8, !tbaa !100
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !51
  %80 = call i32 @llvm.umin.i32(i32 %75, i32 %79)
  store i32 %80, ptr %48, align 4, !tbaa !101
  %81 = load ptr, ptr %34, align 8, !tbaa !64
  %82 = zext i32 %75 to i64
  %83 = getelementptr inbounds i8, ptr %71, i64 %82
  %84 = zext i32 %80 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, ptr %83, i64 %85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr nonnull align 1 %86, i64 %84, i1 false)
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 20
  store i32 1, ptr %87, align 8, !tbaa !102
  %88 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 11
  %89 = load ptr, ptr %88, align 8, !tbaa !72
  %90 = load i32, ptr %48, align 4, !tbaa !101
  call void %89(ptr noundef nonnull %34, i32 noundef %90) #8
  br label %91

91:                                               ; preds = %77, %73, %62
  %92 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 1, i32 20
  store i32 0, ptr %92, align 8, !tbaa !102
  %93 = load ptr, ptr %0, align 8, !tbaa !77
  %94 = getelementptr inbounds %struct.lzma_coder_s, ptr %93, i64 0, i32 2
  %95 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  %96 = call i32 @lzma_next_filter_init(ptr noundef nonnull %94, ptr noundef %1, ptr noundef nonnull %95) #8
  br label %97

97:                                               ; preds = %53, %37, %28, %22, %91
  %98 = phi i32 [ %96, %91 ], [ %26, %22 ], [ 8, %28 ], [ 5, %37 ], [ 5, %53 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %99

99:                                               ; preds = %8, %97
  %100 = phi i32 [ %98, %97 ], [ 5, %8 ]
  ret i32 %100
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @lz_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #4 !prof !103 !PGOFuncName !104 {
  %10 = alloca i64, align 8
  %11 = icmp ne i32 %8, 0
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 20
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 5
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 7
  %16 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 1
  br label %17

17:                                               ; preds = %121, %9
  %18 = phi i32 [ undef, %9 ], [ %122, %121 ]
  %19 = load i64, ptr %6, align 8, !tbaa !90
  %20 = icmp ult i64 %19, %7
  br i1 %20, label %21, label %123, !prof !105

21:                                               ; preds = %17
  %22 = load i64, ptr %3, align 8, !tbaa !90
  %23 = icmp ult i64 %22, %4
  %24 = or i1 %11, %23
  br i1 %24, label %25, label %123, !prof !106

25:                                               ; preds = %21
  %26 = load i32, ptr %13, align 8, !tbaa !107
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %114, !prof !108

28:                                               ; preds = %25
  %29 = load i32, ptr %14, align 8, !tbaa !109
  %30 = load i32, ptr %15, align 8, !tbaa !110
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %114, label %32, !prof !111

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 1
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 8
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 9
  %37 = load i32, ptr %33, align 8, !tbaa !112
  %38 = load i32, ptr %34, align 8, !tbaa !113
  %39 = sub i32 %37, %38
  %40 = icmp ult i32 %29, %39
  br i1 %40, label %62, label %41, !prof !114

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 2
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 8
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 4
  %45 = load i32, ptr %42, align 4, !tbaa !61
  %46 = sub i32 %29, %45
  %47 = and i32 %46, -16
  %48 = load i32, ptr %43, align 4, !tbaa !101
  %49 = sub i32 %48, %47
  %50 = zext i32 %49 to i64
  %51 = load ptr, ptr %12, align 8, !tbaa !64
  %52 = zext i32 %47 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %51, ptr align 1 %53, i64 %50, i1 false), !prof !115
  %54 = load i32, ptr %44, align 4, !tbaa !95
  %55 = add i32 %54, %47
  store i32 %55, ptr %44, align 4, !tbaa !95
  %56 = load i32, ptr %14, align 8, !tbaa !109
  %57 = sub i32 %56, %47
  store i32 %57, ptr %14, align 8, !tbaa !109
  %58 = load i32, ptr %15, align 8, !tbaa !116
  %59 = sub i32 %58, %47
  store i32 %59, ptr %15, align 8, !tbaa !116
  %60 = load i32, ptr %43, align 4, !tbaa !101
  %61 = sub i32 %60, %47
  store i32 %61, ptr %43, align 4, !tbaa !101
  br label %62

62:                                               ; preds = %41, %32
  %63 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %64 = load i32, ptr %35, align 4, !tbaa !117
  %65 = zext i32 %64 to i64
  store i64 %65, ptr %10, align 8, !tbaa !90
  %66 = load ptr, ptr %63, align 8, !tbaa !118
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %78, !prof !119

68:                                               ; preds = %62
  %69 = icmp eq i32 %8, 0
  %70 = load ptr, ptr %12, align 8, !tbaa !82
  %71 = load i32, ptr %33, align 8, !tbaa !112
  %72 = zext i32 %71 to i64
  %73 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %70, ptr noundef nonnull %10, i64 noundef %72) #8
  br i1 %69, label %85, label %74, !prof !120

74:                                               ; preds = %68
  %75 = load i64, ptr %3, align 8, !tbaa !90
  %76 = icmp eq i64 %75, %4
  %77 = zext i1 %76 to i32
  br label %85

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !121
  %81 = load ptr, ptr %12, align 8, !tbaa !82
  %82 = load i32, ptr %33, align 8, !tbaa !112
  %83 = zext i32 %82 to i64
  %84 = call i32 %66(ptr noundef %80, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %81, ptr noundef nonnull %10, i64 noundef %83, i32 noundef %8) #8
  br label %85

85:                                               ; preds = %78, %74, %68
  %86 = phi i32 [ %84, %78 ], [ 0, %68 ], [ %77, %74 ]
  %87 = load i64, ptr %10, align 8, !tbaa !90
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %35, align 4, !tbaa !117
  %89 = icmp eq i32 %86, 1
  br i1 %89, label %90, label %91, !prof !122

90:                                               ; preds = %85
  store i32 %8, ptr %13, align 8, !tbaa !107
  br label %96

91:                                               ; preds = %85
  %92 = load i32, ptr %34, align 8, !tbaa !113
  %93 = icmp ult i32 %92, %88
  br i1 %93, label %94, label %99, !prof !123

94:                                               ; preds = %91
  %95 = sub i32 %88, %92
  br label %96

96:                                               ; preds = %90, %94
  %97 = phi i32 [ %95, %94 ], [ %88, %90 ]
  %98 = phi i32 [ %86, %94 ], [ 0, %90 ]
  store i32 %97, ptr %15, align 8, !tbaa !110
  br label %99

99:                                               ; preds = %96, %91
  %100 = phi i32 [ %86, %91 ], [ %98, %96 ]
  %101 = load i32, ptr %36, align 8, !tbaa !124
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103, !prof !119

103:                                              ; preds = %99
  %104 = load i32, ptr %14, align 8, !tbaa !125
  %105 = load i32, ptr %15, align 8, !tbaa !110
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 11
  store i32 0, ptr %36, align 8, !tbaa !124
  %109 = sub i32 %104, %101
  store i32 %109, ptr %14, align 8, !tbaa !125
  %110 = load ptr, ptr %108, align 8, !tbaa !126
  call void %110(ptr noundef nonnull %12, i32 noundef %101) #8
  br label %111

111:                                              ; preds = %99, %103, %107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  %112 = icmp eq i32 %100, 0
  %113 = select i1 %112, i32 %18, i32 %100, !prof !119
  br i1 %112, label %114, label %123, !prof !119

114:                                              ; preds = %111, %28, %25
  %115 = phi i32 [ %113, %111 ], [ %18, %28 ], [ %18, %25 ]
  %116 = load ptr, ptr %16, align 8, !tbaa !127
  %117 = load ptr, ptr %0, align 8, !tbaa !128
  %118 = call i32 %116(ptr noundef %117, ptr noundef nonnull %12, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #8, !prof !129
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120, !prof !130

120:                                              ; preds = %114
  store i32 0, ptr %13, align 8, !tbaa !107
  br label %121

121:                                              ; preds = %114, %120
  %122 = phi i32 [ %118, %120 ], [ %115, %114 ]
  br i1 %119, label %17, label %123, !prof !130, !llvm.loop !131

123:                                              ; preds = %121, %111, %21, %17
  %124 = phi i32 [ 0, %17 ], [ 0, %21 ], [ %113, %111 ], [ %122, %121 ]
  ret i32 %124
}

; Function Attrs: cold nounwind uwtable
define internal void @lz_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !52 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #8
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  tail call void @lzma_free(ptr noundef %6, ptr noundef %1) #8
  %7 = load ptr, ptr %4, align 8, !tbaa !82
  tail call void @lzma_free(ptr noundef %7, ptr noundef %1) #8
  %8 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr %0, align 8, !tbaa !128
  br i1 %10, label %13, label %12, !prof !57

12:                                               ; preds = %2
  tail call void %9(ptr noundef %11, ptr noundef %1) #8, !prof !136
  br label %14

13:                                               ; preds = %2
  tail call void @lzma_free(ptr noundef %11, ptr noundef %1) #8
  br label %14

14:                                               ; preds = %13, %12
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @lz_encoder_update(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #0 !prof !43 {
  %5 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !128
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %3) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.lzma_filter, ptr %3, i64 1
  %15 = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %13, ptr noundef %1, ptr noundef nonnull %14) #8
  br label %16

16:                                               ; preds = %4, %8, %12
  %17 = phi i32 [ %15, %12 ], [ %10, %8 ], [ 11, %4 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lzma_mf_is_supported(i32 noundef %0) local_unnamed_addr #6 !prof !43 {
  %2 = add i32 %0, -3
  %3 = icmp ult i32 %2, 2
  %4 = and i32 %0, -2
  %5 = icmp eq i32 %4, 18
  %6 = or i1 %5, %3
  %7 = icmp eq i32 %0, 20
  %8 = or i1 %7, %6
  %9 = zext i1 %8 to i8
  ret i8 %9
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_mf_hc3_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_hc3_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_hc4_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_hc4_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt2_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt2_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt3_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt3_skip(ptr noundef, i32 noundef) #3

declare i32 @lzma_mf_bt4_find(ptr noundef, ptr noundef) #3

declare void @lzma_mf_bt4_skip(ptr noundef, i32 noundef) #3

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @lz_encoder_prepare, ptr @lzma_free, i64 1}
!36 = !{ptr @lzma_lz_encoder_init, ptr @lzma_alloc, i64 3}
!37 = !{ptr @lzma_lz_encoder_init, ptr @lz_encoder_prepare, i64 1}
!38 = !{ptr @lzma_lz_encoder_init, ptr @lzma_next_filter_init, i64 1}
!39 = !{ptr @lz_encode, ptr @lzma_bufcpy, i64 32027}
!40 = !{ptr @lz_encoder_end, ptr @lzma_next_end, i64 1}
!41 = !{ptr @lz_encoder_end, ptr @lzma_free, i64 3}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !49, i64 108}
!45 = !{!"lzma_mf_s", !46, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !49, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !49, i64 104, !49, i64 108, !49, i64 112}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!"int", !47, i64 0}
!50 = !{!45, !49, i64 112}
!51 = !{!45, !49, i64 8}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!"liblzma/lz/lz_encoder.c;lz_encoder_prepare"}
!54 = !{!55, !56, i64 8}
!55 = !{!"", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !56, i64 32, !49, i64 40, !49, i64 44, !46, i64 48, !49, i64 56}
!56 = !{!"long", !47, i64 0}
!57 = !{!"branch_weights", i32 0, i32 1}
!58 = !{!55, !56, i64 32}
!59 = !{!55, !56, i64 24}
!60 = !{!55, !56, i64 0}
!61 = !{!45, !49, i64 12}
!62 = !{!55, !56, i64 16}
!63 = !{!45, !49, i64 16}
!64 = !{!45, !46, i64 0}
!65 = !{!"branch_weights", i32 1, i32 0}
!66 = !{!45, !49, i64 100}
!67 = !{!45, !49, i64 96}
!68 = !{!45, !49, i64 84}
!69 = !{!55, !49, i64 40}
!70 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!71 = !{!45, !46, i64 48}
!72 = !{!45, !46, i64 56}
!73 = !{!45, !49, i64 88}
!74 = !{!45, !46, i64 64}
!75 = !{!55, !49, i64 44}
!76 = !{!45, !49, i64 92}
!77 = !{!78, !46, i64 0}
!78 = !{!"lzma_next_coder_s", !46, i64 0, !56, i64 8, !56, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56}
!79 = !{!78, !46, i64 24}
!80 = !{!78, !46, i64 32}
!81 = !{!78, !46, i64 56}
!82 = !{!83, !46, i64 32}
!83 = !{!"lzma_coder_s", !84, i64 0, !45, i64 32, !78, i64 152}
!84 = !{!"", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!85 = !{!83, !46, i64 96}
!86 = !{!83, !49, i64 140}
!87 = !{!83, !49, i64 144}
!88 = !{i64 0, i64 8, !89, i64 8, i64 8, !90, i64 16, i64 8, !90, i64 24, i64 8, !89, i64 32, i64 8, !89, i64 40, i64 8, !89, i64 48, i64 8, !89, i64 56, i64 8, !89}
!89 = !{!46, !46, i64 0}
!90 = !{!56, !56, i64 0}
!91 = !{i64 0, i64 8, !90, i64 8, i64 8, !90, i64 16, i64 8, !89, i64 24, i64 8, !89, i64 32, i64 8, !89, i64 40, i64 8, !89, i64 48, i64 8, !89}
!92 = !{!93, !46, i64 16}
!93 = !{!"lzma_filter_info_s", !56, i64 0, !46, i64 8, !46, i64 16}
!94 = !{!"VP", i32 0, i64 1, i64 7812940850973389684, i64 1}
!95 = !{!45, !49, i64 20}
!96 = !{!45, !46, i64 72}
!97 = !{!45, !49, i64 80}
!98 = !{!"VP", i32 1, i64 1, i64 513, i64 1}
!99 = !{!55, !46, i64 48}
!100 = !{!55, !49, i64 56}
!101 = !{!45, !49, i64 36}
!102 = !{!45, !49, i64 104}
!103 = !{!"function_entry_count", i64 36316}
!104 = !{!"liblzma/lz/lz_encoder.c;lz_encode"}
!105 = !{!"branch_weights", i32 68341, i32 4981}
!106 = !{!"branch_weights", i32 37007, i32 31334}
!107 = !{!83, !49, i64 136}
!108 = !{!"branch_weights", i32 37000, i32 7}
!109 = !{!45, !49, i64 24}
!110 = !{!83, !49, i64 64}
!111 = !{!"branch_weights", i32 4973, i32 32027}
!112 = !{!83, !49, i64 40}
!113 = !{!83, !49, i64 48}
!114 = !{!"branch_weights", i32 32000, i32 27}
!115 = !{!"VP", i32 1, i64 27, i64 513, i64 27}
!116 = !{!45, !49, i64 32}
!117 = !{!83, !49, i64 68}
!118 = !{!83, !46, i64 176}
!119 = !{!"branch_weights", i32 32027, i32 0}
!120 = !{!"branch_weights", i32 32026, i32 1}
!121 = !{!83, !46, i64 152}
!122 = !{!"branch_weights", i32 1, i32 32026}
!123 = !{!"branch_weights", i32 32026, i32 0}
!124 = !{!83, !49, i64 72}
!125 = !{!83, !49, i64 56}
!126 = !{!83, !46, i64 88}
!127 = !{!83, !46, i64 8}
!128 = !{!83, !46, i64 0}
!129 = !{!"VP", i32 0, i64 37007, i64 7751409696107093582, i64 37007}
!130 = !{!"branch_weights", i32 37006, i32 1}
!131 = distinct !{!131, !132, !133}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = !{!"liblzma/lz/lz_encoder.c;lz_encoder_end"}
!135 = !{!83, !46, i64 16}
!136 = !{!"VP", i32 0, i64 1, i64 4045809453663267837, i64 1}
!137 = !{!83, !46, i64 24}
