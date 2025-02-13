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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lz_encoder_memusage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.lzma_mf_s, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, i8 0, i64 120, i1 false)
  %3 = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %2, ptr noundef null, ptr noundef %0) #9
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %2, i64 0, i32 21
  %6 = load i32, ptr %5, align 4, !tbaa !35
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %2, i64 0, i32 22
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !42
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @lz_encoder_prepare(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !43 {
  %4 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !44
  %6 = add i64 %5, -1610612737
  %7 = icmp ult i64 %6, -1610608641
  br i1 %7, label %120, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !48
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %120, label %14

14:                                               ; preds = %8
  %15 = load i64, ptr %2, align 8, !tbaa !49
  %16 = add i64 %15, %5
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !51
  %21 = add i64 %20, %12
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !52
  %24 = lshr i64 %5, 1
  %25 = trunc i64 %24 to i32
  %26 = add i64 %21, %15
  %27 = lshr i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !42
  %31 = add nuw nsw i32 %25, 524288
  %32 = add i32 %31, %17
  %33 = add i32 %32, %28
  %34 = add i32 %33, %22
  store i32 %34, ptr %29, align 8, !tbaa !42
  %35 = load ptr, ptr %0, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  %37 = icmp eq i32 %30, %34
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %14
  tail call void @lzma_free(ptr noundef nonnull %35, ptr noundef %1) #10
  store ptr null, ptr %0, align 8, !tbaa !53
  %40 = load i64, ptr %11, align 8, !tbaa !48
  %41 = load i64, ptr %9, align 8, !tbaa !47
  %42 = load i64, ptr %4, align 8, !tbaa !44
  br label %43

43:                                               ; preds = %39, %14
  %44 = phi i64 [ %42, %39 ], [ %5, %14 ]
  %45 = phi i64 [ %41, %39 ], [ %10, %14 ]
  %46 = phi i64 [ %40, %39 ], [ %12, %14 ]
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 19
  store i32 %47, ptr %48, align 4, !tbaa !54
  %49 = trunc i64 %45 to i32
  %50 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  store i32 %49, ptr %50, align 8, !tbaa !55
  %51 = trunc i64 %44 to i32
  %52 = add i32 %51, 1
  %53 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  store i32 %52, ptr %53, align 4, !tbaa !56
  %54 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !57
  switch i32 %55, label %120 [
    i32 3, label %60
    i32 4, label %56
    i32 18, label %57
    i32 19, label %58
    i32 20, label %59
  ]

56:                                               ; preds = %43
  br label %60

57:                                               ; preds = %43
  br label %60

58:                                               ; preds = %43
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %43, %59, %58, %57, %56
  %61 = phi ptr [ @lzma_mf_bt4_find, %59 ], [ @lzma_mf_bt3_find, %58 ], [ @lzma_mf_bt2_find, %57 ], [ @lzma_mf_hc4_find, %56 ], [ @lzma_mf_hc3_find, %43 ]
  %62 = phi ptr [ @lzma_mf_bt4_skip, %59 ], [ @lzma_mf_bt3_skip, %58 ], [ @lzma_mf_bt2_skip, %57 ], [ @lzma_mf_hc4_skip, %56 ], [ @lzma_mf_hc3_skip, %43 ]
  %63 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 10
  store ptr %61, ptr %63, align 8, !tbaa !58
  %64 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 11
  store ptr %62, ptr %64, align 8, !tbaa !59
  %65 = and i32 %55, 15
  %66 = icmp ugt i32 %65, %49
  br i1 %66, label %120, label %67

67:                                               ; preds = %60
  %68 = and i32 %55, 16
  %69 = icmp eq i32 %68, 0
  %70 = icmp eq i32 %65, 2
  br i1 %70, label %88, label %71

71:                                               ; preds = %67
  %72 = add i32 %51, -1
  %73 = lshr i32 %72, 1
  %74 = or i32 %73, %72
  %75 = lshr i32 %74, 2
  %76 = or i32 %75, %74
  %77 = lshr i32 %76, 4
  %78 = or i32 %77, %76
  %79 = lshr i32 %78, 9
  %80 = lshr i32 %78, 1
  %81 = or i32 %80, %79
  %82 = or i32 %81, 65535
  %83 = icmp ugt i32 %82, 16777216
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = icmp eq i32 %65, 3
  %86 = lshr i32 %82, 1
  %87 = select i1 %85, i32 16777215, i32 %86
  br label %88

88:                                               ; preds = %84, %67, %71
  %89 = phi i32 [ %82, %71 ], [ 65535, %67 ], [ %87, %84 ]
  %90 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  store i32 %89, ptr %90, align 8, !tbaa !60
  %91 = icmp ugt i32 %65, 2
  %92 = select i1 %91, i32 1025, i32 1
  %93 = add nuw nsw i32 %89, %92
  %94 = icmp ugt i32 %65, 3
  %95 = add nuw nsw i32 %93, 65536
  %96 = select i1 %94, i32 %95, i32 %93
  %97 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %98 = load i32, ptr %97, align 4, !tbaa !35
  %99 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %100 = load i32, ptr %99, align 8, !tbaa !41
  %101 = add i32 %100, %98
  store i32 %96, ptr %97, align 4, !tbaa !35
  %102 = lshr exact i32 %68, 4
  %103 = shl i32 %52, %102
  store i32 %103, ptr %99, align 8, !tbaa !41
  %104 = add i32 %96, %103
  %105 = icmp eq i32 %101, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %88
  %107 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %108 = load ptr, ptr %107, align 8, !tbaa !61
  tail call void @lzma_free(ptr noundef %108, ptr noundef %1) #10
  store ptr null, ptr %107, align 8, !tbaa !61
  br label %109

109:                                              ; preds = %106, %88
  %110 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 6
  %111 = load i32, ptr %110, align 4, !tbaa !62
  %112 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  store i32 %111, ptr %112, align 4, !tbaa !63
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, ptr %50, align 8, !tbaa !55
  %116 = select i1 %69, i32 2, i32 1
  %117 = select i1 %69, i32 4, i32 16
  %118 = lshr i32 %115, %116
  %119 = add nuw i32 %118, %117
  store i32 %119, ptr %112, align 4, !tbaa !63
  br label %120

120:                                              ; preds = %114, %43, %109, %60, %3, %8
  %121 = phi i1 [ true, %8 ], [ true, %3 ], [ true, %43 ], [ false, %109 ], [ true, %60 ], [ false, %114 ]
  ret i1 %121
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_mf_hc3_find(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @lzma_mf_hc3_skip(ptr noundef, i32 noundef) #3

; Function Attrs: optsize
declare i32 @lzma_mf_hc4_find(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @lzma_mf_hc4_skip(ptr noundef, i32 noundef) #3

; Function Attrs: optsize
declare i32 @lzma_mf_bt2_find(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @lzma_mf_bt2_skip(ptr noundef, i32 noundef) #3

; Function Attrs: optsize
declare i32 @lzma_mf_bt3_find(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @lzma_mf_bt3_skip(ptr noundef, i32 noundef) #3

; Function Attrs: optsize
declare i32 @lzma_mf_bt4_find(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @lzma_mf_bt4_skip(ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_lz_encoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.lzma_lz_options, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = tail call ptr @lzma_alloc(i64 noundef 216, ptr noundef %1) #10
  store ptr %9, ptr %0, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @lz_encode, ptr %12, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @lz_encoder_end, ptr %13, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @lz_encoder_update, ptr %14, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1, i32 12
  store ptr null, ptr %16, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1, i32 21
  store i32 0, ptr %17, align 4, !tbaa !73
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1, i32 22
  store i32 0, ptr %18, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr null, ptr %19, align 8, !tbaa.struct !75
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 2, i32 1
  store i64 -1, ptr %20, align 8, !tbaa.struct !78
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %21, i8 0, i64 48, i1 false)
  %22 = load ptr, ptr %0, align 8, !tbaa !64
  br label %23

23:                                               ; preds = %11, %4
  %24 = phi ptr [ %22, %11 ], [ %6, %4 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %25 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = call i32 %3(ptr noundef %24, ptr noundef %1, ptr noundef %26, ptr noundef nonnull %5) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load ptr, ptr %0, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 1
  %32 = call fastcc zeroext i1 @lz_encoder_prepare(ptr noundef nonnull %31, ptr noundef %1, ptr noundef nonnull %5) #9
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %34, i64 0, i32 1
  %36 = call fastcc zeroext i1 @lz_encoder_init(ptr noundef nonnull %35, ptr noundef %1, ptr noundef nonnull %5) #9
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %38, i64 0, i32 2
  %40 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  %41 = call i32 @lzma_next_filter_init(ptr noundef nonnull %39, ptr noundef %1, ptr noundef nonnull %40) #10
  br label %42

42:                                               ; preds = %33, %29, %23, %37
  %43 = phi i32 [ %41, %37 ], [ %27, %23 ], [ 8, %29 ], [ 5, %33 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %44

44:                                               ; preds = %8, %42
  %45 = phi i32 [ %43, %42 ], [ 5, %8 ]
  ret i32 %45
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lz_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !PGOFuncName !81 {
  %10 = icmp ne i32 %8, 0
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 20
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 5
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 7
  %15 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %33, %9
  %17 = load i64, ptr %6, align 8, !tbaa !77
  %18 = icmp ult i64 %17, %7
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i64, ptr %3, align 8, !tbaa !77
  %21 = icmp ult i64 %20, %4
  %22 = or i1 %10, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i32, ptr %12, align 8, !tbaa !82
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, ptr %13, align 8, !tbaa !83
  %28 = load i32, ptr %14, align 8, !tbaa !84
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @fill_window(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, i32 noundef %8) #9, !range !85
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %26, %23
  %34 = load ptr, ptr %15, align 8, !tbaa !86
  %35 = load ptr, ptr %0, align 8, !tbaa !87
  %36 = tail call i32 %34(ptr noundef %35, ptr noundef nonnull %11, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %16, label %38, !llvm.loop !88

38:                                               ; preds = %33
  store i32 0, ptr %12, align 8, !tbaa !82
  br label %39

39:                                               ; preds = %19, %16, %30, %38
  %40 = phi i32 [ %36, %38 ], [ 0, %19 ], [ 0, %16 ], [ %31, %30 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lz_encoder_end(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #10
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  tail call void @lzma_free(ptr noundef %6, ptr noundef %1) #10
  %7 = load ptr, ptr %4, align 8, !tbaa !69
  tail call void @lzma_free(ptr noundef %7, ptr noundef %1) #10
  %8 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr %0, align 8, !tbaa !87
  br i1 %10, label %13, label %12

12:                                               ; preds = %2
  tail call void %9(ptr noundef %11, ptr noundef %1) #10
  br label %14

13:                                               ; preds = %2
  tail call void @lzma_free(ptr noundef %11, ptr noundef %1) #10
  br label %14

14:                                               ; preds = %13, %12
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lz_encoder_update(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #0 !PGOFuncName !92 {
  %5 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !87
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %3) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.lzma_filter, ptr %3, i64 1
  %15 = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %13, ptr noundef %1, ptr noundef nonnull %14) #10
  br label %16

16:                                               ; preds = %4, %8, %12
  %17 = phi i32 [ %15, %12 ], [ %10, %8 ], [ 11, %4 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @lz_encoder_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !94 {
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @lzma_alloc(i64 noundef %9, ptr noundef %1) #10
  store ptr %10, ptr %0, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %62, label %12

12:                                               ; preds = %6, %3
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !95
  %16 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %16, i8 0, i64 20, i1 false)
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load i32, ptr %18, align 4, !tbaa !35
  %24 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %25 = load i32, ptr %24, align 8, !tbaa !41
  %26 = add i32 %25, %23
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call ptr @lzma_alloc(i64 noundef %28, ptr noundef %1) #10
  store ptr %29, ptr %19, align 8, !tbaa !61
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %22, %12
  %32 = phi ptr [ %29, %22 ], [ %20, %12 ]
  %33 = load i32, ptr %18, align 4, !tbaa !35
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  store ptr %35, ptr %36, align 8, !tbaa !96
  %37 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  store i32 0, ptr %37, align 8, !tbaa !97
  %38 = shl nuw nsw i64 %34, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %32, i8 0, i64 %38, i1 false)
  %39 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !98
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.lzma_lz_options, ptr %2, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !99
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !42
  %49 = tail call i32 @llvm.umin.i32(i32 %44, i32 %48)
  store i32 %49, ptr %17, align 4, !tbaa !100
  %50 = load ptr, ptr %0, align 8, !tbaa !53
  %51 = zext i32 %44 to i64
  %52 = getelementptr inbounds i8, ptr %40, i64 %51
  %53 = zext i32 %49 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr nonnull align 1 %55, i64 %53, i1 false)
  %56 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  store i32 1, ptr %56, align 8, !tbaa !101
  %57 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 11
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = load i32, ptr %17, align 4, !tbaa !100
  tail call void %58(ptr noundef nonnull %0, i32 noundef %59) #10
  br label %60

60:                                               ; preds = %46, %42, %31
  %61 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  store i32 0, ptr %61, align 8, !tbaa !101
  br label %62

62:                                               ; preds = %60, %22, %6
  %63 = phi i1 [ true, %6 ], [ false, %60 ], [ true, %22 ]
  ret i1 %63
}

; Function Attrs: optsize
declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @fill_window(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !102 {
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !104
  %15 = sub i32 %12, %14
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  tail call fastcc void @move_window(ptr noundef nonnull %8) #9
  br label %18

18:                                               ; preds = %17, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !105
  %21 = zext i32 %20 to i64
  store i64 %21, ptr %7, align 8, !tbaa !77
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load ptr, ptr %8, align 8, !tbaa !69
  %27 = load i32, ptr %11, align 8, !tbaa !103
  %28 = zext i32 %27 to i64
  %29 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %26, ptr noundef nonnull %7, i64 noundef %28) #10
  %30 = icmp eq i32 %5, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, ptr %7, align 8, !tbaa !77
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr %19, align 4, !tbaa !105
  br label %52

34:                                               ; preds = %25
  %35 = load i64, ptr %3, align 8, !tbaa !77
  %36 = icmp eq i64 %35, %4
  %37 = zext i1 %36 to i32
  br label %45

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !107
  %41 = load ptr, ptr %8, align 8, !tbaa !69
  %42 = load i32, ptr %11, align 8, !tbaa !103
  %43 = zext i32 %42 to i64
  %44 = call i32 %23(ptr noundef %40, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %41, ptr noundef nonnull %7, i64 noundef %43, i32 noundef %5) #10
  br label %45

45:                                               ; preds = %34, %38
  %46 = phi i32 [ %44, %38 ], [ %37, %34 ]
  %47 = load i64, ptr %7, align 8, !tbaa !77
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %19, align 4, !tbaa !105
  %49 = icmp eq i32 %46, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 20
  store i32 %5, ptr %51, align 8, !tbaa !82
  br label %59

52:                                               ; preds = %31, %45
  %53 = phi i32 [ %33, %31 ], [ %48, %45 ]
  %54 = phi i32 [ 0, %31 ], [ %46, %45 ]
  %55 = load i32, ptr %13, align 8, !tbaa !104
  %56 = icmp ult i32 %55, %53
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = sub i32 %53, %55
  br label %59

59:                                               ; preds = %50, %57
  %60 = phi i32 [ %58, %57 ], [ %48, %50 ]
  %61 = phi i32 [ %54, %57 ], [ 0, %50 ]
  %62 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 7
  store i32 %60, ptr %62, align 8, !tbaa !84
  br label %63

63:                                               ; preds = %59, %52
  %64 = phi i32 [ %54, %52 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !108
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %9, align 8, !tbaa !83
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !84
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  store i32 0, ptr %65, align 8, !tbaa !108
  %74 = sub i32 %69, %66
  store i32 %74, ptr %9, align 8, !tbaa !83
  %75 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 11
  %76 = load ptr, ptr %75, align 8, !tbaa !109
  call void %76(ptr noundef nonnull %8, i32 noundef %66) #10
  br label %77

77:                                               ; preds = %73, %68, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @move_window(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !110 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !50
  %6 = sub i32 %3, %5
  %7 = and i32 %6, -16
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = sub i32 %9, %7
  %11 = zext i32 %10 to i64
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %12, ptr align 1 %14, i64 %11, i1 false)
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !95
  %17 = add i32 %16, %7
  store i32 %17, ptr %15, align 4, !tbaa !95
  %18 = load i32, ptr %2, align 8, !tbaa !111
  %19 = sub i32 %18, %7
  store i32 %19, ptr %2, align 8, !tbaa !111
  %20 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 7
  %21 = load <2 x i32>, ptr %20, align 8, !tbaa !112
  %22 = insertelement <2 x i32> poison, i32 %7, i64 0
  %23 = shufflevector <2 x i32> %22, <2 x i32> poison, <2 x i32> zeroinitializer
  %24 = sub <2 x i32> %21, %23
  store <2 x i32> %24, ptr %20, align 8, !tbaa !112
  ret void
}

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @lzma_mf_is_supported(i32 noundef %0) local_unnamed_addr #6 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

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
!35 = !{!36, !40, i64 108}
!36 = !{!"lzma_mf_s", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!36, !40, i64 112}
!42 = !{!36, !40, i64 8}
!43 = !{!"lz_encoder.c:lz_encoder_prepare"}
!44 = !{!45, !46, i64 8}
!45 = !{!"", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !40, i64 40, !40, i64 44, !37, i64 48, !40, i64 56}
!46 = !{!"long", !38, i64 0}
!47 = !{!45, !46, i64 32}
!48 = !{!45, !46, i64 24}
!49 = !{!45, !46, i64 0}
!50 = !{!36, !40, i64 12}
!51 = !{!45, !46, i64 16}
!52 = !{!36, !40, i64 16}
!53 = !{!36, !37, i64 0}
!54 = !{!36, !40, i64 100}
!55 = !{!36, !40, i64 96}
!56 = !{!36, !40, i64 84}
!57 = !{!45, !40, i64 40}
!58 = !{!36, !37, i64 48}
!59 = !{!36, !37, i64 56}
!60 = !{!36, !40, i64 88}
!61 = !{!36, !37, i64 64}
!62 = !{!45, !40, i64 44}
!63 = !{!36, !40, i64 92}
!64 = !{!65, !37, i64 0}
!65 = !{!"lzma_next_coder_s", !37, i64 0, !46, i64 8, !46, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!66 = !{!65, !37, i64 24}
!67 = !{!65, !37, i64 32}
!68 = !{!65, !37, i64 56}
!69 = !{!70, !37, i64 32}
!70 = !{!"lzma_coder_s", !71, i64 0, !36, i64 32, !65, i64 152}
!71 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!72 = !{!70, !37, i64 96}
!73 = !{!70, !40, i64 140}
!74 = !{!70, !40, i64 144}
!75 = !{i64 0, i64 8, !76, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !76, i64 32, i64 8, !76, i64 40, i64 8, !76, i64 48, i64 8, !76, i64 56, i64 8, !76}
!76 = !{!37, !37, i64 0}
!77 = !{!46, !46, i64 0}
!78 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !76, i64 24, i64 8, !76, i64 32, i64 8, !76, i64 40, i64 8, !76, i64 48, i64 8, !76}
!79 = !{!80, !37, i64 16}
!80 = !{!"lzma_filter_info_s", !46, i64 0, !37, i64 8, !37, i64 16}
!81 = !{!"lz_encoder.c:lz_encode"}
!82 = !{!70, !40, i64 136}
!83 = !{!70, !40, i64 56}
!84 = !{!70, !40, i64 64}
!85 = !{i32 2, i32 1}
!86 = !{!70, !37, i64 8}
!87 = !{!70, !37, i64 0}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"lz_encoder.c:lz_encoder_end"}
!91 = !{!70, !37, i64 16}
!92 = !{!"lz_encoder.c:lz_encoder_update"}
!93 = !{!70, !37, i64 24}
!94 = !{!"lz_encoder.c:lz_encoder_init"}
!95 = !{!36, !40, i64 20}
!96 = !{!36, !37, i64 72}
!97 = !{!36, !40, i64 80}
!98 = !{!45, !37, i64 48}
!99 = !{!45, !40, i64 56}
!100 = !{!36, !40, i64 36}
!101 = !{!36, !40, i64 104}
!102 = !{!"lz_encoder.c:fill_window"}
!103 = !{!70, !40, i64 40}
!104 = !{!70, !40, i64 48}
!105 = !{!70, !40, i64 68}
!106 = !{!70, !37, i64 176}
!107 = !{!70, !37, i64 152}
!108 = !{!70, !40, i64 72}
!109 = !{!70, !37, i64 88}
!110 = !{!"lz_encoder.c:move_window"}
!111 = !{!36, !40, i64 24}
!112 = !{!40, !40, i64 0}
