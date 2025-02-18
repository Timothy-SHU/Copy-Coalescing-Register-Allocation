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

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z11is_attackedP7state_tii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !48 {
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i32 %2, 0
  %7 = sext i32 %1 to i64
  br i1 %6, label %8, label %78, !prof !55

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %10 = load i64, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %7
  %12 = load i64, ptr %11, align 8, !tbaa !56
  %13 = and i64 %12, %10
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %149, !prof !57

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %17 = load i64, ptr %16, align 8, !tbaa !56
  %18 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %7
  %19 = load i64, ptr %18, align 8, !tbaa !56
  %20 = and i64 %19, %17
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %149, !prof !58

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %24 = load i64, ptr %23, align 8, !tbaa !56
  %25 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %7
  %26 = load i64, ptr %25, align 8, !tbaa !56
  %27 = and i64 %26, %24
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %149, !prof !59

29:                                               ; preds = %22
  %30 = ashr i32 %1, 3
  %31 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %34 = load i64, ptr %33, align 8, !tbaa !56
  %35 = or i64 %34, %32
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !56
  %39 = and i64 %38, %35
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41, !prof !60

41:                                               ; preds = %29
  %42 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %5, i32 noundef %1)
  %43 = and i64 %42, %35
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %149, !prof !61

45:                                               ; preds = %41, %29
  %46 = and i32 %1, 7
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !56
  %50 = and i64 %49, %35
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52, !prof !62

52:                                               ; preds = %45
  %53 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %5, i32 noundef %1)
  %54 = and i64 %53, %35
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %149, !prof !63

56:                                               ; preds = %52, %45
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %58 = load i64, ptr %57, align 8, !tbaa !56
  %59 = load i64, ptr %33, align 8, !tbaa !56
  %60 = or i64 %59, %58
  %61 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %7
  %62 = load i64, ptr %61, align 8, !tbaa !56
  %63 = and i64 %62, %60
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %69, label %65, !prof !64

65:                                               ; preds = %56
  %66 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %5, i32 noundef %1)
  %67 = and i64 %66, %60
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %149, !prof !65

69:                                               ; preds = %65, %56
  %70 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %7
  %71 = load i64, ptr %70, align 8, !tbaa !56
  %72 = and i64 %71, %60
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %148, label %74, !prof !66

74:                                               ; preds = %69
  %75 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %5, i32 noundef %1)
  %76 = and i64 %75, %60
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %148, label %149, !prof !67

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %80 = load i64, ptr %79, align 8, !tbaa !56
  %81 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %7
  %82 = load i64, ptr %81, align 8, !tbaa !56
  %83 = and i64 %82, %80
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %149, !prof !68

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %87 = load i64, ptr %86, align 8, !tbaa !56
  %88 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %7
  %89 = load i64, ptr %88, align 8, !tbaa !56
  %90 = and i64 %89, %87
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %149, !prof !69

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %94 = load i64, ptr %93, align 8, !tbaa !56
  %95 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %7
  %96 = load i64, ptr %95, align 8, !tbaa !56
  %97 = and i64 %96, %94
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %149, !prof !70

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %101 = load i64, ptr %100, align 8, !tbaa !56
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %103 = load i64, ptr %102, align 8, !tbaa !56
  %104 = or i64 %103, %101
  %105 = ashr i32 %1, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !56
  %109 = and i64 %108, %104
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111, !prof !71

111:                                              ; preds = %99
  %112 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %5, i32 noundef %1)
  %113 = and i64 %112, %104
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %149, !prof !72

115:                                              ; preds = %111, %99
  %116 = and i32 %1, 7
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %117
  %119 = load i64, ptr %118, align 8, !tbaa !56
  %120 = and i64 %119, %104
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %126, label %122, !prof !73

122:                                              ; preds = %115
  %123 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %5, i32 noundef %1)
  %124 = and i64 %123, %104
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %149, !prof !74

126:                                              ; preds = %122, %115
  %127 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %128 = load i64, ptr %127, align 8, !tbaa !56
  %129 = load i64, ptr %102, align 8, !tbaa !56
  %130 = or i64 %129, %128
  %131 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %7
  %132 = load i64, ptr %131, align 8, !tbaa !56
  %133 = and i64 %132, %130
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %139, label %135, !prof !75

135:                                              ; preds = %126
  %136 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %5, i32 noundef %1)
  %137 = and i64 %136, %130
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %149, !prof !76

139:                                              ; preds = %135, %126
  %140 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %7
  %141 = load i64, ptr %140, align 8, !tbaa !56
  %142 = and i64 %141, %130
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %148, label %144, !prof !77

144:                                              ; preds = %139
  %145 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %5, i32 noundef %1)
  %146 = and i64 %145, %130
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149, !prof !78

148:                                              ; preds = %144, %74, %69, %139
  br label %149

149:                                              ; preds = %144, %135, %122, %111, %92, %85, %78, %74, %65, %52, %41, %22, %15, %8, %148
  %150 = phi i32 [ 0, %148 ], [ 2, %8 ], [ 4, %15 ], [ 6, %22 ], [ 8, %41 ], [ 8, %52 ], [ 12, %65 ], [ 12, %74 ], [ 1, %78 ], [ 3, %85 ], [ 5, %92 ], [ 7, %111 ], [ 7, %122 ], [ 11, %135 ], [ 11, %144 ]
  ret i32 %150
}

declare noundef i64 @_Z11RankAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_Z11FileAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_Z15DiagonalAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z8in_checkP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !79 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !49
  br i1 %4, label %81, label %7, !prof !81

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %11 = load i64, ptr %10, align 8, !tbaa !56
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !56
  %15 = and i64 %14, %11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %155, !prof !57

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %19 = load i64, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %12
  %21 = load i64, ptr %20, align 8, !tbaa !56
  %22 = and i64 %21, %19
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %155, !prof !58

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %26 = load i64, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %12
  %28 = load i64, ptr %27, align 8, !tbaa !56
  %29 = and i64 %28, %26
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %155, !prof !59

31:                                               ; preds = %24
  %32 = ashr i32 %9, 3
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %34 = load i64, ptr %33, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %36 = load i64, ptr %35, align 8, !tbaa !56
  %37 = or i64 %36, %34
  %38 = sext i32 %32 to i64
  %39 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !56
  %41 = and i64 %40, %37
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43, !prof !60

43:                                               ; preds = %31
  %44 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %6, i32 noundef %9)
  %45 = and i64 %44, %37
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %155, !prof !61

47:                                               ; preds = %43, %31
  %48 = and i32 %9, 7
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !56
  %52 = and i64 %51, %37
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54, !prof !62

54:                                               ; preds = %47
  %55 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %6, i32 noundef %9)
  %56 = and i64 %55, %37
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %155, !prof !63

58:                                               ; preds = %54, %47
  %59 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %60 = load i64, ptr %59, align 8, !tbaa !56
  %61 = load i64, ptr %35, align 8, !tbaa !56
  %62 = or i64 %61, %60
  %63 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %12
  %64 = load i64, ptr %63, align 8, !tbaa !56
  %65 = and i64 %64, %62
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %71, label %67, !prof !64

67:                                               ; preds = %58
  %68 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %6, i32 noundef %9)
  %69 = and i64 %68, %62
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %155, !prof !65

71:                                               ; preds = %67, %58
  %72 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %12
  %73 = load i64, ptr %72, align 8, !tbaa !56
  %74 = and i64 %73, %62
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %80, label %76, !prof !66

76:                                               ; preds = %71
  %77 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %6, i32 noundef %9)
  %78 = and i64 %77, %62
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %155, !prof !67

80:                                               ; preds = %76, %71
  br label %155

81:                                               ; preds = %1
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 13
  %83 = load i32, ptr %82, align 4, !tbaa !83
  %84 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %85 = load i64, ptr %84, align 8, !tbaa !56
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8, !tbaa !56
  %89 = and i64 %88, %85
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %155, !prof !68

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %93 = load i64, ptr %92, align 8, !tbaa !56
  %94 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %86
  %95 = load i64, ptr %94, align 8, !tbaa !56
  %96 = and i64 %95, %93
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %155, !prof !69

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %100 = load i64, ptr %99, align 8, !tbaa !56
  %101 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %86
  %102 = load i64, ptr %101, align 8, !tbaa !56
  %103 = and i64 %102, %100
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %155, !prof !70

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %107 = load i64, ptr %106, align 8, !tbaa !56
  %108 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %109 = load i64, ptr %108, align 8, !tbaa !56
  %110 = or i64 %109, %107
  %111 = ashr i32 %83, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !56
  %115 = and i64 %114, %110
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %121, label %117, !prof !71

117:                                              ; preds = %105
  %118 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %6, i32 noundef %83)
  %119 = and i64 %118, %110
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %155, !prof !72

121:                                              ; preds = %117, %105
  %122 = and i32 %83, 7
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !56
  %126 = and i64 %125, %110
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %132, label %128, !prof !73

128:                                              ; preds = %121
  %129 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %6, i32 noundef %83)
  %130 = and i64 %129, %110
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %155, !prof !74

132:                                              ; preds = %128, %121
  %133 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %134 = load i64, ptr %133, align 8, !tbaa !56
  %135 = load i64, ptr %108, align 8, !tbaa !56
  %136 = or i64 %135, %134
  %137 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %86
  %138 = load i64, ptr %137, align 8, !tbaa !56
  %139 = and i64 %138, %136
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %145, label %141, !prof !75

141:                                              ; preds = %132
  %142 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %6, i32 noundef %83)
  %143 = and i64 %142, %136
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %155, !prof !76

145:                                              ; preds = %141, %132
  %146 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %86
  %147 = load i64, ptr %146, align 8, !tbaa !56
  %148 = and i64 %147, %136
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %154, label %150, !prof !77

150:                                              ; preds = %145
  %151 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %6, i32 noundef %83)
  %152 = and i64 %151, %136
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155, !prof !78

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %154, %150, %141, %128, %117, %98, %91, %81, %80, %76, %67, %54, %43, %24, %17, %7
  %156 = phi i32 [ 0, %80 ], [ 2, %7 ], [ 4, %17 ], [ 6, %24 ], [ 8, %43 ], [ 8, %54 ], [ 12, %67 ], [ 12, %76 ], [ 0, %154 ], [ 1, %81 ], [ 3, %91 ], [ 5, %98 ], [ 7, %117 ], [ 7, %128 ], [ 11, %141 ], [ 11, %150 ]
  ret i32 %156
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i64 @_Z10attacks_toP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !84 {
  %3 = and i32 %1, 7
  %4 = ashr i32 %1, 3
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !56
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !56
  %12 = and i64 %11, %8
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !56
  %15 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %9
  %16 = load i64, ptr %15, align 8, !tbaa !56
  %17 = and i64 %16, %14
  %18 = or i64 %17, %12
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %20 = load i64, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %22 = load i64, ptr %21, align 8, !tbaa !56
  %23 = or i64 %22, %20
  %24 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %9
  %25 = load i64, ptr %24, align 8, !tbaa !56
  %26 = and i64 %23, %25
  %27 = or i64 %18, %26
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %29 = load i64, ptr %28, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %31 = load i64, ptr %30, align 8, !tbaa !56
  %32 = or i64 %31, %29
  %33 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %9
  %34 = load i64, ptr %33, align 8, !tbaa !56
  %35 = and i64 %32, %34
  %36 = or i64 %27, %35
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %38 = load i64, ptr %37, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %40 = load i64, ptr %39, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %42 = load i64, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %44 = load i64, ptr %43, align 8, !tbaa !56
  %45 = or i64 %38, %42
  %46 = or i64 %45, %40
  %47 = or i64 %46, %44
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %49 = load i64, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %51 = load i64, ptr %50, align 8, !tbaa !56
  %52 = or i64 %49, %51
  %53 = or i64 %52, %40
  %54 = or i64 %53, %44
  %55 = sext i32 %4 to i64
  %56 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !56
  %58 = and i64 %57, %47
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60, !prof !85

60:                                               ; preds = %2
  %61 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %6, i32 noundef %1)
  %62 = and i64 %61, %47
  %63 = or i64 %62, %36
  br label %64

64:                                               ; preds = %60, %2
  %65 = phi i64 [ %63, %60 ], [ %36, %2 ]
  %66 = zext nneg i32 %3 to i64
  %67 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !56
  %69 = and i64 %68, %47
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71, !prof !86

71:                                               ; preds = %64
  %72 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %6, i32 noundef %1)
  %73 = and i64 %72, %47
  %74 = or i64 %73, %65
  br label %75

75:                                               ; preds = %71, %64
  %76 = phi i64 [ %74, %71 ], [ %65, %64 ]
  %77 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %9
  %78 = load i64, ptr %77, align 8, !tbaa !56
  %79 = and i64 %78, %54
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81, !prof !87

81:                                               ; preds = %75
  %82 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %6, i32 noundef %1)
  %83 = and i64 %82, %54
  %84 = or i64 %83, %76
  br label %85

85:                                               ; preds = %81, %75
  %86 = phi i64 [ %84, %81 ], [ %76, %75 ]
  %87 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %9
  %88 = load i64, ptr %87, align 8, !tbaa !56
  %89 = and i64 %88, %54
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %95, label %91, !prof !88

91:                                               ; preds = %85
  %92 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %6, i32 noundef %1)
  %93 = and i64 %92, %54
  %94 = or i64 %93, %86
  br label %95

95:                                               ; preds = %91, %85
  %96 = phi i64 [ %94, %91 ], [ %86, %85 ]
  ret i64 %96
}

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!47}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z11RankAttacksyj, i64 89749010}
!36 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z11FileAttacksyj, i64 126586096}
!37 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z15DiagonalAttacksyj, i64 95540384}
!38 = !{ptr @_Z11is_attackedP7state_tii, ptr @_Z15AntiDiagAttacksyj, i64 46469494}
!39 = !{ptr @_Z8in_checkP7state_t, ptr @_Z11RankAttacksyj, i64 63485979}
!40 = !{ptr @_Z8in_checkP7state_t, ptr @_Z11FileAttacksyj, i64 89635821}
!41 = !{ptr @_Z8in_checkP7state_t, ptr @_Z15DiagonalAttacksyj, i64 69607848}
!42 = !{ptr @_Z8in_checkP7state_t, ptr @_Z15AntiDiagAttacksyj, i64 31755285}
!43 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z11RankAttacksyj, i64 308367889}
!44 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z11FileAttacksyj, i64 352944178}
!45 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z15DiagonalAttacksyj, i64 278039722}
!46 = !{ptr @_Z10attacks_toP7state_ti, ptr @_Z15AntiDiagAttacksyj, i64 257395063}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 919007640}
!49 = !{!50, !54, i64 264}
!50 = !{!"_ZTS7state_t", !51, i64 0, !52, i64 4, !54, i64 264, !54, i64 272, !54, i64 280, !52, i64 288, !51, i64 392, !51, i64 396, !52, i64 400, !51, i64 452, !51, i64 456, !51, i64 460, !51, i64 464, !51, i64 468, !51, i64 472, !51, i64 476, !54, i64 480, !54, i64 488, !52, i64 496, !52, i64 2544, !52, i64 2800, !52, i64 3056, !54, i64 4080, !54, i64 4088, !51, i64 4096, !52, i64 4100, !51, i64 4356, !51, i64 4360, !51, i64 4364, !51, i64 4368, !51, i64 4372, !51, i64 4376, !51, i64 4380, !51, i64 4384, !51, i64 4388, !51, i64 4392, !52, i64 4400}
!51 = !{!"int", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!"long long", !52, i64 0}
!55 = !{!"branch_weights", i32 732251500, i32 830749097}
!56 = !{!54, !54, i64 0}
!57 = !{!"branch_weights", i32 730634172, i32 1617328}
!58 = !{!"branch_weights", i32 720513657, i32 10120515}
!59 = !{!"branch_weights", i32 720476165, i32 37492}
!60 = !{!"branch_weights", i32 662782788, i32 57693377}
!61 = !{!"branch_weights", i32 14864840, i32 42828537}
!62 = !{!"branch_weights", i32 598419404, i32 79228224}
!63 = !{!"branch_weights", i32 64313375, i32 14914849}
!64 = !{!"branch_weights", i32 648384394, i32 14348385}
!65 = !{!"branch_weights", i32 6769397, i32 7578988}
!66 = !{!"branch_weights", i32 599345859, i32 55807932}
!67 = !{!"branch_weights", i32 39217368, i32 16590564}
!68 = !{!"branch_weights", i32 824050972, i32 6698125}
!69 = !{!"branch_weights", i32 812078496, i32 11972476}
!70 = !{!"branch_weights", i32 812023202, i32 55294}
!71 = !{!"branch_weights", i32 717076112, i32 94947090}
!72 = !{!"branch_weights", i32 26449409, i32 68497681}
!73 = !{!"branch_weights", i32 607462670, i32 136062851}
!74 = !{!"branch_weights", i32 80394157, i32 55668694}
!75 = !{!"branch_weights", i32 539715075, i32 148141752}
!76 = !{!"branch_weights", i32 110874220, i32 37267532}
!77 = !{!"branch_weights", i32 627364318, i32 23224977}
!78 = !{!"branch_weights", i32 7649177, i32 15575800}
!79 = !{!"function_entry_count", i64 643992957}
!80 = !{!50, !51, i64 460}
!81 = !{!"branch_weights", i32 359034344, i32 284958613}
!82 = !{!50, !51, i64 464}
!83 = !{!50, !51, i64 468}
!84 = !{!"function_entry_count", i64 859881838}
!85 = !{!"branch_weights", i32 551513949, i32 308367889}
!86 = !{!"branch_weights", i32 506937660, i32 352944178}
!87 = !{!"branch_weights", i32 581842116, i32 278039722}
!88 = !{!"branch_weights", i32 602486775, i32 257395063}
