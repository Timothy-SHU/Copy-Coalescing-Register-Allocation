; ModuleID = 'liblzma/lzma/lzma2_decoder.c'
source_filename = "liblzma/lzma/lzma2_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i32, %struct.lzma_lz_decoder, i64, i64, i8, i8, %struct.lzma_options_lzma }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_lzma2_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_lz_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma2_decoder_init) #4
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lzma2_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 184, ptr noundef %1) #4
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 1
  store ptr @lzma2_decode, ptr %11, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 4
  store ptr @lzma2_decoder_end, ptr %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %14, %10 ], [ %5, %4 ]
  store i32 0, ptr %16, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 5
  store i8 1, ptr %17, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !21
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i8 [ 1, %15 ], [ %25, %21 ]
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 6
  store i8 %27, ptr %28, align 1, !tbaa !22
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2
  %30 = tail call i32 @lzma_lzma_decoder_create(ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #4
  br label %31

31:                                               ; preds = %7, %26
  %32 = phi i32 [ %30, %26 ], [ 5, %7 ]
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @lzma2_decode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  br label %16

16:                                               ; preds = %116, %5
  %17 = load i64, ptr %3, align 8, !tbaa !23
  %18 = icmp ult i64 %17, %4
  %19 = load i32, ptr %0, align 8, !tbaa !13
  br i1 %18, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %19, 6
  br i1 %21, label %102, label %121

22:                                               ; preds = %16
  switch i32 %19, label %121 [
    i32 0, label %23
    i32 1, label %61
    i32 2, label %69
    i32 3, label %79
    i32 4, label %85
    i32 5, label %94
    i32 6, label %102
    i32 7, label %117
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %2, i64 %17
  %25 = load i8, ptr %24, align 1, !tbaa !24
  %26 = zext i8 %25 to i64
  %27 = add nuw i64 %17, 1
  store i64 %27, ptr %3, align 8, !tbaa !23
  %28 = icmp eq i8 %25, 0
  br i1 %28, label %121, label %29

29:                                               ; preds = %23
  %30 = icmp ugt i8 %25, -33
  %31 = icmp eq i8 %25, 1
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8 1, ptr %15, align 8, !tbaa !19
  store i8 1, ptr %14, align 1, !tbaa !22
  br label %37

34:                                               ; preds = %29
  %35 = load i8, ptr %14, align 1, !tbaa !22, !range !25, !noundef !26
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %121

37:                                               ; preds = %34, %33
  %38 = phi i8 [ 0, %34 ], [ 1, %33 ]
  %39 = icmp slt i8 %25, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = shl nuw nsw i64 %26, 16
  %42 = and i64 %41, 2031616
  store i64 %42, ptr %12, align 8, !tbaa !27
  store i32 1, ptr %0, align 8, !tbaa !13
  %43 = icmp ugt i8 %25, -65
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8 0, ptr %15, align 8, !tbaa !19
  store i32 5, ptr %11, align 4, !tbaa !28
  br label %57

45:                                               ; preds = %40
  %46 = load i8, ptr %15, align 8, !tbaa !19, !range !25, !noundef !26
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %121

48:                                               ; preds = %45
  store i32 6, ptr %11, align 4, !tbaa !28
  %49 = icmp ugt i8 %25, -97
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = load ptr, ptr %10, align 8, !tbaa !29
  %52 = load ptr, ptr %7, align 8, !tbaa !30
  tail call void %51(ptr noundef %52, ptr noundef nonnull %9) #4
  %53 = load i8, ptr %14, align 1, !tbaa !22, !range !25
  br label %57

54:                                               ; preds = %37
  %55 = icmp ugt i8 %25, 2
  br i1 %55, label %121, label %56

56:                                               ; preds = %54
  store i32 3, ptr %0, align 8, !tbaa !13
  store i32 7, ptr %11, align 4, !tbaa !28
  br label %57

57:                                               ; preds = %44, %48, %50, %56
  %58 = phi i8 [ %38, %44 ], [ %38, %48 ], [ %53, %50 ], [ %38, %56 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %116, label %60

60:                                               ; preds = %57
  store i8 0, ptr %14, align 1, !tbaa !22
  tail call fastcc void @dict_reset(ptr noundef %1) #5
  br label %121

61:                                               ; preds = %22
  %62 = add nuw i64 %17, 1
  store i64 %62, ptr %3, align 8, !tbaa !23
  %63 = getelementptr inbounds i8, ptr %2, i64 %17
  %64 = load i8, ptr %63, align 1, !tbaa !24
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 8
  %67 = load i64, ptr %12, align 8, !tbaa !27
  %68 = add i64 %66, %67
  store i64 %68, ptr %12, align 8, !tbaa !27
  store i32 2, ptr %0, align 8, !tbaa !13
  br label %116

69:                                               ; preds = %22
  %70 = add nuw i64 %17, 1
  store i64 %70, ptr %3, align 8, !tbaa !23
  %71 = getelementptr inbounds i8, ptr %2, i64 %17
  %72 = load i8, ptr %71, align 1, !tbaa !24
  %73 = zext i8 %72 to i64
  %74 = add nuw nsw i64 %73, 1
  %75 = load i64, ptr %12, align 8, !tbaa !27
  %76 = add i64 %74, %75
  store i64 %76, ptr %12, align 8, !tbaa !27
  store i32 3, ptr %0, align 8, !tbaa !13
  %77 = load ptr, ptr %13, align 8, !tbaa !31
  %78 = load ptr, ptr %7, align 8, !tbaa !30
  tail call void %77(ptr noundef %78, i64 noundef %76) #4
  br label %116

79:                                               ; preds = %22
  %80 = add nuw i64 %17, 1
  store i64 %80, ptr %3, align 8, !tbaa !23
  %81 = getelementptr inbounds i8, ptr %2, i64 %17
  %82 = load i8, ptr %81, align 1, !tbaa !24
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 8
  store i64 %84, ptr %6, align 8, !tbaa !32
  store i32 4, ptr %0, align 8, !tbaa !13
  br label %116

85:                                               ; preds = %22
  %86 = add nuw i64 %17, 1
  store i64 %86, ptr %3, align 8, !tbaa !23
  %87 = getelementptr inbounds i8, ptr %2, i64 %17
  %88 = load i8, ptr %87, align 1, !tbaa !24
  %89 = zext i8 %88 to i64
  %90 = add nuw nsw i64 %89, 1
  %91 = load i64, ptr %6, align 8, !tbaa !32
  %92 = add i64 %90, %91
  store i64 %92, ptr %6, align 8, !tbaa !32
  %93 = load i32, ptr %11, align 4, !tbaa !28
  store i32 %93, ptr %0, align 8, !tbaa !13
  br label %116

94:                                               ; preds = %22
  %95 = add nuw i64 %17, 1
  store i64 %95, ptr %3, align 8, !tbaa !23
  %96 = getelementptr inbounds i8, ptr %2, i64 %17
  %97 = load i8, ptr %96, align 1, !tbaa !24
  %98 = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %9, i8 noundef zeroext %97) #4
  br i1 %98, label %121, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %10, align 8, !tbaa !29
  %101 = load ptr, ptr %7, align 8, !tbaa !30
  tail call void %100(ptr noundef %101, ptr noundef nonnull %9) #4
  store i32 6, ptr %0, align 8, !tbaa !13
  br label %116

102:                                              ; preds = %20, %22
  %103 = load ptr, ptr %8, align 8, !tbaa !33
  %104 = load ptr, ptr %7, align 8, !tbaa !30
  %105 = tail call i32 %103(ptr noundef %104, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #4
  %106 = load i64, ptr %3, align 8, !tbaa !23
  %107 = sub i64 %106, %17
  %108 = load i64, ptr %6, align 8, !tbaa !32
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %121, label %110

110:                                              ; preds = %102
  %111 = sub i64 %108, %107
  store i64 %111, ptr %6, align 8, !tbaa !32
  %112 = icmp eq i32 %105, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = icmp eq i64 %108, %107
  br i1 %114, label %115, label %121

115:                                              ; preds = %113
  store i32 0, ptr %0, align 8, !tbaa !13
  br label %116

116:                                              ; preds = %115, %57, %120, %99, %85, %79, %69, %61
  br label %16, !llvm.loop !34

117:                                              ; preds = %22
  tail call fastcc void @dict_write(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %6) #5
  %118 = load i64, ptr %6, align 8, !tbaa !32
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 0, ptr %0, align 8, !tbaa !13
  br label %116

121:                                              ; preds = %113, %110, %102, %54, %45, %34, %23, %20, %22, %117, %94, %60
  %122 = phi i32 [ 0, %60 ], [ 9, %102 ], [ %105, %110 ], [ 9, %113 ], [ 1, %23 ], [ 9, %34 ], [ 9, %45 ], [ 9, %54 ], [ 0, %20 ], [ 11, %22 ], [ 0, %117 ], [ 9, %94 ]
  ret i32 %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lzma2_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_lzma_decoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @dict_reset(ptr nocapture noundef writeonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 5
  store i8 1, ptr %2, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dict_write(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noalias nocapture noundef %4) unnamed_addr #0 {
  %6 = load i64, ptr %2, align 8, !tbaa !23
  %7 = sub i64 %3, %6
  %8 = load i64, ptr %4, align 8, !tbaa !23
  %9 = icmp ugt i64 %7, %8
  %10 = add i64 %8, %6
  %11 = select i1 %9, i64 %10, i64 %3
  %12 = load ptr, ptr %0, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !39
  %16 = tail call i64 @lzma_bufcpy(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %11, ptr noundef %12, ptr noundef nonnull %13, i64 noundef %15) #4
  %17 = sub i64 %8, %16
  store i64 %17, ptr %4, align 8, !tbaa !23
  %18 = load i64, ptr %13, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !41
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i64 %18, ptr %19, align 8, !tbaa !41
  br label %23

23:                                               ; preds = %22, %5
  ret void
}

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lzma2_decoder_memusage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef %0) #4
  %3 = add i64 %2, 184
  ret i64 %3
}

; Function Attrs: optsize
declare i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_lzma2_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %3, 1
  br i1 %5, label %6, label %28

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !24
  %8 = icmp ugt i8 %7, 40
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %1) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr %2, align 1, !tbaa !24
  %14 = icmp eq i8 %13, 40
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = and i8 %13, 1
  %17 = or disjoint i8 %16, 2
  %18 = zext nneg i8 %17 to i32
  store i32 %18, ptr %10, align 8, !tbaa !42
  %19 = load i8, ptr %2, align 1, !tbaa !24
  %20 = lshr i8 %19, 1
  %21 = add nuw i8 %20, 11
  %22 = zext nneg i8 %21 to i32
  %23 = shl i32 %18, %22
  br label %24

24:                                               ; preds = %12, %15
  %25 = phi i32 [ %23, %15 ], [ -1, %12 ]
  store i32 %25, ptr %10, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !21
  store ptr %10, ptr %0, align 8, !tbaa !43
  br label %28

28:                                               ; preds = %24, %9, %6, %4
  %29 = phi i32 [ 8, %4 ], [ 8, %6 ], [ 0, %24 ], [ 5, %9 ]
  ret i32 %29
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!7, !8, i64 32}
!13 = !{!14, !15, i64 0}
!14 = !{!"lzma_coder_s", !15, i64 0, !15, i64 4, !7, i64 8, !16, i64 48, !16, i64 56, !17, i64 64, !17, i64 65, !18, i64 72}
!15 = !{!"int", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_Bool", !9, i64 0}
!18 = !{!"", !15, i64 0, !8, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !8, i64 96, !8, i64 104}
!19 = !{!14, !17, i64 64}
!20 = !{!18, !8, i64 8}
!21 = !{!18, !15, i64 16}
!22 = !{!14, !17, i64 65}
!23 = !{!16, !16, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!14, !16, i64 48}
!28 = !{!14, !15, i64 4}
!29 = !{!14, !8, i64 24}
!30 = !{!14, !8, i64 8}
!31 = !{!14, !8, i64 32}
!32 = !{!14, !16, i64 56}
!33 = !{!14, !8, i64 16}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !17, i64 40}
!37 = !{!"", !8, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !17, i64 40}
!38 = !{!37, !8, i64 0}
!39 = !{!37, !16, i64 24}
!40 = !{!37, !16, i64 8}
!41 = !{!37, !16, i64 16}
!42 = !{!18, !15, i64 0}
!43 = !{!8, !8, i64 0}
