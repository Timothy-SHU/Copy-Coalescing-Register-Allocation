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
define internal i32 @lzma2_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !35 {
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 184, ptr noundef %1) #4
  store ptr %8, ptr %0, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 1
  store ptr @lzma2_decode, ptr %11, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 4
  store ptr @lzma2_decoder_end, ptr %12, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %14 = load ptr, ptr %0, align 8, !tbaa !36
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %14, %10 ], [ %5, %4 ]
  store i32 0, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 5
  store i8 1, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !51
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i8 [ 1, %15 ], [ %25, %21 ]
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 6
  store i8 %27, ptr %28, align 1, !tbaa !52
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
define internal i32 @lzma2_decode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #0 !PGOFuncName !53 {
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
  %17 = load i64, ptr %3, align 8, !tbaa !54
  %18 = icmp ult i64 %17, %4
  %19 = load i32, ptr %0, align 8, !tbaa !43
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
  %25 = load i8, ptr %24, align 1, !tbaa !55
  %26 = zext i8 %25 to i64
  %27 = add nuw i64 %17, 1
  store i64 %27, ptr %3, align 8, !tbaa !54
  %28 = icmp eq i8 %25, 0
  br i1 %28, label %121, label %29

29:                                               ; preds = %23
  %30 = icmp ugt i8 %25, -33
  %31 = icmp eq i8 %25, 1
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8 1, ptr %15, align 8, !tbaa !49
  store i8 1, ptr %14, align 1, !tbaa !52
  br label %37

34:                                               ; preds = %29
  %35 = load i8, ptr %14, align 1, !tbaa !52, !range !56, !noundef !57
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %121

37:                                               ; preds = %34, %33
  %38 = phi i8 [ 0, %34 ], [ 1, %33 ]
  %39 = icmp slt i8 %25, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = shl nuw nsw i64 %26, 16
  %42 = and i64 %41, 2031616
  store i64 %42, ptr %12, align 8, !tbaa !58
  store i32 1, ptr %0, align 8, !tbaa !43
  %43 = icmp ugt i8 %25, -65
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8 0, ptr %15, align 8, !tbaa !49
  store i32 5, ptr %11, align 4, !tbaa !59
  br label %57

45:                                               ; preds = %40
  %46 = load i8, ptr %15, align 8, !tbaa !49, !range !56, !noundef !57
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %121

48:                                               ; preds = %45
  store i32 6, ptr %11, align 4, !tbaa !59
  %49 = icmp ugt i8 %25, -97
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = load ptr, ptr %10, align 8, !tbaa !60
  %52 = load ptr, ptr %7, align 8, !tbaa !61
  tail call void %51(ptr noundef %52, ptr noundef nonnull %9) #4
  %53 = load i8, ptr %14, align 1, !tbaa !52, !range !56
  br label %57

54:                                               ; preds = %37
  %55 = icmp ugt i8 %25, 2
  br i1 %55, label %121, label %56

56:                                               ; preds = %54
  store i32 3, ptr %0, align 8, !tbaa !43
  store i32 7, ptr %11, align 4, !tbaa !59
  br label %57

57:                                               ; preds = %44, %48, %50, %56
  %58 = phi i8 [ %38, %44 ], [ %38, %48 ], [ %53, %50 ], [ %38, %56 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %116, label %60

60:                                               ; preds = %57
  store i8 0, ptr %14, align 1, !tbaa !52
  tail call fastcc void @dict_reset(ptr noundef %1) #5
  br label %121

61:                                               ; preds = %22
  %62 = add nuw i64 %17, 1
  store i64 %62, ptr %3, align 8, !tbaa !54
  %63 = getelementptr inbounds i8, ptr %2, i64 %17
  %64 = load i8, ptr %63, align 1, !tbaa !55
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 8
  %67 = load i64, ptr %12, align 8, !tbaa !58
  %68 = add i64 %66, %67
  store i64 %68, ptr %12, align 8, !tbaa !58
  store i32 2, ptr %0, align 8, !tbaa !43
  br label %116

69:                                               ; preds = %22
  %70 = add nuw i64 %17, 1
  store i64 %70, ptr %3, align 8, !tbaa !54
  %71 = getelementptr inbounds i8, ptr %2, i64 %17
  %72 = load i8, ptr %71, align 1, !tbaa !55
  %73 = zext i8 %72 to i64
  %74 = add nuw nsw i64 %73, 1
  %75 = load i64, ptr %12, align 8, !tbaa !58
  %76 = add i64 %74, %75
  store i64 %76, ptr %12, align 8, !tbaa !58
  store i32 3, ptr %0, align 8, !tbaa !43
  %77 = load ptr, ptr %13, align 8, !tbaa !62
  %78 = load ptr, ptr %7, align 8, !tbaa !61
  tail call void %77(ptr noundef %78, i64 noundef %76) #4
  br label %116

79:                                               ; preds = %22
  %80 = add nuw i64 %17, 1
  store i64 %80, ptr %3, align 8, !tbaa !54
  %81 = getelementptr inbounds i8, ptr %2, i64 %17
  %82 = load i8, ptr %81, align 1, !tbaa !55
  %83 = zext i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 8
  store i64 %84, ptr %6, align 8, !tbaa !63
  store i32 4, ptr %0, align 8, !tbaa !43
  br label %116

85:                                               ; preds = %22
  %86 = add nuw i64 %17, 1
  store i64 %86, ptr %3, align 8, !tbaa !54
  %87 = getelementptr inbounds i8, ptr %2, i64 %17
  %88 = load i8, ptr %87, align 1, !tbaa !55
  %89 = zext i8 %88 to i64
  %90 = add nuw nsw i64 %89, 1
  %91 = load i64, ptr %6, align 8, !tbaa !63
  %92 = add i64 %90, %91
  store i64 %92, ptr %6, align 8, !tbaa !63
  %93 = load i32, ptr %11, align 4, !tbaa !59
  store i32 %93, ptr %0, align 8, !tbaa !43
  br label %116

94:                                               ; preds = %22
  %95 = add nuw i64 %17, 1
  store i64 %95, ptr %3, align 8, !tbaa !54
  %96 = getelementptr inbounds i8, ptr %2, i64 %17
  %97 = load i8, ptr %96, align 1, !tbaa !55
  %98 = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %9, i8 noundef zeroext %97) #4
  br i1 %98, label %121, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %10, align 8, !tbaa !60
  %101 = load ptr, ptr %7, align 8, !tbaa !61
  tail call void %100(ptr noundef %101, ptr noundef nonnull %9) #4
  store i32 6, ptr %0, align 8, !tbaa !43
  br label %116

102:                                              ; preds = %20, %22
  %103 = load ptr, ptr %8, align 8, !tbaa !64
  %104 = load ptr, ptr %7, align 8, !tbaa !61
  %105 = tail call i32 %103(ptr noundef %104, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #4
  %106 = load i64, ptr %3, align 8, !tbaa !54
  %107 = sub i64 %106, %17
  %108 = load i64, ptr %6, align 8, !tbaa !63
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %121, label %110

110:                                              ; preds = %102
  %111 = sub i64 %108, %107
  store i64 %111, ptr %6, align 8, !tbaa !63
  %112 = icmp eq i32 %105, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = icmp eq i64 %108, %107
  br i1 %114, label %115, label %121

115:                                              ; preds = %113
  store i32 0, ptr %0, align 8, !tbaa !43
  br label %116

116:                                              ; preds = %115, %57, %120, %99, %85, %79, %69, %61
  br label %16, !llvm.loop !65

117:                                              ; preds = %22
  tail call fastcc void @dict_write(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %6) #5
  %118 = load i64, ptr %6, align 8, !tbaa !63
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 0, ptr %0, align 8, !tbaa !43
  br label %116

121:                                              ; preds = %113, %110, %102, %54, %45, %34, %23, %20, %22, %117, %94, %60
  %122 = phi i32 [ 0, %60 ], [ 9, %102 ], [ %105, %110 ], [ 9, %113 ], [ 1, %23 ], [ 9, %34 ], [ 9, %45 ], [ 9, %54 ], [ 0, %20 ], [ 11, %22 ], [ 0, %117 ], [ 9, %94 ]
  ret i32 %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @lzma2_decoder_end(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !67 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #4
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_lzma_decoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @dict_reset(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 5
  store i8 1, ptr %2, align 8, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dict_write(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noalias nocapture noundef %4) unnamed_addr #0 !PGOFuncName !71 {
  %6 = load i64, ptr %2, align 8, !tbaa !54
  %7 = sub i64 %3, %6
  %8 = load i64, ptr %4, align 8, !tbaa !54
  %9 = icmp ugt i64 %7, %8
  %10 = add i64 %8, %6
  %11 = select i1 %9, i64 %10, i64 %3
  %12 = load ptr, ptr %0, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !73
  %16 = tail call i64 @lzma_bufcpy(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %11, ptr noundef %12, ptr noundef nonnull %13, i64 noundef %15) #4
  %17 = sub i64 %8, %16
  store i64 %17, ptr %4, align 8, !tbaa !54
  %18 = load i64, ptr %13, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !75
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i64 %18, ptr %19, align 8, !tbaa !75
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
  %7 = load i8, ptr %2, align 1, !tbaa !55
  %8 = icmp ugt i8 %7, 40
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %1) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr %2, align 1, !tbaa !55
  %14 = icmp eq i8 %13, 40
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = and i8 %13, 1
  %17 = or disjoint i8 %16, 2
  %18 = zext nneg i8 %17 to i32
  store i32 %18, ptr %10, align 8, !tbaa !76
  %19 = load i8, ptr %2, align 1, !tbaa !55
  %20 = lshr i8 %19, 1
  %21 = add nuw i8 %20, 11
  %22 = zext nneg i8 %21 to i32
  %23 = shl i32 %18, %22
  br label %24

24:                                               ; preds = %12, %15
  %25 = phi i32 [ %23, %15 ], [ -1, %12 ]
  store i32 %25, ptr %10, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !51
  store ptr %10, ptr %0, align 8, !tbaa !77
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
!35 = !{!"lzma2_decoder.c:lzma2_decoder_init"}
!36 = !{!37, !38, i64 0}
!37 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!37, !38, i64 8}
!42 = !{!37, !38, i64 32}
!43 = !{!44, !45, i64 0}
!44 = !{!"lzma_coder_s", !45, i64 0, !45, i64 4, !37, i64 8, !46, i64 48, !46, i64 56, !47, i64 64, !47, i64 65, !48, i64 72}
!45 = !{!"int", !39, i64 0}
!46 = !{!"long", !39, i64 0}
!47 = !{!"_Bool", !39, i64 0}
!48 = !{!"", !45, i64 0, !38, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !38, i64 96, !38, i64 104}
!49 = !{!44, !47, i64 64}
!50 = !{!48, !38, i64 8}
!51 = !{!48, !45, i64 16}
!52 = !{!44, !47, i64 65}
!53 = !{!"lzma2_decoder.c:lzma2_decode"}
!54 = !{!46, !46, i64 0}
!55 = !{!39, !39, i64 0}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!44, !46, i64 48}
!59 = !{!44, !45, i64 4}
!60 = !{!44, !38, i64 24}
!61 = !{!44, !38, i64 8}
!62 = !{!44, !38, i64 32}
!63 = !{!44, !46, i64 56}
!64 = !{!44, !38, i64 16}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"lzma2_decoder.c:lzma2_decoder_end"}
!68 = !{!"lzma2_decoder.c:dict_reset"}
!69 = !{!70, !47, i64 40}
!70 = !{!"", !38, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !47, i64 40}
!71 = !{!"lzma2_decoder.c:dict_write"}
!72 = !{!70, !38, i64 0}
!73 = !{!70, !46, i64 24}
!74 = !{!70, !46, i64 8}
!75 = !{!70, !46, i64 16}
!76 = !{!48, !45, i64 0}
!77 = !{!38, !38, i64 0}
