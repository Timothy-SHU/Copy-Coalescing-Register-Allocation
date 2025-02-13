; ModuleID = 'attacks.cpp'
source_filename = "attacks.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@PawnAttacksWhite = external local_unnamed_addr global [64 x i64], align 16
@KnightMoves = external local_unnamed_addr global [64 x i64], align 16
@KingMoves = external local_unnamed_addr global [64 x i64], align 16
@RankMask = external local_unnamed_addr global [8 x i64], align 16
@FileMask = external local_unnamed_addr global [8 x i64], align 16
@DiagMaska1h8 = external local_unnamed_addr global [64 x i64], align 16
@DiagMaska8h1 = external local_unnamed_addr global [64 x i64], align 16
@PawnAttacksBlack = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z11is_attackedP7state_tii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %2, 0
  %7 = sext i32 %1 to i64
  br i1 %6, label %8, label %78

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %7
  %12 = load i64, ptr %11, align 8, !tbaa !11
  %13 = and i64 %12, %10
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %149

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %17 = load i64, ptr %16, align 8, !tbaa !11
  %18 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %7
  %19 = load i64, ptr %18, align 8, !tbaa !11
  %20 = and i64 %19, %17
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %149

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %24 = load i64, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %7
  %26 = load i64, ptr %25, align 8, !tbaa !11
  %27 = and i64 %26, %24
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %149

29:                                               ; preds = %22
  %30 = ashr i32 %1, 3
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %34 = load i64, ptr %33, align 8, !tbaa !11
  %35 = or i64 %34, %32
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !11
  %39 = and i64 %38, %35
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %43 = and i64 %42, %35
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %149

45:                                               ; preds = %41, %29
  %46 = and i32 %1, 7
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !11
  %50 = and i64 %49, %35
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %54 = and i64 %53, %35
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %149

56:                                               ; preds = %52, %45
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %58 = load i64, ptr %57, align 8, !tbaa !11
  %59 = load i64, ptr %33, align 8, !tbaa !11
  %60 = or i64 %59, %58
  %61 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %7
  %62 = load i64, ptr %61, align 8, !tbaa !11
  %63 = and i64 %62, %60
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %67 = and i64 %66, %60
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %149

69:                                               ; preds = %65, %56
  %70 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %7
  %71 = load i64, ptr %70, align 8, !tbaa !11
  %72 = and i64 %71, %60
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %148, label %74

74:                                               ; preds = %69
  %75 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %76 = and i64 %75, %60
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %148, label %149

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %80 = load i64, ptr %79, align 8, !tbaa !11
  %81 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %7
  %82 = load i64, ptr %81, align 8, !tbaa !11
  %83 = and i64 %82, %80
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %149

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %87 = load i64, ptr %86, align 8, !tbaa !11
  %88 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %7
  %89 = load i64, ptr %88, align 8, !tbaa !11
  %90 = and i64 %89, %87
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %149

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %94 = load i64, ptr %93, align 8, !tbaa !11
  %95 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %7
  %96 = load i64, ptr %95, align 8, !tbaa !11
  %97 = and i64 %96, %94
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %149

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %101 = load i64, ptr %100, align 8, !tbaa !11
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %103 = load i64, ptr %102, align 8, !tbaa !11
  %104 = or i64 %103, %101
  %105 = ashr i32 %1, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !11
  %109 = and i64 %108, %104
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %99
  %112 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %113 = and i64 %112, %104
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %111, %99
  %116 = and i32 %1, 7
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !11
  %120 = and i64 %119, %104
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %124 = and i64 %123, %104
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %122, %115
  %127 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %128 = load i64, ptr %127, align 8, !tbaa !11
  %129 = load i64, ptr %102, align 8, !tbaa !11
  %130 = or i64 %129, %128
  %131 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %7
  %132 = load i64, ptr %131, align 8, !tbaa !11
  %133 = and i64 %132, %130
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %126
  %136 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %137 = and i64 %136, %130
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %135, %126
  %140 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %7
  %141 = load i64, ptr %140, align 8, !tbaa !11
  %142 = and i64 %141, %130
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %146 = and i64 %145, %130
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139, %144, %69, %74
  br label %149

149:                                              ; preds = %144, %135, %122, %111, %92, %85, %78, %74, %65, %52, %41, %22, %15, %8, %148
  %150 = phi i32 [ 0, %148 ], [ 2, %8 ], [ 4, %15 ], [ 6, %22 ], [ 8, %41 ], [ 8, %52 ], [ 12, %65 ], [ 12, %74 ], [ 1, %78 ], [ 3, %85 ], [ 5, %92 ], [ 7, %111 ], [ 7, %122 ], [ 11, %135 ], [ 11, %144 ]
  ret i32 %150
}

; Function Attrs: optsize
declare noundef i64 @_Z11RankAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_Z11FileAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_Z15DiagonalAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z8in_checkP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef nonnull %0, i32 noundef %7, i32 noundef 0) #2, !range !14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !15
  %12 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef nonnull %0, i32 noundef %11, i32 noundef 1) #2, !range !14
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %8, %5 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_Z10attacks_toP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 7
  %4 = ashr i32 %1, 3
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !11
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !11
  %12 = and i64 %11, %8
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %9
  %16 = load i64, ptr %15, align 8, !tbaa !11
  %17 = and i64 %16, %14
  %18 = or i64 %17, %12
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %20 = load i64, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %22 = load i64, ptr %21, align 8, !tbaa !11
  %23 = or i64 %22, %20
  %24 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %9
  %25 = load i64, ptr %24, align 8, !tbaa !11
  %26 = and i64 %23, %25
  %27 = or i64 %18, %26
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %29 = load i64, ptr %28, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %31 = load i64, ptr %30, align 8, !tbaa !11
  %32 = or i64 %31, %29
  %33 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %9
  %34 = load i64, ptr %33, align 8, !tbaa !11
  %35 = and i64 %32, %34
  %36 = or i64 %27, %35
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %40 = load i64, ptr %39, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %42 = load i64, ptr %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %44 = load i64, ptr %43, align 8, !tbaa !11
  %45 = or i64 %38, %42
  %46 = or i64 %45, %40
  %47 = or i64 %46, %44
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %49 = load i64, ptr %48, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %51 = load i64, ptr %50, align 8, !tbaa !11
  %52 = or i64 %49, %51
  %53 = or i64 %52, %40
  %54 = or i64 %53, %44
  %55 = sext i32 %4 to i64
  %56 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !11
  %58 = and i64 %57, %47
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %2
  %61 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %6, i32 noundef %1) #2
  %62 = and i64 %61, %47
  %63 = or i64 %62, %36
  br label %64

64:                                               ; preds = %60, %2
  %65 = phi i64 [ %63, %60 ], [ %36, %2 ]
  %66 = zext nneg i32 %3 to i64
  %67 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !11
  %69 = and i64 %68, %47
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %6, i32 noundef %1) #2
  %73 = and i64 %72, %47
  %74 = or i64 %73, %65
  br label %75

75:                                               ; preds = %71, %64
  %76 = phi i64 [ %74, %71 ], [ %65, %64 ]
  %77 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %9
  %78 = load i64, ptr %77, align 8, !tbaa !11
  %79 = and i64 %78, %54
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %6, i32 noundef %1) #2
  %83 = and i64 %82, %54
  %84 = or i64 %83, %76
  br label %85

85:                                               ; preds = %81, %75
  %86 = phi i64 [ %84, %81 ], [ %76, %75 ]
  %87 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %9
  %88 = load i64, ptr %87, align 8, !tbaa !11
  %89 = and i64 %88, %54
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %6, i32 noundef %1) #2
  %93 = and i64 %92, %54
  %94 = or i64 %93, %86
  br label %95

95:                                               ; preds = %91, %85
  %96 = phi i64 [ %94, %91 ], [ %86, %85 ]
  ret i64 %96
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 264}
!6 = !{!"_ZTS7state_t", !7, i64 0, !8, i64 4, !10, i64 264, !10, i64 272, !10, i64 280, !8, i64 288, !7, i64 392, !7, i64 396, !8, i64 400, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !10, i64 480, !10, i64 488, !8, i64 496, !8, i64 2544, !8, i64 2800, !8, i64 3056, !10, i64 4080, !10, i64 4088, !7, i64 4096, !8, i64 4100, !7, i64 4356, !7, i64 4360, !7, i64 4364, !7, i64 4368, !7, i64 4372, !7, i64 4376, !7, i64 4380, !7, i64 4384, !7, i64 4388, !7, i64 4392, !8, i64 4400}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"long long", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !7, i64 460}
!13 = !{!6, !7, i64 464}
!14 = !{i32 0, i32 13}
!15 = !{!6, !7, i64 468}
