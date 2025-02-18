; ModuleID = 'bitboard.cpp'
source_filename = "bitboard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@KnightMoves = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@KingMoves = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@PawnAttacksBlack = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@PawnAttacksWhite = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@PawnMovesBlack = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@PawnMovesWhite = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@fillUpAttacks = dso_local local_unnamed_addr global [64 x [8 x i64]] zeroinitializer, align 16
@aFileAttacks = dso_local local_unnamed_addr global [64 x [8 x i64]] zeroinitializer, align 16
@firstRankAttacks = dso_local local_unnamed_addr global [64 x [8 x i8]] zeroinitializer, align 16
@Mask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@InvMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@DiagMaska1h8 = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@DiagMaska8h1 = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@FileMask = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 16
@RankMask = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 16
@AboveMask = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 16
@BelowMask = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 16
@LeftMask = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 16
@RightMask = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 16
@RookMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@BishopMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@QueenMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@CastleMask = dso_local local_unnamed_addr global [4 x i64] zeroinitializer, align 16
@FileUpMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@FileDownMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@WhiteKingSide = dso_local local_unnamed_addr global i64 0, align 8
@WhiteQueenSide = dso_local local_unnamed_addr global i64 0, align 8
@BlackKingSide = dso_local local_unnamed_addr global i64 0, align 8
@BlackQueenSide = dso_local local_unnamed_addr global i64 0, align 8
@KingSafetyMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@KingSafetyMask1 = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@WhiteStrongSquareMask = dso_local local_unnamed_addr global i64 0, align 8
@BlackStrongSquareMask = dso_local local_unnamed_addr global i64 0, align 8
@WhiteSqMask = dso_local local_unnamed_addr global i64 0, align 8
@BlackSqMask = dso_local local_unnamed_addr global i64 0, align 8
@KSMask = dso_local local_unnamed_addr global i64 0, align 8
@QSMask = dso_local local_unnamed_addr global i64 0, align 8
@KingFilesMask = dso_local local_unnamed_addr global [8 x i64] zeroinitializer, align 16
@KingPressureMask = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@KingPressureMask1 = dso_local local_unnamed_addr global [64 x i64] zeroinitializer, align 16
@CenterMask = dso_local local_unnamed_addr global i64 0, align 8
@SpaceMask = dso_local local_unnamed_addr global [2 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"All\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"WhitePieces\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"BlackPieces\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Whitepawns\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Blackpawns\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"WhiteKnights\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"BlackKnights\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"WhiteBishops\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"BlackBishops\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"WhiteRooks\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"BlackRooks\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"WhiteQueens\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"BlackQueens\0A\00", align 1
@_ZL19DiagonalLength_a1h8 = internal unnamed_addr constant [64 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 7, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 7, i32 6, i32 4, i32 5, i32 6, i32 7, i32 8, i32 7, i32 6, i32 5, i32 5, i32 6, i32 7, i32 8, i32 7, i32 6, i32 5, i32 4, i32 6, i32 7, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 7, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@_ZL19DiagonalLength_a8h1 = internal unnamed_addr constant [64 x i32] [i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 7, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 6, i32 7, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 6, i32 7, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4, i32 5, i32 6, i32 7, i32 8, i32 7, i32 6, i32 5, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 7, i32 6, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 7, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8], align 16
@last_bit = external local_unnamed_addr global [65536 x i8], align 16

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z13PrintBitboardy(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %4 = shl nuw i64 1, %3
  %5 = and i64 %4, %0
  %6 = icmp eq i64 %5, 0
  %7 = select i1 %6, ptr @.str.1, ptr @.str
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %7)
  %8 = and i64 %3, 7
  %9 = icmp eq i64 %8, 7
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2)
  br label %11

11:                                               ; preds = %2, %10
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 64
  br i1 %13, label %14, label %2, !llvm.loop !35

14:                                               ; preds = %11
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2)
  ret void
}

declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z17PrintRotBitboardsP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.3)
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !38
  tail call void @_Z13PrintBitboardy(i64 noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z17PrintAllBitboardsP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.4)
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !44
  tail call void @_Z13PrintBitboardy(i64 noundef %3)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.5)
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !45
  tail call void @_Z13PrintBitboardy(i64 noundef %5)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.3)
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !38
  tail call void @_Z13PrintBitboardy(i64 noundef %7)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.6)
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %9)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.7)
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %11 = load i64, ptr %10, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %11)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.8)
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %13 = load i64, ptr %12, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %13)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.9)
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %15 = load i64, ptr %14, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %15)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.10)
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %17 = load i64, ptr %16, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %17)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.11)
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %19 = load i64, ptr %18, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %19)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.12)
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %21 = load i64, ptr %20, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %21)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.13)
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %23 = load i64, ptr %22, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %23)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.14)
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %25 = load i64, ptr %24, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %25)
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.15)
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %27 = load i64, ptr %26, align 8, !tbaa !46
  tail call void @_Z13PrintBitboardy(i64 noundef %27)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z22SetupPrecalculatedDatav() local_unnamed_addr #2 !prof !47 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %7, %1 ]
  %3 = shl nuw i64 1, %2
  %4 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %2
  store i64 %3, ptr %4, align 8, !tbaa !46
  %5 = xor i64 %3, -1
  %6 = getelementptr inbounds [64 x i64], ptr @InvMask, i64 0, i64 %2
  store i64 %5, ptr %6, align 8, !tbaa !46
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 64
  br i1 %8, label %9, label %1, !prof !48, !llvm.loop !49

9:                                                ; preds = %1, %20
  %10 = phi i64 [ %24, %20 ], [ 0, %1 ]
  %11 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %10
  store i64 0, ptr %11, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %10, %9 ], [ %18, %12 ]
  %14 = phi i64 [ 0, %9 ], [ %17, %12 ]
  %15 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %13
  %16 = load i64, ptr %15, align 8, !tbaa !46
  %17 = or i64 %14, %16
  %18 = add nuw nsw i64 %13, 8
  %19 = icmp ult i64 %13, 56
  br i1 %19, label %12, label %20, !prof !50, !llvm.loop !51

20:                                               ; preds = %12
  store i64 %17, ptr %11, align 8, !tbaa !46
  %21 = shl nuw nsw i64 %10, 3
  %22 = shl nuw i64 255, %21
  %23 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %10
  store i64 %22, ptr %23, align 8, !tbaa !46
  %24 = add nuw nsw i64 %10, 1
  %25 = icmp eq i64 %24, 8
  br i1 %25, label %26, label %9, !prof !52, !llvm.loop !53

26:                                               ; preds = %20, %56
  %27 = phi i64 [ %57, %56 ], [ 0, %20 ]
  %28 = getelementptr inbounds [64 x i64], ptr @FileUpMask, i64 0, i64 %27
  store i64 0, ptr %28, align 8, !tbaa !46
  %29 = getelementptr inbounds [64 x i64], ptr @FileDownMask, i64 0, i64 %27
  store i64 0, ptr %29, align 8, !tbaa !46
  %30 = icmp ugt i64 %27, 7
  br i1 %30, label %31, label %34, !prof !54

31:                                               ; preds = %26
  %32 = load i64, ptr %28, align 8, !tbaa !46
  br label %38

33:                                               ; preds = %38
  store i64 %45, ptr %28, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %33, %26
  %35 = icmp ult i64 %27, 56
  br i1 %35, label %36, label %56, !prof !54

36:                                               ; preds = %34
  %37 = load i64, ptr %29, align 8, !tbaa !46
  br label %47

38:                                               ; preds = %31, %38
  %39 = phi i64 [ %27, %31 ], [ %41, %38 ]
  %40 = phi i64 [ %32, %31 ], [ %45, %38 ]
  %41 = add nsw i64 %39, -8
  %42 = and i64 %41, 4294967295
  %43 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !46
  %45 = or i64 %40, %44
  %46 = icmp sgt i64 %39, 15
  br i1 %46, label %38, label %33, !prof !55, !llvm.loop !56

47:                                               ; preds = %36, %47
  %48 = phi i64 [ %27, %36 ], [ %50, %47 ]
  %49 = phi i64 [ %37, %36 ], [ %53, %47 ]
  %50 = add nuw nsw i64 %48, 8
  %51 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !46
  %53 = or i64 %49, %52
  %54 = icmp ult i64 %48, 48
  br i1 %54, label %47, label %55, !prof !55, !llvm.loop !57

55:                                               ; preds = %47
  store i64 %53, ptr %29, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %55, %34
  %57 = add nuw nsw i64 %27, 1
  %58 = icmp eq i64 %57, 64
  br i1 %58, label %59, label %26, !prof !48, !llvm.loop !58

59:                                               ; preds = %56, %109
  %60 = phi i64 [ %110, %109 ], [ 0, %56 ]
  %61 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %60
  store i64 0, ptr %61, align 8, !tbaa !46
  %62 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %60
  store i64 0, ptr %62, align 8, !tbaa !46
  %63 = trunc i64 %60 to i32
  %64 = and i32 %63, 7
  %65 = trunc i64 %60 to i32
  %66 = lshr i32 %65, 3
  %67 = getelementptr inbounds [64 x i32], ptr @_ZL19DiagonalLength_a1h8, i64 0, i64 %60
  %68 = load i32, ptr %67, align 4, !tbaa !59
  %69 = xor i32 %66, 7
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 %64)
  %71 = load i64, ptr %61, align 8, !tbaa !46
  %72 = tail call i32 @llvm.smax.i32(i32 %68, i32 1)
  %73 = zext nneg i32 %72 to i64
  %74 = trunc i64 %60 to i32
  br label %75

75:                                               ; preds = %59, %75
  %76 = phi i64 [ 0, %59 ], [ %86, %75 ]
  %77 = phi i64 [ %71, %59 ], [ %85, %75 ]
  %78 = trunc i64 %76 to i32
  %79 = sub i32 %70, %78
  %80 = mul i32 %79, 7
  %81 = add i32 %80, %74
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !46
  %85 = or i64 %77, %84
  %86 = add nuw nsw i64 %76, 1
  %87 = icmp eq i64 %86, %73
  br i1 %87, label %88, label %75, !prof !60, !llvm.loop !61

88:                                               ; preds = %75
  store i64 %85, ptr %61, align 8, !tbaa !46
  %89 = getelementptr inbounds [64 x i32], ptr @_ZL19DiagonalLength_a8h1, i64 0, i64 %60
  %90 = load i32, ptr %89, align 4, !tbaa !59
  %91 = tail call i32 @llvm.umin.i32(i32 %66, i32 %64)
  %92 = load i64, ptr %62, align 8, !tbaa !46
  %93 = tail call i32 @llvm.smax.i32(i32 %90, i32 1)
  %94 = zext nneg i32 %93 to i64
  %95 = trunc i64 %60 to i32
  br label %96

96:                                               ; preds = %88, %96
  %97 = phi i64 [ 0, %88 ], [ %107, %96 ]
  %98 = phi i64 [ %92, %88 ], [ %106, %96 ]
  %99 = trunc i64 %97 to i32
  %100 = sub i32 %99, %91
  %101 = mul i32 %100, 9
  %102 = add i32 %101, %95
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !46
  %106 = or i64 %98, %105
  %107 = add nuw nsw i64 %97, 1
  %108 = icmp eq i64 %107, %94
  br i1 %108, label %109, label %96, !prof !60, !llvm.loop !62

109:                                              ; preds = %96
  store i64 %106, ptr %62, align 8, !tbaa !46
  %110 = add nuw nsw i64 %60, 1
  %111 = icmp eq i64 %110, 64
  br i1 %111, label %112, label %59, !prof !48, !llvm.loop !63

112:                                              ; preds = %109, %150
  %113 = phi i64 [ %151, %150 ], [ 0, %109 ]
  %114 = phi i32 [ %152, %150 ], [ 0, %109 ]
  %115 = and i32 %114, 7
  %116 = trunc i64 %113 to i32
  %117 = lshr i32 %116, 3
  %118 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %113
  store i64 0, ptr %118, align 8, !tbaa !46
  %119 = trunc i64 %113 to i32
  %120 = and i32 %119, 7
  %121 = add nsw i32 %120, -2
  %122 = trunc i64 %113 to i32
  %123 = lshr i32 %122, 3
  %124 = add nsw i32 %123, -2
  %125 = add nuw nsw i32 %117, 2
  %126 = add nuw nsw i32 %115, 2
  br label %127

127:                                              ; preds = %112, %147
  %128 = phi i32 [ %121, %112 ], [ %148, %147 ]
  %129 = icmp ugt i32 %128, 7
  br i1 %129, label %147, label %130, !prof !64

130:                                              ; preds = %127, %144
  %131 = phi i32 [ %145, %144 ], [ %124, %127 ]
  %132 = icmp ugt i32 %131, 7
  br i1 %132, label %144, label %133, !prof !65

133:                                              ; preds = %130
  %134 = shl nuw nsw i32 %131, 3
  %135 = or disjoint i32 %134, %128
  %136 = zext nneg i32 %135 to i64
  %137 = icmp eq i64 %113, %136
  br i1 %137, label %144, label %138, !prof !66

138:                                              ; preds = %133
  %139 = zext nneg i32 %135 to i64
  %140 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !46
  %142 = load i64, ptr %118, align 8, !tbaa !46
  %143 = or i64 %142, %141
  store i64 %143, ptr %118, align 8, !tbaa !46
  br label %144

144:                                              ; preds = %133, %130, %138
  %145 = add nsw i32 %131, 1
  %146 = icmp eq i32 %131, %125
  br i1 %146, label %147, label %130, !prof !67, !llvm.loop !68

147:                                              ; preds = %144, %127
  %148 = add nsw i32 %128, 1
  %149 = icmp eq i32 %128, %126
  br i1 %149, label %150, label %127, !prof !69, !llvm.loop !70

150:                                              ; preds = %147
  %151 = add nuw nsw i64 %113, 1
  %152 = add nuw nsw i32 %114, 1
  %153 = icmp eq i64 %151, 64
  br i1 %153, label %154, label %112, !prof !48, !llvm.loop !71

154:                                              ; preds = %150, %192
  %155 = phi i64 [ %193, %192 ], [ 0, %150 ]
  %156 = phi i32 [ %194, %192 ], [ 0, %150 ]
  %157 = and i32 %156, 7
  %158 = trunc i64 %155 to i32
  %159 = lshr i32 %158, 3
  %160 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask1, i64 0, i64 %155
  store i64 0, ptr %160, align 8, !tbaa !46
  %161 = trunc i64 %155 to i32
  %162 = and i32 %161, 7
  %163 = add nsw i32 %162, -1
  %164 = trunc i64 %155 to i32
  %165 = lshr i32 %164, 3
  %166 = add nsw i32 %165, -1
  %167 = add nuw nsw i32 %159, 1
  %168 = add nuw nsw i32 %157, 1
  br label %169

169:                                              ; preds = %154, %189
  %170 = phi i32 [ %163, %154 ], [ %190, %189 ]
  %171 = icmp ugt i32 %170, 7
  br i1 %171, label %189, label %172, !prof !72

172:                                              ; preds = %169, %186
  %173 = phi i32 [ %187, %186 ], [ %166, %169 ]
  %174 = icmp ugt i32 %173, 7
  br i1 %174, label %186, label %175, !prof !73

175:                                              ; preds = %172
  %176 = shl nuw nsw i32 %173, 3
  %177 = or disjoint i32 %176, %170
  %178 = zext nneg i32 %177 to i64
  %179 = icmp eq i64 %155, %178
  br i1 %179, label %186, label %180, !prof !74

180:                                              ; preds = %175
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !46
  %184 = load i64, ptr %160, align 8, !tbaa !46
  %185 = or i64 %184, %183
  store i64 %185, ptr %160, align 8, !tbaa !46
  br label %186

186:                                              ; preds = %175, %172, %180
  %187 = add nsw i32 %173, 1
  %188 = icmp eq i32 %173, %167
  br i1 %188, label %189, label %172, !prof !75, !llvm.loop !76

189:                                              ; preds = %186, %169
  %190 = add nsw i32 %170, 1
  %191 = icmp eq i32 %170, %168
  br i1 %191, label %192, label %169, !prof !77, !llvm.loop !78

192:                                              ; preds = %189
  %193 = add nuw nsw i64 %155, 1
  %194 = add nuw nsw i32 %156, 1
  %195 = icmp eq i64 %193, 64
  br i1 %195, label %196, label %154, !prof !48, !llvm.loop !79

196:                                              ; preds = %192, %210
  %197 = phi i64 [ %211, %210 ], [ 0, %192 ]
  %198 = trunc i64 %197 to i32
  br label %199

199:                                              ; preds = %196, %207
  %200 = phi i32 [ 15, %196 ], [ %208, %207 ]
  %201 = shl nuw i32 1, %200
  %202 = and i32 %201, %198
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204, !prof !80

204:                                              ; preds = %199
  %205 = trunc i32 %200 to i8
  %206 = getelementptr inbounds [65536 x i8], ptr @last_bit, i64 0, i64 %197
  store i8 %205, ptr %206, align 1, !tbaa !81
  br label %210

207:                                              ; preds = %199
  %208 = add nsw i32 %200, -1
  %209 = icmp eq i32 %200, 0
  br i1 %209, label %210, label %199, !prof !82, !llvm.loop !83

210:                                              ; preds = %207, %204
  %211 = add nuw nsw i64 %197, 1
  %212 = icmp eq i64 %211, 65535
  br i1 %212, label %213, label %196, !prof !84, !llvm.loop !85

213:                                              ; preds = %210, %276
  %214 = phi i64 [ %277, %276 ], [ 0, %210 ]
  %215 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %214
  store i64 0, ptr %215, align 8, !tbaa !46
  %216 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %214
  store i64 0, ptr %216, align 8, !tbaa !46
  %217 = getelementptr inbounds [64 x i64], ptr @PawnMovesBlack, i64 0, i64 %214
  store i64 0, ptr %217, align 8, !tbaa !46
  %218 = getelementptr inbounds [64 x i64], ptr @PawnMovesWhite, i64 0, i64 %214
  store i64 0, ptr %218, align 8, !tbaa !46
  %219 = trunc i64 %214 to i32
  %220 = and i32 %219, 7
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %236, label %222, !prof !86

222:                                              ; preds = %213
  %223 = icmp ult i64 %214, 56
  br i1 %223, label %224, label %228, !prof !87

224:                                              ; preds = %222
  %225 = add nuw nsw i64 %214, 7
  %226 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !46
  store i64 %227, ptr %215, align 8, !tbaa !46
  br label %228

228:                                              ; preds = %224, %222
  %229 = icmp ugt i64 %214, 7
  br i1 %229, label %230, label %234, !prof !87

230:                                              ; preds = %228
  %231 = add nsw i64 %214, -9
  %232 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !46
  store i64 %233, ptr %216, align 8, !tbaa !46
  br label %234

234:                                              ; preds = %228, %230
  %235 = icmp eq i32 %220, 7
  br i1 %235, label %252, label %236, !prof !88

236:                                              ; preds = %234, %213
  %237 = icmp ult i64 %214, 56
  br i1 %237, label %238, label %244, !prof !87

238:                                              ; preds = %236
  %239 = add nuw nsw i64 %214, 9
  %240 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !46
  %242 = load i64, ptr %215, align 8, !tbaa !46
  %243 = or i64 %242, %241
  store i64 %243, ptr %215, align 8, !tbaa !46
  br label %244

244:                                              ; preds = %238, %236
  %245 = icmp ugt i64 %214, 7
  br i1 %245, label %246, label %252, !prof !87

246:                                              ; preds = %244
  %247 = add nsw i64 %214, -7
  %248 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !46
  %250 = load i64, ptr %216, align 8, !tbaa !46
  %251 = or i64 %250, %249
  store i64 %251, ptr %216, align 8, !tbaa !46
  br label %252

252:                                              ; preds = %244, %246, %234
  %253 = trunc i64 %214 to i32
  %254 = lshr i32 %253, 3
  %255 = icmp eq i32 %254, 7
  %256 = icmp ult i64 %214, 8
  %257 = or i1 %256, %255
  br i1 %257, label %276, label %258, !prof !89

258:                                              ; preds = %252
  %259 = add nuw nsw i64 %214, 8
  %260 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %259
  %261 = load i64, ptr %260, align 8, !tbaa !46
  store i64 %261, ptr %217, align 8, !tbaa !46
  %262 = add nsw i64 %214, -8
  %263 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %262
  %264 = load i64, ptr %263, align 8, !tbaa !46
  store i64 %264, ptr %218, align 8, !tbaa !46
  switch i32 %254, label %276 [
    i32 1, label %265
    i32 6, label %267
  ], !prof !90

265:                                              ; preds = %258
  %266 = or disjoint i64 %214, 16
  br label %269

267:                                              ; preds = %258
  %268 = add nsw i64 %214, -16
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i64 [ %266, %265 ], [ %268, %267 ]
  %271 = phi i64 [ %261, %265 ], [ %264, %267 ]
  %272 = phi ptr [ %217, %265 ], [ %218, %267 ]
  %273 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %270
  %274 = load i64, ptr %273, align 8, !tbaa !46
  %275 = or i64 %274, %271
  store i64 %275, ptr %272, align 8, !tbaa !46
  br label %276

276:                                              ; preds = %269, %258, %252
  %277 = add nuw nsw i64 %214, 1
  %278 = icmp eq i64 %277, 64
  br i1 %278, label %279, label %213, !prof !48, !llvm.loop !91

279:                                              ; preds = %276, %357
  %280 = phi i64 [ %358, %357 ], [ 0, %276 ]
  %281 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %280
  store i64 0, ptr %281, align 8, !tbaa !46
  %282 = icmp ult i64 %280, 8
  br i1 %282, label %318, label %283, !prof !86

283:                                              ; preds = %279
  %284 = icmp ugt i64 %280, 15
  br i1 %284, label %285, label %300, !prof !92

285:                                              ; preds = %283
  %286 = trunc i64 %280 to i32
  %287 = and i32 %286, 7
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %294, label %289, !prof !93

289:                                              ; preds = %285
  %290 = add nsw i64 %280, -17
  %291 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %290
  %292 = load i64, ptr %291, align 8, !tbaa !46
  store i64 %292, ptr %281, align 8, !tbaa !46
  %293 = icmp eq i32 %287, 7
  br i1 %293, label %300, label %294, !prof !94

294:                                              ; preds = %285, %289
  %295 = add nsw i64 %280, -15
  %296 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %295
  %297 = load i64, ptr %296, align 8, !tbaa !46
  %298 = load i64, ptr %281, align 8, !tbaa !46
  %299 = or i64 %298, %297
  store i64 %299, ptr %281, align 8, !tbaa !46
  br label %300

300:                                              ; preds = %289, %294, %283
  %301 = trunc i64 %280 to i32
  %302 = and i32 %301, 7
  %303 = icmp ugt i32 %302, 1
  br i1 %303, label %304, label %310, !prof !95

304:                                              ; preds = %300
  %305 = add nsw i64 %280, -10
  %306 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !46
  %308 = load i64, ptr %281, align 8, !tbaa !46
  %309 = or i64 %308, %307
  store i64 %309, ptr %281, align 8, !tbaa !46
  br label %310

310:                                              ; preds = %304, %300
  %311 = icmp ult i32 %302, 6
  br i1 %311, label %312, label %318, !prof !95

312:                                              ; preds = %310
  %313 = add nsw i64 %280, -6
  %314 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %313
  %315 = load i64, ptr %314, align 8, !tbaa !46
  %316 = load i64, ptr %281, align 8, !tbaa !46
  %317 = or i64 %316, %315
  store i64 %317, ptr %281, align 8, !tbaa !46
  br label %318

318:                                              ; preds = %310, %312, %279
  %319 = icmp ult i64 %280, 56
  br i1 %319, label %320, label %357, !prof !50

320:                                              ; preds = %318
  %321 = icmp ult i64 %280, 48
  br i1 %321, label %322, label %339, !prof !92

322:                                              ; preds = %320
  %323 = trunc i64 %280 to i32
  %324 = and i32 %323, 7
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %333, label %326, !prof !93

326:                                              ; preds = %322
  %327 = add nuw nsw i64 %280, 15
  %328 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %327
  %329 = load i64, ptr %328, align 8, !tbaa !46
  %330 = load i64, ptr %281, align 8, !tbaa !46
  %331 = or i64 %330, %329
  store i64 %331, ptr %281, align 8, !tbaa !46
  %332 = icmp eq i32 %324, 7
  br i1 %332, label %339, label %333, !prof !94

333:                                              ; preds = %322, %326
  %334 = add nuw nsw i64 %280, 17
  %335 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %334
  %336 = load i64, ptr %335, align 8, !tbaa !46
  %337 = load i64, ptr %281, align 8, !tbaa !46
  %338 = or i64 %337, %336
  store i64 %338, ptr %281, align 8, !tbaa !46
  br label %339

339:                                              ; preds = %326, %333, %320
  %340 = trunc i64 %280 to i32
  %341 = and i32 %340, 7
  %342 = icmp ugt i32 %341, 1
  br i1 %342, label %343, label %349, !prof !95

343:                                              ; preds = %339
  %344 = add nuw nsw i64 %280, 6
  %345 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %344
  %346 = load i64, ptr %345, align 8, !tbaa !46
  %347 = load i64, ptr %281, align 8, !tbaa !46
  %348 = or i64 %347, %346
  store i64 %348, ptr %281, align 8, !tbaa !46
  br label %349

349:                                              ; preds = %343, %339
  %350 = icmp ult i32 %341, 6
  br i1 %350, label %351, label %357, !prof !95

351:                                              ; preds = %349
  %352 = add nuw nsw i64 %280, 10
  %353 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %352
  %354 = load i64, ptr %353, align 8, !tbaa !46
  %355 = load i64, ptr %281, align 8, !tbaa !46
  %356 = or i64 %355, %354
  store i64 %356, ptr %281, align 8, !tbaa !46
  br label %357

357:                                              ; preds = %318, %351, %349
  %358 = add nuw nsw i64 %280, 1
  %359 = icmp eq i64 %358, 64
  br i1 %359, label %360, label %279, !prof !48, !llvm.loop !96

360:                                              ; preds = %357, %425
  %361 = phi i64 [ %426, %425 ], [ 0, %357 ]
  %362 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %361
  store i64 0, ptr %362, align 8, !tbaa !46
  %363 = icmp ult i64 %361, 8
  br i1 %363, label %385, label %364, !prof !86

364:                                              ; preds = %360
  %365 = trunc i64 %361 to i32
  %366 = and i32 %365, 7
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %373, label %368, !prof !97

368:                                              ; preds = %364
  %369 = add nsw i64 %361, -9
  %370 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %369
  %371 = load i64, ptr %370, align 8, !tbaa !46
  store i64 %371, ptr %362, align 8, !tbaa !46
  %372 = icmp eq i32 %366, 7
  br i1 %372, label %379, label %373, !prof !98

373:                                              ; preds = %364, %368
  %374 = add nsw i64 %361, -7
  %375 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %374
  %376 = load i64, ptr %375, align 8, !tbaa !46
  %377 = load i64, ptr %362, align 8, !tbaa !46
  %378 = or i64 %377, %376
  store i64 %378, ptr %362, align 8, !tbaa !46
  br label %379

379:                                              ; preds = %373, %368
  %380 = add nsw i64 %361, -8
  %381 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !46
  %383 = load i64, ptr %362, align 8, !tbaa !46
  %384 = or i64 %383, %382
  store i64 %384, ptr %362, align 8, !tbaa !46
  br label %385

385:                                              ; preds = %379, %360
  %386 = icmp ult i64 %361, 56
  br i1 %386, label %387, label %408, !prof !50

387:                                              ; preds = %385
  %388 = trunc i64 %361 to i32
  %389 = and i32 %388, 7
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %398, label %391, !prof !97

391:                                              ; preds = %387
  %392 = add nuw nsw i64 %361, 7
  %393 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !46
  %395 = load i64, ptr %362, align 8, !tbaa !46
  %396 = or i64 %395, %394
  store i64 %396, ptr %362, align 8, !tbaa !46
  %397 = icmp eq i32 %389, 7
  br i1 %397, label %404, label %398, !prof !98

398:                                              ; preds = %387, %391
  %399 = add nuw nsw i64 %361, 9
  %400 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %399
  %401 = load i64, ptr %400, align 8, !tbaa !46
  %402 = load i64, ptr %362, align 8, !tbaa !46
  %403 = or i64 %402, %401
  store i64 %403, ptr %362, align 8, !tbaa !46
  br label %404

404:                                              ; preds = %398, %391
  %405 = shl i64 256, %361
  %406 = load i64, ptr %362, align 8, !tbaa !46
  %407 = add i64 %406, %405
  store i64 %407, ptr %362, align 8, !tbaa !46
  br label %408

408:                                              ; preds = %404, %385
  %409 = trunc i64 %361 to i32
  %410 = and i32 %409, 7
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %419, label %412, !prof !86

412:                                              ; preds = %408
  %413 = add nsw i64 %361, -1
  %414 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %413
  %415 = load i64, ptr %414, align 8, !tbaa !46
  %416 = load i64, ptr %362, align 8, !tbaa !46
  %417 = or i64 %416, %415
  store i64 %417, ptr %362, align 8, !tbaa !46
  %418 = icmp eq i32 %410, 7
  br i1 %418, label %425, label %419, !prof !88

419:                                              ; preds = %408, %412
  %420 = add nuw nsw i64 %361, 1
  %421 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %420
  %422 = load i64, ptr %421, align 8, !tbaa !46
  %423 = load i64, ptr %362, align 8, !tbaa !46
  %424 = or i64 %423, %422
  store i64 %424, ptr %362, align 8, !tbaa !46
  br label %425

425:                                              ; preds = %412, %419
  %426 = add nuw nsw i64 %361, 1
  %427 = icmp eq i64 %426, 64
  br i1 %427, label %428, label %360, !prof !48, !llvm.loop !99

428:                                              ; preds = %425, %470
  %429 = phi i64 [ %471, %470 ], [ 0, %425 ]
  br label %430

430:                                              ; preds = %428, %461
  %431 = phi i32 [ 0, %428 ], [ %468, %461 ]
  br label %432

432:                                              ; preds = %430, %436
  %433 = phi i64 [ %429, %430 ], [ %437, %436 ]
  %434 = phi i64 [ 0, %430 ], [ %442, %436 ]
  %435 = icmp sgt i64 %433, 0
  br i1 %435, label %436, label %446, !prof !100

436:                                              ; preds = %432
  %437 = add nsw i64 %433, -1
  %438 = trunc i64 %437 to i32
  %439 = and i64 %437, 4294967295
  %440 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %439
  %441 = load i64, ptr %440, align 8, !tbaa !46
  %442 = or i64 %441, %434
  %443 = shl nuw i32 1, %438
  %444 = and i32 %443, %431
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %432, label %446, !prof !101, !llvm.loop !102

446:                                              ; preds = %436, %432
  %447 = phi i64 [ %434, %432 ], [ %442, %436 ]
  br label %448

448:                                              ; preds = %446, %452
  %449 = phi i64 [ %453, %452 ], [ %429, %446 ]
  %450 = phi i64 [ %456, %452 ], [ %447, %446 ]
  %451 = icmp eq i64 %449, 7
  br i1 %451, label %461, label %452, !prof !103

452:                                              ; preds = %448
  %453 = add nuw nsw i64 %449, 1
  %454 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %453
  %455 = load i64, ptr %454, align 8, !tbaa !46
  %456 = or i64 %455, %450
  %457 = trunc i64 %449 to i32
  %458 = shl nuw nsw i32 2, %457
  %459 = and i32 %458, %431
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %448, label %461, !prof !101, !llvm.loop !104

461:                                              ; preds = %452, %448
  %462 = phi i64 [ %450, %448 ], [ %456, %452 ]
  %463 = lshr i32 %431, 1
  %464 = and i32 %463, 63
  %465 = trunc i64 %462 to i8
  %466 = zext nneg i32 %464 to i64
  %467 = getelementptr inbounds [64 x [8 x i8]], ptr @firstRankAttacks, i64 0, i64 %466, i64 %429
  store i8 %465, ptr %467, align 1, !tbaa !81
  %468 = add nuw nsw i32 %431, 1
  %469 = icmp eq i32 %468, 256
  br i1 %469, label %470, label %430, !prof !105, !llvm.loop !106

470:                                              ; preds = %461
  %471 = add nuw nsw i64 %429, 1
  %472 = icmp eq i64 %471, 8
  br i1 %472, label %473, label %428, !prof !52, !llvm.loop !107

473:                                              ; preds = %470, %490
  %474 = phi i64 [ %491, %490 ], [ 0, %470 ]
  %475 = and i64 %474, 4294967295
  %476 = xor i64 %475, 7
  br label %477

477:                                              ; preds = %473, %477
  %478 = phi i64 [ 0, %473 ], [ %488, %477 ]
  %479 = getelementptr inbounds [64 x [8 x i8]], ptr @firstRankAttacks, i64 0, i64 %478, i64 %474
  %480 = load i8, ptr %479, align 1, !tbaa !81
  %481 = zext i8 %480 to i64
  %482 = mul nuw i64 %481, 72340172838076673
  %483 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %478, i64 %474
  store i64 %482, ptr %483, align 8, !tbaa !46
  %484 = mul i64 %481, -9205322385119247871
  %485 = lshr i64 %484, 7
  %486 = and i64 %485, 72340172838076673
  %487 = getelementptr inbounds [64 x [8 x i64]], ptr @aFileAttacks, i64 0, i64 %478, i64 %476
  store i64 %486, ptr %487, align 8, !tbaa !46
  %488 = add nuw nsw i64 %478, 1
  %489 = icmp eq i64 %488, 64
  br i1 %489, label %490, label %477, !prof !108, !llvm.loop !109

490:                                              ; preds = %477
  %491 = add nuw nsw i64 %474, 1
  %492 = icmp eq i64 %491, 8
  br i1 %492, label %493, label %473, !prof !52, !llvm.loop !110

493:                                              ; preds = %490, %493
  %494 = phi i64 [ %512, %493 ], [ 0, %490 ]
  %495 = and i64 %494, 7
  %496 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %495
  %497 = load i64, ptr %496, align 8, !tbaa !46
  %498 = lshr i64 %494, 3
  %499 = and i64 %498, 536870911
  %500 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %499
  %501 = load i64, ptr %500, align 8, !tbaa !46
  %502 = or i64 %501, %497
  %503 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %494
  store i64 %502, ptr %503, align 8, !tbaa !46
  %504 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %494
  %505 = load i64, ptr %504, align 8, !tbaa !46
  %506 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %494
  %507 = load i64, ptr %506, align 8, !tbaa !46
  %508 = or i64 %507, %505
  %509 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %494
  store i64 %508, ptr %509, align 8, !tbaa !46
  %510 = or i64 %508, %502
  %511 = getelementptr inbounds [64 x i64], ptr @QueenMask, i64 0, i64 %494
  store i64 %510, ptr %511, align 8, !tbaa !46
  %512 = add nuw nsw i64 %494, 1
  %513 = icmp eq i64 %512, 64
  br i1 %513, label %514, label %493, !prof !48, !llvm.loop !111

514:                                              ; preds = %493, %555
  %515 = phi i64 [ %556, %555 ], [ 0, %493 ]
  %516 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %515
  store i64 0, ptr %516, align 8, !tbaa !46
  %517 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %515
  store i64 0, ptr %517, align 8, !tbaa !46
  %518 = getelementptr inbounds [8 x i64], ptr @LeftMask, i64 0, i64 %515
  store i64 0, ptr %518, align 8, !tbaa !46
  %519 = getelementptr inbounds [8 x i64], ptr @RightMask, i64 0, i64 %515
  store i64 0, ptr %519, align 8, !tbaa !46
  %520 = icmp eq i64 %515, 0
  br i1 %520, label %525, label %521, !prof !112

521:                                              ; preds = %514
  %522 = load i64, ptr %516, align 8, !tbaa !46
  %523 = load i64, ptr %518, align 8, !tbaa !46
  br label %530

524:                                              ; preds = %530
  store i64 %536, ptr %516, align 8, !tbaa !46
  store i64 %539, ptr %518, align 8, !tbaa !46
  br label %525

525:                                              ; preds = %524, %514
  %526 = icmp ult i64 %515, 7
  br i1 %526, label %527, label %555, !prof !54

527:                                              ; preds = %525
  %528 = load i64, ptr %517, align 8, !tbaa !46
  %529 = load i64, ptr %519, align 8, !tbaa !46
  br label %542

530:                                              ; preds = %521, %530
  %531 = phi i64 [ 0, %521 ], [ %540, %530 ]
  %532 = phi i64 [ %523, %521 ], [ %539, %530 ]
  %533 = phi i64 [ %522, %521 ], [ %536, %530 ]
  %534 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %531
  %535 = load i64, ptr %534, align 8, !tbaa !46
  %536 = or i64 %533, %535
  %537 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %531
  %538 = load i64, ptr %537, align 8, !tbaa !46
  %539 = or i64 %532, %538
  %540 = add nuw nsw i64 %531, 1
  %541 = icmp eq i64 %540, %515
  br i1 %541, label %524, label %530, !prof !113, !llvm.loop !114

542:                                              ; preds = %527, %542
  %543 = phi i64 [ 7, %527 ], [ %552, %542 ]
  %544 = phi i64 [ %529, %527 ], [ %551, %542 ]
  %545 = phi i64 [ %528, %527 ], [ %548, %542 ]
  %546 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %543
  %547 = load i64, ptr %546, align 8, !tbaa !46
  %548 = or i64 %545, %547
  %549 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %543
  %550 = load i64, ptr %549, align 8, !tbaa !46
  %551 = or i64 %544, %550
  %552 = add nsw i64 %543, -1
  %553 = icmp ugt i64 %552, %515
  br i1 %553, label %542, label %554, !prof !55, !llvm.loop !115

554:                                              ; preds = %542
  store i64 %548, ptr %517, align 8, !tbaa !46
  store i64 %551, ptr %519, align 8, !tbaa !46
  br label %555

555:                                              ; preds = %554, %525
  %556 = add nuw nsw i64 %515, 1
  %557 = icmp eq i64 %556, 8
  br i1 %557, label %558, label %514, !prof !52, !llvm.loop !116

558:                                              ; preds = %555
  store i64 0, ptr @WhiteSqMask, align 8, !tbaa !46
  store i64 0, ptr @BlackSqMask, align 8, !tbaa !46
  br label %559

559:                                              ; preds = %558, %575
  %560 = phi i64 [ 0, %558 ], [ %578, %575 ]
  %561 = phi i64 [ 0, %558 ], [ %577, %575 ]
  %562 = phi i64 [ 0, %558 ], [ %576, %575 ]
  %563 = trunc i64 %560 to i32
  %564 = lshr i32 %563, 3
  %565 = trunc i64 %560 to i32
  %566 = add nuw nsw i32 %564, %565
  %567 = and i32 %566, 1
  %568 = icmp eq i32 %567, 0
  %569 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %560
  %570 = load i64, ptr %569, align 8, !tbaa !46
  br i1 %568, label %573, label %571, !prof !117

571:                                              ; preds = %559
  %572 = or i64 %561, %570
  store i64 %572, ptr @BlackSqMask, align 8, !tbaa !46
  br label %575

573:                                              ; preds = %559
  %574 = or i64 %562, %570
  store i64 %574, ptr @WhiteSqMask, align 8, !tbaa !46
  br label %575

575:                                              ; preds = %571, %573
  %576 = phi i64 [ %562, %571 ], [ %574, %573 ]
  %577 = phi i64 [ %572, %571 ], [ %561, %573 ]
  %578 = add nuw nsw i64 %560, 1
  %579 = icmp eq i64 %578, 64
  br i1 %579, label %580, label %559, !prof !48, !llvm.loop !118

580:                                              ; preds = %575
  %581 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @BelowMask, i64 0, i64 3), align 8, !tbaa !46
  %582 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RightMask, i64 0, i64 3), align 8, !tbaa !46
  %583 = and i64 %582, %581
  store i64 %583, ptr @WhiteKingSide, align 8, !tbaa !46
  %584 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @LeftMask, i64 0, i64 4), align 16, !tbaa !46
  %585 = and i64 %584, %581
  store i64 %585, ptr @WhiteQueenSide, align 8, !tbaa !46
  %586 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @AboveMask, i64 0, i64 4), align 16, !tbaa !46
  %587 = and i64 %586, %582
  store i64 %587, ptr @BlackKingSide, align 8, !tbaa !46
  %588 = and i64 %586, %584
  store i64 %588, ptr @BlackQueenSide, align 8, !tbaa !46
  %589 = load i64, ptr @FileMask, align 16, !tbaa !46
  %590 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !46
  %591 = or i64 %590, %589
  %592 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 2), align 16, !tbaa !46
  %593 = or i64 %591, %592
  %594 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 3), align 8, !tbaa !46
  %595 = or i64 %593, %594
  store i64 %595, ptr @QSMask, align 8, !tbaa !46
  %596 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 4), align 16, !tbaa !46
  %597 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 5), align 8, !tbaa !46
  %598 = or i64 %597, %596
  %599 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !46
  %600 = or i64 %598, %599
  %601 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !46
  %602 = or i64 %600, %601
  store i64 %602, ptr @KSMask, align 8, !tbaa !46
  %603 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 35), align 8, !tbaa !46
  %604 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 36), align 16, !tbaa !46
  %605 = or i64 %604, %603
  %606 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 26), align 16, !tbaa !46
  %607 = or i64 %605, %606
  %608 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 27), align 8, !tbaa !46
  %609 = or i64 %607, %608
  %610 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 28), align 16, !tbaa !46
  %611 = or i64 %609, %610
  %612 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 29), align 8, !tbaa !46
  %613 = or i64 %611, %612
  %614 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 18), align 16, !tbaa !46
  %615 = or i64 %613, %614
  %616 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 19), align 8, !tbaa !46
  %617 = or i64 %615, %616
  %618 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 20), align 16, !tbaa !46
  %619 = or i64 %617, %618
  %620 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 21), align 8, !tbaa !46
  %621 = or i64 %619, %620
  %622 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 10), align 16, !tbaa !46
  %623 = or i64 %621, %622
  %624 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 11), align 8, !tbaa !46
  %625 = or i64 %623, %624
  %626 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 12), align 16, !tbaa !46
  %627 = or i64 %625, %626
  %628 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 13), align 8, !tbaa !46
  %629 = or i64 %627, %628
  store i64 %629, ptr @WhiteStrongSquareMask, align 8, !tbaa !46
  %630 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 34), align 16, !tbaa !46
  %631 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 37), align 8, !tbaa !46
  %632 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 42), align 16, !tbaa !46
  %633 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 43), align 8, !tbaa !46
  %634 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 44), align 16, !tbaa !46
  %635 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 45), align 8, !tbaa !46
  %636 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 50), align 16, !tbaa !46
  %637 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 51), align 8, !tbaa !46
  %638 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 52), align 16, !tbaa !46
  %639 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 53), align 8, !tbaa !46
  %640 = or i64 %604, %603
  %641 = or i64 %640, %608
  %642 = or i64 %641, %610
  %643 = or i64 %642, %630
  %644 = or i64 %643, %631
  %645 = or i64 %644, %632
  %646 = or i64 %645, %633
  %647 = or i64 %646, %634
  %648 = or i64 %647, %635
  %649 = or i64 %648, %636
  %650 = or i64 %649, %637
  %651 = or i64 %650, %638
  %652 = or i64 %651, %639
  store i64 %652, ptr @BlackStrongSquareMask, align 8, !tbaa !46
  %653 = or i64 %604, %603
  %654 = or i64 %653, %606
  %655 = or i64 %654, %608
  %656 = or i64 %655, %610
  %657 = or i64 %656, %612
  %658 = or i64 %657, %614
  %659 = or i64 %658, %616
  %660 = or i64 %659, %618
  %661 = or i64 %660, %620
  %662 = or i64 %661, %630
  %663 = or i64 %662, %631
  %664 = or i64 %663, %632
  %665 = or i64 %664, %633
  %666 = or i64 %665, %634
  %667 = or i64 %666, %635
  store i64 %667, ptr @CenterMask, align 8, !tbaa !46
  store i64 %593, ptr @KingFilesMask, align 16, !tbaa !46
  store i64 %593, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 1), align 8, !tbaa !46
  store i64 %593, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 2), align 16, !tbaa !46
  %668 = or i64 %597, %596
  %669 = or i64 %668, %592
  %670 = or i64 %669, %594
  store i64 %670, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 3), align 8, !tbaa !46
  %671 = or i64 %597, %596
  %672 = or i64 %671, %592
  %673 = or i64 %672, %594
  store i64 %673, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 4), align 16, !tbaa !46
  %674 = or i64 %599, %597
  %675 = or i64 %674, %601
  store i64 %675, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 5), align 8, !tbaa !46
  %676 = or i64 %599, %597
  %677 = or i64 %676, %601
  store i64 %677, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 6), align 16, !tbaa !46
  store i64 %675, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 7), align 8, !tbaa !46
  br label %678

678:                                              ; preds = %580, %686
  %679 = phi i64 [ 0, %580 ], [ %691, %686 ]
  %680 = trunc i64 %679 to i32
  %681 = and i32 %680, 7
  switch i32 %681, label %686 [
    i32 0, label %682
    i32 7, label %684
  ], !prof !119

682:                                              ; preds = %678
  %683 = or disjoint i64 %679, 1
  br label %686

684:                                              ; preds = %678
  %685 = add nsw i64 %679, -1
  br label %686

686:                                              ; preds = %678, %682, %684
  %687 = phi i64 [ %683, %682 ], [ %685, %684 ], [ %679, %678 ]
  %688 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %687
  %689 = load i64, ptr %688, align 8, !tbaa !46
  %690 = getelementptr inbounds [64 x i64], ptr @KingPressureMask, i64 0, i64 %679
  store i64 %689, ptr %690, align 8, !tbaa !46
  %691 = add nuw nsw i64 %679, 1
  %692 = icmp eq i64 %691, 64
  br i1 %692, label %693, label %678, !prof !48, !llvm.loop !120

693:                                              ; preds = %686, %701
  %694 = phi i64 [ %706, %701 ], [ 0, %686 ]
  %695 = trunc i64 %694 to i32
  %696 = and i32 %695, 7
  switch i32 %696, label %701 [
    i32 0, label %697
    i32 7, label %699
  ], !prof !119

697:                                              ; preds = %693
  %698 = or disjoint i64 %694, 1
  br label %701

699:                                              ; preds = %693
  %700 = add nsw i64 %694, -1
  br label %701

701:                                              ; preds = %693, %697, %699
  %702 = phi i64 [ %698, %697 ], [ %700, %699 ], [ %694, %693 ]
  %703 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask1, i64 0, i64 %702
  %704 = load i64, ptr %703, align 8, !tbaa !46
  %705 = getelementptr inbounds [64 x i64], ptr @KingPressureMask1, i64 0, i64 %694
  store i64 %704, ptr %705, align 8, !tbaa !46
  %706 = add nuw nsw i64 %694, 1
  %707 = icmp eq i64 %706, 64
  br i1 %707, label %708, label %693, !prof !48, !llvm.loop !121

708:                                              ; preds = %701
  %709 = or i64 %604, %603
  %710 = or i64 %709, %630
  %711 = or i64 %710, %631
  %712 = or i64 %711, %632
  %713 = or i64 %712, %633
  %714 = or i64 %713, %634
  %715 = or i64 %714, %635
  %716 = or i64 %715, %636
  %717 = or i64 %716, %637
  %718 = or i64 %717, %638
  %719 = or i64 %718, %639
  store i64 %719, ptr @SpaceMask, align 16, !tbaa !46
  %720 = or i64 %608, %606
  %721 = or i64 %720, %610
  %722 = or i64 %721, %612
  %723 = or i64 %722, %614
  %724 = or i64 %723, %616
  %725 = or i64 %724, %618
  %726 = or i64 %725, %620
  %727 = or i64 %726, %622
  %728 = or i64 %727, %624
  %729 = or i64 %728, %626
  %730 = or i64 %729, %628
  store i64 %730, ptr getelementptr inbounds ([2 x i64], ptr @SpaceMask, i64 0, i64 1), align 8, !tbaa !46
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z16SetupCastleMasksP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !122 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 62), align 16, !tbaa !46
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 61), align 8, !tbaa !46
  %14 = xor i64 %7, %12
  %15 = xor i64 %14, %13
  %16 = xor i64 %15, %6
  store i64 %16, ptr @CastleMask, align 16, !tbaa !46
  %17 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 58), align 16, !tbaa !46
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %19 = load i32, ptr %18, align 4, !tbaa !125
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 59), align 8, !tbaa !46
  %24 = xor i64 %17, %22
  %25 = xor i64 %24, %23
  %26 = xor i64 %25, %6
  store i64 %26, ptr getelementptr inbounds ([4 x i64], ptr @CastleMask, i64 0, i64 1), align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 31
  %28 = load i32, ptr %27, align 8, !tbaa !126
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !46
  %32 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 6), align 16, !tbaa !46
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %34 = load i32, ptr %33, align 8, !tbaa !127
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !46
  %38 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 5), align 8, !tbaa !46
  %39 = xor i64 %32, %37
  %40 = xor i64 %39, %38
  %41 = xor i64 %40, %31
  store i64 %41, ptr getelementptr inbounds ([4 x i64], ptr @CastleMask, i64 0, i64 2), align 16, !tbaa !46
  %42 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 2), align 16, !tbaa !46
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %44 = load i32, ptr %43, align 4, !tbaa !128
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !46
  %48 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 3), align 8, !tbaa !46
  %49 = xor i64 %42, %47
  %50 = xor i64 %49, %48
  %51 = xor i64 %50, %31
  store i64 %51, ptr getelementptr inbounds ([4 x i64], ptr @CastleMask, i64 0, i64 3), align 8, !tbaa !46
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z11RankAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !129 {
  %3 = and i32 %1, 7
  %4 = and i32 %1, -8
  %5 = or disjoint i32 %4, 1
  %6 = zext nneg i32 %5 to i64
  %7 = lshr i64 %0, %6
  %8 = and i64 %7, 63
  %9 = zext nneg i32 %3 to i64
  %10 = getelementptr inbounds [64 x [8 x i8]], ptr @firstRankAttacks, i64 0, i64 %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !81
  %12 = zext i8 %11 to i64
  %13 = zext nneg i32 %4 to i64
  %14 = shl i64 %12, %13
  ret i64 %14
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z11FileAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !130 {
  %3 = and i32 %1, 7
  %4 = zext nneg i32 %3 to i64
  %5 = lshr i64 %0, %4
  %6 = and i64 %5, 72340172838076673
  %7 = mul i64 %6, 36099303471055872
  %8 = lshr i64 %7, 58
  %9 = lshr i32 %1, 3
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [64 x [8 x i64]], ptr @aFileAttacks, i64 0, i64 %8, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = shl i64 %12, %4
  ret i64 %13
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !131 {
  %3 = and i32 %1, 7
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = and i64 %6, %0
  %8 = mul i64 %7, 144680345676153346
  %9 = lshr i64 %8, 58
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = and i64 %12, %6
  ret i64 %13
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !132 {
  %3 = and i32 %1, 7
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = and i64 %6, %0
  %8 = mul i64 %7, 144680345676153346
  %9 = lshr i64 %8, 58
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = and i64 %12, %6
  ret i64 %13
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z13BishopAttacksP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 !prof !133 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = and i32 %1, 7
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = and i64 %8, %4
  %10 = mul i64 %9, 144680345676153346
  %11 = lshr i64 %10, 58
  %12 = zext nneg i32 %5 to i64
  %13 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %11, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !46
  %15 = and i64 %14, %8
  %16 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %6
  %17 = load i64, ptr %16, align 8, !tbaa !46
  %18 = and i64 %17, %4
  %19 = mul i64 %18, 144680345676153346
  %20 = lshr i64 %19, 58
  %21 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %20, i64 %12
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = and i64 %22, %17
  %24 = or i64 %23, %15
  ret i64 %24
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z11RookAttacksP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 !prof !134 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = and i32 %1, 7
  %6 = and i32 %1, -8
  %7 = or disjoint i32 %6, 1
  %8 = zext nneg i32 %7 to i64
  %9 = lshr i64 %4, %8
  %10 = and i64 %9, 63
  %11 = zext nneg i32 %5 to i64
  %12 = getelementptr inbounds [64 x [8 x i8]], ptr @firstRankAttacks, i64 0, i64 %10, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !81
  %14 = zext i8 %13 to i64
  %15 = zext nneg i32 %6 to i64
  %16 = shl i64 %14, %15
  %17 = lshr i64 %4, %11
  %18 = and i64 %17, 72340172838076673
  %19 = mul i64 %18, 36099303471055872
  %20 = lshr i64 %19, 58
  %21 = lshr i32 %1, 3
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [64 x [8 x i64]], ptr @aFileAttacks, i64 0, i64 %20, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !46
  %25 = shl i64 %24, %11
  %26 = or i64 %16, %25
  ret i64 %26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39, !43, i64 264}
!39 = !{!"_ZTS7state_t", !40, i64 0, !41, i64 4, !43, i64 264, !43, i64 272, !43, i64 280, !41, i64 288, !40, i64 392, !40, i64 396, !41, i64 400, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !43, i64 480, !43, i64 488, !41, i64 496, !41, i64 2544, !41, i64 2800, !41, i64 3056, !43, i64 4080, !43, i64 4088, !40, i64 4096, !41, i64 4100, !40, i64 4356, !40, i64 4360, !40, i64 4364, !40, i64 4368, !40, i64 4372, !40, i64 4376, !40, i64 4380, !40, i64 4384, !40, i64 4388, !40, i64 4392, !41, i64 4400}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"long long", !41, i64 0}
!44 = !{!39, !43, i64 280}
!45 = !{!39, !43, i64 272}
!46 = !{!43, !43, i64 0}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!"branch_weights", i32 1, i32 63}
!49 = distinct !{!49, !36, !37}
!50 = !{!"branch_weights", i32 56, i32 8}
!51 = distinct !{!51, !36, !37}
!52 = !{!"branch_weights", i32 1, i32 7}
!53 = distinct !{!53, !36, !37}
!54 = !{!"branch_weights", i32 127, i32 1}
!55 = !{!"branch_weights", i32 321, i32 127}
!56 = distinct !{!56, !36, !37}
!57 = distinct !{!57, !36, !37}
!58 = distinct !{!58, !36, !37}
!59 = !{!40, !40, i64 0}
!60 = !{!"branch_weights", i32 127, i32 561}
!61 = distinct !{!61, !36, !37}
!62 = distinct !{!62, !36, !37}
!63 = distinct !{!63, !36, !37}
!64 = !{!"branch_weights", i32 48, i32 272}
!65 = !{!"branch_weights", i32 204, i32 1156}
!66 = !{!"branch_weights", i32 64, i32 1092}
!67 = !{!"branch_weights", i32 272, i32 1088}
!68 = distinct !{!68, !36, !37}
!69 = !{!"branch_weights", i32 64, i32 256}
!70 = distinct !{!70, !36, !37}
!71 = distinct !{!71, !36, !37}
!72 = !{!"branch_weights", i32 16, i32 176}
!73 = !{!"branch_weights", i32 44, i32 484}
!74 = !{!"branch_weights", i32 64, i32 420}
!75 = !{!"branch_weights", i32 176, i32 352}
!76 = distinct !{!76, !36, !37}
!77 = !{!"branch_weights", i32 64, i32 128}
!78 = distinct !{!78, !36, !37}
!79 = distinct !{!79, !36, !37}
!80 = !{!"branch_weights", i32 65535, i32 65534}
!81 = !{!41, !41, i64 0}
!82 = !{!"branch_weights", i32 1, i32 131068}
!83 = distinct !{!83, !36, !37}
!84 = !{!"branch_weights", i32 1, i32 65534}
!85 = distinct !{!85, !36, !37}
!86 = !{!"branch_weights", i32 8, i32 56}
!87 = !{!"branch_weights", i32 49, i32 7}
!88 = !{!"branch_weights", i32 8, i32 48}
!89 = !{!"branch_weights", i32 16, i32 48}
!90 = !{!"branch_weights", i32 32, i32 8, i32 8}
!91 = distinct !{!91, !36, !37}
!92 = !{!"branch_weights", i32 48, i32 8}
!93 = !{!"branch_weights", i32 6, i32 42}
!94 = !{!"branch_weights", i32 6, i32 36}
!95 = !{!"branch_weights", i32 42, i32 14}
!96 = distinct !{!96, !36, !37}
!97 = !{!"branch_weights", i32 7, i32 49}
!98 = !{!"branch_weights", i32 7, i32 42}
!99 = distinct !{!99, !36, !37}
!100 = !{!"branch_weights", i32 3076, i32 510}
!101 = !{!"branch_weights", i32 1538, i32 1538}
!102 = distinct !{!102, !36, !37}
!103 = !{!"branch_weights", i32 510, i32 3076}
!104 = distinct !{!104, !36, !37}
!105 = !{!"branch_weights", i32 8, i32 2040}
!106 = distinct !{!106, !36, !37}
!107 = distinct !{!107, !36, !37}
!108 = !{!"branch_weights", i32 8, i32 504}
!109 = distinct !{!109, !36, !37}
!110 = distinct !{!110, !36, !37}
!111 = distinct !{!111, !36, !37}
!112 = !{!"branch_weights", i32 1, i32 127}
!113 = !{!"branch_weights", i32 127, i32 321}
!114 = distinct !{!114, !36, !37}
!115 = distinct !{!115, !36, !37}
!116 = distinct !{!116, !36, !37}
!117 = !{!"branch_weights", i32 32, i32 32}
!118 = distinct !{!118, !36, !37}
!119 = !{!"branch_weights", i32 48, i32 8, i32 8}
!120 = distinct !{!120, !36, !37}
!121 = distinct !{!121, !36, !37}
!122 = !{!"function_entry_count", i64 25}
!123 = !{!39, !40, i64 4372}
!124 = !{!39, !40, i64 4384}
!125 = !{!39, !40, i64 4380}
!126 = !{!39, !40, i64 4376}
!127 = !{!39, !40, i64 4392}
!128 = !{!39, !40, i64 4388}
!129 = !{!"function_entry_count", i64 461008356}
!130 = !{!"function_entry_count", i64 568235253}
!131 = !{!"function_entry_count", i64 440529859}
!132 = !{!"function_entry_count", i64 336427972}
!133 = !{!"function_entry_count", i64 2243214897}
!134 = !{!"function_entry_count", i64 2869551984}
