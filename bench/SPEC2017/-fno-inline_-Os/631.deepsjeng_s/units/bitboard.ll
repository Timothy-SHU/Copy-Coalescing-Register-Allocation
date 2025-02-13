; ModuleID = 'bitboard.cpp'
source_filename = "bitboard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

$_ZSt3minIiERKT_S2_S2_ = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z13PrintBitboardy(i64 noundef %0) local_unnamed_addr #0 !prof !42 {
  br label %2

2:                                                ; preds = %1, %11
  %3 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %4 = shl nuw i64 1, %3
  %5 = and i64 %4, %0
  %6 = icmp eq i64 %5, 0
  %7 = select i1 %6, ptr @.str.1, ptr @.str
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %7) #8
  %8 = and i64 %3, 7
  %9 = icmp eq i64 %8, 7
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2) #8
  br label %11

11:                                               ; preds = %2, %10
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 64
  br i1 %13, label %14, label %2, !llvm.loop !43

14:                                               ; preds = %11
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z17PrintRotBitboardsP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !42 {
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.3) #8
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !45
  tail call void @_Z13PrintBitboardy(i64 noundef %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z17PrintAllBitboardsP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !42 {
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.4) #8
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !51
  tail call void @_Z13PrintBitboardy(i64 noundef %3) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.5) #8
  %4 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !52
  tail call void @_Z13PrintBitboardy(i64 noundef %5) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.3) #8
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !45
  tail call void @_Z13PrintBitboardy(i64 noundef %7) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.6) #8
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %9) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.7) #8
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %11 = load i64, ptr %10, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %11) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.8) #8
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %13 = load i64, ptr %12, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %13) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.9) #8
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %15 = load i64, ptr %14, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %15) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.10) #8
  %16 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %17 = load i64, ptr %16, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %17) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.11) #8
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %19 = load i64, ptr %18, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %19) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.12) #8
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %21 = load i64, ptr %20, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %21) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.13) #8
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %23 = load i64, ptr %22, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %23) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.14) #8
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %25 = load i64, ptr %24, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %25) #8
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.15) #8
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %27 = load i64, ptr %26, align 8, !tbaa !53
  tail call void @_Z13PrintBitboardy(i64 noundef %27) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_Z22SetupPrecalculatedDatav() local_unnamed_addr #3 !prof !54 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %5, %0
  %6 = phi i64 [ 0, %0 ], [ %12, %5 ]
  %7 = phi <2 x i64> [ <i64 0, i64 1>, %0 ], [ %13, %5 ]
  %8 = shl nuw <2 x i64> <i64 1, i64 1>, %7
  %9 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %6
  store <2 x i64> %8, ptr %9, align 16, !tbaa !53
  %10 = xor <2 x i64> %8, <i64 -1, i64 -1>
  %11 = getelementptr inbounds [64 x i64], ptr @InvMask, i64 0, i64 %6
  store <2 x i64> %10, ptr %11, align 16, !tbaa !53
  %12 = add nuw i64 %6, 2
  %13 = add <2 x i64> %7, <i64 2, i64 2>
  %14 = icmp eq i64 %12, 64
  br i1 %14, label %15, label %5, !prof !55, !llvm.loop !56

15:                                               ; preds = %5, %26
  %16 = phi i64 [ %30, %26 ], [ 0, %5 ]
  %17 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %16
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ %16, %15 ], [ %24, %18 ]
  %20 = phi i64 [ 0, %15 ], [ %23, %18 ]
  %21 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %19
  %22 = load i64, ptr %21, align 8, !tbaa !53
  %23 = or i64 %20, %22
  %24 = add nuw nsw i64 %19, 8
  %25 = icmp ult i64 %19, 56
  br i1 %25, label %18, label %26, !prof !59, !llvm.loop !60

26:                                               ; preds = %18
  store i64 %23, ptr %17, align 8, !tbaa !53
  %27 = shl nuw nsw i64 %16, 3
  %28 = shl nuw i64 255, %27
  %29 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %16
  store i64 %28, ptr %29, align 8, !tbaa !53
  %30 = add nuw nsw i64 %16, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %15, !prof !61, !llvm.loop !62

32:                                               ; preds = %26, %58
  %33 = phi i64 [ %59, %58 ], [ 0, %26 ]
  %34 = getelementptr inbounds [64 x i64], ptr @FileUpMask, i64 0, i64 %33
  store i64 0, ptr %34, align 8, !tbaa !53
  %35 = getelementptr inbounds [64 x i64], ptr @FileDownMask, i64 0, i64 %33
  store i64 0, ptr %35, align 8, !tbaa !53
  %36 = icmp ugt i64 %33, 7
  br i1 %36, label %40, label %39, !prof !63

37:                                               ; preds = %40
  store i64 %47, ptr %34, align 8, !tbaa !53
  %38 = icmp ult i64 %33, 56
  br i1 %38, label %39, label %58, !prof !64

39:                                               ; preds = %32, %37
  br label %49

40:                                               ; preds = %32, %40
  %41 = phi i64 [ %43, %40 ], [ %33, %32 ]
  %42 = phi i64 [ %47, %40 ], [ 0, %32 ]
  %43 = add nsw i64 %41, -8
  %44 = and i64 %43, 4294967295
  %45 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !53
  %47 = or i64 %42, %46
  %48 = icmp sgt i64 %41, 15
  br i1 %48, label %40, label %37, !prof !65, !llvm.loop !66

49:                                               ; preds = %39, %49
  %50 = phi i64 [ %52, %49 ], [ %33, %39 ]
  %51 = phi i64 [ %55, %49 ], [ 0, %39 ]
  %52 = add nuw nsw i64 %50, 8
  %53 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !53
  %55 = or i64 %51, %54
  %56 = icmp ult i64 %50, 48
  br i1 %56, label %49, label %57, !prof !65, !llvm.loop !67

57:                                               ; preds = %49
  store i64 %55, ptr %35, align 8, !tbaa !53
  br label %58

58:                                               ; preds = %57, %37
  %59 = add nuw nsw i64 %33, 1
  %60 = icmp eq i64 %59, 64
  br i1 %60, label %61, label %32, !prof !68, !llvm.loop !69

61:                                               ; preds = %58, %110
  %62 = phi i64 [ %111, %110 ], [ 0, %58 ]
  %63 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %62
  store i64 0, ptr %63, align 8, !tbaa !53
  %64 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %62
  store i64 0, ptr %64, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #9
  %65 = trunc i64 %62 to i32
  %66 = and i32 %65, 7
  store i32 %66, ptr %1, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %67 = lshr i32 %65, 3
  %68 = xor i32 %67, 7
  store i32 %68, ptr %2, align 4, !tbaa !70
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %70 = load i32, ptr %69, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #9
  %71 = getelementptr inbounds [64 x i32], ptr @_ZL19DiagonalLength_a1h8, i64 0, i64 %62
  %72 = load i32, ptr %71, align 4, !tbaa !70
  %73 = load i64, ptr %63, align 8, !tbaa !53
  %74 = call i32 @llvm.smax.i32(i32 %72, i32 1)
  %75 = zext nneg i32 %74 to i64
  br label %76

76:                                               ; preds = %61, %76
  %77 = phi i64 [ 0, %61 ], [ %87, %76 ]
  %78 = phi i64 [ %73, %61 ], [ %86, %76 ]
  %79 = trunc i64 %77 to i32
  %80 = sub i32 %70, %79
  %81 = mul i32 %80, 7
  %82 = add i32 %81, %65
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !53
  %86 = or i64 %78, %85
  %87 = add nuw nsw i64 %77, 1
  %88 = icmp eq i64 %87, %75
  br i1 %88, label %89, label %76, !prof !71, !llvm.loop !72

89:                                               ; preds = %76
  store i64 %86, ptr %63, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 %66, ptr %3, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 %67, ptr %4, align 4, !tbaa !70
  %90 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  %91 = load i32, ptr %90, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %92 = getelementptr inbounds [64 x i32], ptr @_ZL19DiagonalLength_a8h1, i64 0, i64 %62
  %93 = load i32, ptr %92, align 4, !tbaa !70
  %94 = load i64, ptr %64, align 8, !tbaa !53
  %95 = call i32 @llvm.smax.i32(i32 %93, i32 1)
  %96 = zext nneg i32 %95 to i64
  br label %97

97:                                               ; preds = %89, %97
  %98 = phi i64 [ 0, %89 ], [ %108, %97 ]
  %99 = phi i64 [ %94, %89 ], [ %107, %97 ]
  %100 = trunc i64 %98 to i32
  %101 = sub i32 %100, %91
  %102 = mul i32 %101, 9
  %103 = add i32 %102, %65
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !53
  %107 = or i64 %99, %106
  %108 = add nuw nsw i64 %98, 1
  %109 = icmp eq i64 %108, %96
  br i1 %109, label %110, label %97, !prof !71, !llvm.loop !73

110:                                              ; preds = %97
  store i64 %107, ptr %64, align 8, !tbaa !53
  %111 = add nuw nsw i64 %62, 1
  %112 = icmp eq i64 %111, 64
  br i1 %112, label %113, label %61, !prof !68, !llvm.loop !74

113:                                              ; preds = %110, %150
  %114 = phi i64 [ %151, %150 ], [ 0, %110 ]
  %115 = phi i32 [ %152, %150 ], [ 0, %110 ]
  %116 = and i32 %115, 7
  %117 = trunc i64 %114 to i32
  %118 = lshr i32 %117, 3
  %119 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %114
  store i64 0, ptr %119, align 8, !tbaa !53
  %120 = and i32 %117, 7
  %121 = add nsw i32 %120, -2
  %122 = add nsw i32 %118, -2
  %123 = add nuw nsw i32 %118, 2
  %124 = add nuw nsw i32 %116, 2
  br label %125

125:                                              ; preds = %113, %146
  %126 = phi i64 [ 0, %113 ], [ %147, %146 ]
  %127 = phi i32 [ %121, %113 ], [ %148, %146 ]
  %128 = icmp ugt i32 %127, 7
  br i1 %128, label %146, label %129, !prof !75

129:                                              ; preds = %125, %142
  %130 = phi i64 [ %143, %142 ], [ %126, %125 ]
  %131 = phi i32 [ %144, %142 ], [ %122, %125 ]
  %132 = icmp ugt i32 %131, 7
  br i1 %132, label %142, label %133, !prof !76

133:                                              ; preds = %129
  %134 = shl nuw nsw i32 %131, 3
  %135 = or disjoint i32 %134, %127
  %136 = zext nneg i32 %135 to i64
  %137 = icmp eq i64 %114, %136
  br i1 %137, label %142, label %138, !prof !77

138:                                              ; preds = %133
  %139 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %136
  %140 = load i64, ptr %139, align 8, !tbaa !53
  %141 = or i64 %130, %140
  store i64 %141, ptr %119, align 8, !tbaa !53
  br label %142

142:                                              ; preds = %133, %129, %138
  %143 = phi i64 [ %130, %133 ], [ %130, %129 ], [ %141, %138 ]
  %144 = add nsw i32 %131, 1
  %145 = icmp eq i32 %131, %123
  br i1 %145, label %146, label %129, !prof !78, !llvm.loop !79

146:                                              ; preds = %142, %125
  %147 = phi i64 [ %126, %125 ], [ %143, %142 ]
  %148 = add nsw i32 %127, 1
  %149 = icmp eq i32 %127, %124
  br i1 %149, label %150, label %125, !prof !80, !llvm.loop !81

150:                                              ; preds = %146
  %151 = add nuw nsw i64 %114, 1
  %152 = add nuw nsw i32 %115, 1
  %153 = icmp eq i64 %151, 64
  br i1 %153, label %154, label %113, !prof !68, !llvm.loop !82

154:                                              ; preds = %150, %191
  %155 = phi i64 [ %192, %191 ], [ 0, %150 ]
  %156 = phi i32 [ %193, %191 ], [ 0, %150 ]
  %157 = and i32 %156, 7
  %158 = trunc i64 %155 to i32
  %159 = lshr i32 %158, 3
  %160 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask1, i64 0, i64 %155
  store i64 0, ptr %160, align 8, !tbaa !53
  %161 = and i32 %158, 7
  %162 = add nsw i32 %161, -1
  %163 = add nsw i32 %159, -1
  %164 = add nuw nsw i32 %159, 1
  %165 = add nuw nsw i32 %157, 1
  br label %166

166:                                              ; preds = %154, %187
  %167 = phi i64 [ 0, %154 ], [ %188, %187 ]
  %168 = phi i32 [ %162, %154 ], [ %189, %187 ]
  %169 = icmp ugt i32 %168, 7
  br i1 %169, label %187, label %170, !prof !83

170:                                              ; preds = %166, %183
  %171 = phi i64 [ %184, %183 ], [ %167, %166 ]
  %172 = phi i32 [ %185, %183 ], [ %163, %166 ]
  %173 = icmp ugt i32 %172, 7
  br i1 %173, label %183, label %174, !prof !84

174:                                              ; preds = %170
  %175 = shl nuw nsw i32 %172, 3
  %176 = or disjoint i32 %175, %168
  %177 = zext nneg i32 %176 to i64
  %178 = icmp eq i64 %155, %177
  br i1 %178, label %183, label %179, !prof !85

179:                                              ; preds = %174
  %180 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %177
  %181 = load i64, ptr %180, align 8, !tbaa !53
  %182 = or i64 %171, %181
  store i64 %182, ptr %160, align 8, !tbaa !53
  br label %183

183:                                              ; preds = %174, %170, %179
  %184 = phi i64 [ %171, %174 ], [ %171, %170 ], [ %182, %179 ]
  %185 = add nsw i32 %172, 1
  %186 = icmp eq i32 %172, %164
  br i1 %186, label %187, label %170, !prof !86, !llvm.loop !87

187:                                              ; preds = %183, %166
  %188 = phi i64 [ %167, %166 ], [ %184, %183 ]
  %189 = add nsw i32 %168, 1
  %190 = icmp eq i32 %168, %165
  br i1 %190, label %191, label %166, !prof !88, !llvm.loop !89

191:                                              ; preds = %187
  %192 = add nuw nsw i64 %155, 1
  %193 = add nuw nsw i32 %156, 1
  %194 = icmp eq i64 %192, 64
  br i1 %194, label %195, label %154, !prof !68, !llvm.loop !90

195:                                              ; preds = %191, %209
  %196 = phi i64 [ %210, %209 ], [ 0, %191 ]
  %197 = trunc i64 %196 to i32
  br label %198

198:                                              ; preds = %195, %206
  %199 = phi i32 [ 15, %195 ], [ %207, %206 ]
  %200 = shl nuw i32 1, %199
  %201 = and i32 %200, %197
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203, !prof !91

203:                                              ; preds = %198
  %204 = trunc i32 %199 to i8
  %205 = getelementptr inbounds [65536 x i8], ptr @last_bit, i64 0, i64 %196
  store i8 %204, ptr %205, align 1, !tbaa !92
  br label %209

206:                                              ; preds = %198
  %207 = add nsw i32 %199, -1
  %208 = icmp eq i32 %199, 0
  br i1 %208, label %209, label %198, !prof !93, !llvm.loop !94

209:                                              ; preds = %206, %203
  %210 = add nuw nsw i64 %196, 1
  %211 = icmp eq i64 %210, 65535
  br i1 %211, label %212, label %195, !prof !95, !llvm.loop !96

212:                                              ; preds = %209, %275
  %213 = phi i64 [ %276, %275 ], [ 0, %209 ]
  %214 = getelementptr inbounds [64 x i64], ptr @PawnAttacksBlack, i64 0, i64 %213
  store i64 0, ptr %214, align 8, !tbaa !53
  %215 = getelementptr inbounds [64 x i64], ptr @PawnAttacksWhite, i64 0, i64 %213
  store i64 0, ptr %215, align 8, !tbaa !53
  %216 = getelementptr inbounds [64 x i64], ptr @PawnMovesBlack, i64 0, i64 %213
  store i64 0, ptr %216, align 8, !tbaa !53
  %217 = getelementptr inbounds [64 x i64], ptr @PawnMovesWhite, i64 0, i64 %213
  store i64 0, ptr %217, align 8, !tbaa !53
  %218 = trunc i64 %213 to i32
  %219 = and i32 %218, 7
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %237, label %221, !prof !97

221:                                              ; preds = %212
  %222 = icmp ult i64 %213, 56
  br i1 %222, label %223, label %228, !prof !98

223:                                              ; preds = %221
  %224 = add nuw nsw i64 %213, 7
  %225 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !53
  store i64 %226, ptr %214, align 8, !tbaa !53
  %227 = icmp ugt i64 %213, 7
  br i1 %227, label %228, label %233, !prof !99

228:                                              ; preds = %221, %223
  %229 = phi i64 [ 0, %221 ], [ %226, %223 ]
  %230 = add nsw i64 %213, -9
  %231 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !53
  store i64 %232, ptr %215, align 8, !tbaa !53
  br label %233

233:                                              ; preds = %223, %228
  %234 = phi i64 [ 0, %223 ], [ %232, %228 ]
  %235 = phi i64 [ %226, %223 ], [ %229, %228 ]
  %236 = icmp eq i32 %219, 7
  br i1 %236, label %252, label %237, !prof !97

237:                                              ; preds = %212, %233
  %238 = phi i64 [ 0, %212 ], [ %234, %233 ]
  %239 = phi i64 [ 0, %212 ], [ %235, %233 ]
  %240 = icmp ult i64 %213, 56
  br i1 %240, label %241, label %247, !prof !98

241:                                              ; preds = %237
  %242 = add nuw nsw i64 %213, 9
  %243 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !53
  %245 = or i64 %239, %244
  store i64 %245, ptr %214, align 8, !tbaa !53
  %246 = icmp ugt i64 %213, 7
  br i1 %246, label %247, label %275, !prof !99

247:                                              ; preds = %237, %241
  %248 = add nsw i64 %213, -7
  %249 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %248
  %250 = load i64, ptr %249, align 8, !tbaa !53
  %251 = or i64 %238, %250
  store i64 %251, ptr %215, align 8, !tbaa !53
  br label %252

252:                                              ; preds = %247, %233
  %253 = lshr i32 %218, 3
  %254 = icmp eq i32 %253, 7
  %255 = icmp ult i64 %213, 8
  %256 = or i1 %255, %254
  br i1 %256, label %275, label %257, !prof !100

257:                                              ; preds = %252
  %258 = add nuw nsw i64 %213, 8
  %259 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %258
  %260 = load i64, ptr %259, align 8, !tbaa !53
  store i64 %260, ptr %216, align 8, !tbaa !53
  %261 = add nsw i64 %213, -8
  %262 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %261
  %263 = load i64, ptr %262, align 8, !tbaa !53
  store i64 %263, ptr %217, align 8, !tbaa !53
  switch i32 %253, label %275 [
    i32 1, label %264
    i32 6, label %266
  ], !prof !101

264:                                              ; preds = %257
  %265 = or disjoint i64 %213, 16
  br label %268

266:                                              ; preds = %257
  %267 = add nsw i64 %213, -16
  br label %268

268:                                              ; preds = %266, %264
  %269 = phi i64 [ %265, %264 ], [ %267, %266 ]
  %270 = phi i64 [ %260, %264 ], [ %263, %266 ]
  %271 = phi ptr [ %216, %264 ], [ %217, %266 ]
  %272 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %269
  %273 = load i64, ptr %272, align 8, !tbaa !53
  %274 = or i64 %273, %270
  store i64 %274, ptr %271, align 8, !tbaa !53
  br label %275

275:                                              ; preds = %268, %241, %257, %252
  %276 = add nuw nsw i64 %213, 1
  %277 = icmp eq i64 %276, 64
  br i1 %277, label %278, label %212, !prof !68, !llvm.loop !102

278:                                              ; preds = %275, %357
  %279 = phi i64 [ %358, %357 ], [ 0, %275 ]
  %280 = getelementptr inbounds [64 x i64], ptr @KnightMoves, i64 0, i64 %279
  %281 = icmp ult i64 %279, 8
  br i1 %281, label %282, label %284, !prof !97

282:                                              ; preds = %278
  %283 = trunc i64 %279 to i32
  br label %324

284:                                              ; preds = %278
  %285 = icmp ugt i64 %279, 15
  %286 = trunc i64 %279 to i32
  %287 = and i32 %286, 7
  br i1 %285, label %288, label %301, !prof !103

288:                                              ; preds = %284
  %289 = icmp eq i32 %287, 0
  br i1 %289, label %295, label %290, !prof !104

290:                                              ; preds = %288
  %291 = add nsw i64 %279, -17
  %292 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %291
  %293 = load i64, ptr %292, align 8, !tbaa !53
  store i64 %293, ptr %280, align 8, !tbaa !53
  %294 = icmp eq i32 %287, 7
  br i1 %294, label %310, label %295, !prof !104

295:                                              ; preds = %288, %290
  %296 = phi i64 [ 0, %288 ], [ %293, %290 ]
  %297 = add nsw i64 %279, -15
  %298 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %297
  %299 = load i64, ptr %298, align 8, !tbaa !53
  %300 = or i64 %296, %299
  store i64 %300, ptr %280, align 8, !tbaa !53
  br label %301

301:                                              ; preds = %284, %295
  %302 = phi i64 [ %300, %295 ], [ 0, %284 ]
  %303 = icmp ugt i32 %287, 1
  br i1 %303, label %304, label %310, !prof !105

304:                                              ; preds = %301
  %305 = add nsw i64 %279, -10
  %306 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !53
  %308 = or i64 %302, %307
  store i64 %308, ptr %280, align 8, !tbaa !53
  %309 = icmp ult i32 %287, 6
  br i1 %309, label %310, label %318, !prof !106

310:                                              ; preds = %304, %301, %290
  %311 = phi i64 [ -10, %290 ], [ -6, %301 ], [ -6, %304 ]
  %312 = phi i64 [ %293, %290 ], [ %302, %301 ], [ %308, %304 ]
  %313 = phi i32 [ 7, %290 ], [ %287, %301 ], [ %287, %304 ]
  %314 = add nsw i64 %279, %311
  %315 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !53
  %317 = or i64 %312, %316
  store i64 %317, ptr %280, align 8, !tbaa !53
  br label %318

318:                                              ; preds = %310, %304
  %319 = phi i32 [ %287, %304 ], [ %313, %310 ]
  %320 = phi i64 [ %308, %304 ], [ %317, %310 ]
  %321 = icmp ult i64 %279, 56
  br i1 %321, label %322, label %357, !prof !107

322:                                              ; preds = %318
  %323 = icmp ult i64 %279, 48
  br i1 %323, label %324, label %340, !prof !108

324:                                              ; preds = %282, %322
  %325 = phi i32 [ %283, %282 ], [ %319, %322 ]
  %326 = phi i64 [ 0, %282 ], [ %320, %322 ]
  %327 = icmp eq i32 %325, 0
  br i1 %327, label %334, label %328, !prof !104

328:                                              ; preds = %324
  %329 = add nuw nsw i64 %279, 15
  %330 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !53
  %332 = or i64 %326, %331
  store i64 %332, ptr %280, align 8, !tbaa !53
  %333 = icmp eq i32 %325, 7
  br i1 %333, label %350, label %334, !prof !104

334:                                              ; preds = %324, %328
  %335 = phi i64 [ %326, %324 ], [ %332, %328 ]
  %336 = add nuw nsw i64 %279, 17
  %337 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !53
  %339 = or i64 %335, %338
  store i64 %339, ptr %280, align 8, !tbaa !53
  br label %340

340:                                              ; preds = %334, %322
  %341 = phi i32 [ %325, %334 ], [ %319, %322 ]
  %342 = phi i64 [ %339, %334 ], [ %320, %322 ]
  %343 = icmp ugt i32 %341, 1
  br i1 %343, label %344, label %350, !prof !105

344:                                              ; preds = %340
  %345 = add nuw nsw i64 %279, 6
  %346 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !53
  %348 = or i64 %342, %347
  store i64 %348, ptr %280, align 8, !tbaa !53
  %349 = icmp ult i32 %341, 6
  br i1 %349, label %350, label %357, !prof !106

350:                                              ; preds = %344, %340, %328
  %351 = phi i64 [ 6, %328 ], [ 10, %340 ], [ 10, %344 ]
  %352 = phi i64 [ %332, %328 ], [ %342, %340 ], [ %348, %344 ]
  %353 = add nuw nsw i64 %279, %351
  %354 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %353
  %355 = load i64, ptr %354, align 8, !tbaa !53
  %356 = or i64 %352, %355
  store i64 %356, ptr %280, align 8, !tbaa !53
  br label %357

357:                                              ; preds = %350, %318, %344
  %358 = add nuw nsw i64 %279, 1
  %359 = icmp eq i64 %358, 64
  br i1 %359, label %360, label %278, !prof !68, !llvm.loop !109

360:                                              ; preds = %357, %424
  %361 = phi i64 [ %425, %424 ], [ 0, %357 ]
  %362 = getelementptr inbounds [64 x i64], ptr @KingMoves, i64 0, i64 %361
  %363 = icmp ult i64 %361, 8
  %364 = trunc i64 %361 to i32
  br i1 %363, label %386, label %365, !prof !97

365:                                              ; preds = %360
  %366 = and i32 %364, 7
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %373, label %368, !prof !110

368:                                              ; preds = %365
  %369 = add nsw i64 %361, -9
  %370 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %369
  %371 = load i64, ptr %370, align 8, !tbaa !53
  %372 = icmp eq i32 %366, 7
  br i1 %372, label %379, label %373, !prof !110

373:                                              ; preds = %365, %368
  %374 = phi i64 [ 0, %365 ], [ %371, %368 ]
  %375 = add nsw i64 %361, -7
  %376 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !53
  %378 = or i64 %374, %377
  br label %379

379:                                              ; preds = %368, %373
  %380 = phi i64 [ %371, %368 ], [ %378, %373 ]
  %381 = add nsw i64 %361, -8
  %382 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %381
  %383 = load i64, ptr %382, align 8, !tbaa !53
  %384 = or i64 %380, %383
  %385 = icmp ult i64 %361, 56
  br i1 %385, label %386, label %406, !prof !107

386:                                              ; preds = %360, %379
  %387 = phi i32 [ %366, %379 ], [ %364, %360 ]
  %388 = phi i64 [ %384, %379 ], [ 0, %360 ]
  %389 = icmp eq i32 %387, 0
  br i1 %389, label %396, label %390, !prof !110

390:                                              ; preds = %386
  %391 = add nuw nsw i64 %361, 7
  %392 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %391
  %393 = load i64, ptr %392, align 8, !tbaa !53
  %394 = or i64 %388, %393
  %395 = icmp eq i32 %387, 7
  br i1 %395, label %402, label %396, !prof !110

396:                                              ; preds = %386, %390
  %397 = phi i64 [ %388, %386 ], [ %394, %390 ]
  %398 = add nuw nsw i64 %361, 9
  %399 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %398
  %400 = load i64, ptr %399, align 8, !tbaa !53
  %401 = or i64 %397, %400
  br label %402

402:                                              ; preds = %396, %390
  %403 = phi i64 [ %401, %396 ], [ %394, %390 ]
  %404 = shl nuw i64 256, %361
  %405 = add i64 %403, %404
  br label %406

406:                                              ; preds = %402, %379
  %407 = phi i32 [ %387, %402 ], [ %366, %379 ]
  %408 = phi i64 [ %405, %402 ], [ %384, %379 ]
  %409 = icmp eq i32 %407, 0
  br i1 %409, label %418, label %410, !prof !97

410:                                              ; preds = %406
  %411 = add nsw i64 %361, -1
  %412 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !53
  %414 = or i64 %408, %413
  store i64 %414, ptr %362, align 8, !tbaa !53
  %415 = icmp eq i32 %407, 7
  br i1 %415, label %416, label %418, !prof !97

416:                                              ; preds = %410
  %417 = add nuw nsw i64 %361, 1
  br label %424

418:                                              ; preds = %406, %410
  %419 = phi i64 [ %408, %406 ], [ %414, %410 ]
  %420 = add nuw nsw i64 %361, 1
  %421 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %420
  %422 = load i64, ptr %421, align 8, !tbaa !53
  %423 = or i64 %419, %422
  store i64 %423, ptr %362, align 8, !tbaa !53
  br label %424

424:                                              ; preds = %416, %418
  %425 = phi i64 [ %417, %416 ], [ %420, %418 ]
  %426 = icmp eq i64 %425, 64
  br i1 %426, label %427, label %360, !prof !68, !llvm.loop !111

427:                                              ; preds = %424, %630
  %428 = phi i64 [ %631, %630 ], [ 0, %424 ]
  %429 = icmp eq i64 %428, 0
  %430 = add nsw i64 %428, -1
  %431 = trunc i64 %430 to i32
  %432 = and i64 %430, 4294967295
  %433 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %432
  %434 = shl nuw i32 1, %431
  %435 = icmp eq i64 %428, 1
  %436 = add nsw i64 %428, -2
  %437 = trunc i64 %436 to i32
  %438 = and i64 %436, 4294967295
  %439 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %438
  %440 = shl nuw i32 1, %437
  %441 = icmp ugt i64 %428, 2
  %442 = add nsw i64 %428, -3
  %443 = trunc i64 %442 to i32
  %444 = and i64 %442, 4294967295
  %445 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %444
  %446 = shl nuw i32 1, %443
  %447 = icmp eq i64 %428, 3
  %448 = add nsw i64 %428, -4
  %449 = trunc i64 %448 to i32
  %450 = and i64 %448, 4294967295
  %451 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %450
  %452 = shl nuw i32 1, %449
  %453 = icmp ugt i64 %428, 4
  %454 = add nsw i64 %428, -5
  %455 = trunc i64 %454 to i32
  %456 = and i64 %454, 4294967295
  %457 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %456
  %458 = shl nuw i32 1, %455
  %459 = icmp eq i64 %428, 5
  %460 = add nsw i64 %428, -6
  %461 = trunc i64 %460 to i32
  %462 = and i64 %460, 4294967295
  %463 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %462
  %464 = shl nuw i32 1, %461
  %465 = icmp ugt i64 %428, 6
  %466 = add nsw i64 %428, -7
  %467 = trunc i64 %466 to i32
  %468 = and i64 %466, 4294967295
  %469 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %468
  %470 = shl nuw i32 1, %467
  %471 = icmp eq i64 %428, 7
  %472 = add nuw nsw i64 %428, 1
  %473 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %472
  %474 = trunc i64 %428 to i32
  %475 = shl nuw nsw i32 2, %474
  %476 = icmp eq i64 %472, 7
  %477 = add nuw nsw i64 %428, 2
  %478 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %477
  %479 = trunc i64 %472 to i32
  %480 = shl nuw nsw i32 2, %479
  %481 = icmp eq i64 %477, 7
  %482 = add nuw nsw i64 %428, 3
  %483 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %482
  %484 = trunc i64 %477 to i32
  %485 = shl nuw nsw i32 2, %484
  %486 = icmp eq i64 %482, 7
  %487 = add nuw nsw i64 %428, 4
  %488 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %487
  %489 = trunc i64 %482 to i32
  %490 = shl nuw nsw i32 2, %489
  %491 = icmp eq i64 %487, 7
  %492 = add nuw nsw i64 %428, 5
  %493 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %492
  %494 = trunc i64 %487 to i32
  %495 = shl nuw nsw i32 2, %494
  %496 = icmp eq i64 %492, 7
  %497 = add nuw nsw i64 %428, 6
  %498 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %497
  %499 = trunc i64 %492 to i32
  %500 = shl nuw nsw i32 2, %499
  %501 = icmp eq i64 %497, 7
  %502 = add nuw nsw i64 %428, 7
  %503 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %502
  %504 = trunc i64 %497 to i32
  %505 = shl nuw nsw i32 2, %504
  br label %506

506:                                              ; preds = %427, %621
  %507 = phi i32 [ 0, %427 ], [ %628, %621 ]
  br i1 %429, label %565, label %508, !prof !112

508:                                              ; preds = %506
  %509 = load i64, ptr %433, align 8, !tbaa !53
  %510 = and i32 %434, %507
  %511 = icmp eq i32 %510, 0
  %512 = xor i1 %511, true
  %513 = or i1 %512, %435
  br i1 %513, label %565, label %514, !prof !113, !llvm.loop !114

514:                                              ; preds = %508
  %515 = load i64, ptr %439, align 8, !tbaa !53
  %516 = or i64 %515, %509
  %517 = and i32 %440, %507
  %518 = icmp eq i32 %517, 0
  %519 = xor i1 %518, true
  %520 = xor i1 %441, true
  %521 = or i1 %519, %520
  br i1 %521, label %565, label %522, !prof !113, !llvm.loop !114

522:                                              ; preds = %514
  %523 = load i64, ptr %445, align 8, !tbaa !53
  %524 = or i64 %523, %516
  %525 = and i32 %446, %507
  %526 = icmp eq i32 %525, 0
  %527 = xor i1 %526, true
  %528 = or i1 %527, %447
  br i1 %528, label %565, label %529, !prof !113, !llvm.loop !114

529:                                              ; preds = %522
  %530 = load i64, ptr %451, align 8, !tbaa !53
  %531 = or i64 %530, %524
  %532 = and i32 %452, %507
  %533 = icmp eq i32 %532, 0
  %534 = xor i1 %533, true
  %535 = xor i1 %453, true
  %536 = or i1 %534, %535
  br i1 %536, label %565, label %537, !prof !113, !llvm.loop !114

537:                                              ; preds = %529
  %538 = load i64, ptr %457, align 8, !tbaa !53
  %539 = or i64 %538, %531
  %540 = and i32 %458, %507
  %541 = icmp eq i32 %540, 0
  %542 = xor i1 %541, true
  %543 = or i1 %542, %459
  br i1 %543, label %565, label %544, !prof !113, !llvm.loop !114

544:                                              ; preds = %537
  %545 = load i64, ptr %463, align 8, !tbaa !53
  %546 = or i64 %545, %539
  %547 = and i32 %464, %507
  %548 = icmp eq i32 %547, 0
  %549 = xor i1 %548, true
  %550 = xor i1 %465, true
  %551 = or i1 %549, %550
  br i1 %551, label %565, label %552, !prof !113, !llvm.loop !114

552:                                              ; preds = %544
  %553 = load i64, ptr %469, align 8, !tbaa !53
  %554 = or i64 %553, %546
  %555 = and i32 %470, %507
  %556 = icmp ne i32 %555, 0
  %557 = icmp eq i64 %428, 7
  %558 = or i1 %556, %557
  br i1 %558, label %565, label %559, !prof !113, !llvm.loop !114

559:                                              ; preds = %552
  %560 = add nuw i64 %428, 4294967288
  %561 = and i64 %560, 4294967295
  %562 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %561
  %563 = load i64, ptr %562, align 8, !tbaa !53
  %564 = or i64 %563, %554
  br label %565

565:                                              ; preds = %506, %552, %559, %508, %514, %522, %529, %537, %544
  %566 = phi i64 [ 0, %506 ], [ %509, %508 ], [ %516, %514 ], [ %524, %522 ], [ %531, %529 ], [ %539, %537 ], [ %546, %544 ], [ %554, %552 ], [ %564, %559 ]
  br i1 %471, label %621, label %567, !prof !112

567:                                              ; preds = %565
  %568 = load i64, ptr %473, align 8, !tbaa !53
  %569 = or i64 %568, %566
  %570 = and i32 %475, %507
  %571 = icmp eq i32 %570, 0
  %572 = xor i1 %571, true
  %573 = select i1 %572, i1 true, i1 %476
  br i1 %573, label %621, label %574, !prof !113, !llvm.loop !115

574:                                              ; preds = %567
  %575 = load i64, ptr %478, align 8, !tbaa !53
  %576 = or i64 %575, %569
  %577 = and i32 %480, %507
  %578 = icmp eq i32 %577, 0
  %579 = xor i1 %578, true
  %580 = select i1 %579, i1 true, i1 %481
  br i1 %580, label %621, label %581, !prof !113, !llvm.loop !115

581:                                              ; preds = %574
  %582 = load i64, ptr %483, align 8, !tbaa !53
  %583 = or i64 %582, %576
  %584 = and i32 %485, %507
  %585 = icmp eq i32 %584, 0
  %586 = xor i1 %585, true
  %587 = select i1 %586, i1 true, i1 %486
  br i1 %587, label %621, label %588, !prof !113, !llvm.loop !115

588:                                              ; preds = %581
  %589 = load i64, ptr %488, align 8, !tbaa !53
  %590 = or i64 %589, %583
  %591 = and i32 %490, %507
  %592 = icmp eq i32 %591, 0
  %593 = xor i1 %592, true
  %594 = select i1 %593, i1 true, i1 %491
  br i1 %594, label %621, label %595, !prof !113, !llvm.loop !115

595:                                              ; preds = %588
  %596 = load i64, ptr %493, align 8, !tbaa !53
  %597 = or i64 %596, %590
  %598 = and i32 %495, %507
  %599 = icmp eq i32 %598, 0
  %600 = xor i1 %599, true
  %601 = select i1 %600, i1 true, i1 %496
  br i1 %601, label %621, label %602, !prof !113, !llvm.loop !115

602:                                              ; preds = %595
  %603 = load i64, ptr %498, align 8, !tbaa !53
  %604 = or i64 %603, %597
  %605 = and i32 %500, %507
  %606 = icmp eq i32 %605, 0
  %607 = xor i1 %606, true
  %608 = select i1 %607, i1 true, i1 %501
  br i1 %608, label %621, label %609, !prof !113, !llvm.loop !115

609:                                              ; preds = %602
  %610 = load i64, ptr %503, align 8, !tbaa !53
  %611 = or i64 %610, %604
  %612 = and i32 %505, %507
  %613 = icmp ne i32 %612, 0
  %614 = icmp eq i64 %428, 0
  %615 = or i1 %613, %614
  br i1 %615, label %621, label %616, !prof !113, !llvm.loop !115

616:                                              ; preds = %609
  %617 = add nuw nsw i64 %428, 8
  %618 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %617
  %619 = load i64, ptr %618, align 8, !tbaa !53
  %620 = or i64 %619, %611
  br label %621

621:                                              ; preds = %602, %595, %588, %581, %574, %567, %616, %609, %565
  %622 = phi i64 [ %569, %567 ], [ %566, %565 ], [ %576, %574 ], [ %583, %581 ], [ %590, %588 ], [ %597, %595 ], [ %604, %602 ], [ %611, %609 ], [ %620, %616 ]
  %623 = lshr i32 %507, 1
  %624 = and i32 %623, 63
  %625 = trunc i64 %622 to i8
  %626 = zext nneg i32 %624 to i64
  %627 = getelementptr inbounds [64 x [8 x i8]], ptr @firstRankAttacks, i64 0, i64 %626, i64 %428
  store i8 %625, ptr %627, align 1, !tbaa !92
  %628 = add nuw nsw i32 %507, 1
  %629 = icmp eq i32 %628, 256
  br i1 %629, label %630, label %506, !prof !116, !llvm.loop !117

630:                                              ; preds = %621
  %631 = add nuw nsw i64 %428, 1
  %632 = icmp eq i64 %631, 8
  br i1 %632, label %633, label %427, !prof !61, !llvm.loop !118

633:                                              ; preds = %630, %650
  %634 = phi i64 [ %651, %650 ], [ 0, %630 ]
  %635 = and i64 %634, 4294967295
  %636 = xor i64 %635, 7
  br label %637

637:                                              ; preds = %633, %637
  %638 = phi i64 [ 0, %633 ], [ %648, %637 ]
  %639 = getelementptr inbounds [64 x [8 x i8]], ptr @firstRankAttacks, i64 0, i64 %638, i64 %634
  %640 = load i8, ptr %639, align 1, !tbaa !92
  %641 = zext i8 %640 to i64
  %642 = mul nuw i64 %641, 72340172838076673
  %643 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %638, i64 %634
  store i64 %642, ptr %643, align 8, !tbaa !53
  %644 = mul i64 %641, -9205322385119247871
  %645 = lshr i64 %644, 7
  %646 = and i64 %645, 72340172838076673
  %647 = getelementptr inbounds [64 x [8 x i64]], ptr @aFileAttacks, i64 0, i64 %638, i64 %636
  store i64 %646, ptr %647, align 8, !tbaa !53
  %648 = add nuw nsw i64 %638, 1
  %649 = icmp eq i64 %648, 64
  br i1 %649, label %650, label %637, !prof !119, !llvm.loop !120

650:                                              ; preds = %637
  %651 = add nuw nsw i64 %634, 1
  %652 = icmp eq i64 %651, 8
  br i1 %652, label %653, label %633, !prof !61, !llvm.loop !121

653:                                              ; preds = %650, %653
  %654 = phi i64 [ %672, %653 ], [ 0, %650 ]
  %655 = and i64 %654, 7
  %656 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %655
  %657 = load i64, ptr %656, align 8, !tbaa !53
  %658 = lshr i64 %654, 3
  %659 = and i64 %658, 536870911
  %660 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %659
  %661 = load i64, ptr %660, align 8, !tbaa !53
  %662 = or i64 %661, %657
  %663 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %654
  store i64 %662, ptr %663, align 8, !tbaa !53
  %664 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %654
  %665 = load i64, ptr %664, align 8, !tbaa !53
  %666 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %654
  %667 = load i64, ptr %666, align 8, !tbaa !53
  %668 = or i64 %667, %665
  %669 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %654
  store i64 %668, ptr %669, align 8, !tbaa !53
  %670 = or i64 %668, %662
  %671 = getelementptr inbounds [64 x i64], ptr @QueenMask, i64 0, i64 %654
  store i64 %670, ptr %671, align 8, !tbaa !53
  %672 = add nuw nsw i64 %654, 1
  %673 = icmp eq i64 %672, 64
  br i1 %673, label %674, label %653, !prof !68, !llvm.loop !122

674:                                              ; preds = %653, %709
  %675 = phi i64 [ %710, %709 ], [ 0, %653 ]
  %676 = getelementptr inbounds [8 x i64], ptr @AboveMask, i64 0, i64 %675
  store i64 0, ptr %676, align 8, !tbaa !53
  %677 = getelementptr inbounds [8 x i64], ptr @BelowMask, i64 0, i64 %675
  store i64 0, ptr %677, align 8, !tbaa !53
  %678 = getelementptr inbounds [8 x i64], ptr @LeftMask, i64 0, i64 %675
  store i64 0, ptr %678, align 8, !tbaa !53
  %679 = getelementptr inbounds [8 x i64], ptr @RightMask, i64 0, i64 %675
  store i64 0, ptr %679, align 8, !tbaa !53
  %680 = icmp eq i64 %675, 0
  br i1 %680, label %683, label %684, !prof !123

681:                                              ; preds = %684
  store i64 %690, ptr %676, align 8, !tbaa !53
  store i64 %693, ptr %678, align 8, !tbaa !53
  %682 = icmp ult i64 %675, 7
  br i1 %682, label %683, label %709, !prof !124

683:                                              ; preds = %674, %681
  br label %696

684:                                              ; preds = %674, %684
  %685 = phi i64 [ %694, %684 ], [ 0, %674 ]
  %686 = phi i64 [ %693, %684 ], [ 0, %674 ]
  %687 = phi i64 [ %690, %684 ], [ 0, %674 ]
  %688 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %685
  %689 = load i64, ptr %688, align 8, !tbaa !53
  %690 = or i64 %687, %689
  %691 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %685
  %692 = load i64, ptr %691, align 8, !tbaa !53
  %693 = or i64 %686, %692
  %694 = add nuw nsw i64 %685, 1
  %695 = icmp eq i64 %694, %675
  br i1 %695, label %681, label %684, !prof !125, !llvm.loop !126

696:                                              ; preds = %683, %696
  %697 = phi i64 [ %706, %696 ], [ 7, %683 ]
  %698 = phi i64 [ %705, %696 ], [ 0, %683 ]
  %699 = phi i64 [ %702, %696 ], [ 0, %683 ]
  %700 = getelementptr inbounds [8 x i64], ptr @RankMask, i64 0, i64 %697
  %701 = load i64, ptr %700, align 8, !tbaa !53
  %702 = or i64 %699, %701
  %703 = getelementptr inbounds [8 x i64], ptr @FileMask, i64 0, i64 %697
  %704 = load i64, ptr %703, align 8, !tbaa !53
  %705 = or i64 %698, %704
  %706 = add nsw i64 %697, -1
  %707 = icmp ugt i64 %706, %675
  br i1 %707, label %696, label %708, !prof !127, !llvm.loop !128

708:                                              ; preds = %696
  store i64 %702, ptr %677, align 8, !tbaa !53
  store i64 %705, ptr %679, align 8, !tbaa !53
  br label %709

709:                                              ; preds = %708, %681
  %710 = add nuw nsw i64 %675, 1
  %711 = icmp eq i64 %710, 8
  br i1 %711, label %712, label %674, !prof !61, !llvm.loop !129

712:                                              ; preds = %709
  store i64 0, ptr @WhiteSqMask, align 8, !tbaa !53
  store i64 0, ptr @BlackSqMask, align 8, !tbaa !53
  br label %713

713:                                              ; preds = %712, %728
  %714 = phi i64 [ 0, %712 ], [ %731, %728 ]
  %715 = phi i64 [ 0, %712 ], [ %730, %728 ]
  %716 = phi i64 [ 0, %712 ], [ %729, %728 ]
  %717 = trunc i64 %714 to i32
  %718 = lshr i32 %717, 3
  %719 = add nuw nsw i32 %718, %717
  %720 = and i32 %719, 1
  %721 = icmp eq i32 %720, 0
  %722 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %714
  %723 = load i64, ptr %722, align 8, !tbaa !53
  br i1 %721, label %726, label %724, !prof !130

724:                                              ; preds = %713
  %725 = or i64 %715, %723
  store i64 %725, ptr @BlackSqMask, align 8, !tbaa !53
  br label %728

726:                                              ; preds = %713
  %727 = or i64 %716, %723
  store i64 %727, ptr @WhiteSqMask, align 8, !tbaa !53
  br label %728

728:                                              ; preds = %724, %726
  %729 = phi i64 [ %716, %724 ], [ %727, %726 ]
  %730 = phi i64 [ %725, %724 ], [ %715, %726 ]
  %731 = add nuw nsw i64 %714, 1
  %732 = icmp eq i64 %731, 64
  br i1 %732, label %733, label %713, !prof !68, !llvm.loop !131

733:                                              ; preds = %728
  %734 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @BelowMask, i64 0, i64 3), align 8, !tbaa !53
  %735 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @RightMask, i64 0, i64 3), align 8, !tbaa !53
  %736 = and i64 %735, %734
  store i64 %736, ptr @WhiteKingSide, align 8, !tbaa !53
  %737 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @LeftMask, i64 0, i64 4), align 16, !tbaa !53
  %738 = and i64 %737, %734
  store i64 %738, ptr @WhiteQueenSide, align 8, !tbaa !53
  %739 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @AboveMask, i64 0, i64 4), align 16, !tbaa !53
  %740 = and i64 %739, %735
  store i64 %740, ptr @BlackKingSide, align 8, !tbaa !53
  %741 = and i64 %739, %737
  store i64 %741, ptr @BlackQueenSide, align 8, !tbaa !53
  %742 = load i64, ptr @FileMask, align 16, !tbaa !53
  %743 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 1), align 8, !tbaa !53
  %744 = or i64 %743, %742
  %745 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 2), align 16, !tbaa !53
  %746 = or i64 %744, %745
  %747 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 3), align 8, !tbaa !53
  %748 = or i64 %746, %747
  store i64 %748, ptr @QSMask, align 8, !tbaa !53
  %749 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 4), align 16, !tbaa !53
  %750 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 5), align 8, !tbaa !53
  %751 = or i64 %750, %749
  %752 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 6), align 16, !tbaa !53
  %753 = or i64 %751, %752
  %754 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @FileMask, i64 0, i64 7), align 8, !tbaa !53
  %755 = or i64 %753, %754
  store i64 %755, ptr @KSMask, align 8, !tbaa !53
  %756 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 35), align 8, !tbaa !53
  %757 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 36), align 16, !tbaa !53
  %758 = or i64 %757, %756
  %759 = load <4 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 26), align 16, !tbaa !53
  %760 = load <4 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 18), align 16, !tbaa !53
  %761 = shufflevector <4 x i64> %759, <4 x i64> %760, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %762 = call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %761)
  %763 = or i64 %762, %758
  %764 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 10), align 16, !tbaa !53
  %765 = or i64 %763, %764
  %766 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 11), align 8, !tbaa !53
  %767 = or i64 %765, %766
  %768 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 12), align 16, !tbaa !53
  %769 = or i64 %767, %768
  %770 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 13), align 8, !tbaa !53
  %771 = or i64 %769, %770
  store i64 %771, ptr @WhiteStrongSquareMask, align 8, !tbaa !53
  %772 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 34), align 16, !tbaa !53
  %773 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 37), align 8, !tbaa !53
  %774 = load <4 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 42), align 16, !tbaa !53
  %775 = load <2 x i64>, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 50), align 16, !tbaa !53
  %776 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 52), align 16, !tbaa !53
  %777 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 53), align 8, !tbaa !53
  %778 = extractelement <4 x i64> %759, i64 1
  %779 = extractelement <4 x i64> %759, i64 2
  %780 = insertelement <8 x i64> poison, i64 %772, i64 0
  %781 = insertelement <8 x i64> %780, i64 %773, i64 1
  %782 = shufflevector <4 x i64> %774, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %783 = shufflevector <8 x i64> %781, <8 x i64> %782, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %784 = shufflevector <2 x i64> %775, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %785 = shufflevector <8 x i64> %783, <8 x i64> %784, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %786 = call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %785)
  %787 = or i64 %758, %786
  %788 = or i64 %787, %779
  %789 = or i64 %788, %778
  %790 = or i64 %789, %777
  %791 = or i64 %790, %776
  store i64 %791, ptr @BlackStrongSquareMask, align 8, !tbaa !53
  %792 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %774)
  %793 = or i64 %763, %792
  %794 = or i64 %793, %773
  %795 = or i64 %794, %772
  store i64 %795, ptr @CenterMask, align 8, !tbaa !53
  store i64 %746, ptr @KingFilesMask, align 16, !tbaa !53
  store i64 %746, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 1), align 8, !tbaa !53
  store i64 %746, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 2), align 16, !tbaa !53
  %796 = or i64 %751, %745
  %797 = or i64 %796, %747
  store i64 %797, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 3), align 8, !tbaa !53
  store i64 %797, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 4), align 16, !tbaa !53
  %798 = or i64 %752, %750
  %799 = or i64 %798, %754
  store i64 %799, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 5), align 8, !tbaa !53
  store i64 %799, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 6), align 16, !tbaa !53
  store i64 %799, ptr getelementptr inbounds ([8 x i64], ptr @KingFilesMask, i64 0, i64 7), align 8, !tbaa !53
  br label %800

800:                                              ; preds = %733, %808
  %801 = phi i64 [ 0, %733 ], [ %813, %808 ]
  %802 = trunc i64 %801 to i32
  %803 = and i32 %802, 7
  switch i32 %803, label %808 [
    i32 0, label %804
    i32 7, label %806
  ], !prof !132

804:                                              ; preds = %800
  %805 = or disjoint i64 %801, 1
  br label %808

806:                                              ; preds = %800
  %807 = add nsw i64 %801, -1
  br label %808

808:                                              ; preds = %800, %804, %806
  %809 = phi i64 [ %805, %804 ], [ %807, %806 ], [ %801, %800 ]
  %810 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask, i64 0, i64 %809
  %811 = load i64, ptr %810, align 8, !tbaa !53
  %812 = getelementptr inbounds [64 x i64], ptr @KingPressureMask, i64 0, i64 %801
  store i64 %811, ptr %812, align 8, !tbaa !53
  %813 = add nuw nsw i64 %801, 1
  %814 = icmp eq i64 %813, 64
  br i1 %814, label %815, label %800, !prof !68, !llvm.loop !133

815:                                              ; preds = %808, %823
  %816 = phi i64 [ %828, %823 ], [ 0, %808 ]
  %817 = trunc i64 %816 to i32
  %818 = and i32 %817, 7
  switch i32 %818, label %823 [
    i32 0, label %819
    i32 7, label %821
  ], !prof !132

819:                                              ; preds = %815
  %820 = or disjoint i64 %816, 1
  br label %823

821:                                              ; preds = %815
  %822 = add nsw i64 %816, -1
  br label %823

823:                                              ; preds = %815, %819, %821
  %824 = phi i64 [ %820, %819 ], [ %822, %821 ], [ %816, %815 ]
  %825 = getelementptr inbounds [64 x i64], ptr @KingSafetyMask1, i64 0, i64 %824
  %826 = load i64, ptr %825, align 8, !tbaa !53
  %827 = getelementptr inbounds [64 x i64], ptr @KingPressureMask1, i64 0, i64 %816
  store i64 %826, ptr %827, align 8, !tbaa !53
  %828 = add nuw nsw i64 %816, 1
  %829 = icmp eq i64 %828, 64
  br i1 %829, label %830, label %815, !prof !68, !llvm.loop !134

830:                                              ; preds = %823
  %831 = extractelement <4 x i64> %774, i64 0
  %832 = extractelement <4 x i64> %774, i64 1
  %833 = or i64 %831, %832
  %834 = extractelement <4 x i64> %774, i64 2
  %835 = or i64 %833, %834
  %836 = extractelement <4 x i64> %774, i64 3
  %837 = or i64 %835, %836
  %838 = extractelement <2 x i64> %775, i64 0
  %839 = or i64 %837, %838
  %840 = extractelement <2 x i64> %775, i64 1
  %841 = or i64 %839, %840
  %842 = or i64 %841, %772
  %843 = or i64 %842, %758
  %844 = or i64 %843, %773
  %845 = or i64 %844, %776
  %846 = or i64 %845, %777
  store i64 %846, ptr @SpaceMask, align 16, !tbaa !53
  %847 = extractelement <4 x i64> %759, i64 0
  %848 = extractelement <4 x i64> %759, i64 3
  %849 = or i64 %847, %848
  %850 = extractelement <4 x i64> %760, i64 0
  %851 = or i64 %849, %850
  %852 = extractelement <4 x i64> %760, i64 1
  %853 = or i64 %851, %852
  %854 = extractelement <4 x i64> %760, i64 2
  %855 = or i64 %853, %854
  %856 = extractelement <4 x i64> %760, i64 3
  %857 = or i64 %855, %856
  %858 = or i64 %857, %778
  %859 = or i64 %858, %779
  %860 = or i64 %859, %764
  %861 = or i64 %860, %766
  %862 = or i64 %861, %768
  %863 = or i64 %862, %770
  store i64 %863, ptr getelementptr inbounds ([2 x i64], ptr @SpaceMask, i64 0, i64 1), align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat !prof !135 {
  %3 = load i32, ptr %1, align 4, !tbaa !70
  %4 = load i32, ptr %0, align 4, !tbaa !70
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !136
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z16SetupCastleMasksP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !137 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 4, !tbaa !138
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !53
  %7 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 62), align 16, !tbaa !53
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 33
  %9 = load i32, ptr %8, align 8, !tbaa !139
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 61), align 8, !tbaa !53
  %14 = xor i64 %7, %12
  %15 = xor i64 %14, %13
  %16 = xor i64 %15, %6
  store i64 %16, ptr @CastleMask, align 16, !tbaa !53
  %17 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 58), align 16, !tbaa !53
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 32
  %19 = load i32, ptr %18, align 4, !tbaa !140
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !53
  %23 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 59), align 8, !tbaa !53
  %24 = xor i64 %17, %22
  %25 = xor i64 %24, %23
  %26 = xor i64 %25, %6
  store i64 %26, ptr getelementptr inbounds ([4 x i64], ptr @CastleMask, i64 0, i64 1), align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 31
  %28 = load i32, ptr %27, align 8, !tbaa !141
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !53
  %32 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 6), align 16, !tbaa !53
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 35
  %34 = load i32, ptr %33, align 8, !tbaa !142
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !53
  %38 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 5), align 8, !tbaa !53
  %39 = xor i64 %32, %37
  %40 = xor i64 %39, %38
  %41 = xor i64 %40, %31
  store i64 %41, ptr getelementptr inbounds ([4 x i64], ptr @CastleMask, i64 0, i64 2), align 16, !tbaa !53
  %42 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 2), align 16, !tbaa !53
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 34
  %44 = load i32, ptr %43, align 4, !tbaa !143
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !53
  %48 = load i64, ptr getelementptr inbounds ([64 x i64], ptr @Mask, i64 0, i64 3), align 8, !tbaa !53
  %49 = xor i64 %42, %47
  %50 = xor i64 %49, %48
  %51 = xor i64 %50, %31
  store i64 %51, ptr getelementptr inbounds ([4 x i64], ptr @CastleMask, i64 0, i64 3), align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z11RankAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !144 {
  %3 = and i32 %1, 7
  %4 = and i32 %1, -8
  %5 = or disjoint i32 %4, 1
  %6 = zext nneg i32 %5 to i64
  %7 = lshr i64 %0, %6
  %8 = and i64 %7, 63
  %9 = zext nneg i32 %3 to i64
  %10 = getelementptr inbounds [64 x [8 x i8]], ptr @firstRankAttacks, i64 0, i64 %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !92
  %12 = zext i8 %11 to i64
  %13 = zext nneg i32 %4 to i64
  %14 = shl i64 %12, %13
  ret i64 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z11FileAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !145 {
  %3 = and i32 %1, 7
  %4 = zext nneg i32 %3 to i64
  %5 = lshr i64 %0, %4
  %6 = and i64 %5, 72340172838076673
  %7 = mul i64 %6, 36099303471055872
  %8 = lshr i64 %7, 58
  %9 = lshr i32 %1, 3
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [64 x [8 x i64]], ptr @aFileAttacks, i64 0, i64 %8, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = shl i64 %12, %4
  ret i64 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !146 {
  %3 = and i32 %1, 7
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @DiagMaska1h8, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !53
  %7 = and i64 %6, %0
  %8 = mul i64 %7, 144680345676153346
  %9 = lshr i64 %8, 58
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = and i64 %12, %6
  ret i64 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !147 {
  %3 = and i32 %1, 7
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @DiagMaska8h1, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !53
  %7 = and i64 %6, %0
  %8 = mul i64 %7, 144680345676153346
  %9 = lshr i64 %8, 58
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [64 x [8 x i64]], ptr @fillUpAttacks, i64 0, i64 %9, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = and i64 %12, %6
  ret i64 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z13BishopAttacksP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 !prof !148 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = tail call noundef i64 @_Z15DiagonalAttacksyj(i64 noundef %4, i32 noundef %1) #8
  %6 = tail call noundef i64 @_Z15AntiDiagAttacksyj(i64 noundef %4, i32 noundef %1) #8
  %7 = or i64 %6, %5
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_Z11RookAttacksP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 !prof !149 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = tail call noundef i64 @_Z11RankAttacksyj(i64 noundef %4, i32 noundef %1) #8
  %6 = tail call noundef i64 @_Z11FileAttacksyj(i64 noundef %4, i32 noundef %1) #8
  %7 = or i64 %6, %5
  ret i64 %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @_Z22SetupPrecalculatedDatav, ptr @_ZSt3minIiERKT_S2_S2_, i64 64}
!37 = !{ptr @_Z13BishopAttacksP7state_ti, ptr @_Z15DiagonalAttacksyj, i64 2499267900}
!38 = !{ptr @_Z13BishopAttacksP7state_ti, ptr @_Z15AntiDiagAttacksyj, i64 2499267900}
!39 = !{ptr @_Z11RookAttacksP7state_ti, ptr @_Z11RankAttacksyj, i64 3326002297}
!40 = !{ptr @_Z11RookAttacksP7state_ti, ptr @_Z11FileAttacksyj, i64 3326002297}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !50, i64 264}
!46 = !{!"_ZTS7state_t", !47, i64 0, !48, i64 4, !50, i64 264, !50, i64 272, !50, i64 280, !48, i64 288, !47, i64 392, !47, i64 396, !48, i64 400, !47, i64 452, !47, i64 456, !47, i64 460, !47, i64 464, !47, i64 468, !47, i64 472, !47, i64 476, !50, i64 480, !50, i64 488, !48, i64 496, !48, i64 2544, !48, i64 2800, !48, i64 3056, !50, i64 4080, !50, i64 4088, !47, i64 4096, !48, i64 4100, !47, i64 4356, !47, i64 4360, !47, i64 4364, !47, i64 4368, !47, i64 4372, !47, i64 4376, !47, i64 4380, !47, i64 4384, !47, i64 4388, !47, i64 4392, !48, i64 4400}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"long long", !48, i64 0}
!51 = !{!46, !50, i64 280}
!52 = !{!46, !50, i64 272}
!53 = !{!50, !50, i64 0}
!54 = !{!"function_entry_count", i64 1}
!55 = !{!"branch_weights", i32 2, i32 30}
!56 = distinct !{!56, !44, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 56, i32 9}
!60 = distinct !{!60, !44}
!61 = !{!"branch_weights", i32 2, i32 7}
!62 = distinct !{!62, !44}
!63 = !{!"branch_weights", i32 129, i32 1}
!64 = !{!"branch_weights", i32 2130836488, i32 16647160}
!65 = !{!"branch_weights", i32 321, i32 129}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = !{!"branch_weights", i32 2, i32 63}
!69 = distinct !{!69, !44}
!70 = !{!47, !47, i64 0}
!71 = !{!"branch_weights", i32 129, i32 561}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = !{!"branch_weights", i32 14875, i32 81081}
!76 = !{!"branch_weights", i32 259457, i32 1456663}
!77 = !{!"branch_weights", i32 65, i32 1093}
!78 = !{!"branch_weights", i32 273, i32 1088}
!79 = distinct !{!79, !44}
!80 = !{!"branch_weights", i32 65, i32 256}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = !{!"branch_weights", i32 3339, i32 32745}
!84 = !{!"branch_weights", i32 23345, i32 245895}
!85 = !{!"branch_weights", i32 65, i32 421}
!86 = !{!"branch_weights", i32 177, i32 352}
!87 = distinct !{!87, !44}
!88 = !{!"branch_weights", i32 65, i32 128}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = !{!"branch_weights", i32 65536, i32 65535}
!92 = !{!48, !48, i64 0}
!93 = !{!"branch_weights", i32 2, i32 131068}
!94 = distinct !{!94, !44}
!95 = !{!"branch_weights", i32 2, i32 65534}
!96 = distinct !{!96, !44}
!97 = !{!"branch_weights", i32 9, i32 57}
!98 = !{!"branch_weights", i32 50, i32 8}
!99 = !{!"branch_weights", i32 1803886265, i32 343597383}
!100 = !{!"branch_weights", i32 363546267, i32 1783937381}
!101 = !{!"branch_weights", i32 1681, i32 450, i32 369}
!102 = distinct !{!102, !44}
!103 = !{!"branch_weights", i32 49, i32 9}
!104 = !{!"branch_weights", i32 7, i32 43}
!105 = !{!"branch_weights", i32 1529210953, i32 618272695}
!106 = !{!"branch_weights", i32 1620724902, i32 526758746}
!107 = !{!"branch_weights", i32 1808407283, i32 339076365}
!108 = !{!"branch_weights", i32 1751772760, i32 395710888}
!109 = distinct !{!109, !44}
!110 = !{!"branch_weights", i32 8, i32 50}
!111 = distinct !{!111, !44}
!112 = !{!"branch_weights", i32 511, i32 3077}
!113 = !{!"branch_weights", i32 6308361, i32 4735503}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !44}
!116 = !{!"branch_weights", i32 9, i32 2040}
!117 = distinct !{!117, !44}
!118 = distinct !{!118, !44}
!119 = !{!"branch_weights", i32 9, i32 504}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !44}
!122 = distinct !{!122, !44}
!123 = !{!"branch_weights", i32 1, i32 143}
!124 = !{!"branch_weights", i32 2132466280, i32 15017368}
!125 = !{!"branch_weights", i32 143, i32 321}
!126 = distinct !{!126, !44}
!127 = !{!"branch_weights", i32 321, i32 143}
!128 = distinct !{!128, !44}
!129 = distinct !{!129, !44}
!130 = !{!"branch_weights", i32 33, i32 33}
!131 = distinct !{!131, !44}
!132 = !{!"branch_weights", i32 2793, i32 522, i32 513}
!133 = distinct !{!133, !44}
!134 = distinct !{!134, !44}
!135 = !{!"function_entry_count", i64 680919544}
!136 = !{!"branch_weights", i32 648990227, i32 31929319}
!137 = !{!"function_entry_count", i64 25}
!138 = !{!46, !47, i64 4372}
!139 = !{!46, !47, i64 4384}
!140 = !{!46, !47, i64 4380}
!141 = !{!46, !47, i64 4376}
!142 = !{!46, !47, i64 4392}
!143 = !{!46, !47, i64 4388}
!144 = !{!"function_entry_count", i64 3876672559}
!145 = !{!"function_entry_count", i64 4012756624}
!146 = !{!"function_entry_count", i64 2965972654}
!147 = !{!"function_entry_count", i64 2887838232}
!148 = !{!"function_entry_count", i64 2499267900}
!149 = !{!"function_entry_count", i64 3326002297}
