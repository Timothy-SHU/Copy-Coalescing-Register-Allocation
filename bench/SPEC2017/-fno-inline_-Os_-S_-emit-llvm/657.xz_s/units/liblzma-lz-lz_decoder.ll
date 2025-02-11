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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_lz_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.lzma_lz_options, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = tail call ptr @lzma_alloc(i64 noundef 4272, ptr noundef %1) #8
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %79, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @lz_decode, ptr %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @lz_decoder_end, ptr %13, align 8, !tbaa !13
  store ptr null, ptr %9, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.lzma_dict, ptr %9, i64 0, i32 4
  store i64 0, ptr %14, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %9, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 40, i1 false)
  %16 = load ptr, ptr %0, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa.struct !21
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2, i32 1
  store i64 -1, ptr %18, align 8, !tbaa.struct !24
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i64 48, i1 false)
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %11, %4
  %22 = phi ptr [ %20, %11 ], [ %6, %4 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = call i32 %3(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %25, ptr noundef nonnull %5) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %21
  %29 = load i64, ptr %5, align 8, !tbaa !27
  %30 = icmp ult i64 %29, 4096
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = icmp ugt i64 %29, -16
  br i1 %32, label %77, label %33

33:                                               ; preds = %28, %31
  %34 = phi i64 [ %29, %31 ], [ 4096, %28 ]
  %35 = add nuw i64 %34, 15
  %36 = and i64 %35, -16
  store i64 %36, ptr %5, align 8, !tbaa !27
  %37 = load ptr, ptr %0, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.lzma_dict, ptr %37, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !20
  %40 = icmp eq i64 %39, %36
  br i1 %40, label %50, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %37, align 8, !tbaa !14
  call void @lzma_free(ptr noundef %42, ptr noundef %1) #8
  %43 = load i64, ptr %5, align 8, !tbaa !27
  %44 = call ptr @lzma_alloc(i64 noundef %43, ptr noundef %1) #8
  %45 = load ptr, ptr %0, align 8, !tbaa !6
  store ptr %44, ptr %45, align 8, !tbaa !14
  %46 = icmp eq ptr %44, null
  br i1 %46, label %77, label %47

47:                                               ; preds = %41
  %48 = load i64, ptr %5, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.lzma_dict, ptr %45, i64 0, i32 4
  store i64 %48, ptr %49, align 8, !tbaa !20
  br label %50

50:                                               ; preds = %47, %33
  %51 = phi ptr [ %45, %47 ], [ %37, %33 ]
  call fastcc void @lz_decoder_reset(ptr noundef nonnull %51) #10
  %52 = getelementptr inbounds %struct.lzma_lz_options, ptr %5, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !29
  %54 = icmp ne ptr %53, null
  %55 = getelementptr inbounds %struct.lzma_lz_options, ptr %5, i64 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = select i1 %54, i1 %57, i1 false
  %59 = load ptr, ptr %0, align 8, !tbaa !6
  br i1 %58, label %60, label %69

60:                                               ; preds = %50
  %61 = load i64, ptr %5, align 8
  %62 = call i64 @llvm.umin.i64(i64 %56, i64 %61)
  %63 = sub i64 %56, %62
  %64 = load ptr, ptr %59, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, ptr %53, i64 %63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr nonnull align 1 %65, i64 %62, i1 false)
  %66 = load ptr, ptr %0, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.lzma_dict, ptr %66, i64 0, i32 1
  store i64 %62, ptr %67, align 8, !tbaa !30
  %68 = getelementptr inbounds %struct.lzma_dict, ptr %66, i64 0, i32 2
  store i64 %62, ptr %68, align 8, !tbaa !31
  br label %69

69:                                               ; preds = %60, %50
  %70 = phi ptr [ %66, %60 ], [ %59, %50 ]
  %71 = getelementptr inbounds %struct.lzma_coder_s, ptr %70, i64 0, i32 3
  store i8 0, ptr %71, align 8, !tbaa !32
  %72 = getelementptr inbounds %struct.lzma_coder_s, ptr %70, i64 0, i32 4
  store i8 0, ptr %72, align 1, !tbaa !33
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %70, i64 0, i32 5
  %74 = getelementptr inbounds %struct.lzma_coder_s, ptr %70, i64 0, i32 2
  %75 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %73, i8 0, i64 16, i1 false)
  %76 = call i32 @lzma_next_filter_init(ptr noundef nonnull %74, ptr noundef %1, ptr noundef nonnull %75) #8
  br label %77

77:                                               ; preds = %41, %31, %21, %69
  %78 = phi i32 [ %76, %69 ], [ %26, %21 ], [ 5, %31 ], [ 5, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %79

79:                                               ; preds = %8, %77
  %80 = phi i32 [ %78, %77 ], [ 5, %8 ]
  ret i32 %80
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lz_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias nocapture noundef writeonly %5, ptr noalias nocapture noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %6, align 8, !tbaa !23
  %16 = icmp ult i64 %15, %7
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 1
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 2
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  br label %25

23:                                               ; preds = %9
  %24 = tail call fastcc i32 @decode_buffer(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #10
  br label %62

25:                                               ; preds = %17, %59
  %26 = load i8, ptr %18, align 8, !tbaa !32, !range !35, !noundef !36
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i64, ptr %19, align 8, !tbaa !37
  %30 = load i64, ptr %20, align 8, !tbaa !38
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %33 = load ptr, ptr %11, align 8, !tbaa !34
  %34 = load ptr, ptr %10, align 8, !tbaa !39
  %35 = tail call i32 %33(ptr noundef %34, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %21, ptr noundef nonnull %20, i64 noundef 4096, i32 noundef %8) #8
  switch i32 %35, label %62 [
    i32 1, label %36
    i32 0, label %37
  ]

36:                                               ; preds = %32
  store i8 1, ptr %18, align 8, !tbaa !32
  br label %40

37:                                               ; preds = %32
  %38 = load i64, ptr %20, align 8, !tbaa !38
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %37, %36, %28, %25
  %41 = load i8, ptr %22, align 1, !tbaa !33, !range !35, !noundef !36
  %42 = icmp eq i8 %41, 0
  %43 = load i64, ptr %20, align 8, !tbaa !38
  br i1 %42, label %49, label %44

44:                                               ; preds = %40
  %45 = icmp eq i64 %43, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %44
  %47 = load i8, ptr %18, align 8, !tbaa !32, !range !35, !noundef !36
  %48 = zext nneg i8 %47 to i32
  br label %62

49:                                               ; preds = %40
  %50 = tail call fastcc i32 @decode_buffer(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef nonnull %19, i64 noundef %43, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #10
  switch i32 %50, label %62 [
    i32 1, label %51
    i32 0, label %53
  ]

51:                                               ; preds = %49
  store i8 1, ptr %22, align 1, !tbaa !33
  %52 = load i64, ptr %6, align 8, !tbaa !23
  br label %59

53:                                               ; preds = %49
  %54 = load i8, ptr %18, align 8, !tbaa !32, !range !35, !noundef !36
  %55 = icmp ne i8 %54, 0
  %56 = load i64, ptr %6, align 8, !tbaa !23
  %57 = icmp ult i64 %56, %7
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %62, label %59

59:                                               ; preds = %51, %53
  %60 = phi i64 [ %52, %51 ], [ %56, %53 ]
  %61 = icmp ult i64 %60, %7
  br i1 %61, label %25, label %62, !llvm.loop !40

62:                                               ; preds = %59, %32, %37, %49, %53, %14, %46, %44, %23
  %63 = phi i32 [ %24, %23 ], [ 9, %44 ], [ %48, %46 ], [ 0, %14 ], [ 0, %59 ], [ %35, %32 ], [ 0, %37 ], [ %50, %49 ], [ 9, %53 ]
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lz_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #8
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr %5, align 8, !tbaa !43
  br i1 %8, label %11, label %10

10:                                               ; preds = %2
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  br label %12

11:                                               ; preds = %2
  tail call void @lzma_free(ptr noundef %9, ptr noundef %1) #8
  br label %12

12:                                               ; preds = %11, %10
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lz_decoder_reset(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !20
  %6 = getelementptr i8, ptr %3, i64 %5
  %7 = getelementptr i8, ptr %6, i64 -1
  store i8 0, ptr %7, align 1, !tbaa !44
  %8 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 5
  store i8 0, ptr %8, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @decode_buffer(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noalias nocapture noundef writeonly %4, ptr noalias nocapture noundef %5, i64 noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 1
  %13 = load i64, ptr %5, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 5
  br label %15

15:                                               ; preds = %42, %7
  %16 = phi i64 [ %13, %7 ], [ %35, %42 ]
  %17 = load i64, ptr %8, align 8, !tbaa !30
  %18 = load i64, ptr %9, align 8, !tbaa !20
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i64 0, ptr %8, align 8, !tbaa !30
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i64 [ 0, %20 ], [ %17, %15 ]
  %23 = sub i64 %6, %16
  %24 = sub i64 %18, %22
  %25 = tail call i64 @llvm.umin.i64(i64 %23, i64 %24)
  %26 = add i64 %25, %22
  store i64 %26, ptr %10, align 8, !tbaa !46
  %27 = load ptr, ptr %12, align 8, !tbaa !47
  %28 = load ptr, ptr %11, align 8, !tbaa !43
  %29 = tail call i32 %27(ptr noundef %28, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #8
  %30 = load i64, ptr %8, align 8, !tbaa !30
  %31 = sub i64 %30, %22
  %32 = getelementptr inbounds i8, ptr %4, i64 %16
  %33 = load ptr, ptr %0, align 8, !tbaa !14
  %34 = getelementptr inbounds i8, ptr %33, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %34, i64 %31, i1 false)
  %35 = add i64 %31, %16
  store i64 %35, ptr %5, align 8, !tbaa !23
  %36 = load i8, ptr %14, align 8, !tbaa !45, !range !35, !noundef !36
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %21
  tail call fastcc void @lz_decoder_reset(ptr noundef nonnull %0) #10
  %39 = icmp ne i32 %29, 0
  %40 = icmp eq i64 %35, %6
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38, %47
  br label %15

43:                                               ; preds = %21
  %44 = icmp ne i32 %29, 0
  %45 = icmp eq i64 %35, %6
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %9, align 8, !tbaa !20
  %49 = icmp ult i64 %30, %48
  br i1 %49, label %50, label %42

50:                                               ; preds = %38, %47, %43
  %51 = phi i32 [ %29, %38 ], [ 0, %47 ], [ %29, %43 ]
  ret i32 %51
}

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @lzma_lz_decoder_memusage(i64 noundef %0) local_unnamed_addr #6 {
  %2 = add i64 %0, 4272
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lzma_lz_decoder_uncompressed(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %3, align 8, !tbaa !43
  tail call void %5(ptr noundef %6, i64 noundef %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"lzma_next_coder_s", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!7, !8, i64 24}
!13 = !{!7, !8, i64 32}
!14 = !{!15, !8, i64 0}
!15 = !{!"lzma_coder_s", !16, i64 0, !18, i64 48, !7, i64 88, !17, i64 152, !17, i64 153, !19, i64 160}
!16 = !{!"", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !17, i64 40}
!17 = !{!"_Bool", !9, i64 0}
!18 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!19 = !{!"", !11, i64 0, !11, i64 8, !9, i64 16}
!20 = !{!15, !11, i64 32}
!21 = !{i64 0, i64 8, !22, i64 8, i64 8, !23, i64 16, i64 8, !23, i64 24, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 8, !22, i64 48, i64 8, !22, i64 56, i64 8, !22}
!22 = !{!8, !8, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !22, i64 24, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 8, !22, i64 48, i64 8, !22}
!25 = !{!26, !8, i64 16}
!26 = !{!"lzma_filter_info_s", !11, i64 0, !8, i64 8, !8, i64 16}
!27 = !{!28, !11, i64 0}
!28 = !{!"", !11, i64 0, !8, i64 8, !11, i64 16}
!29 = !{!28, !8, i64 8}
!30 = !{!15, !11, i64 8}
!31 = !{!15, !11, i64 16}
!32 = !{!15, !17, i64 152}
!33 = !{!15, !17, i64 153}
!34 = !{!15, !8, i64 112}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!15, !11, i64 160}
!38 = !{!15, !11, i64 168}
!39 = !{!15, !8, i64 88}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!15, !8, i64 80}
!43 = !{!15, !8, i64 48}
!44 = !{!9, !9, i64 0}
!45 = !{!15, !17, i64 40}
!46 = !{!15, !11, i64 24}
!47 = !{!15, !8, i64 56}
!48 = !{!15, !8, i64 72}
