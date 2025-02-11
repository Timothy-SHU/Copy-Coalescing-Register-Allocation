; ModuleID = 'liblzma/lz/lz_encoder_mf.c'
source_filename = "liblzma/lz/lz_encoder_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_match = type { i32, i32 }

@lzma_crc32_table = external local_unnamed_addr constant [8 x [256 x i32]], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_mf_find(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call i32 %5(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = add i32 %6, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %14 = load i32, ptr %13, align 8, !tbaa !13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %8
  %17 = tail call fastcc i32 @mf_avail(ptr noundef nonnull %0) #7
  %18 = add i32 %17, 1
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 19
  %20 = load i32, ptr %19, align 4, !tbaa !14
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20)
  %22 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %23 = getelementptr inbounds i8, ptr %22, i64 -1
  %24 = getelementptr inbounds %struct.lzma_match, ptr %2, i64 %10, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !15
  %26 = zext i32 %25 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = icmp ult i32 %12, %21
  br i1 %30, label %31, label %46

31:                                               ; preds = %16
  %32 = zext i32 %12 to i64
  br label %33

33:                                               ; preds = %31, %40
  %34 = phi i64 [ %32, %31 ], [ %41, %40 ]
  %35 = getelementptr inbounds i8, ptr %23, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !16
  %37 = getelementptr inbounds i8, ptr %29, i64 %34
  %38 = load i8, ptr %37, align 1, !tbaa !16
  %39 = icmp eq i8 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = add nuw nsw i64 %34, 1
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %21, %42
  br i1 %43, label %46, label %33, !llvm.loop !17

44:                                               ; preds = %33
  %45 = trunc i64 %34 to i32
  br label %46

46:                                               ; preds = %40, %44, %16, %8, %3
  %47 = phi i32 [ %12, %8 ], [ 0, %3 ], [ %12, %16 ], [ %45, %44 ], [ %21, %40 ]
  store i32 %6, ptr %1, align 4, !tbaa !19
  %48 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !20
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !20
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mf_avail(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !21
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = sub i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mf_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !22
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %2, i64 %5
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc3_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp ugt i32 %5, %3
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = icmp ult i32 %3, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %96

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %3, %7 ], [ %5, %2 ]
  %12 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !24
  %17 = add i32 %16, %14
  %18 = load i8, ptr %12, align 1, !tbaa !16
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !19
  %22 = getelementptr inbounds i8, ptr %12, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = zext i8 %23 to i32
  %25 = xor i32 %21, %24
  %26 = and i32 %25, 1023
  %27 = getelementptr inbounds i8, ptr %12, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !16
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = xor i32 %30, %25
  %32 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %33 = load i32, ptr %32, align 8, !tbaa !25
  %34 = and i32 %31, %33
  %35 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !26
  %37 = zext nneg i32 %26 to i64
  %38 = getelementptr inbounds i32, ptr %36, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !19
  %40 = sub i32 %17, %39
  %41 = add i32 %34, 1024
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %36, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !19
  store i32 %17, ptr %38, align 4, !tbaa !19
  store i32 %17, ptr %43, align 4, !tbaa !19
  %45 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %46 = load i32, ptr %45, align 4, !tbaa !27
  %47 = icmp ult i32 %40, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %10
  %49 = zext i32 %40 to i64
  %50 = sub nsw i64 0, %49
  %51 = getelementptr inbounds i8, ptr %12, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !16
  %53 = load i8, ptr %12, align 1, !tbaa !16
  %54 = icmp eq i8 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %48
  %56 = icmp eq i32 %11, 2
  br i1 %56, label %71, label %57

57:                                               ; preds = %55, %65
  %58 = phi i32 [ %66, %65 ], [ 2, %55 ]
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %12, i64 %59
  %61 = getelementptr inbounds i8, ptr %60, i64 %50
  %62 = load i8, ptr %61, align 1, !tbaa !16
  %63 = load i8, ptr %60, align 1, !tbaa !16
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = add i32 %58, 1
  %67 = icmp eq i32 %66, %11
  br i1 %67, label %71, label %57, !llvm.loop !28

68:                                               ; preds = %57
  store i32 %58, ptr %1, align 4, !tbaa !11
  %69 = add i32 %40, -1
  %70 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %69, ptr %70, align 4, !tbaa !15
  br label %80

71:                                               ; preds = %65, %55
  store i32 %11, ptr %1, align 4, !tbaa !11
  %72 = add i32 %40, -1
  %73 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %72, ptr %73, align 4, !tbaa !15
  %74 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %75 = load ptr, ptr %74, align 8, !tbaa !29
  %76 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %77 = load i32, ptr %76, align 8, !tbaa !30
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %75, i64 %78
  store i32 %44, ptr %79, align 4, !tbaa !19
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %96

80:                                               ; preds = %68, %10, %48
  %81 = phi i64 [ 1, %68 ], [ 0, %48 ], [ 0, %10 ]
  %82 = phi i32 [ %58, %68 ], [ 2, %48 ], [ 2, %10 ]
  %83 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %84 = load i32, ptr %83, align 4, !tbaa !31
  %85 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %86 = load ptr, ptr %85, align 8, !tbaa !29
  %87 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %88 = load i32, ptr %87, align 8, !tbaa !30
  %89 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %81
  %90 = tail call fastcc ptr @hc_find_func(i32 noundef %11, i32 noundef %17, ptr noundef nonnull %12, i32 noundef %44, i32 noundef %84, ptr noundef %86, i32 noundef %88, i32 noundef %46, ptr noundef %89, i32 noundef %82) #7
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %1 to i64
  %93 = sub i64 %91, %92
  %94 = lshr exact i64 %93, 3
  %95 = trunc i64 %94 to i32
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %96

96:                                               ; preds = %71, %80, %9
  %97 = phi i32 [ 0, %9 ], [ 1, %71 ], [ %95, %80 ]
  ret i32 %97
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @move_pending(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !22
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !32
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !32
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @move_pos(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !30
  %4 = add i32 %3, 1
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !27
  %7 = icmp eq i32 %4, %6
  %8 = select i1 %7, i32 0, i32 %4
  store i32 %8, ptr %2, align 8
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !22
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !24
  %14 = add i32 %13, %11
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call fastcc void @normalize(ptr noundef nonnull %0) #7
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @hc_find_func(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef writeonly %8, i32 noundef %9) unnamed_addr #4 {
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  store i32 %3, ptr %12, align 4, !tbaa !19
  %13 = sub i32 %1, %3
  %14 = icmp ne i32 %4, 0
  %15 = icmp ult i32 %13, %7
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %10
  %18 = add i32 %0, -1
  %19 = zext i32 %18 to i64
  br label %20

20:                                               ; preds = %17, %70
  %21 = phi i32 [ %25, %70 ], [ %4, %17 ]
  %22 = phi i32 [ %73, %70 ], [ %13, %17 ]
  %23 = phi i32 [ %72, %70 ], [ %9, %17 ]
  %24 = phi ptr [ %71, %70 ], [ %8, %17 ]
  %25 = add i32 %21, -1
  %26 = zext i32 %22 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  %29 = sub i32 %6, %22
  %30 = icmp ugt i32 %22, %6
  %31 = select i1 %30, i32 %7, i32 0
  %32 = add i32 %29, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %5, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !19
  %36 = zext i32 %23 to i64
  %37 = getelementptr inbounds i8, ptr %28, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !16
  %39 = getelementptr inbounds i8, ptr %2, i64 %36
  %40 = load i8, ptr %39, align 1, !tbaa !16
  %41 = icmp eq i8 %38, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %20
  %43 = load i8, ptr %28, align 1, !tbaa !16
  %44 = load i8, ptr %2, align 1, !tbaa !16
  %45 = icmp eq i8 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42, %50
  %47 = phi i64 [ %48, %50 ], [ 0, %42 ]
  %48 = add nuw nsw i64 %47, 1
  %49 = icmp eq i64 %47, %19
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = and i64 %48, 4294967295
  %52 = getelementptr inbounds i8, ptr %28, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !16
  %54 = getelementptr inbounds i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !16
  %56 = icmp eq i8 %53, %55
  br i1 %56, label %46, label %57, !llvm.loop !33

57:                                               ; preds = %50
  %58 = trunc i64 %48 to i32
  br label %61

59:                                               ; preds = %46
  %60 = trunc i64 %48 to i32
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = phi i32 [ %58, %57 ], [ %0, %59 ]
  %64 = icmp ult i32 %23, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = icmp eq i32 %62, %0
  store i32 %63, ptr %24, align 4, !tbaa !11
  %67 = add i32 %22, -1
  %68 = getelementptr inbounds %struct.lzma_match, ptr %24, i64 0, i32 1
  store i32 %67, ptr %68, align 4, !tbaa !15
  %69 = getelementptr inbounds %struct.lzma_match, ptr %24, i64 1
  br i1 %66, label %77, label %70

70:                                               ; preds = %65, %61, %42, %20
  %71 = phi ptr [ %24, %42 ], [ %24, %20 ], [ %24, %61 ], [ %69, %65 ]
  %72 = phi i32 [ %23, %42 ], [ %23, %20 ], [ %23, %61 ], [ %63, %65 ]
  %73 = sub i32 %1, %35
  %74 = icmp ne i32 %25, 0
  %75 = icmp ult i32 %73, %7
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %20, label %77

77:                                               ; preds = %65, %70, %10
  %78 = phi ptr [ %8, %10 ], [ %71, %70 ], [ %69, %65 ]
  ret ptr %78
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc3_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  br label %9

9:                                                ; preds = %46, %2
  %10 = phi i32 [ %1, %2 ], [ %47, %46 ]
  %11 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call fastcc void @move_pending(ptr noundef %0) #7
  br label %46

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @mf_ptr(ptr noundef %0) #7
  %16 = load i32, ptr %3, align 8, !tbaa !22
  %17 = load i32, ptr %4, align 4, !tbaa !24
  %18 = add i32 %17, %16
  %19 = load i8, ptr %15, align 1, !tbaa !16
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !19
  %23 = getelementptr inbounds i8, ptr %15, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !16
  %25 = zext i8 %24 to i32
  %26 = xor i32 %22, %25
  %27 = and i32 %26, 1023
  %28 = getelementptr inbounds i8, ptr %15, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !16
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = xor i32 %31, %26
  %33 = load i32, ptr %5, align 8, !tbaa !25
  %34 = and i32 %32, %33
  %35 = load ptr, ptr %6, align 8, !tbaa !26
  %36 = add i32 %34, 1024
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !19
  %40 = zext nneg i32 %27 to i64
  %41 = getelementptr inbounds i32, ptr %35, i64 %40
  store i32 %18, ptr %41, align 4, !tbaa !19
  store i32 %18, ptr %38, align 4, !tbaa !19
  %42 = load ptr, ptr %7, align 8, !tbaa !29
  %43 = load i32, ptr %8, align 8, !tbaa !30
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %42, i64 %44
  store i32 %39, ptr %45, align 4, !tbaa !19
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %46

46:                                               ; preds = %14, %13
  %47 = add i32 %10, -1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %9, !llvm.loop !34

49:                                               ; preds = %46
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_hc4_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp ugt i32 %5, %3
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = icmp ult i32 %3, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %142

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %3, %7 ], [ %5, %2 ]
  %12 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !24
  %17 = add i32 %16, %14
  %18 = load i8, ptr %12, align 1, !tbaa !16
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !19
  %22 = getelementptr inbounds i8, ptr %12, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = zext i8 %23 to i32
  %25 = xor i32 %21, %24
  %26 = and i32 %25, 1023
  %27 = getelementptr inbounds i8, ptr %12, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !16
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = xor i32 %30, %25
  %32 = and i32 %31, 65535
  %33 = getelementptr inbounds i8, ptr %12, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !16
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !19
  %38 = shl i32 %37, 5
  %39 = xor i32 %31, %38
  %40 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %41 = load i32, ptr %40, align 8, !tbaa !25
  %42 = and i32 %39, %41
  %43 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !26
  %45 = zext nneg i32 %26 to i64
  %46 = getelementptr inbounds i32, ptr %44, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = sub i32 %17, %47
  %49 = zext nneg i32 %32 to i64
  %50 = getelementptr i32, ptr %44, i64 %49
  %51 = getelementptr i32, ptr %50, i64 1024
  %52 = load i32, ptr %51, align 4, !tbaa !19
  %53 = sub i32 %17, %52
  %54 = add i32 %42, 66560
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %44, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !19
  store i32 %17, ptr %46, align 4, !tbaa !19
  store i32 %17, ptr %51, align 4, !tbaa !19
  store i32 %17, ptr %56, align 4, !tbaa !19
  %58 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %59 = load i32, ptr %58, align 4, !tbaa !27
  %60 = icmp ult i32 %48, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %10
  %62 = zext i32 %48 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, ptr %12, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !16
  %66 = load i8, ptr %12, align 1, !tbaa !16
  %67 = icmp eq i8 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  store i32 2, ptr %1, align 4, !tbaa !11
  %69 = add i32 %48, -1
  %70 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %69, ptr %70, align 4, !tbaa !15
  br label %71

71:                                               ; preds = %68, %61, %10
  %72 = phi i1 [ false, %68 ], [ true, %61 ], [ true, %10 ]
  %73 = phi i32 [ 1, %68 ], [ 0, %61 ], [ 0, %10 ]
  %74 = phi i32 [ 2, %68 ], [ 1, %61 ], [ 1, %10 ]
  %75 = icmp ne i32 %52, %47
  %76 = icmp ult i32 %53, %59
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = zext i32 %53 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, ptr %12, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !16
  %83 = load i8, ptr %12, align 1, !tbaa !16
  %84 = icmp eq i8 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = add i32 %53, -1
  %87 = add nuw nsw i32 %73, 1
  %88 = zext nneg i32 %73 to i64
  %89 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %88, i32 1
  store i32 %86, ptr %89, align 4, !tbaa !15
  br label %91

90:                                               ; preds = %78, %71
  br i1 %72, label %125, label %91

91:                                               ; preds = %85, %90
  %92 = phi i32 [ 3, %85 ], [ %74, %90 ]
  %93 = phi i32 [ %53, %85 ], [ %48, %90 ]
  %94 = phi i32 [ %87, %85 ], [ 1, %90 ]
  %95 = icmp eq i32 %92, %11
  br i1 %95, label %115, label %96

96:                                               ; preds = %91
  %97 = zext i32 %93 to i64
  %98 = sub nsw i64 0, %97
  br label %99

99:                                               ; preds = %96, %107
  %100 = phi i32 [ %92, %96 ], [ %108, %107 ]
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %12, i64 %101
  %103 = getelementptr inbounds i8, ptr %102, i64 %98
  %104 = load i8, ptr %103, align 1, !tbaa !16
  %105 = load i8, ptr %102, align 1, !tbaa !16
  %106 = icmp eq i8 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = add i32 %100, 1
  %109 = icmp eq i32 %108, %11
  br i1 %109, label %115, label %99, !llvm.loop !35

110:                                              ; preds = %99
  %111 = add nsw i32 %94, -1
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %112
  store i32 %100, ptr %113, align 4, !tbaa !11
  %114 = zext nneg i32 %94 to i64
  br label %125

115:                                              ; preds = %107, %91
  %116 = add nsw i32 %94, -1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %117
  store i32 %11, ptr %118, align 4, !tbaa !11
  %119 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %120 = load ptr, ptr %119, align 8, !tbaa !29
  %121 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %122 = load i32, ptr %121, align 8, !tbaa !30
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, ptr %120, i64 %123
  store i32 %57, ptr %124, align 4, !tbaa !19
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %142

125:                                              ; preds = %110, %90
  %126 = phi i64 [ %114, %110 ], [ 0, %90 ]
  %127 = phi i32 [ %100, %110 ], [ %74, %90 ]
  %128 = tail call i32 @llvm.umax.i32(i32 %127, i32 3)
  %129 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %130 = load i32, ptr %129, align 4, !tbaa !31
  %131 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %132 = load ptr, ptr %131, align 8, !tbaa !29
  %133 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %134 = load i32, ptr %133, align 8, !tbaa !30
  %135 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %126
  %136 = tail call fastcc ptr @hc_find_func(i32 noundef %11, i32 noundef %17, ptr noundef nonnull %12, i32 noundef %57, i32 noundef %130, ptr noundef %132, i32 noundef %134, i32 noundef %59, ptr noundef %135, i32 noundef %128) #7
  %137 = ptrtoint ptr %136 to i64
  %138 = ptrtoint ptr %1 to i64
  %139 = sub i64 %137, %138
  %140 = lshr exact i64 %139, 3
  %141 = trunc i64 %140 to i32
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %142

142:                                              ; preds = %115, %125, %9
  %143 = phi i32 [ 0, %9 ], [ %94, %115 ], [ %141, %125 ]
  ret i32 %143
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_hc4_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  br label %9

9:                                                ; preds = %57, %2
  %10 = phi i32 [ %1, %2 ], [ %58, %57 ]
  %11 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call fastcc void @move_pending(ptr noundef %0) #7
  br label %57

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @mf_ptr(ptr noundef %0) #7
  %16 = load i32, ptr %3, align 8, !tbaa !22
  %17 = load i32, ptr %4, align 4, !tbaa !24
  %18 = add i32 %17, %16
  %19 = load i8, ptr %15, align 1, !tbaa !16
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !19
  %23 = getelementptr inbounds i8, ptr %15, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !16
  %25 = zext i8 %24 to i32
  %26 = xor i32 %22, %25
  %27 = and i32 %26, 1023
  %28 = getelementptr inbounds i8, ptr %15, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !16
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = xor i32 %31, %26
  %33 = and i32 %32, 65535
  %34 = getelementptr inbounds i8, ptr %15, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !16
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = shl i32 %38, 5
  %40 = xor i32 %32, %39
  %41 = load i32, ptr %5, align 8, !tbaa !25
  %42 = and i32 %40, %41
  %43 = load ptr, ptr %6, align 8, !tbaa !26
  %44 = add i32 %42, 66560
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = zext nneg i32 %27 to i64
  %49 = getelementptr inbounds i32, ptr %43, i64 %48
  store i32 %18, ptr %49, align 4, !tbaa !19
  %50 = zext nneg i32 %33 to i64
  %51 = getelementptr i32, ptr %43, i64 %50
  %52 = getelementptr i32, ptr %51, i64 1024
  store i32 %18, ptr %52, align 4, !tbaa !19
  store i32 %18, ptr %46, align 4, !tbaa !19
  %53 = load ptr, ptr %7, align 8, !tbaa !29
  %54 = load i32, ptr %8, align 8, !tbaa !30
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  store i32 %47, ptr %56, align 4, !tbaa !19
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %57

57:                                               ; preds = %14, %13
  %58 = add i32 %10, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %9, !llvm.loop !36

60:                                               ; preds = %57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt2_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp ugt i32 %5, %3
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = icmp ult i32 %3, 2
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %11 = load i32, ptr %10, align 8, !tbaa !37
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %7
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %42

14:                                               ; preds = %2, %9
  %15 = phi i32 [ %3, %9 ], [ %5, %2 ]
  %16 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %17 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !24
  %21 = add i32 %20, %18
  %22 = load i16, ptr %16, align 1
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  %26 = getelementptr inbounds i32, ptr %25, i64 %23
  %27 = load i32, ptr %26, align 4, !tbaa !19
  store i32 %21, ptr %26, align 4, !tbaa !19
  %28 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !31
  %30 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %33 = load i32, ptr %32, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %35 = load i32, ptr %34, align 4, !tbaa !27
  %36 = tail call fastcc ptr @bt_find_func(i32 noundef %15, i32 noundef %21, ptr noundef nonnull %16, i32 noundef %27, i32 noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef %35, ptr noundef %1, i32 noundef 1) #7
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %1 to i64
  %39 = sub i64 %37, %38
  %40 = lshr exact i64 %39, 3
  %41 = trunc i64 %40 to i32
  tail call fastcc void @move_pos(ptr noundef nonnull %0) #7
  br label %42

42:                                               ; preds = %14, %13
  %43 = phi i32 [ %41, %14 ], [ 0, %13 ]
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @bt_find_func(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef writeonly %8, i32 noundef %9) unnamed_addr #2 {
  %11 = shl i32 %6, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %5, i64 %12
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = sub i32 %1, %3
  %16 = icmp ne i32 %4, 0
  %17 = icmp ult i32 %15, %7
  %18 = and i1 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %90, %10
  %20 = phi ptr [ %8, %10 ], [ %78, %90 ]
  %21 = phi ptr [ %14, %10 ], [ %91, %90 ]
  %22 = phi ptr [ %13, %10 ], [ %92, %90 ]
  store i32 0, ptr %21, align 4, !tbaa !19
  store i32 0, ptr %22, align 4, !tbaa !19
  br label %101

23:                                               ; preds = %10, %90
  %24 = phi i32 [ %33, %90 ], [ %4, %10 ]
  %25 = phi i32 [ %97, %90 ], [ %15, %10 ]
  %26 = phi i32 [ %96, %90 ], [ %3, %10 ]
  %27 = phi i32 [ %94, %90 ], [ 0, %10 ]
  %28 = phi i32 [ %93, %90 ], [ 0, %10 ]
  %29 = phi ptr [ %92, %90 ], [ %13, %10 ]
  %30 = phi ptr [ %91, %90 ], [ %14, %10 ]
  %31 = phi i32 [ %79, %90 ], [ %9, %10 ]
  %32 = phi ptr [ %78, %90 ], [ %8, %10 ]
  %33 = add i32 %24, -1
  %34 = sub i32 %6, %25
  %35 = icmp ugt i32 %25, %6
  %36 = select i1 %35, i32 %7, i32 0
  %37 = add i32 %34, %36
  %38 = shl i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %5, i64 %39
  %41 = zext i32 %25 to i64
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds i8, ptr %2, i64 %42
  %44 = tail call i32 @llvm.umin.i32(i32 %28, i32 %27)
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !16
  %48 = getelementptr inbounds i8, ptr %2, i64 %45
  %49 = load i8, ptr %48, align 1, !tbaa !16
  %50 = icmp eq i8 %47, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %23, %55
  %52 = phi i32 [ %53, %55 ], [ %44, %23 ]
  %53 = add i32 %52, 1
  %54 = icmp eq i32 %53, %0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = zext i32 %53 to i64
  %57 = getelementptr inbounds i8, ptr %43, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !16
  %59 = getelementptr inbounds i8, ptr %2, i64 %56
  %60 = load i8, ptr %59, align 1, !tbaa !16
  %61 = icmp eq i8 %58, %60
  br i1 %61, label %51, label %64, !llvm.loop !38

62:                                               ; preds = %51
  %63 = icmp ult i32 %31, %0
  br i1 %63, label %70, label %77

64:                                               ; preds = %55
  %65 = icmp ult i32 %31, %53
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  store i32 %53, ptr %32, align 4, !tbaa !11
  %67 = add i32 %25, -1
  %68 = getelementptr inbounds %struct.lzma_match, ptr %32, i64 0, i32 1
  store i32 %67, ptr %68, align 4, !tbaa !15
  %69 = getelementptr inbounds %struct.lzma_match, ptr %32, i64 1
  br label %77

70:                                               ; preds = %62
  store i32 %0, ptr %32, align 4, !tbaa !11
  %71 = add i32 %25, -1
  %72 = getelementptr inbounds %struct.lzma_match, ptr %32, i64 0, i32 1
  store i32 %71, ptr %72, align 4, !tbaa !15
  %73 = getelementptr inbounds %struct.lzma_match, ptr %32, i64 1
  %74 = load i32, ptr %40, align 4, !tbaa !19
  store i32 %74, ptr %29, align 4, !tbaa !19
  %75 = getelementptr inbounds i32, ptr %40, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !19
  store i32 %76, ptr %30, align 4, !tbaa !19
  br label %101

77:                                               ; preds = %62, %66, %64, %23
  %78 = phi ptr [ %32, %23 ], [ %32, %64 ], [ %69, %66 ], [ %32, %62 ]
  %79 = phi i32 [ %31, %23 ], [ %31, %64 ], [ %53, %66 ], [ %31, %62 ]
  %80 = phi i32 [ %44, %23 ], [ %53, %64 ], [ %53, %66 ], [ %0, %62 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %43, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !16
  %84 = getelementptr inbounds i8, ptr %2, i64 %81
  %85 = load i8, ptr %84, align 1, !tbaa !16
  %86 = icmp ult i8 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  store i32 %26, ptr %29, align 4, !tbaa !19
  %88 = getelementptr inbounds i32, ptr %40, i64 1
  br label %90

89:                                               ; preds = %77
  store i32 %26, ptr %30, align 4, !tbaa !19
  br label %90

90:                                               ; preds = %87, %89
  %91 = phi ptr [ %30, %87 ], [ %40, %89 ]
  %92 = phi ptr [ %88, %87 ], [ %29, %89 ]
  %93 = phi i32 [ %28, %87 ], [ %80, %89 ]
  %94 = phi i32 [ %80, %87 ], [ %27, %89 ]
  %95 = phi ptr [ %88, %87 ], [ %40, %89 ]
  %96 = load i32, ptr %95, align 4, !tbaa !19
  %97 = sub i32 %1, %96
  %98 = icmp ne i32 %33, 0
  %99 = icmp ult i32 %97, %7
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %23, label %19

101:                                              ; preds = %19, %70
  %102 = phi ptr [ %73, %70 ], [ %20, %19 ]
  ret ptr %102
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt2_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %11 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  br label %12

12:                                               ; preds = %38, %2
  %13 = phi i32 [ %1, %2 ], [ %39, %38 ]
  %14 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %15 = load i32, ptr %3, align 8, !tbaa !13
  %16 = icmp ugt i32 %15, %14
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = icmp ult i32 %14, 2
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %4, align 8, !tbaa !37
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %17
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %38

23:                                               ; preds = %12, %19
  %24 = phi i32 [ %14, %19 ], [ %15, %12 ]
  %25 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %26 = load i32, ptr %5, align 8, !tbaa !22
  %27 = load i32, ptr %6, align 4, !tbaa !24
  %28 = add i32 %27, %26
  %29 = load i16, ptr %25, align 1
  %30 = zext i16 %29 to i64
  %31 = load ptr, ptr %7, align 8, !tbaa !26
  %32 = getelementptr inbounds i32, ptr %31, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !19
  store i32 %28, ptr %32, align 4, !tbaa !19
  %34 = load i32, ptr %8, align 4, !tbaa !31
  %35 = load ptr, ptr %9, align 8, !tbaa !29
  %36 = load i32, ptr %10, align 8, !tbaa !30
  %37 = load i32, ptr %11, align 4, !tbaa !27
  tail call fastcc void @bt_skip_func(i32 noundef %24, i32 noundef %28, ptr noundef nonnull %25, i32 noundef %33, i32 noundef %34, ptr noundef %35, i32 noundef %36, i32 noundef %37) #7
  tail call fastcc void @move_pos(ptr noundef nonnull %0) #7
  br label %38

38:                                               ; preds = %23, %22
  %39 = add i32 %13, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %12, !llvm.loop !39

41:                                               ; preds = %38
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bt_skip_func(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #2 {
  %9 = shl i32 %6, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %5, i64 %10
  %12 = getelementptr inbounds i32, ptr %11, i64 1
  %13 = sub i32 %1, %3
  %14 = icmp ne i32 %4, 0
  %15 = icmp ult i32 %13, %7
  %16 = and i1 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %69, %8
  %18 = phi ptr [ %11, %8 ], [ %70, %69 ]
  %19 = phi ptr [ %12, %8 ], [ %73, %69 ]
  store i32 0, ptr %19, align 4, !tbaa !19
  store i32 0, ptr %18, align 4, !tbaa !19
  br label %80

20:                                               ; preds = %8, %69
  %21 = phi i32 [ %28, %69 ], [ %4, %8 ]
  %22 = phi i32 [ %76, %69 ], [ %13, %8 ]
  %23 = phi i32 [ %75, %69 ], [ %3, %8 ]
  %24 = phi ptr [ %73, %69 ], [ %12, %8 ]
  %25 = phi i32 [ %72, %69 ], [ 0, %8 ]
  %26 = phi i32 [ %71, %69 ], [ 0, %8 ]
  %27 = phi ptr [ %70, %69 ], [ %11, %8 ]
  %28 = add i32 %21, -1
  %29 = sub i32 %6, %22
  %30 = icmp ugt i32 %22, %6
  %31 = select i1 %30, i32 %7, i32 0
  %32 = add i32 %29, %31
  %33 = shl i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %5, i64 %34
  %36 = zext i32 %22 to i64
  %37 = sub nsw i64 0, %36
  %38 = getelementptr inbounds i8, ptr %2, i64 %37
  %39 = tail call i32 @llvm.umin.i32(i32 %26, i32 %25)
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !16
  %43 = getelementptr inbounds i8, ptr %2, i64 %40
  %44 = load i8, ptr %43, align 1, !tbaa !16
  %45 = icmp eq i8 %42, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %20, %50
  %47 = phi i32 [ %48, %50 ], [ %39, %20 ]
  %48 = add i32 %47, 1
  %49 = icmp eq i32 %48, %0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds i8, ptr %38, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !16
  %54 = getelementptr inbounds i8, ptr %2, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !16
  %56 = icmp eq i8 %53, %55
  br i1 %56, label %46, label %61, !llvm.loop !40

57:                                               ; preds = %46
  %58 = load i32, ptr %35, align 4, !tbaa !19
  store i32 %58, ptr %27, align 4, !tbaa !19
  %59 = getelementptr inbounds i32, ptr %35, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !19
  store i32 %60, ptr %24, align 4, !tbaa !19
  br label %80

61:                                               ; preds = %50, %20
  %62 = phi i8 [ %44, %20 ], [ %55, %50 ]
  %63 = phi i8 [ %42, %20 ], [ %53, %50 ]
  %64 = phi i32 [ %39, %20 ], [ %48, %50 ]
  %65 = icmp ult i8 %63, %62
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  store i32 %23, ptr %27, align 4, !tbaa !19
  %67 = getelementptr inbounds i32, ptr %35, i64 1
  br label %69

68:                                               ; preds = %61
  store i32 %23, ptr %24, align 4, !tbaa !19
  br label %69

69:                                               ; preds = %66, %68
  %70 = phi ptr [ %67, %66 ], [ %27, %68 ]
  %71 = phi i32 [ %26, %66 ], [ %64, %68 ]
  %72 = phi i32 [ %64, %66 ], [ %25, %68 ]
  %73 = phi ptr [ %24, %66 ], [ %35, %68 ]
  %74 = phi ptr [ %67, %66 ], [ %35, %68 ]
  %75 = load i32, ptr %74, align 4, !tbaa !19
  %76 = sub i32 %1, %75
  %77 = icmp ne i32 %28, 0
  %78 = icmp ult i32 %76, %7
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %20, label %17

80:                                               ; preds = %17, %57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt3_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp ugt i32 %5, %3
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = icmp ult i32 %3, 3
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %11 = load i32, ptr %10, align 8, !tbaa !37
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %7
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %100

14:                                               ; preds = %2, %9
  %15 = phi i32 [ %3, %9 ], [ %5, %2 ]
  %16 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %17 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !24
  %21 = add i32 %20, %18
  %22 = load i8, ptr %16, align 1, !tbaa !16
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !19
  %26 = getelementptr inbounds i8, ptr %16, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !16
  %28 = zext i8 %27 to i32
  %29 = xor i32 %25, %28
  %30 = and i32 %29, 1023
  %31 = getelementptr inbounds i8, ptr %16, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !16
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = xor i32 %34, %29
  %36 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %37 = load i32, ptr %36, align 8, !tbaa !25
  %38 = and i32 %35, %37
  %39 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  %41 = zext nneg i32 %30 to i64
  %42 = getelementptr inbounds i32, ptr %40, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !19
  %44 = sub i32 %21, %43
  %45 = add i32 %38, 1024
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %40, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !19
  store i32 %21, ptr %42, align 4, !tbaa !19
  store i32 %21, ptr %47, align 4, !tbaa !19
  %49 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %50 = load i32, ptr %49, align 4, !tbaa !27
  %51 = icmp ult i32 %44, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %14
  %53 = zext i32 %44 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, ptr %16, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !16
  %57 = load i8, ptr %16, align 1, !tbaa !16
  %58 = icmp eq i8 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %52
  %60 = icmp eq i32 %15, 2
  br i1 %60, label %75, label %61

61:                                               ; preds = %59, %69
  %62 = phi i32 [ %70, %69 ], [ 2, %59 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %16, i64 %63
  %65 = getelementptr inbounds i8, ptr %64, i64 %54
  %66 = load i8, ptr %65, align 1, !tbaa !16
  %67 = load i8, ptr %64, align 1, !tbaa !16
  %68 = icmp eq i8 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = add i32 %62, 1
  %71 = icmp eq i32 %70, %15
  br i1 %71, label %75, label %61, !llvm.loop !41

72:                                               ; preds = %61
  store i32 %62, ptr %1, align 4, !tbaa !11
  %73 = add i32 %44, -1
  %74 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %73, ptr %74, align 4, !tbaa !15
  br label %84

75:                                               ; preds = %69, %59
  store i32 %15, ptr %1, align 4, !tbaa !11
  %76 = add i32 %44, -1
  %77 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %76, ptr %77, align 4, !tbaa !15
  %78 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %79 = load i32, ptr %78, align 4, !tbaa !31
  %80 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %81 = load ptr, ptr %80, align 8, !tbaa !29
  %82 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %83 = load i32, ptr %82, align 8, !tbaa !30
  tail call fastcc void @bt_skip_func(i32 noundef %15, i32 noundef %21, ptr noundef nonnull %16, i32 noundef %48, i32 noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef %50) #7
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %100

84:                                               ; preds = %72, %14, %52
  %85 = phi i64 [ 1, %72 ], [ 0, %52 ], [ 0, %14 ]
  %86 = phi i32 [ %62, %72 ], [ 2, %52 ], [ 2, %14 ]
  %87 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %88 = load i32, ptr %87, align 4, !tbaa !31
  %89 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !29
  %91 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %92 = load i32, ptr %91, align 8, !tbaa !30
  %93 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %85
  %94 = tail call fastcc ptr @bt_find_func(i32 noundef %15, i32 noundef %21, ptr noundef nonnull %16, i32 noundef %48, i32 noundef %88, ptr noundef %90, i32 noundef %92, i32 noundef %50, ptr noundef %93, i32 noundef %86) #7
  %95 = ptrtoint ptr %94 to i64
  %96 = ptrtoint ptr %1 to i64
  %97 = sub i64 %95, %96
  %98 = lshr exact i64 %97, 3
  %99 = trunc i64 %98 to i32
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %100

100:                                              ; preds = %75, %84, %13
  %101 = phi i32 [ 0, %13 ], [ 1, %75 ], [ %99, %84 ]
  ret i32 %101
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt3_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %11 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  br label %13

13:                                               ; preds = %57, %2
  %14 = phi i32 [ %1, %2 ], [ %58, %57 ]
  %15 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %16 = load i32, ptr %3, align 8, !tbaa !13
  %17 = icmp ugt i32 %16, %15
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = icmp ult i32 %15, 3
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %4, align 8, !tbaa !37
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %18
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %57

24:                                               ; preds = %13, %20
  %25 = phi i32 [ %15, %20 ], [ %16, %13 ]
  %26 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %27 = load i32, ptr %5, align 8, !tbaa !22
  %28 = load i32, ptr %6, align 4, !tbaa !24
  %29 = add i32 %28, %27
  %30 = load i8, ptr %26, align 1, !tbaa !16
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !16
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = and i32 %37, 1023
  %39 = getelementptr inbounds i8, ptr %26, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !16
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = xor i32 %42, %37
  %44 = load i32, ptr %7, align 8, !tbaa !25
  %45 = and i32 %43, %44
  %46 = load ptr, ptr %8, align 8, !tbaa !26
  %47 = add i32 %45, 1024
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %46, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !19
  %51 = zext nneg i32 %38 to i64
  %52 = getelementptr inbounds i32, ptr %46, i64 %51
  store i32 %29, ptr %52, align 4, !tbaa !19
  store i32 %29, ptr %49, align 4, !tbaa !19
  %53 = load i32, ptr %9, align 4, !tbaa !31
  %54 = load ptr, ptr %10, align 8, !tbaa !29
  %55 = load i32, ptr %11, align 8, !tbaa !30
  %56 = load i32, ptr %12, align 4, !tbaa !27
  tail call fastcc void @bt_skip_func(i32 noundef %25, i32 noundef %29, ptr noundef nonnull %26, i32 noundef %50, i32 noundef %53, ptr noundef %54, i32 noundef %55, i32 noundef %56) #7
  tail call fastcc void @move_pos(ptr noundef nonnull %0) #7
  br label %57

57:                                               ; preds = %24, %23
  %58 = add i32 %14, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %13, !llvm.loop !42

60:                                               ; preds = %57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @lzma_mf_bt4_find(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp ugt i32 %5, %3
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = icmp ult i32 %3, 4
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %11 = load i32, ptr %10, align 8, !tbaa !37
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %7
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %146

14:                                               ; preds = %2, %9
  %15 = phi i32 [ %3, %9 ], [ %5, %2 ]
  %16 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %17 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !24
  %21 = add i32 %20, %18
  %22 = load i8, ptr %16, align 1, !tbaa !16
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !19
  %26 = getelementptr inbounds i8, ptr %16, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !16
  %28 = zext i8 %27 to i32
  %29 = xor i32 %25, %28
  %30 = and i32 %29, 1023
  %31 = getelementptr inbounds i8, ptr %16, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !16
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = xor i32 %34, %29
  %36 = and i32 %35, 65535
  %37 = getelementptr inbounds i8, ptr %16, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !16
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !19
  %42 = shl i32 %41, 5
  %43 = xor i32 %35, %42
  %44 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %45 = load i32, ptr %44, align 8, !tbaa !25
  %46 = and i32 %43, %45
  %47 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !26
  %49 = zext nneg i32 %30 to i64
  %50 = getelementptr inbounds i32, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !19
  %52 = sub i32 %21, %51
  %53 = zext nneg i32 %36 to i64
  %54 = getelementptr i32, ptr %48, i64 %53
  %55 = getelementptr i32, ptr %54, i64 1024
  %56 = load i32, ptr %55, align 4, !tbaa !19
  %57 = sub i32 %21, %56
  %58 = add i32 %46, 66560
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %48, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !19
  store i32 %21, ptr %50, align 4, !tbaa !19
  store i32 %21, ptr %55, align 4, !tbaa !19
  store i32 %21, ptr %60, align 4, !tbaa !19
  %62 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %63 = load i32, ptr %62, align 4, !tbaa !27
  %64 = icmp ult i32 %52, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %14
  %66 = zext i32 %52 to i64
  %67 = sub nsw i64 0, %66
  %68 = getelementptr inbounds i8, ptr %16, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !16
  %70 = load i8, ptr %16, align 1, !tbaa !16
  %71 = icmp eq i8 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  store i32 2, ptr %1, align 4, !tbaa !11
  %73 = add i32 %52, -1
  %74 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 0, i32 1
  store i32 %73, ptr %74, align 4, !tbaa !15
  br label %75

75:                                               ; preds = %72, %65, %14
  %76 = phi i1 [ false, %72 ], [ true, %65 ], [ true, %14 ]
  %77 = phi i32 [ 1, %72 ], [ 0, %65 ], [ 0, %14 ]
  %78 = phi i32 [ 2, %72 ], [ 1, %65 ], [ 1, %14 ]
  %79 = icmp ne i32 %56, %51
  %80 = icmp ult i32 %57, %63
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = zext i32 %57 to i64
  %84 = sub nsw i64 0, %83
  %85 = getelementptr inbounds i8, ptr %16, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !16
  %87 = load i8, ptr %16, align 1, !tbaa !16
  %88 = icmp eq i8 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = add i32 %57, -1
  %91 = add nuw nsw i32 %77, 1
  %92 = zext nneg i32 %77 to i64
  %93 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %92, i32 1
  store i32 %90, ptr %93, align 4, !tbaa !15
  br label %95

94:                                               ; preds = %82, %75
  br i1 %76, label %129, label %95

95:                                               ; preds = %89, %94
  %96 = phi i32 [ 3, %89 ], [ %78, %94 ]
  %97 = phi i32 [ %57, %89 ], [ %52, %94 ]
  %98 = phi i32 [ %91, %89 ], [ 1, %94 ]
  %99 = icmp eq i32 %96, %15
  br i1 %99, label %119, label %100

100:                                              ; preds = %95
  %101 = zext i32 %97 to i64
  %102 = sub nsw i64 0, %101
  br label %103

103:                                              ; preds = %100, %111
  %104 = phi i32 [ %96, %100 ], [ %112, %111 ]
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %16, i64 %105
  %107 = getelementptr inbounds i8, ptr %106, i64 %102
  %108 = load i8, ptr %107, align 1, !tbaa !16
  %109 = load i8, ptr %106, align 1, !tbaa !16
  %110 = icmp eq i8 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = add i32 %104, 1
  %113 = icmp eq i32 %112, %15
  br i1 %113, label %119, label %103, !llvm.loop !43

114:                                              ; preds = %103
  %115 = add nsw i32 %98, -1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %116
  store i32 %104, ptr %117, align 4, !tbaa !11
  %118 = zext nneg i32 %98 to i64
  br label %129

119:                                              ; preds = %111, %95
  %120 = add nsw i32 %98, -1
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %121
  store i32 %15, ptr %122, align 4, !tbaa !11
  %123 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %124 = load i32, ptr %123, align 4, !tbaa !31
  %125 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %126 = load ptr, ptr %125, align 8, !tbaa !29
  %127 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %128 = load i32, ptr %127, align 8, !tbaa !30
  tail call fastcc void @bt_skip_func(i32 noundef %15, i32 noundef %21, ptr noundef nonnull %16, i32 noundef %61, i32 noundef %124, ptr noundef %126, i32 noundef %128, i32 noundef %63) #7
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %146

129:                                              ; preds = %114, %94
  %130 = phi i64 [ %118, %114 ], [ 0, %94 ]
  %131 = phi i32 [ %104, %114 ], [ %78, %94 ]
  %132 = tail call i32 @llvm.umax.i32(i32 %131, i32 3)
  %133 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %134 = load i32, ptr %133, align 4, !tbaa !31
  %135 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %136 = load ptr, ptr %135, align 8, !tbaa !29
  %137 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %138 = load i32, ptr %137, align 8, !tbaa !30
  %139 = getelementptr inbounds %struct.lzma_match, ptr %1, i64 %130
  %140 = tail call fastcc ptr @bt_find_func(i32 noundef %15, i32 noundef %21, ptr noundef nonnull %16, i32 noundef %61, i32 noundef %134, ptr noundef %136, i32 noundef %138, i32 noundef %63, ptr noundef %139, i32 noundef %132) #7
  %141 = ptrtoint ptr %140 to i64
  %142 = ptrtoint ptr %1 to i64
  %143 = sub i64 %141, %142
  %144 = lshr exact i64 %143, 3
  %145 = trunc i64 %144 to i32
  tail call fastcc void @move_pos(ptr noundef %0) #7
  br label %146

146:                                              ; preds = %119, %129, %13
  %147 = phi i32 [ 0, %13 ], [ %98, %119 ], [ %145, %129 ]
  ret i32 %147
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lzma_mf_bt4_skip(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 18
  %4 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 20
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 16
  %8 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 17
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 13
  %11 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  br label %13

13:                                               ; preds = %68, %2
  %14 = phi i32 [ %1, %2 ], [ %69, %68 ]
  %15 = tail call fastcc i32 @mf_avail(ptr noundef %0) #7
  %16 = load i32, ptr %3, align 8, !tbaa !13
  %17 = icmp ugt i32 %16, %15
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = icmp ult i32 %15, 4
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %4, align 8, !tbaa !37
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %18
  tail call fastcc void @move_pending(ptr noundef nonnull %0) #7
  br label %68

24:                                               ; preds = %13, %20
  %25 = phi i32 [ %15, %20 ], [ %16, %13 ]
  %26 = tail call fastcc ptr @mf_ptr(ptr noundef nonnull %0) #7
  %27 = load i32, ptr %5, align 8, !tbaa !22
  %28 = load i32, ptr %6, align 4, !tbaa !24
  %29 = add i32 %28, %27
  %30 = load i8, ptr %26, align 1, !tbaa !16
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !16
  %36 = zext i8 %35 to i32
  %37 = xor i32 %33, %36
  %38 = and i32 %37, 1023
  %39 = getelementptr inbounds i8, ptr %26, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !16
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = xor i32 %42, %37
  %44 = and i32 %43, 65535
  %45 = getelementptr inbounds i8, ptr %26, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !16
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i32], ptr @lzma_crc32_table, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !19
  %50 = shl i32 %49, 5
  %51 = xor i32 %43, %50
  %52 = load i32, ptr %7, align 8, !tbaa !25
  %53 = and i32 %51, %52
  %54 = load ptr, ptr %8, align 8, !tbaa !26
  %55 = add i32 %53, 66560
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %54, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !19
  %59 = zext nneg i32 %38 to i64
  %60 = getelementptr inbounds i32, ptr %54, i64 %59
  store i32 %29, ptr %60, align 4, !tbaa !19
  %61 = zext nneg i32 %44 to i64
  %62 = getelementptr i32, ptr %54, i64 %61
  %63 = getelementptr i32, ptr %62, i64 1024
  store i32 %29, ptr %63, align 4, !tbaa !19
  store i32 %29, ptr %57, align 4, !tbaa !19
  %64 = load i32, ptr %9, align 4, !tbaa !31
  %65 = load ptr, ptr %10, align 8, !tbaa !29
  %66 = load i32, ptr %11, align 8, !tbaa !30
  %67 = load i32, ptr %12, align 4, !tbaa !27
  tail call fastcc void @bt_skip_func(i32 noundef %25, i32 noundef %29, ptr noundef nonnull %26, i32 noundef %58, i32 noundef %64, ptr noundef %65, i32 noundef %66, i32 noundef %67) #7
  tail call fastcc void @move_pos(ptr noundef nonnull %0) #7
  br label %68

68:                                               ; preds = %24, %23
  %69 = add i32 %14, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %13, !llvm.loop !44

71:                                               ; preds = %68
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @normalize(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 4, !tbaa !27
  %4 = xor i32 %3, -1
  %5 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 21
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %7 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 22
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = add i32 %8, %6
  %10 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = zext i32 %9 to i64
  br label %19

15:                                               ; preds = %19, %1
  %16 = getelementptr inbounds %struct.lzma_mf_s, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !24
  %18 = sub i32 %17, %4
  store i32 %18, ptr %16, align 4, !tbaa !24
  ret void

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %24, %19 ]
  %21 = getelementptr inbounds i32, ptr %11, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !19
  %23 = tail call i32 @llvm.usub.sat.i32(i32 %22, i32 %4)
  store i32 %23, ptr %21, align 4, !tbaa !19
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %15, label %19, !llvm.loop !47
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"lzma_mf_s", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 4}
!13 = !{!6, !10, i64 96}
!14 = !{!6, !10, i64 100}
!15 = !{!12, !10, i64 4}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!10, !10, i64 0}
!20 = !{!6, !10, i64 28}
!21 = !{!6, !10, i64 36}
!22 = !{!6, !10, i64 24}
!23 = !{!6, !7, i64 0}
!24 = !{!6, !10, i64 20}
!25 = !{!6, !10, i64 88}
!26 = !{!6, !7, i64 64}
!27 = !{!6, !10, i64 84}
!28 = distinct !{!28, !18}
!29 = !{!6, !7, i64 72}
!30 = !{!6, !10, i64 80}
!31 = !{!6, !10, i64 92}
!32 = !{!6, !10, i64 40}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = !{!6, !10, i64 104}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = !{!6, !10, i64 108}
!46 = !{!6, !10, i64 112}
!47 = distinct !{!47, !18}
