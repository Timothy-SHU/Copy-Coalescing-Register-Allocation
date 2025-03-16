; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bfile = type { ptr, i8, i8, i8, i8 }

@bits = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@bits.1 = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@main.pBitCntFunc = internal unnamed_addr constant [7 x ptr] [ptr @bit_count, ptr @bitcount, ptr @ntbl_bitcnt, ptr @ntbl_bitcount, ptr @BW_btbl_bitcount, ptr @AR_btbl_bitcount, ptr @bit_shifter], align 16
@main.text = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @alloc_bit_array(i64 noundef %0) local_unnamed_addr #0 {
  %2 = add i64 %0, 7
  %3 = lshr i64 %2, 3
  %4 = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 1) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @getbit(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = sdiv i32 %1, 8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !7
  %7 = sext i8 %6 to i32
  %8 = and i32 %1, 7
  %9 = lshr i32 %7, %8
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @setbit(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = sdiv i32 %1, 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = icmp eq i32 %2, 0
  %8 = and i32 %1, 7
  %9 = shl nuw nsw i32 1, %8
  %10 = load i8, ptr %6, align 1, !tbaa !7
  %11 = trunc i32 %9 to i8
  %12 = xor i8 %11, -1
  %13 = and i8 %10, %12
  %14 = or i8 %10, %11
  %15 = select i1 %7, i8 %13, i8 %14
  store i8 %15, ptr %6, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @flipbit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sdiv i32 %1, 8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = and i32 %1, 7
  %7 = shl nuw nsw i32 1, %6
  %8 = load i8, ptr %5, align 1, !tbaa !7
  %9 = trunc i32 %7 to i8
  %10 = xor i8 %8, %9
  store i8 %10, ptr %5, align 1, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @bit_count(i64 noundef %0) #4 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ %8, %3 ], [ %0, %1 ]
  %5 = phi i32 [ %6, %3 ], [ 0, %1 ]
  %6 = add nuw nsw i32 %5, 1
  %7 = add nsw i64 %4, -1
  %8 = and i64 %7, %4
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %3, !llvm.loop !10

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @bitcount(i64 noundef %0) #5 {
  %2 = lshr i64 %0, 1
  %3 = and i64 %2, 1431655765
  %4 = and i64 %0, 1431655765
  %5 = add nuw nsw i64 %3, %4
  %6 = lshr i64 %5, 2
  %7 = and i64 %6, 858993459
  %8 = and i64 %5, 858993459
  %9 = add nuw nsw i64 %7, %8
  %10 = lshr i64 %9, 4
  %11 = and i64 %10, 117901063
  %12 = and i64 %9, 117901063
  %13 = add nuw nsw i64 %11, %12
  %14 = lshr i64 %13, 8
  %15 = and i64 %14, 983055
  %16 = and i64 %13, 983055
  %17 = add nuw nsw i64 %15, %16
  %18 = lshr i64 %17, 16
  %19 = and i64 %17, 31
  %20 = add nuw nsw i64 %18, %19
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @ntbl_bitcount(i64 noundef %0) #5 {
  %2 = and i64 %0, 15
  %3 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !7
  %5 = sext i8 %4 to i32
  %6 = lshr i64 %0, 4
  %7 = and i64 %6, 15
  %8 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 %10, %5
  %12 = lshr i64 %0, 8
  %13 = and i64 %12, 15
  %14 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !7
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %11, %16
  %18 = lshr i64 %0, 12
  %19 = and i64 %18, 15
  %20 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %17, %22
  %24 = lshr i64 %0, 16
  %25 = and i64 %24, 15
  %26 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !7
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %23, %28
  %30 = lshr i64 %0, 20
  %31 = and i64 %30, 15
  %32 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %29, %34
  %36 = lshr i64 %0, 24
  %37 = and i64 %36, 15
  %38 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !7
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %35, %40
  %42 = lshr i64 %0, 28
  %43 = and i64 %42, 15
  %44 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !7
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %41, %46
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BW_btbl_bitcount(i64 noundef %0) #5 {
  %2 = lshr i64 %0, 8
  %3 = lshr i64 %0, 16
  %4 = lshr i64 %0, 24
  %5 = and i64 %0, 255
  %6 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !7
  %8 = sext i8 %7 to i32
  %9 = and i64 %2, 255
  %10 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !7
  %12 = sext i8 %11 to i32
  %13 = add nsw i32 %12, %8
  %14 = and i64 %4, 255
  %15 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  %18 = add nsw i32 %13, %17
  %19 = and i64 %3, 255
  %20 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %18, %22
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @AR_btbl_bitcount(i64 noundef %0) #5 {
  %2 = lshr i64 %0, 8
  %3 = lshr i64 %0, 16
  %4 = lshr i64 %0, 24
  %5 = and i64 %0, 255
  %6 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !7
  %8 = sext i8 %7 to i32
  %9 = and i64 %2, 255
  %10 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !7
  %12 = sext i8 %11 to i32
  %13 = add nsw i32 %12, %8
  %14 = and i64 %3, 255
  %15 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  %18 = add nsw i32 %13, %17
  %19 = and i64 %4, 255
  %20 = getelementptr inbounds [256 x i8], ptr @bits, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %18, %22
  ret i32 %23
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %0) #6 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %4 = phi i64 [ %0, %1 ], [ %11, %10 ]
  %5 = and i64 %4, 15
  %6 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !7
  %8 = sext i8 %7 to i32
  %9 = icmp ult i64 %4, 16
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = ashr i64 %4, 4
  %12 = add nsw i32 %3, %8
  br label %2

13:                                               ; preds = %2
  %14 = add nsw i32 %3, %8
  ret i32 %14
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i32 [ 0, %1 ], [ %12, %10 ]
  %4 = phi i64 [ %0, %1 ], [ %11, %10 ]
  %5 = and i64 %4, 255
  %6 = getelementptr inbounds [256 x i8], ptr @bits.1, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !7
  %8 = sext i8 %7 to i32
  %9 = icmp ult i64 %4, 256
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = ashr i64 %4, 8
  %12 = add nsw i32 %3, %8
  br label %2

13:                                               ; preds = %2
  %14 = add nsw i32 %3, %8
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !12
  %6 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 28, i64 1, ptr %5) #20
  tail call void @exit(i32 noundef -1) #21
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = tail call i64 @strtol(ptr nocapture noundef nonnull %9, ptr noundef null, i32 noundef 10) #22
  %11 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  %12 = shl i64 %10, 32
  %13 = ashr exact i64 %12, 32
  %14 = icmp sgt i64 %13, 0
  br label %15

15:                                               ; preds = %37, %7
  %16 = phi i64 [ 0, %7 ], [ %54, %37 ]
  %17 = phi double [ 0x7FEFFFFFFFFFFFFF, %7 ], [ %46, %37 ]
  %18 = phi i32 [ undef, %7 ], [ %50, %37 ]
  %19 = phi i32 [ undef, %7 ], [ %45, %37 ]
  %20 = phi double [ 0.000000e+00, %7 ], [ %48, %37 ]
  %21 = tail call i64 @clock() #22
  %22 = tail call i32 @rand() #22
  br i1 %14, label %23, label %37

23:                                               ; preds = %15
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [7 x ptr], ptr @main.pBitCntFunc, i64 0, i64 %16
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i64 [ %24, %23 ], [ %35, %27 ]
  %29 = phi i64 [ 0, %23 ], [ %33, %27 ]
  %30 = phi i64 [ 0, %23 ], [ %34, %27 ]
  %31 = tail call i32 %26(i64 noundef %28) #22
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = add nuw nsw i64 %30, 1
  %35 = add nsw i64 %28, 13
  %36 = icmp eq i64 %34, %13
  br i1 %36, label %37, label %27, !llvm.loop !14

37:                                               ; preds = %27, %15
  %38 = phi i64 [ 0, %15 ], [ %33, %27 ]
  %39 = tail call i64 @clock() #22
  %40 = sub nsw i64 %39, %21
  %41 = sitofp i64 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = fcmp olt double %42, %17
  %44 = trunc i64 %16 to i32
  %45 = select i1 %43, i32 %44, i32 %19
  %46 = select i1 %43, double %42, double %17
  %47 = fcmp ogt double %42, %20
  %48 = select i1 %47, double %42, double %20
  %49 = trunc i64 %16 to i32
  %50 = select i1 %47, i32 %49, i32 %18
  %51 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %16
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %52, double noundef %42, i64 noundef %38)
  %54 = add nuw nsw i64 %16, 1
  %55 = icmp eq i64 %54, 7
  br i1 %55, label %56, label %15, !llvm.loop !15

56:                                               ; preds = %37
  %57 = sext i32 %45 to i64
  %58 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !12
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %59)
  %61 = sext i32 %50 to i64
  %62 = getelementptr inbounds [7 x ptr], ptr @main.text, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !12
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %63)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal i32 @bit_shifter(i64 noundef %0) #4 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %9, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %10, %3 ], [ 0, %1 ]
  %6 = phi i64 [ %11, %3 ], [ %0, %1 ]
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 1
  %9 = add nuw nsw i32 %4, %8
  %10 = add nuw nsw i32 %5, 1
  %11 = ashr i64 %6, 1
  %12 = icmp ugt i64 %6, 1
  %13 = icmp ult i32 %5, 63
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %3, label %15, !llvm.loop !16

15:                                               ; preds = %3, %1
  %16 = phi i32 [ 0, %1 ], [ %9, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @bfopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  store ptr %6, ptr %3, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @free(ptr noundef %3) #22
  br label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 2
  store i8 0, ptr %10, align 1, !tbaa !19
  %11 = getelementptr inbounds %struct.bfile, ptr %3, i64 0, i32 4
  store i8 0, ptr %11, align 1, !tbaa !20
  br label %12

12:                                               ; preds = %9, %8, %2
  %13 = phi ptr [ null, %8 ], [ %3, %9 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bfread(ptr nocapture noundef %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !17
  %7 = tail call i32 @fgetc(ptr noundef %6)
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  store i8 %8, ptr %9, align 8, !tbaa !21
  store i8 8, ptr %2, align 1, !tbaa !19
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i8, ptr %2, align 1, !tbaa !19
  %12 = add i8 %11, -1
  store i8 %12, ptr %2, align 1, !tbaa !19
  %13 = getelementptr inbounds %struct.bfile, ptr %0, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !tbaa !21
  %15 = sext i8 %14 to i32
  %16 = zext nneg i8 %12 to i32
  %17 = lshr i32 %15, %16
  %18 = and i32 %17, 1
  ret i32 %18
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @bfwrite(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 4
  %4 = load i8, ptr %3, align 1, !tbaa !20
  %5 = icmp eq i8 %4, 8
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 2, !tbaa !22
  %9 = sext i8 %8 to i32
  %10 = load ptr, ptr %1, align 8, !tbaa !17
  %11 = tail call i32 @fputc(i32 noundef %9, ptr noundef %10)
  store i8 0, ptr %3, align 1, !tbaa !20
  br label %12

12:                                               ; preds = %6, %2
  %13 = load i8, ptr %3, align 1, !tbaa !20
  %14 = add i8 %13, 1
  store i8 %14, ptr %3, align 1, !tbaa !20
  %15 = getelementptr inbounds %struct.bfile, ptr %1, i64 0, i32 3
  %16 = load i8, ptr %15, align 2, !tbaa !22
  %17 = shl i8 %16, 1
  %18 = trunc i32 %0 to i8
  %19 = and i8 %18, 1
  %20 = or disjoint i8 %17, %19
  store i8 %20, ptr %15, align 2, !tbaa !22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @bfclose(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = tail call i32 @fclose(ptr noundef %2)
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @bitstring(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
  %5 = ashr i32 %2, 2
  %6 = and i32 %2, 3
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = add i32 %5, %2
  %10 = sub i32 %3, %9
  %11 = add i32 %10, %8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = add i32 %8, %3
  %15 = xor i32 %9, -1
  %16 = add i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 32, i64 %18, i1 false), !tbaa !7
  %19 = zext i32 %16 to i64
  %20 = getelementptr i8, ptr %0, i64 %19
  %21 = getelementptr i8, ptr %20, i64 1
  br label %22

22:                                               ; preds = %13, %4
  %23 = phi ptr [ %0, %4 ], [ %21, %13 ]
  %24 = icmp sgt i32 %2, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = zext nneg i32 %2 to i64
  br label %27

27:                                               ; preds = %42, %25
  %28 = phi i64 [ %26, %25 ], [ %30, %42 ]
  %29 = phi ptr [ %23, %25 ], [ %43, %42 ]
  %30 = add nsw i64 %28, -1
  %31 = lshr i64 %1, %30
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = or disjoint i8 %33, 48
  %35 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %34, ptr %29, align 1, !tbaa !7
  %36 = and i64 %30, 3
  %37 = icmp eq i64 %36, 0
  %38 = icmp ne i64 %30, 0
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 32, ptr %35, align 1, !tbaa !7
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi ptr [ %41, %40 ], [ %35, %27 ]
  %44 = icmp sgt i64 %28, 1
  br i1 %44, label %27, label %45, !llvm.loop !23

45:                                               ; preds = %42, %22
  %46 = phi ptr [ %23, %22 ], [ %43, %42 ]
  store i8 0, ptr %46, align 1, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bstr_i(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %16, %3
  %7 = phi i8 [ %22, %16 ], [ %4, %3 ]
  %8 = phi ptr [ %17, %16 ], [ %0, %3 ]
  %9 = phi i32 [ %21, %16 ], [ 0, %3 ]
  %10 = zext nneg i8 %7 to i64
  %11 = icmp ugt i8 %7, 63
  %12 = shl nuw i64 1, %10
  %13 = and i64 %12, 844424930131969
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds i8, ptr %8, i64 1
  %18 = shl i32 %9, 1
  %19 = and i8 %7, 1
  %20 = zext nneg i8 %19 to i32
  %21 = or disjoint i32 %18, %20
  %22 = load i8, ptr %17, align 1, !tbaa !7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %6

24:                                               ; preds = %16, %6, %3, %1
  %25 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %9, %6 ], [ %21, %16 ]
  ret i32 %25
}

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = !{!18, !13, i64 0}
!18 = !{!"", !13, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!19 = !{!18, !8, i64 9}
!20 = !{!18, !8, i64 11}
!21 = !{!18, !8, i64 8}
!22 = !{!18, !8, i64 10}
!23 = distinct !{!23, !11}
