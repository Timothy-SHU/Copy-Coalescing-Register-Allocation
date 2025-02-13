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
define dso_local noundef i32 @_Z11is_attackedP7state_tii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !45 {
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %2, 0
  %7 = sext i32 %1 to i64
  br i1 %6, label %8, label %78, !prof !52

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %10 = load i64, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %7
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = and i64 %12, %10
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %149, !prof !54

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %17 = load i64, ptr %16, align 8, !tbaa !53
  %18 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %7
  %19 = load i64, ptr %18, align 8, !tbaa !53
  %20 = and i64 %19, %17
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %149, !prof !55

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %24 = load i64, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %7
  %26 = load i64, ptr %25, align 8, !tbaa !53
  %27 = and i64 %26, %24
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %149, !prof !56

29:                                               ; preds = %22
  %30 = ashr i32 %1, 3
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !53
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %34 = load i64, ptr %33, align 8, !tbaa !53
  %35 = or i64 %34, %32
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !53
  %39 = and i64 %38, %35
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41, !prof !57

41:                                               ; preds = %29
  %42 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %43 = and i64 %42, %35
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %149, !prof !58

45:                                               ; preds = %41, %29
  %46 = and i32 %1, 7
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !53
  %50 = and i64 %49, %35
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52, !prof !59

52:                                               ; preds = %45
  %53 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %54 = and i64 %53, %35
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %149, !prof !60

56:                                               ; preds = %52, %45
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %58 = load i64, ptr %57, align 8, !tbaa !53
  %59 = load i64, ptr %33, align 8, !tbaa !53
  %60 = or i64 %59, %58
  %61 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %7
  %62 = load i64, ptr %61, align 8, !tbaa !53
  %63 = and i64 %62, %60
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %69, label %65, !prof !61

65:                                               ; preds = %56
  %66 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %67 = and i64 %66, %60
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %149, !prof !62

69:                                               ; preds = %65, %56
  %70 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %7
  %71 = load i64, ptr %70, align 8, !tbaa !53
  %72 = and i64 %71, %60
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %148, label %74, !prof !63

74:                                               ; preds = %69
  %75 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %76 = and i64 %75, %60
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %148, label %149, !prof !64

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %80 = load i64, ptr %79, align 8, !tbaa !53
  %81 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %7
  %82 = load i64, ptr %81, align 8, !tbaa !53
  %83 = and i64 %82, %80
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %149, !prof !65

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %87 = load i64, ptr %86, align 8, !tbaa !53
  %88 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %7
  %89 = load i64, ptr %88, align 8, !tbaa !53
  %90 = and i64 %89, %87
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %149, !prof !66

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %94 = load i64, ptr %93, align 8, !tbaa !53
  %95 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %7
  %96 = load i64, ptr %95, align 8, !tbaa !53
  %97 = and i64 %96, %94
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %149, !prof !67

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %101 = load i64, ptr %100, align 8, !tbaa !53
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %103 = load i64, ptr %102, align 8, !tbaa !53
  %104 = or i64 %103, %101
  %105 = ashr i32 %1, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !53
  %109 = and i64 %108, %104
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111, !prof !68

111:                                              ; preds = %99
  %112 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %113 = and i64 %112, %104
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %149, !prof !69

115:                                              ; preds = %111, %99
  %116 = and i32 %1, 7
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !53
  %120 = and i64 %119, %104
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %126, label %122, !prof !70

122:                                              ; preds = %115
  %123 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %124 = and i64 %123, %104
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %149, !prof !71

126:                                              ; preds = %122, %115
  %127 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %128 = load i64, ptr %127, align 8, !tbaa !53
  %129 = load i64, ptr %102, align 8, !tbaa !53
  %130 = or i64 %129, %128
  %131 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %7
  %132 = load i64, ptr %131, align 8, !tbaa !53
  %133 = and i64 %132, %130
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %139, label %135, !prof !72

135:                                              ; preds = %126
  %136 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %137 = and i64 %136, %130
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %149, !prof !73

139:                                              ; preds = %135, %126
  %140 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %7
  %141 = load i64, ptr %140, align 8, !tbaa !53
  %142 = and i64 %141, %130
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %148, label %144, !prof !74

144:                                              ; preds = %139
  %145 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %5, i32 noundef %1) #2
  %146 = and i64 %145, %130
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149, !prof !75

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
define dso_local noundef i32 @_Z8in_checkP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !76 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !78

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 8, !tbaa !79
  %8 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef nonnull %0, i32 noundef %7, i32 noundef 0) #2, !range !80
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = tail call noundef i32 @_Z11is_attackedP7state_tii(ptr noundef nonnull %0, i32 noundef %11, i32 noundef 1) #2, !range !80
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %8, %5 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_Z10attacks_toP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !82 {
  %3 = and i32 %1, 7
  %4 = ashr i32 %1, 3
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !53
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !53
  %12 = and i64 %11, %8
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %9
  %16 = load i64, ptr %15, align 8, !tbaa !53
  %17 = and i64 %16, %14
  %18 = or i64 %17, %12
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %20 = load i64, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %22 = load i64, ptr %21, align 8, !tbaa !53
  %23 = or i64 %22, %20
  %24 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %9
  %25 = load i64, ptr %24, align 8, !tbaa !53
  %26 = and i64 %23, %25
  %27 = or i64 %18, %26
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %29 = load i64, ptr %28, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %31 = load i64, ptr %30, align 8, !tbaa !53
  %32 = or i64 %31, %29
  %33 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %9
  %34 = load i64, ptr %33, align 8, !tbaa !53
  %35 = and i64 %32, %34
  %36 = or i64 %27, %35
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %40 = load i64, ptr %39, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %42 = load i64, ptr %41, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %44 = load i64, ptr %43, align 8, !tbaa !53
  %45 = or i64 %38, %42
  %46 = or i64 %45, %40
  %47 = or i64 %46, %44
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %49 = load i64, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %51 = load i64, ptr %50, align 8, !tbaa !53
  %52 = or i64 %49, %51
  %53 = or i64 %52, %40
  %54 = or i64 %53, %44
  %55 = sext i32 %4 to i64
  %56 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !53
  %58 = and i64 %57, %47
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60, !prof !83

60:                                               ; preds = %2
  %61 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %6, i32 noundef %1) #2
  %62 = and i64 %61, %47
  %63 = or i64 %62, %36
  br label %64

64:                                               ; preds = %60, %2
  %65 = phi i64 [ %63, %60 ], [ %36, %2 ]
  %66 = zext nneg i32 %3 to i64
  %67 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !53
  %69 = and i64 %68, %47
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71, !prof !84

71:                                               ; preds = %64
  %72 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %6, i32 noundef %1) #2
  %73 = and i64 %72, %47
  %74 = or i64 %73, %65
  br label %75

75:                                               ; preds = %71, %64
  %76 = phi i64 [ %74, %71 ], [ %65, %64 ]
  %77 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %9
  %78 = load i64, ptr %77, align 8, !tbaa !53
  %79 = and i64 %78, %54
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81, !prof !85

81:                                               ; preds = %75
  %82 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %6, i32 noundef %1) #2
  %83 = and i64 %82, %54
  %84 = or i64 %83, %76
  br label %85

85:                                               ; preds = %81, %75
  %86 = phi i64 [ %84, %81 ], [ %76, %75 ]
  %87 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %9
  %88 = load i64, ptr %87, align 8, !tbaa !53
  %89 = and i64 %88, %54
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %95, label %91, !prof !86

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 126727826429}
!4 = !{!"MaxCount", i64 7592818589}
!5 = !{!"MaxInternalCount", i64 4612963787}
!6 = !{!"MaxFunctionCount", i64 7592818589}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7592818589, i32 1}
!14 = !{i32 100000, i64 5393808666, i32 2}
!15 = !{i32 200000, i64 3322262585, i32 6}
!16 = !{i32 300000, i64 2468518944, i32 10}
!17 = !{i32 400000, i64 1837796421, i32 16}
!18 = !{i32 500000, i64 887660800, i32 29}
!19 = !{i32 600000, i64 608930740, i32 46}
!20 = !{i32 700000, i64 396110762, i32 71}
!21 = !{i32 800000, i64 205990918, i32 118}
!22 = !{i32 900000, i64 105535903, i32 199}
!23 = !{i32 950000, i64 66857471, i32 270}
!24 = !{i32 990000, i64 20633230, i32 388}
!25 = !{i32 999000, i64 3210553, i32 503}
!26 = !{i32 999900, i64 480625, i32 581}
!27 = !{i32 999990, i64 63262, i32 633}
!28 = !{i32 999999, i64 5111, i32 689}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z11RankAttacksyj, i64 152640468}
!36 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z11FileAttacksyj, i64 215291076}
!37 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z15DiagonalAttacksyj, i64 162490138}
!38 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z15AntiDiagAttacksyj, i64 79032911}
!39 = !{ptr @_Z8in_checkP7state_t, ptr @_Z11is_attackedP7state_tii, i64 643992957}
!40 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z11RankAttacksyj, i64 308367889}
!41 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z11FileAttacksyj, i64 352944178}
!42 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z15DiagonalAttacksyj, i64 278039723}
!43 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z15AntiDiagAttacksyj, i64 257395063}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1563000597}
!46 = !{!47, !51, i64 264}
!47 = !{!"_ZTS7state_t", !48, i64 0, !49, i64 4, !51, i64 264, !51, i64 272, !51, i64 280, !49, i64 288, !48, i64 392, !48, i64 396, !49, i64 400, !48, i64 452, !48, i64 456, !48, i64 460, !48, i64 464, !48, i64 468, !48, i64 472, !48, i64 476, !51, i64 480, !51, i64 488, !49, i64 496, !49, i64 2544, !49, i64 2800, !49, i64 3056, !51, i64 4080, !51, i64 4088, !48, i64 4096, !49, i64 4100, !48, i64 4356, !48, i64 4360, !48, i64 4364, !48, i64 4368, !48, i64 4372, !48, i64 4376, !48, i64 4380, !48, i64 4384, !48, i64 4388, !48, i64 4392, !49, i64 4400}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"long long", !49, i64 0}
!52 = !{!"branch_weights", i32 732251501, i32 830749098}
!53 = !{!51, !51, i64 0}
!54 = !{!"branch_weights", i32 730634173, i32 1617329}
!55 = !{!"branch_weights", i32 720513658, i32 10120516}
!56 = !{!"branch_weights", i32 720476166, i32 37493}
!57 = !{!"branch_weights", i32 662782789, i32 57693378}
!58 = !{!"branch_weights", i32 14864841, i32 42828538}
!59 = !{!"branch_weights", i32 598419405, i32 79228225}
!60 = !{!"branch_weights", i32 64313376, i32 14914850}
!61 = !{!"branch_weights", i32 648384395, i32 14348386}
!62 = !{!"branch_weights", i32 6769398, i32 7578989}
!63 = !{!"branch_weights", i32 599345860, i32 55807933}
!64 = !{!"branch_weights", i32 39217369, i32 16590565}
!65 = !{!"branch_weights", i32 824050973, i32 6698126}
!66 = !{!"branch_weights", i32 812078497, i32 11972477}
!67 = !{!"branch_weights", i32 812023203, i32 55295}
!68 = !{!"branch_weights", i32 717076113, i32 94947091}
!69 = !{!"branch_weights", i32 26449410, i32 68497682}
!70 = !{!"branch_weights", i32 607462671, i32 136062852}
!71 = !{!"branch_weights", i32 80394158, i32 55668695}
!72 = !{!"branch_weights", i32 539715076, i32 148141753}
!73 = !{!"branch_weights", i32 110874221, i32 37267533}
!74 = !{!"branch_weights", i32 627364319, i32 23224978}
!75 = !{!"branch_weights", i32 7649178, i32 15575801}
!76 = !{!"function_entry_count", i64 643992957}
!77 = !{!47, !48, i64 460}
!78 = !{!"branch_weights", i32 359034345, i32 284958614}
!79 = !{!47, !48, i64 464}
!80 = !{i32 0, i32 13}
!81 = !{!47, !48, i64 468}
!82 = !{!"function_entry_count", i64 859881838}
!83 = !{!"branch_weights", i32 551513950, i32 308367890}
!84 = !{!"branch_weights", i32 506937661, i32 352944179}
!85 = !{!"branch_weights", i32 581842117, i32 278039723}
!86 = !{!"branch_weights", i32 602486776, i32 257395064}
