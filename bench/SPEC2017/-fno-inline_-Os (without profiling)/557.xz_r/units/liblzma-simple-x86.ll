; ModuleID = 'liblzma/simple/x86.c'
source_filename = "liblzma/simple/x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i8, i8, ptr, ptr, i32, i64, i64, i64, i64, [0 x i8] }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_simple_s = type { i32, i32 }

@x86_code.MASK_TO_BIT_NUMBER = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_x86_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @x86_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #4
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x86_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call i32 @lzma_simple_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @x86_code, i64 noundef 8, i64 noundef 5, i32 noundef 1, i1 noundef zeroext %3) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  store i32 0, ptr %10, align 4, !tbaa !12
  %11 = getelementptr inbounds %struct.lzma_simple_s, ptr %10, i64 0, i32 1
  store i32 -5, ptr %11, align 4, !tbaa !15
  br label %12

12:                                               ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_simple_x86_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @x86_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #4
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i64 @x86_code(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3, i64 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.lzma_simple_s, ptr %0, i64 0, i32 1
  %7 = icmp ult i64 %4, 5
  br i1 %7, label %116, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 4, !tbaa !12
  %10 = load i32, ptr %6, align 4, !tbaa !15
  %11 = sub i32 %1, %10
  %12 = icmp ugt i32 %11, 5
  %13 = add i32 %1, -5
  %14 = select i1 %12, i32 %13, i32 %10
  %15 = add i64 %4, -5
  br label %16

16:                                               ; preds = %8, %110
  %17 = phi i32 [ %9, %8 ], [ %113, %110 ]
  %18 = phi i64 [ 0, %8 ], [ %112, %110 ]
  %19 = phi i32 [ %14, %8 ], [ %111, %110 ]
  %20 = getelementptr inbounds i8, ptr %3, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !16
  %22 = add i8 %21, 22
  %23 = icmp ult i8 %22, -2
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = add nuw i64 %18, 1
  br label %110, !llvm.loop !17

26:                                               ; preds = %16
  %27 = trunc i64 %18 to i32
  %28 = add i32 %27, %1
  %29 = sub i32 %28, %19
  %30 = icmp ugt i32 %29, 5
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = icmp eq i32 %28, %19
  br i1 %32, label %42, label %33

33:                                               ; preds = %31
  %34 = tail call i32 @llvm.umax.i32(i32 %29, i32 1)
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %40, %35 ], [ 0, %33 ]
  %37 = phi i32 [ %39, %35 ], [ %17, %33 ]
  %38 = shl i32 %37, 1
  %39 = and i32 %38, 238
  %40 = add nuw nsw i32 %36, 1
  %41 = icmp eq i32 %40, %34
  br i1 %41, label %42, label %35, !llvm.loop !19

42:                                               ; preds = %35, %31, %26
  %43 = phi i32 [ 0, %26 ], [ %17, %31 ], [ %39, %35 ]
  %44 = getelementptr i8, ptr %20, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !16
  %46 = zext i8 %45 to i32
  %47 = add i8 %45, 1
  %48 = icmp ult i8 %47, 2
  br i1 %48, label %49, label %106

49:                                               ; preds = %42
  %50 = lshr i32 %43, 1
  %51 = and i32 %50, 7
  %52 = zext nneg i32 %51 to i64
  %53 = lshr i64 232, %52
  %54 = and i64 %53, 1
  %55 = icmp eq i64 %54, 0
  %56 = icmp ult i32 %43, 32
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %106

58:                                               ; preds = %49
  %59 = shl nuw i32 %46, 24
  %60 = getelementptr i8, ptr %20, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !16
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or disjoint i32 %63, %59
  %65 = getelementptr i8, ptr %20, i64 2
  %66 = load i8, ptr %65, align 1, !tbaa !16
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or disjoint i32 %64, %68
  %70 = getelementptr i8, ptr %20, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !16
  %72 = zext i8 %71 to i32
  %73 = or disjoint i32 %69, %72
  %74 = add i32 %28, 5
  %75 = sub i32 -5, %28
  %76 = select i1 %2, i32 %74, i32 %75
  %77 = icmp eq i32 %43, 0
  %78 = add i32 %73, %76
  br i1 %77, label %95, label %79

79:                                               ; preds = %58
  %80 = zext nneg i32 %50 to i64
  %81 = getelementptr inbounds [8 x i32], ptr @x86_code.MASK_TO_BIT_NUMBER, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !20
  %83 = shl i32 %82, 3
  %84 = sub i32 24, %83
  %85 = sub i32 32, %83
  %86 = shl nsw i32 -1, %85
  br label %87

87:                                               ; preds = %91, %79
  %88 = phi i32 [ %78, %79 ], [ %94, %91 ]
  %89 = lshr i32 %88, %84
  %90 = trunc i32 %89 to i8
  switch i8 %90, label %95 [
    i8 -1, label %91
    i8 0, label %91
  ]

91:                                               ; preds = %87, %87
  %92 = xor i32 %88, %86
  %93 = xor i32 %92, -1
  %94 = add i32 %76, %93
  br label %87

95:                                               ; preds = %87, %58
  %96 = phi i32 [ %78, %58 ], [ %88, %87 ]
  %97 = shl i32 %96, 7
  %98 = ashr i32 %97, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, ptr %44, align 1, !tbaa !16
  %100 = lshr i32 %96, 16
  %101 = trunc i32 %100 to i8
  store i8 %101, ptr %60, align 1, !tbaa !16
  %102 = lshr i32 %96, 8
  %103 = trunc i32 %102 to i8
  store i8 %103, ptr %65, align 1, !tbaa !16
  %104 = trunc i32 %96 to i8
  store i8 %104, ptr %70, align 1, !tbaa !16
  %105 = add nuw i64 %18, 5
  br label %110

106:                                              ; preds = %42, %49
  %107 = phi i32 [ 1, %42 ], [ 17, %49 ]
  %108 = add nuw i64 %18, 1
  %109 = or i32 %107, %43
  br label %110

110:                                              ; preds = %106, %95, %24
  %111 = phi i32 [ %19, %24 ], [ %28, %106 ], [ %28, %95 ]
  %112 = phi i64 [ %25, %24 ], [ %108, %106 ], [ %105, %95 ]
  %113 = phi i32 [ %17, %24 ], [ %109, %106 ], [ 0, %95 ]
  %114 = icmp ugt i64 %112, %15
  br i1 %114, label %115, label %16

115:                                              ; preds = %110
  store i32 %113, ptr %0, align 4, !tbaa !12
  store i32 %111, ptr %6, align 4, !tbaa !15
  br label %116

116:                                              ; preds = %5, %115
  %117 = phi i64 [ %112, %115 ], [ 0, %5 ]
  ret i64 %117
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"lzma_next_coder_s", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"lzma_simple_s", !14, i64 0, !14, i64 4}
!14 = !{!"int", !8, i64 0}
!15 = !{!13, !14, i64 4}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!14, !14, i64 0}
